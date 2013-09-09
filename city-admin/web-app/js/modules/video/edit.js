/**
 * @fileOverview
 * Edit Video Controller
 *
 * @author Ali Abu El Haj
 * @version 1.0
 */
VIDEO_TYPE_FIELD = '#js-videoType';
URL_FIELD = '#url';
PREVIEW_BTN = '.js-preview';

var EditVideoController = {
    /**
     * Initialize EditVideoController
     */
    init: function() {
        this.$select2El = $('.select2');
        this.video = new Video()
        this.$body = $('body')
        $('textarea.auto').elastic();

        this.bindEvents();
    },

    /**
     * Bind event handlers
     */
    bindEvents: function() {
        var self = this
        this.initializeSelect2();
        this.$body.on('change', URL_FIELD, this.validateVideo.bind(this));
        this.$body.on('change', VIDEO_TYPE_FIELD, this.validateVideo.bind(this));

        this.$body.on('click', PREVIEW_BTN, this.previewVideo.bind(this));
    },

    /**
     * Initialize select 2
     *
     */
    initializeSelect2: function() {
        this.$select2El.select2({
            minimumResultsForSearch: 10
        });
    },
    validateVideo: function(evt) {
        evt.preventDefault()
        $el = $(evt.target)
        var self = this
        $('.js-url-validation').remove()
        var videoType = $(VIDEO_TYPE_FIELD).val();
        var isValid = self.video
            .setVideoType(videoType)
            .setUrl($('#url').val())
            .isValid()
        if (isValid) {
            $(URL_FIELD).after('<a class="btn btn-green fontello-icon-video-1 js-url-validation js-preview" type="button">Preview</a>')
        } else {
            $(URL_FIELD).after('<span class="btn btn-red js-url-validation" >Invalid url</span>')
        }




    },

    previewVideo: function(evt) {
        evt.preventDefault()
        var self = this;
        if (self.video.getVideoType() == 'Youtube') {
            $.colorbox({
                inline:true,
                href:"#js-youtube-video",
                innerWidth: '600px',
                onComplete: function() {
                    self.video.setTargetElementId('js-swf').embedVideo()
                    $.colorbox.resize()
                }

            })
        } else {
            $.colorbox({
                inline:true,
                href:"#js-vimeo-video",
                innerWidth: '600px',
                onComplete: function() {
                    self.video.setTargetElementId('js-vimeo-player').embedVideo()
                    $.colorbox.resize()
                }

            })
        }
    }


};

$(document).ready(function() {
    EditVideoController.init()
});