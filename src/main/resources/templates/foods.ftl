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
        <div class="row">
            <div class="col-lg-9">

                <div class="container">
                    <div class="col-md-4 ftco-animate">
                        <div class="blog-entry">
                            <a href="single.html" class="img-2"><img src="/static/images/blog-1.jpg" class="img-fluid" alt="Colorlib Template"></a>
                            <div class="text pt-3">
                                <p class="meta d-flex"><span class="pr-3">Горы</span><span class="ml-auto pl-3">Март 01, 2018</span></p>
                                <h3><a href="single.html">Красиво &amp; Красивые горы</a></h3>
                                <p class="mb-0"><a href="/single" class="btn btn-black py-2">Подробнее <span class="icon-arrow_forward ml-4"></span></a></p>
                            </div>
                        </div>
                    </div>

<#include "parts/messageList.ftl" />
                </div>

            </div>

            <div class="col-lg-3">
                <div class="sidebar-wrap">
                    <div class="sidebar-box p-4 about text-center ftco-animate">
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
                    <div class="sidebar-box categories text-center ftco-animate">
                        <h2 class="heading mb-4">Категории</h2>
                        <ul class="category-image">
                            <li>
                                <a href="#" class="img d-flex align-items-center justify-content-center text-center" style="background-image: url(images/category-1.jpg);">
                                    <div class="text">
                                        <h3>Природа</h3>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="img d-flex align-items-center justify-content-center text-center" style="background-image: url(images/category-2.jpg);">
                                    <div class="text">
                                        <h3>Кыргызы</h3>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="img d-flex align-items-center justify-content-center text-center" style="background-image: url(images/category-2.jpg);">
                                    <div class="text">
                                        <h3>Другие</h3>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



</@c.page>