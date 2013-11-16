
var Isotope = function() {
    this.init();
};

Isotope.prototype = {
    init: function() {
        this.isotopeEl = undefined;
    },
    initializeIsotope: function() {
        var $container = $('#js-postTileContainer');

        this.isotopeEl = $container.isotope({
            itemSelector : '.js-postTileItem',
            layoutMode : 'masonry',
            animationEngine : 'css'
        });


    },
    reset: function() {
        console.log($('#js-postTileContainer').children());
        this.isotopeEl.isotope('remove', $('#js-postTileContainer').children())
    },
    addItems: function(items) {
        this.isotopeEl.isotope('insert', items)
    },

    reloadItems: function() {
        this.isotopeEl.isotope('reLayout')
//        this.isotopeEl.isotope('reloadItems')

    }


};
