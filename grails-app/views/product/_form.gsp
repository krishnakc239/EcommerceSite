<table class="table table-responsive" width="100%" cellpadding="5" cellspacing="5">
    <tr>
        <td colspan="2"><h2>Create Product</h2></td>
    </tr>
    <tr>
        <td>
            Product Name
        </td>
        <td>
            <g:textField name="name" value="${productlist?.name}"></g:textField>
        </td>
    </tr>

    <tr>
        <td>Image</td>
        <td><input type="file" name="imageFile" height="100px" width="100px">
        </td>
    </tr>
    <tr>
        <td>
            Description
        </td>
        <td>
            <g:textField name="description" value="${productlist?.description}"></g:textField>
        </td>
    </tr>
    <tr>
        <td>
            Category Type
        </td>
        <td>
        <select name="category">
            <g:each in="${categorylist}" var="cat" noselect="choose category">
            <option value="${cat.id}">${cat.name}</option>
            </g:each>
        </select>
        </td>
    </tr>
    <td>
        Price
    </td>
    <td><span><button class="btn-sm">$</button></span>
        <g:textField name="price" value="${productlist?.price}"> </g:textField>
    </td>
     <tr>
         <td>
             Discount
         </td>
         <td>
             <g:textField name="discount" value="${productlist?.discount}"></g:textField>
         </td>
        <td colspan="2">
            <g:submitButton name="submit"></g:submitButton>
        </td>
    </tr>

</table>