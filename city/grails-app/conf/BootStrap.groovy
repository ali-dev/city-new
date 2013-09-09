import ps.city.core.EventEntry
import ps.city.core.VideoEntry
import ps.city.core.AlbumEntry
import ps.city.core.domain.User


class BootStrap {

    def init = { servletContext ->
        environments {
            production {
            }
            development {

//                // Create businesses, Artists, Organizations
//                for (i in 1..50) {
//                    User.build(fullName : 'FullName'+i, accountType : 'business')
//                    User.build(fullName : 'FullName'+i, accountType : 'artist')
//                    User.build(fullName : 'FullName'+i, accountType : 'organization')
//                }
//
//                def businesses = User.findAllByAccountType('business')
//                def artists = User.findAllByAccountType('artist')
//
//                businesses.each(){
//                    EventEntry.build(page : it.getPage(), title: 'event'+it.id)
//                }
//                artists.each(){
//                    VideoEntry.build(page : it.getPage(), title: 'video'+it.id)
//                    AlbumEntry.build(page : it.getPage(), title: 'album'+it.id)
//
//                }

            }
            test {
            }
        }
    }
    def destroy = {
    }
}
