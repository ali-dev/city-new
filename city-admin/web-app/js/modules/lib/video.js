var YOUTUBE = 'Youtube';
var VIMEO = 'Vimeo';

var Video = function() {
    this.init();
};

Video.prototype = {
    init: function() {
        this.videoType = YOUTUBE; // youtube is default
        this.valid = false;
        this.videoId = undefined;
        this.url = undefined;
        this.targetElementId = '';
    },
    embedVideo: function() {
        if (this.isValid()) {
            var params = { allowScriptAccess: "always" };
            var atts = { id: this.targetElementId };
            var videoId = this.videoId

            if (this.isYouTube()) {
                swfobject.embedSWF("http://www.youtube.com/v/"+videoId+"?enablejsapi=1&playerapiid=ytplayer&version=3",
                    this.targetElementId, "600", "356", "8", null, null, params, atts);
            } else if(this.isVimeo()) {
                // embed vimeo
                $('#'+this.targetElementId).attr('src', 'http://player.vimeo.com/video/'+videoId+'?api=1');

            }
        }
    },
    isValid: function() {
        var url = this.getUrl()
        this.valid = false
        if (this.isYouTube()) {
            var video_id = url.split('v=')[1];
            if (video_id) {
                var ampersandPosition = video_id.indexOf('&');
                if(ampersandPosition != -1) {
                    video_id = video_id.substring(0, ampersandPosition);
                }
            }
            if (video_id) {
                this.videoId = video_id
                this.valid = true
            }
        } else if(this.isVimeo()) {
            var regExp = /http:\/\/(www\.)?vimeo.com\/(\d+)($|\/)/;

            var match = url.match(regExp);

            if (match){
                this.videoId = match[2]
                this.valid = true
            }
        }
        return this.valid
    },

    setTargetElementId: function(targetElementId) {
        this.targetElementId = targetElementId
        return this
    },
    getTargetElementId: function() {
        return this.targetElementId
    },
    setUrl: function(url) {
        this.url = url
        return this
    },

    getUrl: function() {
        return this.url
    },

    getVideoType: function() {
        return this.videoType
    },

    setVideoType: function(videoType) {
        this.videoType = videoType
        return this
    },

    isYouTube: function() {
        return this.getVideoType() === YOUTUBE;
    },

    isVimeo: function() {
        return this.getVideoType() === VIMEO;
    }



};
