<#import "parts/common.ftl" as c>
<@c.page>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="index.html">Истории<span>.</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Меню
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a href="index.html" class="nav-link">Домой</a></li>
                <li class="nav-item active"><a href="about.html" class="nav-link">О нас</a></li>
                <li class="nav-item"><a href="foods.html" class="nav-link">Еда</a></li>
                <li class="nav-item"><a href="lifestyle.html" class="nav-link">Стиль жизни</a></li>
                <li class="nav-item"><a href="contact.html" class="nav-link">Контакты</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->

<section class="hero-wrap hero-wrap-2" style="background-image: url('static/images/bg_4.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate pb-5 text-center">
                <h1 class="mb-3 bread">О нас</h1>
                <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Домой <i class="ion-ios-arrow-forward"></i></a></span> <span>About us<i class="ion-ios-arrow-forward"></i></span></p>
            </div>
        </div>
    </div>
</section>

<section class="ftco-counter ftco-section ftco-no-pt ftco-no-pb img" id="section-counter">
    <div class="container">
        <div class="row d-flex">
            <div class="col-md-6 d-flex">
                <div class="img d-flex align-self-stretch" style="background-image:url(static/images/about.jpg);"></div>
            </div>
            <div class="col-md-6 pl-md-5 py-5">
                <div class="row justify-content-start pb-3">
                    <div class="col-md-12 heading-section ftco-animate">
                        <h2 class="mb-4"><span>Об историях</span></h2>
                        <p>some text</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center py-5 bg-light mb-4">
                            <div class="text">
                                <strong class="number" data-number="10">0</strong>
                                <span>Годы опыта</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center py-5 bg-light mb-4">
                            <div class="text">
                                <strong class="number" data-number="200">0</strong>
                                <span>Еда</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center py-5 bg-light mb-4">
                            <div class="text">
                                <strong class="number" data-number="300">0</strong>
                                <span>Стиль жизни</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center py-5 bg-light mb-4">
                            <div class="text">
                                <strong class="number" data-number="40">0</strong>
                                <span>Счастливые клиенты</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-no-pt ftco-section-about ftco-no-pb bg-darken">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-6 col-md-6 col-lg-9 order-md-last img py-5" style="background-image: url(static/images/bg_3.jpg);"></div>

            <div class="col-sm-6 col-md-6 col-lg-3 py-4 text d-flex align-items-center ftco-animate">
                <div class="text-2 py-5 px-4">
                    <p class="mb-5"><a href="https://vimeo.com/45830194" class="btn-custom popup-vimeo">Watch Video <span class="ion-ios-play ml-4"></span></a></p>
                    <h1 class="mb-5">Roger <br> Bosch</h1>
                    <p class="mb-md-5">some text.</p>
                    <span class="signature">Roger.Bosch</span>
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
                    <h2 class="mb-4"><span>Подписывайтесь на нас</span></h2>
                    <p>some text.</p>
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