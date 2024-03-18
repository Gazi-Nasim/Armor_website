@extends('frontend.layout.app')
@section('title', 'Welcome to Dmore Hotel & Resort')
@section('content')
<div id="content">

    <section id="content-middle">
        <main id="content-column">
            <div class="editable-zone" data-id="mainContent">
                <div data-type="block" data-id="44" data-name="Emakina_Website_Banner" data-layout-emakina-website-banner="" data-rbs-block-container="44" class="block container">
                    <div class="banner center middle  dark " style="height: 80px; background-image:url({{$details->featured_img}});">
                        <div class="banner__container">
                            <div class="container">
                                <div class="banner__content">
                                    <div class="banner__cta-container flex-display flex-wrap">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-type="block" data-id="46" data-name="unknown" class="empty"></div>
                <div data-type="block" data-id="42" data-name="unknown" class="empty"></div>
                <div data-type="block" data-id="26" data-name="Rbs_Catalog_ProductDetail" data-layout-rbs-catalog-product-detail="" data-rbs-block-container="26" class="block">
                    <article class="product-details" data-ng-controller="RbsCatalogProductDetail" data-reviews-url="" data-product-type="variant">
                        <div class="product-content">
                            <div class="row">
                                <div class="col-sm-5 col-lg-6">
                                    <div class="product-media-visual__container" data-rbs-media-preloaded-visuals="" data-common-catalog-product-page-visuals="">
                                        <div class="product-media-visual__brand">
                                            Armor-Lux
                                        </div>
                                        <div data-common-carousel="" data-slides-to-show="1" data-dots="true" data-needs-observer="true" data-mobile-first="true" data-contain-video="false" data-custom-responsive="[{&quot;breakpoint&quot;:768,&quot;settings&quot;:&quot;unslick&quot;}]" class="product-media-visual__carousel carousel hidden ">
                                        
                                            <div data-index="" class="product-media-visual__carousel-item">
                                                <figure class="product-media-visual__figure" style="background-image: url({{$details->featured_img}});" data-zoom-scale="2" data-ng-mousedown="zoomOnClick($event)">
                                                    <img src="{{$details->featured_img}}" alt="Picture" title="" class="product-media-visual__image" />
                                                </figure>
                                            </div>
                                            <div data-index="" class="product-media-visual__carousel-item">
                                                <figure class="product-media-visual__figure" style="background-image:url({{$details->featured_img}});" data-zoom-scale="2" data-ng-mousedown="zoomOnClick($event)">
                                                    <img src="{{$details->featured_img}}" alt="Product Picture 1" title="" class="product-media-visual__image" />
                                                </figure>
                                            </div>

                                            <div data-index="" class="product-media-visual__carousel-item">
                                                <figure class="product-media-visual__figure" style="background-image:url({{$details->featured_img}});" data-zoom-scale="2" data-ng-mousedown="zoomOnClick($event)">
                                                    <img src="{{$details->featured_img}}" alt="Product Picture 2" title="" class="product-media-visual__image" />
                                                </figure>
                                            </div>

                                            <div data-index="" class="product-media-visual__carousel-item">
                                                <figure class="product-media-visual__figure" style="background-image:url({{$details->featured_img}});" data-zoom-scale="2" data-ng-mousedown="zoomOnClick($event)">
                                                    <img src="{{$details->featured_img}}" alt="Product Picture 3" title="" class="product-media-visual__image" />
                                                </figure>
                                            </div>

                                            <div data-index="" class="product-media-visual__carousel-item">
                                                <figure class="product-media-visual__figure" style="background-image:url({{$details->featured_img}});" data-zoom-scale="2" data-ng-mousedown="zoomOnClick($event)">
                                                    <img src="{{$details->featured_img}}" alt="Product Picture 4" title="" class="product-media-visual__image" />
                                                </figure>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-7 col-lg-6">
                                    <header>
                                        <div class="product-header">
                                            <div class="product-header__title">
                                                <h1 class="h3 no-top-margin">{{$details->title ?? ''}}</h1>
                                            </div>

                                            <div class="product-header__flag-container">
                                                <span>Low Prices</span>
                                            </div>

                                            <div class="product-header__price">
                                                <div>
                                                    <ul class="list-unstyled main-price">
                                                        <li class="price price-with-taxes">
                                                            <span class="price-value">
                                                                Tk-{{$details->sale_price ?? ''}}
                                                            </span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <div class="product-header__details-container small">
                                                <div class="product-header__reference">
                                                    <span></span>
                                                </div>
                                            </div>
                                        </div>
                                    </header>
                                    <div class="nosto_page_type" style="display: none;">product</div>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>
            </div>

            <div id="product-information" class="product-information__container" data-common-toggle="">
                <div class="product-information__tab-nav">
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active">
                            <h2 class="product-information__title">
                                <a href="#description" aria-controls="profile" role="tab" data-toggle="tab">
                                    <i class="arl-icon brd-icon icon-list"></i>
                                    Product details
                                </a>
                            </h2>
                        </li>
                    </ul>
                </div>

                <div class="tab-content product-information__tab-content">
                    <div role="tabpanel" id="description" class="tab-pane active">
                        <div class="product-information__content">
                            <h2 class="product-information__title-mobile title-border active">
                                <i class="arl-icon brd-icon icon-list"></i>
                                Product details
                                <i class="arl-icon brd-icon icon-chevron-down" aria-hidden="true"></i>
                            </h2>
                            <div class="product-information__content-mobile">
                                <p>{!!$details->description!!}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div data-rbs-track-consulted-document="9445502" data-model-name="Rbs_Catalog_Product"></div>
            <div data-type="block" data-id="28" data-name="Rbs_Website_HtmlFragment" data-layout-rbs-website-html-fragment="" data-rbs-block-container="28" class="block">
                <div class="nosto_element" id="EN_productpage-1"></div>
            </div>
        </main>
    </section>
</div>

@endsection