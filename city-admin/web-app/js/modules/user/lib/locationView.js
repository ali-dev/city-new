var LocationView = function() {
    this.$locationList = $('#js-location-list');
    this.$addLocationLink = $('#js-add-location');


    this.init();
};
LocationView.prototype = {
    init: function() {
        this.counter = 1;
        if ($('.location').length) {
            this.counter = $('.location').length;
        }
        this.bindEvents();
    },
    /**
     * Bind event handlers
     */
    bindEvents: function() {
        var self = this;
        var $addLocationLink = this.$addLocationLink;



        // Add Row
        $addLocationLink.on('click', function(evt){
            evt.preventDefault();
            self.addRow();
        });

        // Delete Row
        this.$locationList
            .on('click', '.js-delete-location', function(evt){
                evt.preventDefault();
                self.deleteRow($(this));
            }
        );
    },

    /**
     * Add location row
     */
    addRow: function() {
        var newRow = Handlebars.templates['templates/location']({counter : this.counter})
        this.$locationList.append(newRow);

        this.counter++;
    },

    deleteRow: function(element) {
        var counter = element.attr('data-counter');
        $('#location_'+counter).remove();

    }



};
