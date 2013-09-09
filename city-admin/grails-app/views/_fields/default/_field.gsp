<li class="control-group">
    <label for="${property}" class="control-label">
        <g:message code="${label}" default="${label}" />
        <span class="required">*</span>
    </label>
    <div class="controls">
        <f:input bean="${bean}"  property="${property}" value="${value}"/>

        %{--<f:field bean="${bean}" type="${type}" property="${property}" value="${value}"/>--}%

    </div>
</li>