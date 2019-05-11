<#include "security.ftl">

<div class="col-md-4 ftco-animate">
    <#list messages as message>

    <div class="blog-entry">
      <#if isEditor || message.active>
        <#if message.filename??>
            <img src="/img/${message.filename}" class="card-img-top">
        </#if>

        <div class="text pt-3">
            <h3><i>${message.tag}</i></h3>
            <h4><span>${message.text}</span></h4>

        </div>

        <div class="card-footer text-muted">
            <a href="/user-messages/${message.author.id}">${message.authorName}</a>
            <#if message.author.id == currentUserId>
            <td>
              <p class="mb-0"><a class="btn btn-black py-2" href="/deleteMessage/${message.id}" onclick="return confirm('Вы уверены что хотите удалить это предложение?');">Удалить</a></p><br>
             <p class="mb-0"><a class="btn btn-black py-2" href="/user-messages/${message.author.id}?message=${message.id}">Изменить</a></p><br>
             <p class="mb-0"><a class="btn btn-black py-2" href="/opublicovat/${message.id}">Опубликовать</a></p>
             </td>
            </#if>
    </#if>
    </div>
    </div>

    <#else>
    Cтатьей пока нет
    </#list>

</div>