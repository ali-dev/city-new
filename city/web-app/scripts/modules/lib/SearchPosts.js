var SEARCH_BUTTON = '#js-search-posts';

var SearchPosts = function() {
    this.init();
};

SearchPosts.prototype = {
    init: function() {
        this.$body = $('body');
        this.$searchForm = $('#js-advanced-search-form');
        this.$postsList = $('#js-postTileContainer');
        this.isotope = new Isotope();
        this.bindEvents();
    },
    bindEvents: function() {
//        this.$body.on('click', SEARCH_BUTTON, this.searchPosts.bind(this))

    }





};
