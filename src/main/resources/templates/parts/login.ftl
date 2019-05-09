<#macro login path isRegisterForm>
    <!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />

        <!-- The stylesheets -->
    <link rel="stylesheet" href="assets/css/styles.css" />
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700" />

        <!--[if lt IE 9]>
          <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <style>
    #main
    {
        width: 100%;
        height: 100%;
        margin: 0;
        padding:6px;
        color: #3e28ba;
        font-style: italic;
        font-weight:normal;
        font-family:"monospace";
        font-size:110%;

    }

    #nazv
    {
        width: 100%;
        height: 100%;
        margin: 0;
        padding: 0;
        color: #3e28ba;
        font-style: normal;
        font-weight:normal;
        font-family:"monospace";
        font-size:120%;
    }

    .form-group row {
    padding: 0;
    width: 100%;
        height: 100%;
        margin: 0;
        }

</style>
    </head>

    <body>

        <h4 id="nazv">Регистрация через Google</h4>
        <div id="main">

            <?php if($person):?>
                <div id="avatar" style="background-image:url(<?php echo $person->photo?>?sz=58)"></div>
                <a href="?logout">Выйти</a>
            <?php else:?>
                <a href="<?php echo $client->createAuthUrl()?>">Войти через Google</a>
            <?php endif;?>

        </div>


<form action="${path}" method="post">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Логин :</label>
        <div class="col-sm-6">
            <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                   class="form-control ${(usernameError??)?string('is-invalid', '')}"
                   placeholder="Логин" />
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
    <#if isRegisterForm>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Пароль:</label>
            <div class="col-sm-6">
                <input type="password" name="password2"
                       class="form-control ${(password2Error??)?string('is-invalid', '')}"
                       placeholder="Введите снова пароль" />
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
    </#if>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <#if !isRegisterForm><a href="/registration">Добавить нового пользователя</a></#if>
    <button class="btn btn-primary" type="submit"><#if isRegisterForm>Создать<#else>Войти</#if></button>
</form>
</#macro>

<#macro login1>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button class="btn btn-primary" type="submit">Войти</button>
</form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button class="btn btn-primary" type="submit">Выйти</button>
</form>
</body>
</html>
</#macro>
