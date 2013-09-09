
var ContactView = function() {
    this.$contactList = $('#js-contact-list');
    this.$addContactLink = $('#js-add-contact');


    this.init();
};
ContactView.prototype = {
    init: function() {
        this.counter = 1;
        if ($('.contact').length) {
            this.counter = $('.contact').length;
        }
        this.bindEvents();
    },
    /**
     * Bind event handlers
     */
    bindEvents: function() {
        var self = this;
        var $addContactLink = this.$addContactLink;



        // Add Row
        $addContactLink.on('click', function(evt){
            evt.preventDefault();
            self.addRow();
        });

        // Delete Row
        this.$contactList
            .on('click', '.js-delete-contact', function(evt){
                evt.preventDefault();
                self.deleteRow($(this));
            }
        );
    },

    /**
     * Add contact row
     */
    addRow: function() {

        var newRow = Handlebars.templates['templates/contact']({counter : this.counter})
        var newBlock = this.$contactList.append(newRow);
        newBlock.children('.selects').select2();

        this.counter++;
    },

    deleteRow: function(element) {
        var counter = element.attr('data-counter');
        $('#contact_'+counter).remove();

    }


};


