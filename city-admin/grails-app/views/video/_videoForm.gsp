<div class="row-fluid">
    <div class="span12">
        <fieldset>
            <ul class="form-list label-left list-bordered dotted">
                <li class="section-form">
                    <h4>Video Info</h4>
                </li>
                %{--<f:all bean="video" except="likes,page,entryLike,slug,tags"/>--}%
                <f:field property="title" bean="video" />
                <f:field property="status" bean="video" />
                <f:field property="details" bean="video" />

                <f:field property="tags" bean="${tagType}" value="${video?.tags}"/>
                <f:field property="videoType" bean="video" />
                <f:field property="url" bean="video" />
            </ul>
        </fieldset>
        <!-- // fieldset Input -->
        <div class="form-actions">
            <button type="submit" class="btn btn-primary btn-right">Submit</button>

        </div>
    </div>
</div>