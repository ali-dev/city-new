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
grails.resources.adhoc.patterns = ['/images/*', '/css/*', '/js/*', '/plugins/*', '/styles/*']

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

grails.plugins.springsecurity.password.algorithm='SHA-512'

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
/////////////////// IMAGE UPLOADS /////////////////////
import pl.burningice.plugins.image.engines.scale.ScaleType

bi.PhotoEntry = [
        outputDir: ['path':'/Users/ali_abulhaj/grails-projects/city/uploads/', 'alias':'/uploads/'],
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
        outputDir: ['path':'/Users/ali_abulhaj/grails-projects/city/uploads/', 'alias':'/uploads/'],
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

bi.EventEntry = [
        outputDir: ['path':'/Users/ali_abulhaj/grails-projects/city/uploads/', 'alias':'/uploads/'],
        prefix: 'eventImage',
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
grails.resources.modules = {
    core {
        dependsOn 'jquery, respond, isotope'
        resource url:'/scripts/global.js', disposition: 'head'
//        resource url:'/css/main.css'
    }

    respond {
        dependsOn 'jquery'
        resource url: '/scripts/respond.min.js', disposition: 'head'
    }

    isotope {
        dependsOn 'jquery'
        resource url: '/scripts/jquery.isotope.min.js'
        resource url: '/scripts/modules/lib/Isotope.js'
    }

    select2 {
        dependsOn 'jquery'
        resource url: '/scripts/vendor/select2/select2.min.js'
        resource url: '/scripts/vendor/select2/select2.css'
    }

    searchPosts {
        dependsOn 'jquery, isotope'
        resource url: '/scripts/modules/lib/SearchPosts.js'
    }
    colorbox {
        dependsOn 'jquery'
        resource url: '/scripts/vendor/colorbox/colorbox.css'
        resource url: '/scripts/vendor/colorbox/jquery.colorbox-min.js'
    }

    postsListPages {
        dependsOn 'select2, isotope, searchPosts, colorbox'
//        resource url: '/styles/component.css'
//        resource url: '/scripts/vendor/scroll/css/website.css'


//        resource url: '/scripts/vendor/modal/classie.js'
//        resource url: '/scripts/vendor/modal/modalEffects.js'
//        resource url: '/scripts/vendor/modal/cssParser.js'
//        resource url: '/scripts/vendor/scroll/jquery.tinyscrollbar.min.js'
        resource url: '/scripts/modules/posts/MainLists.js'
    }



}
