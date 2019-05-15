<#include "security.ftl">

    <div class="col-md-15 ftco-animate">
     <#list messages as message>
    <div class="blog-entry">
   <#if isEditor || message.active>

                 <a href="/single" class="img-2">
                  <#if message.filename??>
                    <img src="/img/${message.filename}" class="img-fluid" alt="Colorlib Template">
                     <#else>
                    <img src="/static/images/unknown.jpg" class="img-fluid" alt="Colorlib Template">
                 </#if>
                </a>

         <div class="text pt-3">
            <h3><a href="/single">${message.tag}</a></h3>
            <p class="meta d-flex"style="word-wrap: break-word">
                <span>${message.text}</span>
            </p>
             <a href="/user-messages/${message.author.id}">${message.authorName}</a>
           <#if message.author.id == currentUserId>
                     <h6><#if message.active>Опубликован<#else>Не опубликован</#if></h6>
             <td align="left | center">
                <p class="mb-0"><a class="btn btn-black py-2" href="/deleteMessage/${message.id}" onclick="return confirm('Вы уверены что хотите удалить это предложение?');">Удалить</a>
                <a class="btn btn-black py-2" href="/user-messages/${message.author.id}?message=${message.id}">Изменить</a>
                <a class="btn btn-black py-2" href="/opublicovat/${message.id}">Опубликовать</a>
                <a class="btn btn-black py-2" href="/neopublicovat/${message.id}">Не опубликовать</a>
                </p>
            </td>
           </#if>
    </#if>

        </div>
    </div>

        <#else>
        Cтатьей пока нет
         </#list>
    </div>
