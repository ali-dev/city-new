/**
 * @fileOverview
 * View video Controller
 *
 * @author Ali Abu El Haj
 * @version 1.0
 */
var ViewVideoController = {
    /**
     * Initialize EditVideoController
     */
    init: function() {
        this.video = Video
        this.bindEvents();
    },

    /**
     * Bind event handlers
     */
    bindEvents: function() {
        self = this;

        self.video.embedVideo($('#js-swf').attr('data-url'))

    }

};

$(document).ready(function() {
    ViewVideoController.init()
});