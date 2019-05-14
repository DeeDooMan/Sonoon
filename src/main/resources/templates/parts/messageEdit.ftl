<#include "security.ftl">

<div class="container">
<#if isEditor>
    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Обновить предложение
</a>
<div class="collapse" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
        <div class="form-group">
                            <input type="text" class="form-control" name="tag" value="<#if message??>${message.tag}</#if>" placeholder="Введите заголовок" />
                        </div>
            <div class="form-group">
                <input type="text" class="form-control" id="exampleFormControlTextarea1" rows="60" name="text" value="<#if message??>${message.text}</#if>" placeholder="Введите текст"/>
            </div>

            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Выберите новое изображение </label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <input type="hidden" name="id" value="<#if message??>${message.id}</#if>" />
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Обновить</button>
            </div>
        </form>
    </div>
</div>
</#if>
</div>