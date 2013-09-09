var UPDATE_STATUS_LINKS = '.js-update-post-status';

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
            }
        })
    },

    getNewStatus: function() {
        return this.newStatus;
    }

}


