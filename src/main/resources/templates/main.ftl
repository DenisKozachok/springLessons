<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <@l.logout/>
    <div>
        <form method="post" action="/">
            <input type="text" name="text" test-attribute="testField" placeholder="Fill in text">
            <input type="text" name="tag" test-attribute="testTag" placeholder="Tag">
            <input type="hidden" name="_csrf" value=""${_csrf.token}""/>
            <button type="submit">Add message</button>
        </form>
    </div>

    <div>Message list</div>


    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter}">
        <button type="submit">Find</button>
    </form>
    <#list  messages as messages>
        <div>
            <b>${messages.id}</b>
            <span>${messages.text}</span>
            <i>${messages.tag}</i>
            <strong>${messages.authorName}</strong>
        </div>
    <#else>
        <b>${foundErrorMessages}</b>
    </#list>

</@c.page>