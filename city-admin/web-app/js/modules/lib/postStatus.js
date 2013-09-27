var UPDATE_STATUS_LINKS = '.js-update-post-status';
var REASON_FOR_REJECTION = '#js-reason-for-rejection';
var TEMPLATES = '.js-template';

var PostStatus = function() {
    this.init();
};

PostStatus.prototype = {
    init: function() {
        this.newStatus = '';

        this.$body = $('body');

        this.bindEvents()
    },
    bindEvents: function() {

        this.$body.on('click', UPDATE_STATUS_LINKS, this.updateStatus.bind(this))
        this.$body.on('click', TEMPLATES, this.updateReasonForRejectionField.bind(this))

    },
    updateStatus: function(evt) {
        evt.preventDefault()
        var self = this
        var $el = $(evt.target);

        this.newStatus = $el.attr('data-next-status');
        $.ajax({
            type: 'get',
            url: $el.attr('href'),
            success: function(data) {
                var parentElement = $el.parent().parent().parent(); //('.js-actions-container')
                var statusColumn = $el.parents('tr').find('.js-status');
                parentElement.html(data)
                if (statusColumn.length) {
                    statusColumn.html(self.newStatus)
                }
                console.log(parentElement)
                if (self.newStatus == 'REJECTED') {
                    var postId = parentElement.attr('data-post-id');
                    $.colorbox({
                        width: '500px',
                        height: '500px',
                        href : '/city-admin/post/'+ postId +'/rejection-reason'
                    });
                }
            }
        })
    },
    updateReasonForRejectionField: function(evt) {
        evt.preventDefault();
        var $el = $(evt.target);
        var $field = $(REASON_FOR_REJECTION);
        $field.val($el.attr('data-content'));
    },

    getNewStatus: function() {
        return this.newStatus;
    }

}


