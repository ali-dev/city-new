// locations to search for config files that get merged into the main config;
// config files can be ConfigSlurper scripts, Java properties files, or classes
// in the classpath in ConfigSlurper format

// grails.config.locations = [ "classpath:${appName}-config.properties",
//                             "classpath:${appName}-config.groovy",
//                             "file:${userHome}/.grails/${appName}-config.properties",
//                             "file:${userHome}/.grails/${appName}-config.groovy"]

// if (System.properties["${appName}.config.location"]) {
//    grails.config.locations << "file:" + System.properties["${appName}.config.location"]
// }

grails.project.groupId = appName // change this to alter the default package name and Maven publishing destination
grails.mime.file.extensions = true // enables the parsing of file extensions from URLs into the request format
grails.mime.use.accept.header = false
//grails.resources.debug = true
grails.mime.types = [
    all:           '*/*',
    atom:          'application/atom+xml',
    css:           'text/css',
    csv:           'text/csv',
    form:          'application/x-www-form-urlencoded',
    html:          ['text/html','application/xhtml+xml'],
    js:            'text/javascript',
    json:          ['application/json', 'text/json'],
    multipartForm: 'multipart/form-data',
    rss:           'application/rss+xml',
    text:          'text/plain',
    xml:           ['text/xml', 'application/xml']
]

// URL Mapping Cache Max Size, defaults to 5000
//grails.urlmapping.cache.maxsize = 1000

// What URL patterns should be processed by the resources plugin
grails.resources.adhoc.patterns = ['/images/*', '/css/*', '/js/*', '/plugins/*']

// The default codec used to encode data with ${}
grails.views.default.codec = "none" // none, html, base64
grails.views.gsp.encoding = "UTF-8"
grails.converters.encoding = "UTF-8"
// enable Sitemesh preprocessing of GSP pages
grails.views.gsp.sitemesh.preprocess = true
// scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'

// Set to false to use the new Grails 1.2 JSONBuilder in the render method
grails.json.legacy.builder = false
// enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true
// packages to include in Spring bean scanning
grails.spring.bean.packages = []
// whether to disable processing of multi part requests
grails.web.disable.multipart=false

// request parameters to mask when logging exceptions
grails.exceptionresolver.params.exclude = ['password']

// configure auto-caching of queries by default (if false you can cache individual queries with 'cache: true')
grails.hibernate.cache.queries = false

environments {
    development {
        grails.logging.jul.usebridge = true
    }
    production {
        grails.logging.jul.usebridge = false
        // TODO: grails.serverURL = "http://www.changeme.com"
    }
}

// log4j configuration
log4j = {
    // Example of changing the log pattern for the default console appender:
    //
    //appenders {
    //    console name:'stdout', layout:pattern(conversionPattern: '%c{2} %m%n')
    //}

    error  'org.codehaus.groovy.grails.web.servlet',        // controllers
           'org.codehaus.groovy.grails.web.pages',          // GSP
           'org.codehaus.groovy.grails.web.sitemesh',       // layouts
           'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
           'org.codehaus.groovy.grails.web.mapping',        // URL mapping
           'org.codehaus.groovy.grails.commons',            // core / classloading
           'org.codehaus.groovy.grails.plugins',            // plugins
           'org.codehaus.groovy.grails.orm.hibernate',      // hibernate integration
           'org.springframework',
           'org.hibernate',
           'net.sf.ehcache.hibernate'
}

grails.plugins.springsecurity.password.algorithm='SHA-512'

grails.plugins.springsecurity.userLookup.userDomainClassName = "ps.city.core.User"

grails.plugins.springsecurity.securityConfigType = "InterceptUrlMap"


grails.plugins.springsecurity.interceptUrlMap = [
//        '/secure/**':    ['ROLE_ADMIN'],
//        '/finance/**':   ['ROLE_FINANCE', 'IS_AUTHENTICATED_FULLY'],
//        '/user/**': ['ROLE_ADMIN', 'IS_AUTHENTICATED_FULLY'],
//        '/js/**':        ['IS_AUTHENTICATED_ANONYMOUSLY'],
//        '/css/**':       ['IS_AUTHENTICATED_ANONYMOUSLY'],
//        '/images/**':    ['IS_AUTHENTICATED_ANONYMOUSLY'],
//        '/*':            ['IS_AUTHENTICATED_ANONYMOUSLY'],
//        '/login/**':     ['IS_AUTHENTICATED_ANONYMOUSLY'],
//        '/logout/**':    ['IS_AUTHENTICATED_ANONYMOUSLY']
]


/////////////////// IMAGE UPLOADS /////////////////////
import pl.burningice.plugins.image.engines.scale.ScaleType

bi.PhotoEntry = [
        outputDir: '/uploads',
        prefix: 'mySuperImage',
        images: [
                'large':[scale:[width:800, height:600, type:ScaleType.APPROXIMATE]],
                'small':[scale:[width:100, height:100, type:ScaleType.ACCURATE]],
        ],
        constraints:[
                nullable:true,
//                maxSize:5000,
                contentType:['image/gif', 'image/png', 'image/jpeg']
        ]
]

bi.Page = [
        outputDir: '/uploads',
        prefix: 'pageImage',
        images: [
                'large':[scale:[width:800, height:600, type:ScaleType.APPROXIMATE]],
                'small':[scale:[width:100, height:100, type:ScaleType.ACCURATE]],
        ],
        constraints:[
                nullable:true,
//                maxSize:5000,
                contentType:['image/gif', 'image/png', 'image/jpeg']
        ]
]

//////////////// JS RESOURCES /////////////
grails.resources.modules = {
    //        core {
//            dependsOn 'jquery, utils'
//            defaultBundle 'ui'
//            resource url:'/js/core.js', disposition: 'head'
//            resource url:'/js/ui.js'
//            resource url:'/css/main.css',
//                    resource url:'/css/branding.css'
//            resource url:'/css/print.css', attrs:[media:'print']
//        }

//        utils {
//            dependsOn 'jquery'
//
//            resource url:'/js/utils.js'
//        }
//
//
//        forms {
//            dependsOn 'core,utils'
//            defaultBundle 'ui'
//
//            resource url:'/css/forms.css'
//            resource url:'/js/forms.js'
//        }
    dataTables {
        dependsOn 'jquery'
        resource url:'css/plugins/pl-table/datatables/media/js/jquery.dataTables.js'
    }

    dataTablesPlugins {
        dependsOn 'dataTables'
        resource url: 'css/plugins/pl-table/datatables/plugin/jquery.dataTables.plugins.js'
    }
    columnFilter {
        dependsOn 'dataTables'
        resource url: 'css/plugins/pl-table/datatables/plugin/jquery.dataTables.columnFilter.js'
    }

    select2 {
        dependsOn 'jquery'
        resource url: 'css/plugins/pl-form/select2/select2.min.js'
    }
    colorbox {
        dependsOn 'jquery'
        resource url: 'css/plugins/colorbox/colorbox.css'
        resource url: 'css/plugins/colorbox/jquery.colorbox-min.js'
    }

    application {
        dependsOn 'jquery, colorbox'
        resource url: 'js/application.js'
    }

    elastic {
        dependsOn 'jquery'
        resource url: 'css/plugins/pl-form/elastic/jquery.elastic.js'
    }
    AddContactView {
        resource url: 'js/modules/user/lib/ContactView.js'
    }
    AddLocationView {
        resource url: 'js/modules/user/lib/LocationView.js'

    }
    PostStatus {
        dependsOn('jquery')
        resource url: 'js/modules/lib/postStatus.js'
    }

    adminUserList {
        dependsOn 'dataTablesPlugins, select2, bootstrap-js'

        resource url:'/js/modules/user/list.js'
    }

    adminUserEdit {
        dependsOn 'dataTablesPlugins, columnFilter, select2, bootstrap-js, AddContactView, AddLocationView, elastic, handlebars_runtime, PostStatus'
        resource url:'templates/contact.handlebars', attrs: [type: 'js'], bundle:'bundle_adminUserEdit'
        resource url:'templates/location.handlebars', attrs: [type: 'js'], bundle:'bundle_adminUserEdit'
        resource url:'/js/modules/user/edit.js'
    }

    swfObject {
        resource url:'/js/swfobject.js'
    }

    postsList {
        dependsOn 'dataTablesPlugins,columnFilter, select2, bootstrap-js, PostStatus'

        resource url:'/js/modules/entry/list.js'
    }
    video {
        dependsOn 'swfObject'
        resource url:'/js/modules/lib/video.js'
    }
    viewPost {
        dependsOn('jquery', 'colorbox', 'video')
        resource url: '/js/modules/entry/viewPost.js'
    }
    dashboard {
        dependsOn('bootstrap-js', 'jquery', 'PostStatus')
        resource url: '/js/modules/dashboard/dashboard.js'
    }

    viewVideo {
        dependsOn 'jquery, video'
        resource url : 'js/modules/entry/viewVideo.js'
    }


    editVideo {
        dependsOn 'jquery,select2, bootstrap-js, elastic, video, colorbox'
        resource url:'/js/modules/video/edit.js'
    }

    addVideo {
        dependsOn 'jquery,select2, bootstrap-js, elastic, video, colorbox'
        resource url:'/js/modules/video/add.js'
    }

    editEvent {
        dependsOn 'jquery,select2, bootstrap-js, elastic'
        resource url:'/js/modules/event/edit.js'
    }

    addEvent {
        dependsOn 'jquery,select2, bootstrap-js, elastic'
        resource url:'/js/modules/event/add.js'
    }

    editJob {
        dependsOn 'jquery,select2, bootstrap-js, elastic'
        resource url:'/js/modules/job/edit.js'
    }

    addJob {
        dependsOn 'jquery,select2, bootstrap-js, elastic'
        resource url:'/js/modules/job/add.js'
    }

    editPhoto {
        dependsOn 'jquery,select2, bootstrap-js, elastic'
        resource url:'/js/modules/photo/edit.js'
    }

    addPhoto {
        dependsOn 'jquery,select2, bootstrap-js, elastic'
        resource url:'/js/modules/photo/add.js'
    }


}
