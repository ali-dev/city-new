/**
 * @fileOverview
 * Add User Controller
 *
 * @author Ali Abu El Haj
 * @version 1.0
 */
var ListController = {
    /**
     * Initialize AddUserController
     */
    init: function() {
        this.$dataTable = $('#js-users');

        this.$dataTable.dataTable({
             oLanguage: {
                        sSearch: 'Global search:',
                        sLengthMenu: '_MENU_ to page',
                        sZeroRecords: 'No record found <button class="btn btn-danger resetTable">Reset filter</button>',
                        oPaginate: {
                                sNext: '<i class="arrowicon-r-black"></i>',
                                sPrevious: '<i class="arrowicon-l-black"></i>'
                        }
                },
                iDisplayLength: 25,
                aaSorting: [
                        [0, 'desc']
                ],
                aoColumnDefs: [{
                        "aTargets": [2],
                        'sClass': 'hidden-phone'
                }, {
                        "aTargets": [3],
                        'sClass': 'hidden-phone hidden-tablet'
                }, {
                        "aTargets": [4],
                        'sType': 'eu_date'
                }],
                sDom: "<'row-fluid'<'widget-header'<'span6'l><'span6'f>>>rt<'row-fluid'<'widget-footer'<'span6'><'span6'p>>"
        });

    }


};



$(document).ready(function() {
ListController.init();
});