<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>


<@c.page>
Login page
<div>
    <@l.login "/login"/>
<#--    <@l.register />-->
    <form action="/registration" method="GET">
        <input type="submit" value="Registration"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    </form>
</div>
</@c.page>