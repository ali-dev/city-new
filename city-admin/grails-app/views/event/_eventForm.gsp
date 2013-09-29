<div class="row-fluid">
    <div class="span12">
        <fieldset>
            <ul class="form-list label-left list-bordered dotted">
                <li class="section-form">
                    <h4>Event Info</h4>
                </li>
                <f:all  bean="event" except="likes,page,entryLike,slug,tags,imageExtension"/>
                <f:field property="tags" bean="${tagType}" value="${event?.tags}"/>
                <f:field property="eventPhoto" bean="event" value="${event?.eventPhoto}" />
            </ul>
        </fieldset>
        <!-- // fieldset Input -->
        <div class="form-actions">
            <button type="submit" class="btn btn-primary btn-right">Submit</button>

        </div>
    </div>
</div>