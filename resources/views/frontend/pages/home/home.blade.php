    @extends('frontend.layout.app')
    @section('title', 'Welcome to Dmore Hotel & Resort')
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
                                                <h2 class="banner__title" style="color: black;">{{$pro_item->title}}</h2>

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
                                                <h2 class="banner__title">{{$pro_item->title}}</h2>

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
                    <div data-type="block" data-id="20" data-name="Rbs_Website_XhtmlTemplate" data-layout-rbs-website-xhtml-template="" data-rbs-block-container="20" class="block container with-margin">
                        <div class="editorial-content-block with-stylized-title with-secondary-visual">
                            <div class="editorial-content-block__container container reverse">
                                <div class="editorial-content-block__text">
                                    <div class="title-border editorial-content-block__title">
                                        <h1>{{$settings[0]->dsn_title}}</h1>
                                    </div>
                                    <div class="editorial-content-block__text-wrapper">
                                        <p class="subtitle">{{$settings[0]->dsn_subtitle}}</p>

                                        <p class="description">
                                            {{$settings[0]->dsn_descrip}}
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
                                    <h4 style="text-align: center">{{$settings[0]->seilor_title}}</h4>
                                    <div>
                                        <div style="text-align: justify">
                                            {{$settings[0]->seilor_details}}
                                        </div>
                                        {{--<div style="text-align: justify"><br /></div>
                                        <div style="text-align: justify">
                                            Taking inspiration from the French maritime tradition,
                                            Armor-Lux produces authentic nautical pieces for
                                            <a data-document-id="103817" target="_self" href="103817-men.html">men</a>,
                                            <a data-document-id="103824" target="_self" href="103824-women.html">women</a>
                                            and
                                            <a data-document-id="103831" target="_self" href="103831-kids-baby.html">children</a>, such as the
                                            <a data-document-id="1165989" target="_self" href="the-pea-coat.html">wool peacoat</a>,
                                            <a data-document-id="2132374" target="_self" href="the-duffle-coat.html">the dufflecoat</a>,
                                            <a data-document-id="2428041" target="_self" href="the-breton-shirt.html">the « mariniere » classic breton striped shirt</a>,
                                            <a data-document-id="2132368" target="_self" href="the-fisherman-s-smock-.html">the Fisherman jumper</a>,
                                            <a data-document-id="2132365" target="_self" href="the-breton-raincoat-.html">the sailor raincoat </a>or Fisherman’s smock. Armor Lux represents over 80
                                            years of experience, 600 employees, 3 production sites,
                                            80 stores all over France, following the same values :
                                            Quality, Innovation and Ethics.
                                        </div>--}}
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" data-id="52">
                            <div data-type="block" data-id="56" data-name="Rbs_Website_Richtext" data-layout-rbs-website-richtext="" data-rbs-block-container="56" class="block">
                                <div class="richtext">
                                    <h4 style="text-align: center">{{$settings[0]->collection_title}}</h4>
                                    <div>
                                        <div style="text-align: justify">
                                            {{$settings[0]->collection_details}}

                                        </div>
                                        {{--<div style="text-align: justify"><br /></div>
                                        <div style="text-align: justify">
                                            A fashion clothing collection for
                                            <a data-document-id="103824" target="_self" href="103824-women.html">women</a>, from
                                            <a data-document-id="104643" target="_self" href="women/clothing/104643-t-shirt.html">t-shirt</a>,
                                            <a data-document-id="104167" target="_self" href="women/104167-dress.html">dress</a>,
                                            <a data-document-id="104545" target="_self" href="women/clothing/104545-parka.html">parka</a>,
                                            <a data-document-id="104111" target="_self" href="women/104111-fleece-softshell-jacket.html">fleece jacket</a>,
                                            <a data-document-id="104118" target="_self" href="women/104118-fisherman-s-jumper-jumper.html">jumper</a>,
                                            <a data-document-id="104153" target="_self" href="women/104153-trousers.html">pants</a>,
                                            <a data-document-id="104139" target="_self" href="women/104139-blouse-shirt.html">tunic</a>
                                            to
                                            <a data-document-id="103873" target="_self" href="103873-underwear.html">underwear</a>
                                            and
                                            <a data-document-id="103880" target="_self" href="103880-nightwear.html">nightwear,</a>
                                            but also a fashion collection for
                                            <a data-document-id="103817" target="_self" href="103817-men.html">men</a>
                                            from
                                            <a data-document-id="103971" target="_self" href="men/103971-t-shirt.html">t-shirt</a>,
                                            <a data-document-id="104286" target="_self" href="men/clothing/104286-parka.html">parka</a>,
                                            <a data-document-id="103936" target="_self" href="men/103936-fleece-softshell-jacket.html">fleece jacket</a>,
                                            <a data-document-id="103950" target="_self" href="men/103950-fisherman-s-jumper-jumper.html">jumper</a>,
                                            <a data-document-id="103992" target="_self" href="men/103992-trousers.html">pants</a>,
                                            <a data-document-id="103978" target="_self" href="men/103978-polo-shirt.html">polo</a>
                                            to
                                            <a data-document-id="103852" target="_self" href="103852-underwear.html">underwear</a>, and
                                            <a data-document-id="103859" target="_self" href="103859-nightwear.html">nightwear</a>. Discover our
                                            <a data-document-id="848563" target="_self" href="men/848563-sailing-jacket.html">technical sailing clothes</a>
                                            through our brand Bermudes.
                                        </div>--}}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </section>
    </div>

    @endsection