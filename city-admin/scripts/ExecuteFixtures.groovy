import ps.city.core.EventEntry
import ps.city.core.JobEntry
import ps.city.core.PhotoEntry
import ps.city.core.User
import ps.city.core.Page
import ps.city.core.VideoEntry
import ps.city.core.Role
import ps.city.core.UserRole
import ps.city.core.Tag
import ps.city.core.TagType

//includeTargets << grailsScript("_GrailsInit")

//target(main: "The description of the script goes here!") {
// TODO: Implement script here
// Create businesses, Artists, Organizations
def admin = Role.build(authority: 'ROLE_ADMIN');
def endUser = Role.build(authority: 'ROLE_END_USER');
//def page = Page.build();

def adminUser = User.build(fullName : 'Ali Abu El Haj',enabled: 1, email:'ali.abulhaj@gmail.com', password: 'password',page: new Page(details: 'details'), accountType : 'person', username : 'ali')
UserRole.create adminUser, admin

tags = getTags();
getTagTypes().each {
    TagType.build(name: it)

}
tags.each {
    Random r = new Random();
    def number = r.nextInt(8) + 1
    def tag = Tag.build(name: it)
    tag.addToTagTypes(TagType.get(number.toInteger()))
    tag.save(flush:true)
}
for (i in 1..50) {
//    page = Page.build();
    def business = User.build(fullName : 'FullName'+i, accountType : 'business', username : 'UserName'+i, page: new Page(details: 'details'), enabled: true)
//    page = Page.build();
    def artist = User.build(fullName : 'FullName'+i, accountType : 'artist', username : 'UserName'+(i+100), page: new Page(details: 'details'), enabled: true)
//    page = Page.build();
    def org =User.build(fullName : 'FullName'+i, accountType : 'organization', username: 'UserName'+(i+200), page: new Page(details: 'details'), enabled: true)
    UserRole.create business, endUser
    UserRole.create artist, endUser
    UserRole.create org, endUser

}

def businesses = User.findAllByAccountType('business')
def artists = User.findAllByAccountType('artist')

businesses.each(){
    EventEntry.build(page : it.getPage(), title: 'event'+it.id, status: 'APPROVED')
    JobEntry.build(page : it.getPage(), title: 'job'+it.id, status: 'APPROVED')
}
artists.each(){
    VideoEntry.build(page : it.getPage(), title: 'video'+it.id, status: 'APPROVED')
//    PhotoEntry.build(page : it.getPage(), title: 'photo'+it.id, status: 'APPROVED')

}

def getTagTypes() {
    return [
            "event",
            "job",
            "art",
            "news",
            "artist",
            "business",
            "restaurant",
            "organization",
    ]
}
def getTags() {
    return [
            "tag",
            "Visual Design",
            "University",
            "University",
            "Travel/Leisure",
            "Transportation",
            "Transport/Freight",
            "Transit Stop",
            "Tours/Sightseeing",
            "Telecommunication",
            "Take away",
            "Success Story",
            "Sports/Recreation/Activities",
            "Sports Venue",
            "Spas/Beauty/Personal Care",
            "Small Business",
            "Singer",
            "Shopping/Retail",
            "School",
            "School",
            "Retail and Consumer Merchandise",
            "Recruitment",
            "Recruitment",
            "Real Estate",
            "Public Places",
            "Programming",
            "Programming",
            "Professional Services",
            "Political Party",
            "Political Organization",
            "Photographer",
            "Pet Services",
            "Party",
            "Painter",
            "Outdoor Gear/Sporting Goods",
            "Oriental",
            "Organization Update",
            "Organization",
            "Non-Profit Organization",
            "Non-Governmental Organization (NGO)",
            "Musician",
            "Museum/Art Gallery",
            "Movie Theater",
            "Mining/Materials",
            "Media/News/Publishing",
            "Local Business",
            "Library",
            "Legal/Law",
            "Launch Party",
            "Landmark",
            "Italian Cuisine",
            "Internet/Software",
            "Insurance Company",
            "Industrials",
            "Hotel",
            "Hospital/Clinic",
            "Home Improvement",
            "Health/Medical/Pharmacy",
            "Health/Medical/Pharmaceuticals",
            "Health/Beauty",
            "Graphic Design",
            "Government Organization",
            "General",
            "Fund Raising Event",
            "Fresh Ingredients",
            "Food/Grocery",
            "Food/Beverages",
            "Field Work",
            "Field Work",
            "Farming/Agriculture",
            "Event Planning/Event Services",
            "Engineering/Construction",
            "Engineering",
            "Engineering",
            "Energy/Utility",
            "Education",
            "Education",
            "Development",
            "Development",
            "Consulting/Business Services",
            "Concert Venue",
            "Concert",
            "Computers/Technology",
            "Company",
            "Community/Government",
            "Community Organization",
            "Community meeting",
            "Comfort food",
            "Church/Religious Organization",
            "Chemicals",
            "Cause",
            "Call for action",
            "Business Update",
            "Business Startup",
            "Biotechnology",
            "Bank/Financial Institution"
    ]
}
//}

//setDefaultTarget(main)
