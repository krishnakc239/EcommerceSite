<table class="table table-responsive" width="100%" cellpadding="5" cellspacing="5">
    <tr>
        <td colspan="2"><h2>Create User</h2></td>
    </tr>
    <tr>
        <td>
            Username
        </td>
        <td>
            <g:textField name="username" value="${userInstance?.username}"></g:textField>
        </td>
    </tr>

    <tr>
        <td>
            Password
        </td>

        <td>
            <g:passwordField name="password"></g:passwordField>
        </td>
    </tr>

    <tr>
        <td>User type</td>
        <td><g:textField name="user_type" value="${userInstance?.user_type}"></g:textField> </td>
    </tr>

    <tr>
        <td>Fullname</td>
        <td><g:textField name="fullname" value="${userInstance?.fullname}"></g:textField> </td>
    </tr>

    <tr>
        <td>Email</td>
        <td><g:textField name="email" value="${userInstance?.email}"></g:textField> </td>
    </tr>


    <tr>
        <td colspan="2">
            <g:submitButton name="submit"></g:submitButton>
        </td>
    </tr>

</table>