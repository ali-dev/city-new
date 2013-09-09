<%@ page import="ps.city.core.ApprovalStatus" %>
<g:select name="status" id="userRole"

          from="${ApprovalStatus.values()}"
          value="${fieldValue(bean: userInstance, field: 'userRole')}"
          class="select2"
          />

