<%@ page import="ps.city.core.PhotoEntry" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <r:require modules="addPhoto"/>
    <g:set var="entityName" value="${message(code: 'photo.label')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<g:hasErrors bean="${photo}">
    <div class="errors">
        <g:renderErrors bean="${photo}" as="list" />
    </div>
</g:hasErrors>
<div id="page-content" class="page-content tab-content overflow-y">
    <div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
        <div class="row-fluid">
            <div class="span8 grider">
                <div class="widget widget-simple">
                    <div class="widget-header">
                        <h4><i class="fontello-icon-user"></i> Create Photo</h4>
                    </div>
                    <div class="widget-content">
                        <div class="widget-body">
                            <g:uploadForm  url="${createLink(mapping: 'createPhoto', params: [pageId : page.id])}"  class="form-horizontal" method="POST">
                                <g:render template="photoForm" model="[photo: photo]"/>
                                <fieldset>
                                <ul class="form-list label-left list-bordered dotted">
                                <f:field property="photo" bean="photo" value="${photo?.photo}">
                                    <input type="file" name="photo">
                                </f:field>
                                </ul>
                                </fieldset>
                                %{--<li class="control-group">--}%
                                    %{--<label for="photo" class="control-label">--}%
                                        %{--Photo--}%
                                        %{--<span class="required">*</span>--}%
                                    %{--</label>--}%
                                    %{--<div class="controls">--}%
                                        %{--<input type="file" name="photo" value=""/>--}%

                                        %{--<f:field bean="${bean}" type="${type}" property="${property}" value="${value}"/>--}%

                                    %{--</div>--}%
                                %{--</li>--}%
                                <div class="form-actions">
                                    <button type="submit" class="btn btn-primary btn-right">Submit</button>

                                </div>
                            </g:uploadForm>

                        </div>
                    </div>
                </div>
                <!-- // Widget -->

            </div>
            <!-- // Column -->


            <!-- // Column -->

        </div>
        <!-- // Example row -->
    </div>


</div>