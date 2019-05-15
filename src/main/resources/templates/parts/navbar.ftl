
<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="/">Sonoon<span>.</span>KG</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Меню
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="/" class="nav-link">Домой</a></li>
	          <li class="nav-item"><a href="/about" class="nav-link">О нас</a></li>
	          <li class="nav-item"><a href="/foods" class="nav-link">Статьи</a></li>
	          <li class="nav-item"><a href="/contact" class="nav-link">Контакты</a></li>

	          <#if isAdmin>
	         	 <li class="nav-item"><a href="/user" class="nav-link">Список пользователей</a></li>
	          </#if>

			<#if isEditor>
				<li class="nav-item"><a class="nav-link" href="/user-messages/${currentUserId}">Мои статьи</a></li>
            </#if>
			<#if user??>
				<li class="nav-item"><a class="nav-link" href="/user/profile">Профиль</a></li>
            </#if>
	        </ul>
	      </div>

		<div class="text">${name}</div>
	      <#if user??>
			<@l.logout />
		  </#if>
			<#if !user??><@l.login1 /></#if>
	    </div>
	  </nav>
