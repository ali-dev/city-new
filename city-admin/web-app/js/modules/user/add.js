/**
 * @fileOverview
 * Add User Controller
 *
 * @author Ali Abu El Haj
 * @version 1.0
 */
define(
    [
        'jquery',
        'select2',
        '../../lib/views/user/ContactView',
        '../../lib/views/user/LocationView'
    ], function(
        $,
        select2,
        ContactView,
        LocationView
    ) {
        "use strict";

        var AddUserController = {
            /**
             * Initialize AddUserController
             */
            init: function() {
                var contactView = new ContactView();
                var locationView = new LocationView();
                this.$select2El = $('.selecttwo');
                this.$bodyEl = $('body');

                this.$select2El.select2({
                    minimumResultsForSearch: 10
                });

                this.bindEvents();
            },

            /**
             * Bind event handlers
             */
            bindEvents: function() {
               	this.initializeSelect2(); 
            },

             /**
             * Initialize select 2
             * 
             */
            initializeSelect2: function() {
                this.$select2El.select2({
                    minimumResultsForSearch: 10
                });
            }

            
        };

        return AddUserController;
    }
);