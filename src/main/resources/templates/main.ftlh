<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div>
        <div>
            <@l.logout />
            <span><a href="/user">User list</a></span>
        </div>
        <div>
            <form method="post" enctype="multipart/form-data">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="text" name="text" placeholder="Enter the name">
                <input type="text" name="tag" placeholder="Enter the tag">
                <input type="file" name="file" >
                <input type="submit" value="send">
            </form>
            <form method="get" action="/main">
                <input type="text" name="filter" value="${filter?ifExists}">
                <input type="submit" value="send">
            </form>
        </div>
        <div>
            <#list messages as message>
                <div>
                    <b>${message.id}</b>
                    <b>${message.text}</b>
                    <b>${message.tag}</b>
                    <strong>${message.authorName}</strong>
                    <div>
                        <#if message.fileName??>
                            <img src="/img/${message.fileName}" alt="">
                        </#if>
                    </div>
                </div>
                <#else>
                No messages
            </#list>
        </div>
    </div>
</@c.page>
