/**
 * @fileOverview
 * Main Lists Controller
 *
 * @author Ali Abu El Haj
 * @version 1.0
 */
var SEARCH_BUTTON = '#js-search-posts';
var MainListsController = {
    /**
     * Initialize EditUserController
     */
    init: function() {
        this.$body = $('body')
        this.search = new SearchPosts();
        this.select2El = $('.select2');
        this.$searchForm = $('#js-advanced-search-form');
        this.$postsList = $('#js-postTileContainer');
        this.isotope = new Isotope();
        this.bindEvents()
    },

    bindEvents: function() {
        this.initializeSelect2();
        this.isotope.initializeIsotope();
        this.$body.on('click', SEARCH_BUTTON, this.searchPosts.bind(this))
        $('.md-trigger').on('click', function(evt){
            evt.preventDefault();
            var $el = $(this);
            var $modal = $('#'+$(this).data('modal'));
            $('#js-posts-modal').html($('#'+$(this).data('modal')).html())
//            $modal.css('max-height', $(window).height());
            console.log("#"+$(this).data('modal'));
            $.colorbox({
                ajax: true,
                arrowKey: true,
                fixed: true,
                href: $el.data('href'),
                maxHeight: '100%',
                maxWidth: '80%',
                retinaImage: true,
                onComplete: function() {
//                    $.colorbox.resize();
                }
            });
        });
    },
    initializeSelect2: function() {
        this.select2El.select2({maximumSelectionSize: 5 });
    },
    searchPosts: function(evt) {
        evt.preventDefault()
        var self = this
        var $element = $(evt.target);
        var url = this.$searchForm.attr('action');
        $.ajax({
            type: 'post',
            url: url,
            data: self.$searchForm.serialize(),
            success: function(data) {
                self.isotope.reset()
                self.isotope.addItems($(data))
            }
        })
    }





};

$(document).ready(function() {
    MainListsController.init()
});