<table class="table table-responsive" width="100%" cellpadding="5" cellspacing="5">
    <tr>
        <td colspan="2"><h2>Create Category</h2></td>
    </tr>
    <tr>
        <td>
            Category name
        </td>
        <td>
            <g:textField name="name" value="${categoryInstance?.name}"></g:textField>
        </td>
    </tr>

    <tr>
        <td>Image</td>
        <td><input type="file" name="imageFile" value="${categoryInstance?.image}">
        </td>
    </tr>
    <tr>
        <td>
            Description
        </td>
        <td>
            <g:textField name="description" value="${categoryInstance?.description}"></g:textField>
        </td>
    </tr>


    <tr>
        <td colspan="2">
            <g:submitButton name="submit"></g:submitButton>
        </td>
    </tr>

</table>