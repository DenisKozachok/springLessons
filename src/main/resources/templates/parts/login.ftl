<#macro login path>
    <form action="${path}" method="POST">
        <div><label> User Name : <input type="text" name="userName"/> </label></div>
        <div><label> Password: <input type="password" name="password"/> </label></div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="submit" value="Sign In"/>
    </form>
</#macro>

<#macro register>

</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="submit" value="Sign Out"/>
    </form>
</#macro>