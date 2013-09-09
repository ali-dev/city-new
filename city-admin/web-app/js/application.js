//if (typeof jQuery !== 'undefined') {
//	(function($) {
//		$('#spinner').ajaxStart(function() {
//			$(this).fadeIn();
//		}).ajaxStop(function() {
//			$(this).fadeOut();
//		});
//	})(jQuery);
//}

/**
 * @fileOverview
 * Application Controller
 *
 * @author Ali Abu El Haj
 * @version 1.0
 */
ADD_USER_LINK = '#js-add-user-link';
var ApplicationController = {
    /**
     * Initialize EditVideoController
     */
    init: function() {
        this.$body = $('body')
        this.bindEvents();
    },

    /**
     * Bind event handlers
     */
    bindEvents: function() {
//        $.colorbox({
//            inline:true,
//            href:"#js-create-user-modal",
//            innerWidth: '1300px',
//            onComplete: function() {
//                $.colorbox.resize()
//            }
//
//        })

        $("#js-add-user-link").colorbox({
            inline:true,
            innerWidth: '1300px',
            onComplete: function() {
                $.colorbox.resize()
            }
        });
//        this.$body.on('click', ADD_USER_LINK, this.displayUserModal.bind(this));
    },


    displayUserModal: function(evt) {
        evt.preventDefault()

        $.colorbox({
            inline:true,
            href:"#js-create-user-modal",
            innerWidth: '1300px',
            onComplete: function() {
                $.colorbox.resize()
            }

        })

    }

};

$(document).ready(function() {
    ApplicationController.init()
});
