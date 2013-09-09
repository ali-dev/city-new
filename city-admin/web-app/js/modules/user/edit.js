/**
 * @fileOverview
 * Add User Controller
 *
 * @author Ali Abu El Haj
 * @version 1.0
 */
//
//'../../lib/views/user/ContactView',
//    '../../lib/views/user/LocationView'
var EditUserController = {
    /**
     * Initialize EditUserController
     */
    init: function() {
        var contactView = new ContactView();
        var locationView = new LocationView();
        this.$select2El = $('.select2');
        this.postStatus = new PostStatus()
        this.$bodyEl = $('body');

        $('textarea.auto').elastic();

        this.$dataTable = $('#js-posts');
        this.$dataTable.dataTable({
             oLanguage: {
                        sSearch: 'Global search:',
                        // sLengthMenu: '_MENU_ to page',
                        // sZeroRecords: 'No record found <button class="btn btn-danger resetTable">Reset filter</button>',
                        oPaginate: {
                                sNext: '<i class="arrowicon-r-black"></i>',
                                sPrevious: '<i class="arrowicon-l-black"></i>'
                        }
                },
                iDisplayLength: 10,

                sDom: "<'row-fluid'<'widget-header'<'span6'l><'span6'f>>>rt<'row-fluid'<'widget-footer'<'span6'><'span6'p>>"
        });

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

$(document).ready(function() {
    EditUserController.init()
});