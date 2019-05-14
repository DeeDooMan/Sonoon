<#include "security.ftl">

    <div class="col-md-15 ftco-animate">
     <#list messages as message>
    <div class="blog-entry">
   <#if isEditor || message.active>
             <#if message.filename??>
                 <a href="/single" class="img-2"><img src="/img/${message.filename}" class="img-fluid" alt="Colorlib Template"></a>
             </#if>
         <div class="text pt-3">
            <p class="meta d-flex"style="white-space: nowrap; overflow: hidden; padding: 5px; text-overflow: ellipsis">
                <span>${message.text}</span>
            </p>
            <h3><a href="/single">${message.tag}</a></h3>
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
