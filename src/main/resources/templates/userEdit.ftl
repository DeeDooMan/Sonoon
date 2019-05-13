<#import "parts/common.ftl" as c>

<@c.page>
<div class="container">
<a class="py-2 d-block">Изменение данных</a>

<form action="/user" method="post" class="py-2 d-block">
    <input type="text" name="username" value="${user.username}">
    <#list roles as role>
    <div>
        <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
    </div>
    </#list>
<input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit">Save</button>
</form>
</div>
</@c.page>