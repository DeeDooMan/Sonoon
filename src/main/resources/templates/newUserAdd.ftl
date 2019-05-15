<#import "parts/common.ftl" as c>

<@c.page>
<div class="container">
       <h3>Добавление нового пользователя</h3>
    <form action="/newUserAdd" method="post">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Логин :</label>
        <div class="col-sm-6">
            <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                   class="form-control ${(usernameError??)?string('is-invalid', '')}"
                   placeholder="User name" />
            <#if usernameError??>
    <div class="invalid-feedback">
                    ${usernameError}
    </div>
            </#if>
</div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Пароль:</label>
        <div class="col-sm-6">
            <input type="password" name="password"
                   class="form-control ${(passwordError??)?string('is-invalid', '')}"
                   placeholder="Пароль" />
            <#if passwordError??>
    <div class="invalid-feedback">
                    ${passwordError}
    </div>
            </#if>
</div>
    </div>

    <div class="form-group row">
            <label class="col-sm-2 col-form-label">Пароль ещё раз:</label>
            <div class="col-sm-6">
                <input type="password" name="password2"
                       class="form-control ${(password2Error??)?string('is-invalid', '')}"
                       placeholder="Пароль ещё раз" />
                <#if password2Error??>
        <div class="invalid-feedback">
                        ${password2Error}
        </div>
                </#if>
    </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Email:</label>
            <div class="col-sm-6">
                <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                       class="form-control ${(emailError??)?string('is-invalid', '')}"
                       placeholder="some@some.com" />
                <#if emailError??>
        <div class="invalid-feedback">
                        ${emailError}
        </div>
                </#if>
    </div>
        </div>

<input type="hidden" name="_csrf" value="${_csrf.token}" />
   <button class="btn btn-primary" type="submit">Создать</button>
</form>
</div>
</@c.page>