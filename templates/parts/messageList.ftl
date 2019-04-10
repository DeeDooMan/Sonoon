<#include "security.ftl">

<div class="card-columns">
    <#list articles as article>
    <div class="card my-3">
        <#if article.filename??>
        <img src="/img/${article.filename}" class="card-img-top">
        </#if>
        <div class="m-2">
            <span>${article.text}</span><br/>
            <i>${article.zagalovok}</i>
            <i>#${article.text}</i>
        </div>
        <div class="card-footer text-muted">
        </div>
    </div>
    </#list>
</div>