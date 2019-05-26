<#import "parts/common.ftl" as c>
<@c.page>

    <div class="container">
        <div  class="form-group row">
            <form action="/user/feedback" method="post" >
                <label class="col-sm-2 col-form-label">Обратная связь:</label>
                <div class="form-group"><label><input type="text" name="absender" placeholder="Ваше имя" /></label></div>
                <div class="form-group"><label><input type="text" name="feedback" placeholder="Ваше предложение"/></label></div>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <div class="form-group"><button type="submit" class="btn btn-success" value="feedbackSend">Отправить</button></div>
                <#if feedbackError??>
                    <div class="invalid-feedback">
                            ${feedbackError}
                    </div>
                </#if>
            </form>
        </div>
    </div>
</@c.page>
