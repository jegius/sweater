<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    Add new user
    <div>
        ${message?ifExists}
    </div>
    <@l.form "/registration" true />
</@c.page>
