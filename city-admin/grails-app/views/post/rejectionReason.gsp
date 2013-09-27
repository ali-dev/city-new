<!DOCTYPE html>
<html>
<head>
    <g:if test="${!request.xhr}">
        <meta name="layout" content="main">
    </g:if>
    <title>Rejection reason</title>
</head>
<body>


    <div class="row-fluid"> <!-- row-fluid-->
        <div class="">
            <div class="widget widget-simple">
                <div class="widget-header">
                    <h4><i class="fontello-icon-article"></i>Rejection Reason</h4>
                </div>
                <div class="widget-content">
                    
                    <div class="widget-body">
                        <div class="media-right">
                            <div class="quick-menu">
                                <div class="btn-group js-actions-container">


                                    <button data-toggle="dropdown" class="btn btn-mini dropdown-toggle btn-yellow"><i class="fontello-icon-grid"></i>Choose Template &nbsp;
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu pull-right"  >


                                        <li><a class="js-template" href="#" data-content="This data is inappropriate"><i class="icon-remove"></i><span class="divider-text"></span>Inappropriate Content</a></li>
                                        <li class="divider"></li>
                                        <li><a class="js-template" href="#" data-content="This is not a job... I am suspending you forever"><i class="icon-remove"></i><span class="divider-text"></span>Irrelevant content - Not a job</a></li>
                                        <li><a class="js-template" href="#" data-content="You can use http://www.facebook.com to post a birthday event and invite all your lame friends"><i class="icon-remove"></i><span class="divider-text"></span>Irrelevant content - Not an Event</a></li>
                                        <li><a class="js-template" href="#" data-content="If you post another cute kittens video I will murder your family"><i class="icon-remove"></i><span class="divider-text"></span>Irrelevant content - Video</a></li>
                                        <li><a class="js-template" href="#" data-content="Please don't post photos of yourself.. Your face reminds me of Diarrhea"><i class="icon-remove"></i><span class="divider-text"></span>Irrelevant content - Photo</a></li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    <g:form  action="rejectionReason" class="form-horizontal" method="POST">
                        <p><g:textArea rows="10" class="span8 auto" name="rejectionReason" id="js-reason-for-rejection"/></p>
                        <p>
                            <button class="btn btn-green"><i class="fontello-icon-mail"></i>Send email to user</button>
                            <button class="btn btn-red"><i class="fontello-icon-cancel-circle-1"></i>Don't send</button>
                        </p>

                    </g:form>

                    </div>

                </div>
            </div>
        </div>
    </div>

</body>