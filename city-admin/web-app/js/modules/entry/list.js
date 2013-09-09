var ListController = {
    /**
     * Initialize AddUserController
     */
    init: function() {
        this.$dataTable = $('#js-posts');
        this.$rejectLink = $('.js-reject');
        this.$updateStatus = $('.js-update-post-status');
        this.postStatus = new PostStatus()
        this.$dataTable.dataTable({
             bSortCellsTop: true,
             BProcessing: true,
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
                sDom: "<'row-fluid'<'widget-header'<'span6'l><'span6'f>>>rt<'row-fluid'<'widget-footer'<'span6'><'span6'p>>"
        })
        // Table Filter
        .columnFilter({
                sPlaceHolder: 'head:after',
                aoColumns: [
                {
                        type: 'text'
                }, {
                        type: 'text'
                }, {
                        type: 'select'
                }, {
                        type: 'text'
                }, {
                        type: 'select'
                }]
        });;

        $('#js-posts_length select').select2({
                minimumResultsForSearch: 6,
                width: "off"
        });
        this.bindEvents();


    },
    bindEvents: function() {
        self = this;
//        this.$dataTable.on('click', UPDATE_STATUS_LINK, self.postStatus.updateStatus.bind(this))

    }




};

$(document).ready(function() {
    ListController.init();
});