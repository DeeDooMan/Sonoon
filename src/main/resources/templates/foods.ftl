<#import "parts/common.ftl" as c>

<@c.page>

<section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_4.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate pb-5 text-center">
                <h1 class="mb-3 bread">Статьи</h1>
                <p class="breadcrumbs"><span class="mr-2"><a href="/index">Домой <i class="ion-ios-arrow-forward"></i></a></span> <span>Статьи <i class="ion-ios-arrow-forward"></i></span></p>
            </div>
        </div>
    </div>
</section>

<div class="container">
<#include "parts/messageAdd.ftl" />
</div>

<section class="ftco-section">

<div class="container">
<#include "parts/messageList.ftl"/>

</div>

</section>

<section class="ftco-section">
 <div class="col-lg-15">
                <div class="sidebar-wrap">
                    <div class="sidebar-box p-15 about text-center ftco-animate">
                        <h2 class="heading mb-4">Обо мне</h2>
                        <img src="/static/images/author.jpg" class="img-fluid" alt="Colorlib Template">
                        <div class="text pt-4">
                            <p>Привет! Меня зовут <strong>SoNoon</strong>, Мы SoNoon.kg представляем вам нашу страну в полном виде. Пока не надо всю инормацию. Имейте в виду есть информацию. Хорошо подумай брат не не подажди подажди. Я слушал такие слова на лекции. ЭЭЭ Эржан вставай. Саламалейкум на работу пора.</p>
                        </div>
                    </div>
                    <div class="sidebar-box p-4 ftco-animate">
                        <form action="#" class="search-form">
                            <div class="form-group">
                                <span class="icon icon-search"></span>
                                <input type="text" class="form-control" placeholder="Search">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

</section>
<section class="ftco-subscribe ftco-section bg-light">
    <div class="overlay">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-8 text-wrap text-center heading-section ftco-animate">
                    <h2 class="mb-4"><span>Подписывайтесь на нашу новостную рассылку</span></h2>
                    <p>У их места протекает небольшая река по имени Дуден, которая снабжает ее необходимой регелиалией. Это райская страна, в которой жареные части предложений летят тебе в рот.</p>
                    <div class="row d-flex justify-content-center mt-4 mb-4">
                        <div class="col-md-8">
                            <form action="#" class="subscribe-form">
                                <div class="form-group d-flex">
                                    <input type="text" class="form-control" placeholder="Enter email address">
                                    <input type="submit" value="Subscribe" class="submit px-3">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</@c.page>