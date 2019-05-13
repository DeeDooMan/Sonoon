<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div class="container">
    <div class="mb-1">Регистрация нового пользователя</div>
${message?ifExists}
    <@l.login "/registration" true />
</div>
</@c.page>