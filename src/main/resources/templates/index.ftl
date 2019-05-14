<#import "parts/common.ftl" as c>
<@c.page>

    <section class="home-slider owl-carousel">
      <div class="slider-item">
        <div class="container">
          <div class="row d-flex slider-text justify-content-center align-items-center" data-scrollax-parent="true">
						
						<div class="img" style="background-image: url(/static/images/bg_1.jpg);"></div>

            <div class="text d-flex align-items-center ftco-animate">
            	<div class="text-2 pb-lg-5 mb-lg-4 px-4 px-md-5">

              </div>
            </div>

          </div>
        </div>
      </div>

      <div class="slider-item">
        <div class="container">
          <div class="row d-flex slider-text justify-content-center align-items-center" data-scrollax-parent="true">

          	<div class="img" style="background-image: url(/static/images/bg_2.jpg);"></div>

            <div class="text d-flex align-items-center ftco-animate">
            	<div class="text-2 pb-lg-5 mb-lg-4 px-4 px-md-5">

	            </div>
            </div>

          </div>
        </div>
      </div>
    </section>


    <section class="ftco-section">
    	<div class="container">
    		<div class="row">
          <div class="col-md-7 heading-section ftco-animate">
            <h2 class="mb-4"><span>Недавние истории</span></h2>
          </div>
        </div>
    		<div class="row">
    			<div class="col-md-6 order-md-last col-lg-6 ftco-animate">
    				<div class="blog-entry">
    					<div class="img img-big d-flex align-items-end" style="background-image: url(/static/images/image_2.jpg);">
    						<div class="overlay"></div>
    						<div class="text">

    						</div>
	    				</div>
    				</div>
    			</div>
    			<div class="col-md-6">
    				<div class="row">
    					<div class="col-md-6 ftco-animate">
    						<div class="blog-entry">
		    					<a href="/single" class="img d-flex align-items-end" style="background-image: url(/static/images/image_1.jpg);">
		    						<div class="overlay"></div>
			    				</a>
			    				<div class="text pt-3">

	    						</div>
		    				</div>
    					</div>
    					<div class="col-md-6 ftco-animate">
    						<div class="blog-entry">
		    					<a href="/single" class="img d-flex align-items-end" style="background-image: url(/static/images/image_3.jpg);">
		    						<div class="overlay"></div>
			    				</a>
			    				<div class="text pt-3">

	    						</div>
		    				</div>
    					</div>
    					<div class="col-md-6 ftco-animate">
    						<div class="blog-entry">
		    					<a href="/single" class="img d-flex align-items-end" style="background-image: url(/static/images/image_4.jpg);">
		    						<div class="overlay"></div>
			    				</a>
			    				<div class="text pt-3">

	    						</div>
		    				</div>
    					</div>
    					<div class="col-md-6 ftco-animate">
    						<div class="blog-entry">
		    					<a href="/single" class="img d-flex align-items-end" style="background-image: url(/static/images/image_5.jpg);">
		    						<div class="overlay"></div>
			    				</a>
			    				<div class="text pt-3">

	    						</div>
		    				</div>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-section ftco-no-pt">
    	<div class="container">
        <div class="row">
        	<div class="col-lg-9">
        		<div class="row">
		          <div class="col-md-12 heading-section ftco-animate">
		            <h2 class="mb-4"><span>Популярные публикации</span></h2>
		          </div>
		        </div>
        		<div class="row">
        			<div class="col-md-4 ftco-animate">
    						<div class="blog-entry">
		    					<a href="/single" class="img-2"><img src="/static/images/blog-1.jpg" class="img-fluid" alt="Colorlib Template"></a>
			    				<div class="text pt-3">

	    						</div>
		    				</div>
    					</div>
    					<div class="col-md-4 ftco-animate">
    						<div class="blog-entry">
		    					<a href="/single" class="img-2"><img src="/static/images/blog-2.jpg" class="img-fluid" alt="Colorlib Template"></a>
			    				<div class="text pt-3">

	    						</div>
		    				</div>
    					</div>
    					<div class="col-md-4 ftco-animate">
    						<div class="blog-entry">
		    					<a href="/single" class="img-2"><img src="/static/images/blog-3.jpg" class="img-fluid" alt="Colorlib Template"></a>
			    				<div class="text pt-3">

	    						</div>
		    				</div>
    					</div>
        		</div>
        	</div>

        	<div class="col-lg-3">
        		<div class="sidebar-wrap">
	        		<div class="sidebar-box p-4 about text-center ftco-animate">
			          <h2 class="heading mb-4">Про меня</h2>
			          <img src="/static/images/author.jpg" class="img-fluid" alt="Colorlib Template">
			          <div class="text pt-4">
			          	<p>Привет, меня зовут <strong>SONOON</strong>, Мы SoNoon.kg представляем вам нашу страну в полном виде. Пока не надо всю инормацию. Имейте в виду есть информацию. Хорошо подумай брат не не подажди подажди. Я слушал такие слова на лекции. ЭЭЭ Эржан вставай. Саламалейкум на работу пора.</p>
			          </div>
	        		</div>
	        		<div class="sidebar-box p-4 ftco-animate">
	              <form method="get" action="/foods" class="search-form">
	                <div class="form-group">
	                  <span class="icon icon-search"></span>
	                  <input type="text" name="filter" class="form-control" value="${filter?ifExists}" placeholder="Поиск">
	                </div>
	              </form>
	            </div>
            </div>
        	</div>
        </div>
    	</div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-section-about ftco-no-pb bg-darken">
    	<div class="container-fluid">
    		<div class="row">
					<div class="col-sm-6 col-md-6 col-lg-9 order-md-last img py-5" style="background-image: url(/static/images/bg_3.jpg);"></div>

	        <div class="col-sm-6 col-md-6 col-lg-3 py-4 text d-flex align-items-center ftco-animate">
	        	<div class="text-2 py-5 px-4">
	          	<p class="mb-5"><a href="https://vimeo.com/45830194" class="btn-custom popup-vimeo">Посмотреть видео <span class="ion-ios-play ml-4"></span></a></p>
	            <h3 class="mb-5">Кыргызская Республика</h3>

	            <span class="signature">Информация</span>
	          </div>
	        </div>
    		</div>
    	</div>
    </section>

    <section class="ftco-section">
    	<div class="container">
        <div class="row">
        	<div class="col-md-9">
        		<div class="row">
		          <div class="col-md-12 heading-section ftco-animate">
		            <h2 class="mb-4"><span>Наши статьи</span></h2>
		          </div>
		        </div>
        		<div class="row">
        			<div class="col-md-6 col-lg-6 ftco-animate">
		    				<div class="blog-entry">
		    					<div class="img img-big img-big-2 d-flex align-items-end" style="background-image: url(/static/images/image_1.jpg);">
		    						<div class="overlay"></div>
		    						<div class="text">
		    							<span class="subheading">Кыргызский &amp; Ак калпак</span>
		    							<h3><a href="#">Каждый год 5 марта в Кыргызстане отмечают день ак-калпака.</a></h3>
		    							<p class="mb-0"><a href="#" class="btn-custom">читать больше <span class="icon-arrow_forward ml-4"></span></a></p>
		    						</div>
			    				</div>
		    				</div>
		    			</div>
		    			<div class="col-md-6 col-lg-6 ftco-animate">
		    				<div class="blog-entry">
		    					<div class="img img-big img-big-2 d-flex align-items-end" style="background-image: url(/static/images/image_3.jpg);">
		    						<div class="overlay"></div>
		    						<div class="text">
		    							<span class="subheading">Кыргызская юрта боз уй</span>
		    							<h3><a href="#">Культурное наследие кыргызского народа очень многообразно</a></h3>
		    							<p class="mb-0"><a href="#" class="btn-custom">читать больше <span class="icon-arrow_forward ml-4"></span></a></p>
		    						</div>
			    				</div>
		    				</div>
		    			</div>
        		</div>
        	</div>
        	<div class="col-md-3">
        		<div class="sidebar-wrap pt-4">
	            <div class="sidebar-box Категории text-center ftco-animate">
			          <h2 class="heading mb-4">Категории</h2>
			          <ul class="category-image">
			          	<li>
			          		<a href="Еда.html" class="img d-flex align-items-center justify-content-center text-center" style="background-image: url(/static/images/category-1.jpg);">
			          			<div class="text">
			          				<h3>Горы</h3>
			          			</div>
			          		</a>
			          	</li>
			          	<li>
			          		<a href="Стиль жизни.html" class="img d-flex align-items-center justify-content-center text-center" style="background-image: url(/static/images/category-2.jpg);">
			          			<div class="text">
			          				<h3>Кыргызы</h3>
			          			</div>
			          		</a>
			          	</li>
			          	<li>
			          		<a href="#" class="img d-flex align-items-center justify-content-center text-center" style="background-image: url(/static/images/category-2.jpg);">
			          			<div class="text">
			          				<h3>Остальное</h3>
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
   	
    <section class="ftco-counter ftco-section ftco-no-pt ftco-no-pb img" id="section-counter">
    	<div class="container">
    		<div class="row d-flex">
    			<div class="col-md-6 d-flex">
    				<div class="img d-flex align-self-stretch" style="background-image:url(/static/images/about.jpg);"></div>
    			</div>
    			<div class="col-md-6 pl-md-5 py-5">
    				<div class="row justify-content-start pb-3">
		          <div class="col-md-12 heading-section ftco-animate">
		            <h2 class="mb-4">Про истории</h2>
		            <p>Кыргызстан состоит из 9 административно-территориальных единиц — Чуйская область, Таласская область, Иссык-Кульская область, Нарынская область, Джалал-Абадская область, Ошская область,  Баткенская область, город Ош и город Бишкек. Областные центры — Талас, Каракол, Нарын, Джалал-Абад, Ош, Баткен.</p>
		          </div>
		        </div>
		    		<div class="row">
		          <div class="col-md-6 justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center py-5 bg-light mb-4">
		              <div class="text">
		                <strong class="number" data-number="7">0</strong>
		                <span>Области</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center py-5 bg-light mb-4">
		              <div class="text">
		                <strong class="number" data-number="6332739">0</strong>
		                <span>Численность населения</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center py-5 bg-light mb-4">
		              <div class="text">
		                <strong class="number" data-number="31">0</strong>
		                <span>Города</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center py-5 bg-light mb-4">
		              <div class="text">
		                <strong class="number" data-number="453">0</strong>
		                <span>Айылный аймак</span>
		              </div>
		            </div>
		          </div>
		        </div>
	        </div>
        </div>
    	</div>
    </section>

    </@c.page>