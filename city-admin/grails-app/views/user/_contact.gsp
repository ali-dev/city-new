<div class="form-inline contact" id="contact_<%= obj.counter %>">
    <h6 class="simple-header">Contact</h6>
    <select class="select2" placeholder="Contact Type" name="contacts[new_contact_<%= obj.counter %>][contactType]">
        <option value=""></option>
        <option value="Email">Email</option>
        <option value="Phone Number">Phone Number</option>
    </select>

    <input type="text" placeholder="Add Details" name="contacts[new_contact_<%= obj.counter %>][contactDetails]"/>
    <a class="btn btn-yellow btn-mini js-delete-contact fontello-icon-cancel-circle" data-counter="<%= obj.counter %>" href="#">Delete</a>
</div>

