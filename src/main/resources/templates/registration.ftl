<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>


<@c.page>
    Create your account:
    ${message}
    <@l.login "/registration" />
</@c.page>