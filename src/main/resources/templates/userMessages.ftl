<#import "parts/common.ftl" as c>
<@c.page>
<div class="container">
    <#if isCurrentUser>
        <#include "parts/messageEdit.ftl" />
    </#if>
    <#include "parts/messageList.ftl" />
</div>
</@c.page>