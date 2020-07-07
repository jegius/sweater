<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    Login page
    <div>
        ${message?ifExists}
    </div>
    <@l.form "/login" false/>
    <a href="/registration">Add new user</a>
</@c.page>

