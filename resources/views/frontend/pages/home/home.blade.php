    @extends('frontend.layout.app')
    @section('title', 'Welcome to Armor')
    @section('content')

    <div id="content">
        <section id="content-top" class="container">
            <div data-type="block" data-id="thread" data-name="Rbs_Website_Thread" data-layout-rbs-website-thread="" data-rbs-block-container="thread" class="block">
                <nav>
                    <ul class="breadcrumb">
                        <li><a href="index.html">Home</a></li>
                    </ul>
                </nav>

                <script type="application/ld+json">
                    null
                </script>
            </div>
        </section>
        <section id="content-middle">
            <main id="content-column">
                <div class="editable-zone" data-id="mainContent">
                    <!-- For deskto view -->
                    <div data-type="block" data-id="556" data-name="Emakina_Website_Banner" data-layout-emakina-website-banner="" data-rbs-block-container="556" class="block visible-lg-block visible-md-block visible-sm-block">
                        <script type="text/javascript">
                            window.__change["556"] = null;
                        </script>

                        <div class="banner center bottom dark" style="height: 380px; background-image: url(' {{ asset('/uploads/'.$Sp_category->img) }}'); ">
                            <div class=" banner__container">
                                <div class="container">
                                    <div class="banner__content">
                                        <div class="banner__cta-container flex-display flex-wrap">
                                            <a class="btn btn-secondary" href="{{route('Sp.products',[$Sp_category->slug,$Sp_category->id])}}" target="">
                                                Details
                                            </a>

                                            {{--<a class="btn btn-secondary" href="848355-new-in-for-women.html" target="">
                                                Women Desk
                                            </a>--}}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div data-type="block" data-id="560" data-name="Emakina_Website_Banner" data-layout-emakina-website-banner="" data-rbs-block-container="560" class="block visible-xs-block">
                        <script type="text/javascript">
                            window.__change["560"] = null;
                        </script>

                        <div class="banner center bottom dark" style="height: 310px; background-image: url(' {{ asset('/uploads/'.$Sp_category->img) }}'); ">
                            <div class=" banner__container">
                                <div class="container">
                                    <div class="banner__content">
                                        <div class="banner__cta-container flex-display flex-wrap">
                                            <a class="btn btn-secondary" href="{{route('Sp.products',[$Sp_category->slug,$Sp_category->id])}}" target="">
                                                Details
                                            </a>

                                            {{--<a class="btn btn-secondary" href="848355-new-in-for-women.html" target="">
                                                Women Mobile
                                            </a>--}}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div data-type="block" data-id="644" data-name="unknown" class="empty"></div>
                    <div data-type="block" data-id="646" data-name="unknown" class="empty"></div>
                    <div data-type="block" data-id="648" data-name="unknown" class="empty"></div>
                    <div class="row full-wrapper with-small-margin" data-id="631" data-grid="12">
                        @foreach($Sp_category2 as $pro_item)
                        <div class="col-md-4" data-id="628" style="padding: 20px">

                            <div data-type="block" data-id="634" data-name="Emakina_Website_Banner" data-layout-emakina-website-banner="" data-rbs-block-container="634" class="block visible-sm-block visible-md-block visible-lg-block">
                                <script type="text/javascript">
                                    window.__change["634"] = null;
                                </script>
                                <div class="banner center middle dark" style="height: 600px; background-image: url({{ asset('/uploads/' . $pro_item->img)}});">
                                    <div class="banner__container">
                                        <div class="container">
                                            <div class="banner__content">
                                                <h2 class="banner__title" style="color: black;">{{$pro_item->title ?? ""}}</h2>

                                                <div class="banner__cta-container flex-display flex-wrap">

                                                    <a class="btn btn-secondary" href="{{route('Sp.products',[$pro_item->slug,$pro_item->id])}}" target="">
                                                        Details
                                                    </a>

                                                    {{--<a class="btn btn-secondary" href="women/104118-fisherman-s-jumper-jumper.html" target="">
                                                        Women Desk
                                                    </a>--}}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div data-type="block" data-id="640" data-name="Emakina_Website_Banner" data-layout-emakina-website-banner="" data-rbs-block-container="640" class="block visible-xs-block">
                                <script type="text/javascript">
                                    window.__change["640"] = null;
                                </script>

                                <div class="banner center bottom dark" style="height: 310px; background-image: url({{ asset('/uploads/' . $pro_item->img) }});">
                                    <div class="banner__container">
                                        <div class="container">
                                            <div class="banner__content">
                                                <h2 class="banner__title">{{$pro_item->title ?? ''}}</h2>

                                                <div class="banner__cta-container flex-display flex-wrap">
                                                    <a class="btn btn-secondary" href="{{route('Sp.products',[$pro_item->slug, $pro_item->id])}}" target="">
                                                        Details
                                                    </a>

                                                    {{--<a class="btn btn-secondary" href="women/104118-fisherman-s-jumper-jumper.html" target="">
                                                        Women Mobile
                                                    </a>--}}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    <div class="row container with-small-margin" data-id="577" data-grid="12">
                        <div class="col-md-6" data-id="574">
                            <div data-type="block" data-id="591" data-name="unknown" class="empty"></div>
                        </div>
                        <div class="col-md-6" data-id="575">
                            <div data-type="block" data-id="595" data-name="unknown" class="empty"></div>
                            <div data-type="block" data-id="597" data-name="unknown" class="empty"></div>
                        </div>
                    </div>
                    <div data-type="block" data-id="620" data-name="Emakina_Website_Banner" data-layout-emakina-website-banner="" data-rbs-block-container="620" class="block container with-small-margin visible-sm-block visible-md-block visible-lg-block">
                        <script type="text/javascript">
                            window.__change["620"] = null;
                        </script>
                        <div class="banner center bottom dark" style="height: 400px; background-image: url({{asset('uploads/'.$Sp_category3->img)}}); ">
                            <div class=" banner__container">
                                <div class="container">
                                    <div class="banner__content">
                                        <div class="banner__cta-container flex-display flex-wrap">
                                            <a class="btn btn-secondary" href="{{route('Sp.products',[$Sp_category3->slug,$Sp_category3->id])}}" target="">
                                                Details
                                            </a>

                                            {{--<a class="btn btn-secondary" href="3269267-women-low-prices.html" target="">
                                                Women Desk
                                            </a>--}}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div data-type="block" data-id="593" data-name="unknown" class="empty"></div>
                    <div data-type="block" data-id="622" data-name="unknown" class="empty"></div>
                    <div data-type="block" data-id="624" data-name="unknown" class="empty"></div>
                    <div data-type="block" data-id="626" data-name="Emakina_Website_Banner" data-layout-emakina-website-banner="" data-rbs-block-container="626" class="block container with-small-margin visible-xs-block">
                        <script type="text/javascript">
                            window.__change["626"] = null;
                        </script>

                        <div class="banner center bottom dark" style="height: 350px; background-image: url({{asset('uploads/'.$Sp_category3->img)}});">
                            <div class=" banner__container">
                                <div class="container">
                                    <div class="banner__content">
                                        <div class="banner__cta-container flex-display flex-wrap">
                                            <a class="btn btn-secondary" href="3269260-men-low-prices.html" target="">
                                                Details
                                            </a>
                                            {{--<a class="btn btn-secondary" href="3269267-women-low-prices.html" target="">
                                                Women Mobile
                                            </a>--}}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div data-type="block" data-id="441" data-name="Rbs_Website_HtmlFragment" data-layout-rbs-website-html-fragment="" data-rbs-block-container="441" class="block with-small-margin">
                        <div class="nosto_element" id="EN_frontpage-nosto-1"></div>
                    </div>
                    <!-- for slider -->
                    <div class="">

                        <div class="container">
                            <div class="h3 nosto-title">
                                Our current favorites
                            </div>
                            <div class="">
                                <div class="">
                                    <div class="autoplay">
                                        @foreach($product_all as $p_item)
                                        <!-- {{$p_item}} -->
                                        <div class="col-xs-6 col-md-4 slick-slide" style="width: 266px; padding-left: 5px; padding-right: 5px;" tabindex="0" data-slick-index="1" aria-hidden="false">
                                            <div class="thumbnail thumbnail-product" data-gtm-product-clicks-v3="" data-gtm-product-impressions-v3="">
                                                <div class="product-visual__container media-pictograms-container">
                                                    <a title="Striped" dress="" -="" thick="" cotton="" href="{{route('product.details',[$p_item->slug,$p_item->id])}}" target="_self" tabindex="0">
                                                        <div class="product-visual__main">
                                                            <img alt="Striped" dress="" -="" thick="" cotton="" src="{{asset('/uploads/'.$p_item->gallery_img)}}" class="visual" title="Striped">
                                                        </div>
                                                        <div class="product-visual__secondary">
                                                            <img alt="Striped" dress="" -="" thick="" cotton="" src="{{asset('/uploads/'.$p_item->gallery_img)}}" class="visual" title="Striped">
                                                        </div>
                                                    </a>
                                                    <div class="moving-caption">

                                                    </div>
                                                </div>
                                                <div class="caption">
                                                    <div class="product-label">
                                                        <a title="Striped" dress="" -="" thick="" cotton="" href="{{route('product.details',[$p_item->slug,$p_item->id])}}" target="_self" tabindex="0">
                                                            Striped Dress -{{$p_item->title ?? ''}}</a>
                                                    </div>
                                                    <div class="product-information">
                                                        <div class="variants-available"></div>
                                                        <div class="product-price">
                                                            <div>
                                                                <ul class="list-unstyled main-price">
                                                                    <li class="price price-with-taxes">
                                                                        <span class="price-value">{{$p_item->sale_price ?? ''}}</span> <!-- <del class="price-old-value" title="ancien prix">89.00€</del> -->
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        
                            @endforeach
                        </div>
                    </div>
                </div>
    </div>
    </div>
    <!-- slider  end-->
    <div data-type="block" data-id="20" data-name="Rbs_Website_XhtmlTemplate" data-layout-rbs-website-xhtml-template="" data-rbs-block-container="20" class="block container with-margin">
        <div class="editorial-content-block with-stylized-title with-secondary-visual">
            <div class="editorial-content-block__container container reverse">
                <div class="editorial-content-block__text">
                    <div class="title-border editorial-content-block__title">
                        <h1>{{$settings[0]->dsn_title ?? ''}}</h1>
                    </div>
                    <div class="editorial-content-block__text-wrapper">
                        <p class="subtitle">{{$settings[0]->dsn_subtitle ?? ''}}</p>

                        <p class="description">
                            {{$settings[0]->dsn_descrip ?? ''}}
                            {{--<a href="the-story-of-the-breton-shirt.html">Breton striped shirt</a>--}}
                        </p>

                        <a class="btn btn-secondary" href="your-own-breton-shirt.html">
                            Start my design
                        </a>
                    </div>
                </div>
                <div class="editorial-content-block__visual">
                    <img class="editorial-content-block__visual--main" src="{{asset('uploads/'.$settings[0]->dsn_photo1)}}" alt="" title="" />
                    <img class="editorial-content-block__visual--secondary" src="{{asset('uploads/'.$settings[0]->dsn_photo2)}}" alt="" title="" />
                </div>
            </div>
        </div>
    </div>
    <div class="row container with-margin with-margin-bottom full-wrapper" data-id="54" data-grid="12">
        <div class="col-md-6" data-id="51">
            <div data-type="block" data-id="55" data-name="Rbs_Website_Richtext" data-layout-rbs-website-richtext="" data-rbs-block-container="55" class="block">
                <div class="richtext">
                    <h4 style="text-align: center">{{$settings[0]->seilor_title ?? ''}}</h4>
                    <div>
                        <div style="text-align: justify">
                            {{$settings[0]->seilor_details ?? ''}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6" data-id="52">
            <div data-type="block" data-id="56" data-name="Rbs_Website_Richtext" data-layout-rbs-website-richtext="" data-rbs-block-container="56" class="block">
                <div class="richtext">
                    <h4 style="text-align: center">{{$settings[0]->collection_title ?? ''}}</h4>
                    <div>
                        <div style="text-align: justify">
                            {{$settings[0]->collection_details ?? ''}}

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </main>
    </section>
    </div>
    @push('footer_script')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.4.1/jquery-migrate.min.js" integrity="sha512-KgffulL3mxrOsDicgQWA11O6q6oKeWcV00VxgfJw4TcM8XRQT8Df9EsrYxDf7tpVpfl3qcYD96BpyPvA4d1FDQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('.autoplay').slick({
                slidesToShow: 4,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 2000,
            });
        });
    </script>
    @endpush

    @endsection