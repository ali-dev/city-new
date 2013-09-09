//includeTargets << grailsScript("_GrailsInit")

import ps.city.core.AlbumEntry
import ps.city.core.EventEntry
import ps.city.core.domain.User
import ps.city.core.VideoEntry

target(main: "The description of the script goes here!") {
    // Create businesses, Artists, Organizations
    for (i in 1..50) {
        User.build(fullName : 'FullName'+i, accountType : 'business')
        User.build(fullName : 'FullName'+i, accountType : 'artist')
        User.build(fullName : 'FullName'+i, accountType : 'organization')
    }

    def businesses = User.findAllByAccountType('business')
    def artists = User.findAllByAccountType('artist')

    businesses.each(){
        EventEntry.build(page : it.getPage(), title: 'event'+it.id)
    }
    artists.each(){
        VideoEntry.build(page : it.getPage(), title: 'video'+it.id)
        AlbumEntry.build(page : it.getPage(), title: 'album'+it.id)

    }
}

setDefaultTarget(main)
