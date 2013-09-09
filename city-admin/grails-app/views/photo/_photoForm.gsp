<%@ page import="ps.city.core.PhotoEntry" %>
<div class="row-fluid">
    <div class="span12">
        <fieldset>
            <ul class="form-list label-left list-bordered dotted">
                <li class="section-form">
                    <h4>Photo Info</h4>
                </li>
                %{--<f:all bean="photo" except="likes,page,entryLike,slug"/>--}%
                <f:field property="title" bean="photo" value="${photo?.title}" label="Title"/>

                <f:field property="details" bean="photo" value="${photo?.details}" label="Comment"/>
                <f:field property="status" bean="photo" value="${photo?.status}" label="Status"/>
                <f:field property="tags" bean="${tagType}" value="${photo?.tags}" />


            </ul>
        </fieldset>
        <!-- // fieldset Input -->

    </div>
</div>