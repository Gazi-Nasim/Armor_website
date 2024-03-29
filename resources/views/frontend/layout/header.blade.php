@php
$settings = App\Models\Setting::first();
$categories=App\Models\Category::where('parent_id', 0)->get();
@endphp
<header id="header" class="header header__container">
    <div class="header__responsive">    
        <div class="header__responsive-menu" data-toggle-class data-toggle-parent>
            <div class="header__responsive-menu-toggle js-toggle" data-toggle-element data-is-overlay>
                <i class="arl-icon icon-menu"></i>
                <span class="overlay"></span>
            </div>
            
            <div class="header__responsive-menu-content js-menu">
                <div class="header__responsive-menu-main">
                    <div data-type="block" data-id="mainMenuCustom" data-name="Emakina_Website_EnrichedMenu" data-layout-emakina-website-enriched-menu="" data-rbs-block-container="mainMenuCustom" class="block">                        
                        <nav class="navbar navbar-default menu__nav-container" data-block-id="mainMenuCustom">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-responsive-collapse-mainMenuCustom" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <span class="navbar-brand visible-sm-block">Menu principal US</span>
                            </div>
                            <div class="menu__container">
                                <ul class="nav navbar-nav menu__nav">
                                    <!-- For mobile view -->
                                    <li data-toggle-parent data-toggle-class class="dropdown menu__item {{ Route::is('home') ? 'highlighted' : null }}">
                                    <a  href="{{route('home')}}" title="Home">
                                        <p class="h5">Home </p>
                                    </a>
                                    <div data-toggle-element class="menu__toggle" aria-label="ouvrir le menu">
                                        <i class="arl-icon brd-icon icon-chevron-right" aria-hidden="true"></i>
                                    </div>
                                    </li>
                                @foreach($categories as $key=>$category)
                                <li data-toggle-parent data-toggle-class class="dropdown menu__item {{($category->slug==request()->segment(1)) ? 'highlighted' : null }}">
                                    <a  href="{{route('products' , [$category->slug , $category->id])}}" title="{{$category->title}}">
                                        <p class="h5">{{$category->title ?? ''}} </p>                                        
                                    </a>
                                    <div data-toggle-element class="menu__toggle" aria-label="ouvrir le menu">
                                        <i class="arl-icon brd-icon icon-chevron-right" aria-hidden="true"></i>
                                    </div>
                                        <ul class="menu__submenu">
                                            <li data-toggle-close class="hidden-lg" aria-label="fermer le menu">
                                                <i class="arl-icon brd-icon icon-chevron-left" aria-hidden="true"></i>
                                                {{$category->title ?? ''}}
                                            </li>

                                            <li class="menu__submenu-container row">
                                            @php
                                            $subCategories = App\Models\Category::where('parent_id', $category->id)->get();                                            
                                            @endphp
                                            @foreach($subCategories as $subCategory)
                                                <div data-toggle-parent data-toggle-class class="submenu type-publishable-list col-lg-2 col-lg-offset-1">
                                                    <a href="{{route('products' , [$subCategory->slug , $subCategory->id] )}}" title="{{$subCategory->title}}">
                                                        <p class="h4">{{$subCategory->title ?? ''}}</p>
                                                    </a>
                                                    <div data-toggle-element class="menu__toggle" aria-label="ouvrir le menu">
                                                        <i class="arl-icon brd-icon icon-chevron-right" aria-hidden="true"></i>
                                                    </div>
                                                    <ul class="menu__submenu-submenu">
                                                        <li data-toggle-close class="hidden-lg" aria-label="fermer le menu">
                                                            <i class="arl-icon brd-icon icon-chevron-left" aria-hidden="true"></i>
                                                            {{$subCategory->title ?? ''}}
                                                        </li>
                                                        @php
                                                        $subSubCategories = App\Models\Product::where('category_id', $subCategory->id)->get();                                            
                                                        @endphp
                                                        @foreach($subSubCategories as $SSCategory)
                                                        <li>
                                                            <a href="{{route('product.details' , [$SSCategory->slug, $SSCategory->id ])}}" title="{{$SSCategory->title}}">
                                                                {{$SSCategory->title ?? ''}}
                                                            </a>
                                                        </li>
                                                        @endforeach                                                        
                                                    </ul>
                                                </div>
                                                @endforeach                                                
                                            </li>
                                        </ul>
                                    </li>
                                    @endforeach                                    
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
                <div class="header__responsive-menu-user">                    
                    <div data-type="block" data-id="accountShort" data-name="Rbs_User_AccountShort" data-layout-rbs-user-account-short="" data-rbs-block-container="accountShort" class="block">
                        <script type="text/javascript">
                            window.__change["accountShort"] = {
                                userAccountPageUrl: "my-information.html",
                                rootMenuEntry: {
                                    title: "My Account",
                                    url: "100176-my-account",
                                    documentId: 100176,
                                    typology: null,
                                    isInPath: false,
                                    isCurrent: false,
                                    children: [{
                                            title: "My information",
                                            url: "my-information.html",
                                            documentId: 100181,
                                            typology: null,
                                            isInPath: false,
                                            isCurrent: false,
                                            children: null,
                                        },
                                        {
                                            title: "My addresses",
                                            url: "my-addresses.html",
                                            documentId: 100187,
                                            typology: null,
                                            isInPath: false,
                                            isCurrent: false,
                                            children: null,
                                        },
                                        {
                                            title: "My wish-lists",
                                            url: "my-wish-lists.html",
                                            documentId: 100397,
                                            typology: null,
                                            isInPath: false,
                                            isCurrent: false,
                                            children: null,
                                        },
                                        {
                                            title: "My orders",
                                            url: "my-orders.html",
                                            documentId: 100511,
                                            typology: null,
                                            isInPath: false,
                                            isCurrent: false,
                                            children: null,
                                        },
                                        {
                                            title: "My reservations",
                                            url: "my-reservations.html",
                                            documentId: 100517,
                                            typology: null,
                                            isInPath: false,
                                            isCurrent: false,
                                            children: null,
                                        },
                                        {
                                            title: "My returns",
                                            url: "my-returns.html",
                                            documentId: 100651,
                                            typology: null,
                                            isInPath: false,
                                            isCurrent: false,
                                            children: null,
                                        },
                                        {
                                            title: "My favorite store",
                                            url: "my-favorite-store.html",
                                            documentId: 102475,
                                            typology: null,
                                            isInPath: false,
                                            isCurrent: false,
                                            children: null,
                                        },
                                        {
                                            title: "My subscriptions",
                                            url: "my-subscriptions.html",
                                            documentId: 102483,
                                            typology: null,
                                            isInPath: false,
                                            isCurrent: false,
                                            children: null,
                                        },
                                    ],
                                },
                            };
                        </script>

                        <div data-rbs-user-short-account="">
                            <div class="dropdown">
                                <a href="#" data-toggle="dropdown" class="dropdown-toggle">
                                {{--<div class="visible-lg">
                                        <i class="arl-icon brd-icon icon-account" aria-hidden="true"></i>
                                        <span class="title">My account</span>
                                    </div>--}}

                                    <div class="hidden-lg">
                                    {{--<i class="arl-icon brd-icon icon-account" aria-hidden="true"></i>
                                        <a data-ng-if=":: accessorId" data-ng-href="(= userAccountPageUrl =)">
                                            My account
                                        </a>--}}
                                        {{--<a class="btn btn-tertiary log-out pull-right" data-ng-if=":: accessorId" data-ng-click="logout()">Log out</a>
                                        <a data-ng-if=":: !accessorId" href="login.html">
                                            My account
                                        </a>--}}
                                    </div>
                                </a>
                                <ul data-ng-cloak="" class="dropdown-menu dropdown-menu-right" data-ng-show="accessorId">
                                    <div class="logged">
                                        {{--<li data-ng-show="userAccountPageUrl">
                                            <a class="user-name" data-ng-href="(=:: userAccountPageUrl =)">(=:: accessorName =)</a>
                                        </li>
                                        <li data-ng-hide="::userAccountPageUrl" role="presentation" class="user-name">
                                            <!-- (=:: accessorName =) -->
                                        </li>
                                        <div class="menu-entries">
                                            <li data-ng-if="::rootMenuEntry" class="divider"></li>
                                            <li data-ng-repeat="child in :: rootMenuEntry.children track by $index">
                                                <a data-ng-href="(= :: child.url =)" data-ng-bind=":: child.title"></a>
                                            </li>
                                        </div>
                                        <li class="divider"></li>
                                        <!-- <li><a data-ng-click="logout()">Log out</a></li> -->--}}
                                    </div>
                                </ul>
                                <ul class="dropdown-menu dropdown-menu-right" data-ng-show="!accessorId">
                                    <div class="not-logged">
                                        {{--<li>
                                            <a href="login.html"> Log in </a>
                                        </li>
                                        <li>
                                            <a href="create-account.html"> Create my account </a>
                                        </li>--}}
                                    </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="header__responsive-menu-fidelity">
                    <div data-type="block" data-id="fidelityProgramLink" data-name="Rbs_Website_XhtmlTemplate" data-layout-rbs-website-xhtml-template="" data-rbs-block-container="fidelityProgramLink" class="block">
                    {{--<i class="arl-icon icon-gift" aria-hidden="true"></i>
                        <a href="loyalty-program.html"> Loyalty program </a>--}}
                    </div>
                </div>
                <div class="header__responsive-menu-store">
                    <div data-type="block" data-id="shortStore" data-name="Rbs_Storeshipping_ShortStore" data-layout-rbs-storeshipping-short-store="" data-rbs-block-container="shortStore" class="block">
                        <script type="text/javascript">
                            window.__change["shortStore"] = null;
                        </script>

                        <div data-rbs-storeshipping-short-store="" data-choose-store-url="https://www.armorlux.com/en/recherche-de-magasins.html">
                            <div class="visible-lg">
                                {{--<div data-ng-show="storeData" data-ng-cloak="">
                                    <div class="dropdown inline-block">
                                        <a data-toggle="dropdown" class="dropdown-toggle">
                                            <i class="arl-icon brd-icon icon-store" aria-hidden="true"></i>
                                            <!-- <span class="title">Boutique </span> -->
                                            <i class="arl-icon brd-icon icon-chevron-down" aria-hidden="true"></i>
                                        </a>
                                        <div data-ng-cloak="" class="dropdown-menu dropdown-menu-right">
                                            <div class="divider"></div>

                                            <a data-ng-href="(= storeData.common.URL.canonical =)">
                                                See store information
                                            </a>

                                            <a href="recherche-de-magasins.html">
                                                Change store
                                            </a>
                                        </div>
                                    </div>
                                </div>--}}
                                
                                <div data-ng-hide="storeData">
                                    <a href="recherche-de-magasins.html">
                                    
                                        <i class="arl-icon brd-icon icon-store" aria-hidden="true"></i>
                                        <span class="title">{{$settings->email}}</span>
                                    </a>
                                </div>
                            </div>

                            <div class="hidden-lg">
                                <div data-ng-show="storeData">
                                    <a data-ng-href="(= storeData.common.URL.canonical =)">
                                        <i class="arl-icon brd-icon icon-store" aria-hidden="true"></i>
                                        <span>Boutique </span>
                                    </a>
                                </div>

                                <div data-ng-hide="storeData">
                                    <a href="recherche-de-magasins.html">
                                        <i class="arl-icon brd-icon icon-store" aria-hidden="true"></i>
                                        <span class="title">{{$settings->email}}</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="header__responsive-menu-phone">
                    <div data-type="block" data-id="phone" data-name="Rbs_Website_XhtmlTemplate" data-layout-rbs-website-xhtml-template="" data-rbs-block-container="phone" class="block">
                        <i class="arl-icon brd-icon icon-phone" aria-hidden="true"></i>
                        <i class="fa-solid fa-mobile-screen" aria-hidden="true"></i>
                        <a href="{{$settings->phone}}">{{$settings->phone}}</a>
                    </div>
                </div>
                <div class="header__responsive-switch-lang">
                    <div data-type="block" data-id="switchLang" data-name="Rbs_Website_SwitchLang" data-layout-rbs-website-switch-lang="" data-rbs-block-container="switchLang" class="block">
                        <script type="text/javascript">
                            window.__change["switchLang"] = {
                                LCID: "en_US",
                                lang: "US",
                                title: "English",
                                urls: [{
                                        hreflang: "en-US",
                                        url: "https:\/\/www.armorlux.com\/en\/",
                                        LCID: "en_US",
                                        lang: "US",
                                        title: "English",
                                    },
                                    {
                                        hreflang: "fr-FR",
                                        url: "https:\/\/www.armorlux.com\/fr\/",
                                        LCID: "fr_FR",
                                        lang: "FR",
                                        title: "Fran\u00e7ais",
                                    },
                                ],
                            };
                        </script>

                        {{--<div class="dropdown switch-language" data-rbs-website-switch-lang="" data-block-id="switchLang">
                            <a data-toggle="dropdown" class="dropdown-toggle">
                                <span class="title">US</span>
                                <i class="arl-icon brd-icon icon-chevron-down" aria-hidden="true"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="active">
                                    <a rel="alternate" hreflang="en-US" href="index.html">US</a>
                                </li>
                                <li>
                                    <a rel="alternate" hreflang="fr-FR" href="https://www.armorlux.com/fr/">FR</a>
                                </li>
                            </ul>
                        </div>--}}
                    </div>
                </div>
            </div>
        </div>
        <div class="header__responsive-logo">
            <div class="logo__container">
                <div data-type="block" data-id="logo" data-name="Rbs_Website_XhtmlTemplate" data-layout-rbs-website-xhtml-template="" data-rbs-block-container="logo" class="block">
                    <a class="logo__item" href="{{route('home')}}">
                        <img src="{{ asset('uploads/'.$settings->logo ?? '' )}}" title="" alt="" class="logo img-responsive" />
                    </a>
                </div>
            </div>
        </div>
        <div class="header__responsive-items">
            <div data-type="block" data-id="responsiveHeader" data-name="Rbs_Website_ResponsiveSummary" data-layout-rbs-website-responsive-summary="" data-rbs-block-container="responsiveHeader" class="block visible-xs-block visible-sm-block visible-md-block">
                <div data-rbs-website-responsive-summary="" data-block-names="search, shortCart">
                    <ul class="list-inline responsive-summary"></ul>
                </div>
            </div>
        </div>
    </div>

    <div id="header-top" class="main-grad header__top">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-5">
                    <!-- For Desktop view -->
                    <div class="header__top-infos">
                        <div data-type="block" data-id="phone" data-name="Rbs_Website_XhtmlTemplate" data-layout-rbs-website-xhtml-template="" data-rbs-block-container="phone" class="block">
                            <!-- <i class="arl-icon brd-icon icon-phone" aria-hidden="true"></i> -->
                            <i class="fa-solid fa-mobile-screen" ></i>
                            <a href="{{$settings->phone}}">
                               {{$settings->phone}} 
                            </a>
                        </div>
                    </div>
                    <div data-type="block" data-id="shortStore" data-name="Rbs_Storeshipping_ShortStore" data-layout-rbs-storeshipping-short-store="" data-rbs-block-container="shortStore" class="block">
                        <script type="text/javascript">
                            window.__change["shortStore"] = null;
                        </script>

                        <div data-rbs-storeshipping-short-store="" data-choose-store-url="https://www.armorlux.com/en/recherche-de-magasins.html">
                            <div class="visible-lg">
                                <div data-ng-show="storeData" data-ng-cloak="">
                                    <div class="dropdown inline-block">
                                        <a data-toggle="dropdown" class="dropdown-toggle">
                                            <i class="arl-icon brd-icon icon-store" aria-hidden="true"></i>
                                            <span class="title">Boutique </span>
                                            <i class="arl-icon brd-icon icon-chevron-down" aria-hidden="true"></i>
                                        </a>
                                        <div data-ng-cloak="" class="dropdown-menu dropdown-menu-right">
                                            <div class="divider"></div>

                                            <a data-ng-href="(= storeData.common.URL.canonical =)">
                                                See store information
                                            </a>

                                            <a href="recherche-de-magasins.html">
                                                Change store
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div data-ng-hide="storeData">
                                    <a href="recherche-de-magasins.html">
                                        <i class="arl-icon brd-icon icon-store" aria-hidden="true"></i>
                                        <span class="title">{{$settings->email}}</span>
                                    </a>
                                </div>
                            </div>

                            <div class="hidden-lg">
                                <div data-ng-show="storeData">
                                    <a data-ng-href="(= storeData.common.URL.canonical =)">
                                        <i class="arl-icon brd-icon icon-store" aria-hidden="true"></i>
                                        <span>Boutique </span>
                                    </a>
                                </div>

                                <div data-ng-hide="storeData">
                                    <a href="recherche-de-magasins.html">
                                        <i class="arl-icon brd-icon icon-store" aria-hidden="true"></i>
                                        <span class="title">{{$settings->email}}</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-7 text-right">
                    <div data-type="block" data-id="fidelityProgramLink" data-name="Rbs_Website_XhtmlTemplate" data-layout-rbs-website-xhtml-template="" data-rbs-block-container="fidelityProgramLink" class="block">
                    {{--<i class="arl-icon icon-gift" aria-hidden="true"></i>
                        <a href="loyalty-program.html">  Loyalty program </a>--}}
                    </div>
                    <div data-type="block" data-id="accountShort" data-name="Rbs_User_AccountShort" data-layout-rbs-user-account-short="" data-rbs-block-container="accountShort" class="block">
                        {{--<script type="text/javascript">
                            window.__change["accountShort"] = {
                                userAccountPageUrl: "my-information.html",
                                rootMenuEntry: {
                                    title: "My Account",
                                    url: "100176-my-account",
                                    documentId: 100176,
                                    typology: null,
                                    isInPath: false,
                                    isCurrent: false,
                                    children: [{
                                            title: "My information",
                                            url: "my-information.html",
                                            documentId: 100181,
                                            typology: null,
                                            isInPath: false,
                                            isCurrent: false,
                                            children: null,
                                        },
                                        {
                                            title: "My addresses",
                                            url: "my-addresses.html",
                                            documentId: 100187,
                                            typology: null,
                                            isInPath: false,
                                            isCurrent: false,
                                            children: null,
                                        },
                                        {
                                            title: "My wish-lists",
                                            url: "my-wish-lists.html",
                                            documentId: 100397,
                                            typology: null,
                                            isInPath: false,
                                            isCurrent: false,
                                            children: null,
                                        },
                                        {
                                            title: "My orders",
                                            url: "my-orders.html",
                                            documentId: 100511,
                                            typology: null,
                                            isInPath: false,
                                            isCurrent: false,
                                            children: null,
                                        },
                                        {
                                            title: "My reservations",
                                            url: "my-reservations.html",
                                            documentId: 100517,
                                            typology: null,
                                            isInPath: false,
                                            isCurrent: false,
                                            children: null,
                                        },
                                        {
                                            title: "My returns",
                                            url: "my-returns.html",
                                            documentId: 100651,
                                            typology: null,
                                            isInPath: false,
                                            isCurrent: false,
                                            children: null,
                                        },
                                        {
                                            title: "My favorite store",
                                            url: "my-favorite-store.html",
                                            documentId: 102475,
                                            typology: null,
                                            isInPath: false,
                                            isCurrent: false,
                                            children: null,
                                        },
                                        {
                                            title: "My subscriptions",
                                            url: "my-subscriptions.html",
                                            documentId: 102483,
                                            typology: null,
                                            isInPath: false,
                                            isCurrent: false,
                                            children: null,
                                        },
                                    ],
                                },
                            };
                        </script>--}}

                        <div data-rbs-user-short-account="">
                            <div class="dropdown">
                                <a href="#" data-toggle="dropdown" class="dropdown-toggle">
                                    <div class="visible-lg">
                                        {{--<i class="arl-icon brd-icon icon-account" aria-hidden="true"></i>
                                        <span class="title">My account</span>--}}
                                    </div>

                                    <div class="hidden-lg">
                                    {{--<i class="arl-icon brd-icon icon-account" aria-hidden="true"></i>
                                        <a data-ng-if=":: accessorId" data-ng-href="(= userAccountPageUrl =)">
                                            My account
                                        </a>--}}
                                        {{--<a class="btn btn-tertiary log-out pull-right" data-ng-if=":: accessorId" data-ng-click="logout()">Log out</a>
                                        <a data-ng-if=":: !accessorId" href="login.html">
                                           My account
                                        </a>--}}
                                    </div>
                                </a>
                                <ul data-ng-cloak="" class="dropdown-menu dropdown-menu-right" data-ng-show="accessorId">
                                    <div class="logged">
                                        <li data-ng-show="userAccountPageUrl">
                                            <a class="user-name" data-ng-href="(=:: userAccountPageUrl =)">(=:: accessorName =)</a>
                                        </li>
                                        <li data-ng-hide="::userAccountPageUrl" role="presentation" class="user-name">
                                            (=:: accessorName =)
                                        </li>
                                        <div class="menu-entries">
                                            <li data-ng-if="::rootMenuEntry" class="divider"></li>
                                            <li data-ng-repeat="child in :: rootMenuEntry.children track by $index">
                                                <a data-ng-href="(= :: child.url =)" data-ng-bind=":: child.title"></a>
                                            </li>
                                        </div>
                                        <li class="divider"></li>
                                        <li><a data-ng-click="logout()">Log out</a></li>
                                    </div>
                                </ul>
                                <ul class="dropdown-menu dropdown-menu-right" data-ng-show="!accessorId">
                                    <div class="not-logged">
                                        <li>
                                            <a href="login.html"> Log in </a>
                                        </li>
                                        <li>
                                            <a href="create-account.html"> Create my account </a>
                                        </li>
                                    </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div data-type="block" data-id="shortCart" data-name="Rbs_Commerce_ShortCart" data-layout-rbs-commerce-short-cart="" data-rbs-block-container="shortCart" class="block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
                        <div data-rbs-commerce-short-cart="" data-delete-product-waiting-message="Product deleting...">
                            <div data-ng-show="loading" class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle">
                                    {{--<i class="arl-icon brd-icon icon-shopping-bag" aria-hidden="true"></i>
                                    <span class="title">My cart</span>--}}
                                </a>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li>
                                        <a href="my-shopping-cart.html">
                                            Shopping cart loading...
                                        </a>
                                    </li>
                                </ul>
                            </div>

                            <div data-ng-cloak="" data-ng-show="!loading && !cartData.lines.length" class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle">
                                    {{--<i class="arl-icon brd-icon icon-shopping-bag" aria-hidden="true"></i>
                                    <span class="title">My cart</span>--}}
                                </a>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li>Your shopping cart is empty.</li>
                                </ul>
                            </div>

                            <div data-ng-cloak="" data-ng-show="!loading && cartData.lines.length" class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle">
                                    <i class="arl-icon brd-icon icon-shopping-bag" aria-hidden="true"></i>
                                    <span class="title">My cart ((= cartData.lines.length =))</span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-custom dropdown-cart">
                                    <ul class="media-list">
                                        <li class="media" data-ng-repeat="line in cartData.lines | orderBy:'index':true | limitTo:2">
                                            <div class="media-left media-left-shortCartItem" data-rbs-commerce-cart-line-visual="" data-product="line.product" data-format="shortCartItem"></div>
                                            <div class="media-body">
                                                <a title="(=:: line.product.common.title =)" data-ng-if=":: line.product.common.URL.publishedInWebsite" data-ng-href="(=:: line.product.common.URL.canonical =)">
                                                    <p class="media-heading">
                                                        (=:: line.product.common.title ||
                                                        line.designation =)
                                                    </p>
                                                </a>
                                                <p data-ng-if=":: !line.product.common.URL.publishedInWebsite" class="media-heading">
                                                    (=:: line.product.common.title || line.designation
                                                    =)
                                                </p>
                                                <div class="values__container">
                                                    <span class="values__item" data-ng-repeat="axeInfo in :: line.options.axesInfo">
                                                        (=:: axeInfo.value =)
                                                        <span data-ng-if="!$last"> - </span>
                                                    </span>
                                                    <span data-ng-if="line.options._embroidery" class="values__item">
                                                        - brodée &quot;(=
                                                        line.options._embroideryCustomText =)&quot;
                                                    </span>
                                                </div>
                                                <div class="values__container">
                                                    <span>Quantity:</span>
                                                    <span>(=:: line.quantity =)</span>
                                                </div>
                                                <strong class="price text-nowrap" data-ng-show=":: parameters.displayPricesWithTax && line.amountWithTaxes">
                                                    (=:: line.amountWithTaxes |
                                                    rbsFormatPrice:cartData.common.currencyCode =)
                                                </strong>
                                                <span class="old-price text-nowrap" data-ng-show=":: parameters.displayPricesWithTax && line.baseAmountWithTaxes">
                                                    (=:: line.baseAmountWithTaxes |
                                                    rbsFormatPrice:cartData.common.currencyCode =)
                                                </span>
                                                <strong class="text-nowrap" data-ng-show=":: !parameters.displayPricesWithTax && parameters.displayPricesWithoutTax && line.amountWithoutTaxes">
                                                    (=:: line.amountWithoutTaxes |
                                                    rbsFormatPrice:cartData.common.currencyCode =)
                                                    <abbr class="tax-mode" title="taxes excluded">Excl. VAT</abbr>
                                                </strong>
                                                <div data-ng-show=":: line.options.priceSource === 'store'">
                                                    <span class="small text-muted">*Store price</span>
                                                </div>
                                                <div data-ng-if="!readOnly && !line.options.keyLocked">
                                                    <span class="btn btn-link" data-ng-click="updateLineQuantity(line.key, 0)">
                                                        Delete
                                                    </span>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="lines-other" data-ng-if="cartData.lines.length > 2">
                                        <p>
                                            And
                                            <a data-ng-show="cartData.lines.length == 3" href="my-shopping-cart.html">
                                                another item...
                                            </a>
                                            <a data-ng-show="cartData.lines.length > 3" href="https://www.armorlux.com/en/my-shopping-cart.html">
                                                (= cartData.lines.length - 2 =) other items...
                                            </a>
                                        </p>
                                    </div>

                                    <div class="media-footer">
                                        <ul class="list-unstyled">
                                            <li class="subtotal">
                                                <h4 class="subtotal__label">SUBTOTAL</h4>
                                                <span class="subtotal__value" data-ng-show="parameters.displayPricesWithTax && cartData.amounts.linesAmountWithTaxes">
                                                    (= cartData.amounts.linesAmountWithTaxes |
                                                    rbsFormatPrice:cartData.common.currencyCode =)
                                                </span>
                                                <span class="subtotal__value" data-ng-show="!parameters.displayPricesWithTax && parameters.displayPricesWithoutTax && cartData.amounts.linesAmountWithoutTaxes">
                                                    (= cartData.amounts.linesAmountWithoutTaxes |
                                                    rbsFormatPrice:cartData.common.currencyCode =)
                                                    <abbr class="tax-mode" title="taxes excluded">Excl. VAT</abbr>
                                                </span>
                                            </li>
                                        </ul>

                                        <p data-ng-if="cartData.processData.locked" class="text-danger text-center">
                                            <span>Cart is being paid</span>
                                        </p>
                                        <a href="my-shopping-cart.html" class="btn btn-primary full-width">
                                            View my cart
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div data-type="block" data-id="switchLang" data-name="Rbs_Website_SwitchLang" data-layout-rbs-website-switch-lang="" data-rbs-block-container="switchLang" class="block">
                        <script type="text/javascript">
                            window.__change["switchLang"] = {
                                LCID: "en_US",
                                lang: "US",
                                title: "English",
                                urls: [{
                                        hreflang: "en-US",
                                        url: "https:\/\/www.armorlux.com\/en\/",
                                        LCID: "en_US",
                                        lang: "US",
                                        title: "English",
                                    },
                                    {
                                        hreflang: "fr-FR",
                                        url: "https:\/\/www.armorlux.com\/fr\/",
                                        LCID: "fr_FR",
                                        lang: "FR",
                                        title: "Fran\u00e7ais",
                                    },
                                ],
                            };
                        </script>

                        <div class="dropdown switch-language" data-rbs-website-switch-lang="" data-block-id="switchLang">
                            <a data-toggle="dropdown" class="dropdown-toggle">
                                {{--<span class="title">US</span>
                                <i class="arl-icon brd-icon icon-chevron-down" aria-hidden="true"></i>--}}
                            </a>
                            <ul class="dropdown-menu">
                                <li class="active">
                                    <a rel="alternate" hreflang="en-US" href="index.html">US</a>
                                </li>
                                <li>
                                    <a rel="alternate" hreflang="fr-FR" href="https://www.armorlux.com/fr/">FR</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="header-bottom" class="header__bottom">
        <div class="container">
            <div class="header__bottom-container">
                <div class="logo__container">
                    <div data-type="block" data-id="logo" data-name="Rbs_Website_XhtmlTemplate" data-layout-rbs-website-xhtml-template="" data-rbs-block-container="logo" class="block">
                        <a class="logo__item" href="{{route('home')}}">
                            <img src="{{ asset('uploads/'.$settings->logo ?? '' )}}" 
                             title="" alt="" class="logo img-responsive" />
                        </a>
                    </div>
                </div>
                {{--Yamini--}}
                <div class="header__navbar">
                    <div data-type="block" data-id="mainMenuCustom" data-name="Emakina_Website_EnrichedMenu" data-layout-emakina-website-enriched-menu="" data-rbs-block-container="mainMenuCustom" class="block">
                        <script type="text/javascript">
                            window.__change["mainMenuCustom"] = {
                                type: null,
                                common: {
                                    title: "Menu principal US",
                                    class: "",
                                    url: null,
                                    targetBehavior: null,
                                    id: 101920,
                                    inPath: false,
                                    current: false,
                                    subMenu: null,
                                    entries: [{
                                            type: "url",
                                            common: {
                                                title: "Low prices",
                                                class: "highlighted",
                                                url: "#",
                                                targetBehavior: "_self",
                                                id: 0,
                                                inPath: false,
                                                current: false,
                                                subMenu: {
                                                    type: "subMenu",
                                                    common: {
                                                        id: 3320577,
                                                        title: "Low prices",
                                                        entries: [{
                                                                type: "publishableList",
                                                                title: "Men",
                                                                target: "https:\/\/www.armorlux.com\/en\/3269260-men-low-prices",
                                                                class: "col-lg-2 col-lg-offset-1",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 3269295,
                                                                            title: "Coats & puffer jackets",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269295-coats-puffer-jackets",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269554,
                                                                            title: "Jackets, Fisherman's smock & Fleece jackets",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269554-jackets-fisherman-s-smock-fleece-jackets",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269302,
                                                                            title: "Jumpers & Cardigans",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269302-jumpers-cardigans",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269309,
                                                                            title: "Breton striped shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269309-breton-striped-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269316,
                                                                            title: "T-shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269316-t-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269568,
                                                                            title: "Poloshirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269568-poloshirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269323,
                                                                            title: "Shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269323-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269330,
                                                                            title: "Pants",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269330-pants",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269337,
                                                                            title: "Underwear tops",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269337-underwear-tops",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 4712572,
                                                                            title: "Underwear bottoms",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/4712572-underwear-bottoms",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269344,
                                                                            title: "Pyjama",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269344-pyjama",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Women",
                                                                target: "https:\/\/www.armorlux.com\/en\/3269267-women-low-prices",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 3269351,
                                                                            title: "Coats & puffer jackets",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269351-coats-puffer-jackets",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269582,
                                                                            title: "Jackets, fleeces & raincoats",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269582-jackets-fleeces-raincoats",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269358,
                                                                            title: "Jumpers & cardigans",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269358-jumpers-cardigans",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269365,
                                                                            title: "Breton striped shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269365-breton-striped-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269372,
                                                                            title: "T-shirts, tank tops & poloshirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269372-t-shirts-tank-tops-poloshirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269379,
                                                                            title: "Shirts & tunics",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269379-shirts-tunics",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269386,
                                                                            title: "Pants & shorts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269386-pants-shorts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269393,
                                                                            title: "Dresses & skirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269393-dresses-skirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269400,
                                                                            title: "Underwear tops",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269400-underwear-tops",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 4712579,
                                                                            title: "Underwear bottoms",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/4712579-underwear-bottoms",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269407,
                                                                            title: "Nightwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269407-nightwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Kids",
                                                                target: "https:\/\/www.armorlux.com\/en\/3269274-kids",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 3269414,
                                                                            title: "Coats & jackets",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269414-coats-jackets",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269421,
                                                                            title: "Jumpers & Cardigans",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269421-jumpers-cardigans",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269428,
                                                                            title: "Breton striped shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269428-breton-striped-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269435,
                                                                            title: "T-shirts & poloshirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269435-t-shirts-poloshirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269442,
                                                                            title: "Dresses & pants",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269442-dresses-pants",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269561,
                                                                            title: "Accessories",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269561-accessories",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269449,
                                                                            title: "Nightwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269449-nightwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Baby",
                                                                target: "https:\/\/www.armorlux.com\/en\/3269281-baby",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 3269456,
                                                                            title: "Jumpers & Cardigans",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269456-jumpers-cardigans",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269463,
                                                                            title: "Breton striped shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269463-breton-striped-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269477,
                                                                            title: "Trousers, dresses & skirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269477-trousers-dresses-skirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269484,
                                                                            title: "Nightwear & Underwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269484-nightwear-underwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Accessories",
                                                                target: "https:\/\/www.armorlux.com\/en\/3269288-accessories",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 3269498,
                                                                            title: "Scarf",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269498-scarf",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269505,
                                                                            title: "Hats & beanies",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269505-hats-beanies",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269519,
                                                                            title: "Chaussures",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269519-chaussures",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3269533,
                                                                            title: "Bags",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/low-prices\/3269533-bags",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                        ],
                                                    },
                                                },
                                                entries: [],
                                            },
                                        },
                                        {
                                            type: "url",
                                            common: {
                                                title: "Men",
                                                class: "",
                                                url: "#",
                                                targetBehavior: "_self",
                                                id: 0,
                                                inPath: false,
                                                current: false,
                                                subMenu: {
                                                    type: "subMenu",
                                                    common: {
                                                        id: 101954,
                                                        title: "MEN",
                                                        entries: [{
                                                                type: "publishableList",
                                                                title: "Coat, parka & jacket",
                                                                target: null,
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 103908,
                                                                            title: "Coat, duffle coat & pea coat",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/103908-coat-duffle-coat-pea-coat",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Coat, duffle coat &amp; pea coat - Men<\/h1><div align="justify">Discover the coat which will accompany you season after season. Are you more of a <a  data-document-id="104272" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/clothing\/104272-pea-coat">pea coat <\/a>or a <a  data-document-id="104279" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/clothing\/104279-duffle-coat">duffle coat<\/a> ? <br><\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532471,
                                                                                            title: "PEA COAT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532475,
                                                                                            title: "DUFFLE COAT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 103915,
                                                                            title: "Parka & raincoat",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/103915-parka-raincoat",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Parka &amp; raincoat - Men<\/h1><div align="justify">Discover our collection of parka, jacket, raincoat and raincoat to protect you from bad weather! Armor-lux offers a wide range for all styles. <\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532521,
                                                                                            title: "PARKA",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532524,
                                                                                            title: "RAINCOAT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532526,
                                                                                            title: "JACKET",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532528,
                                                                                            title: "WINDBREACKER",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 103922,
                                                                            title: "Jacket & blazer",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/103922-jacket-blazer",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Jacket &amp; blazer - Men<\/h1><div align="justify">The blazer, for your more formal looks and the fisherman jacket, for all other days of the week.<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 103929,
                                                                            title: "Puffer jacket",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/103929-puffer-jacket",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Puffer jacket - Men<\/h1><div align="justify">The puffer jacket offers you a sportswear look while keeping you warm. Light or ultra-warm, choose the puffer jacket that will meet your expectations!<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532542,
                                                                                            title: "LIGHTWEIGHT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532544,
                                                                                            title: "ULTRA-WARM",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 103936,
                                                                            title: "Fleece & softshell jacket",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/103936-fleece-softshell-jacket",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Fleece &amp; softshell jacket - Men<\/h1><div align="justify">Choose our polar jackets for men. The Armor-lux fleece is a must-have for warm and comfortable clothing. The classic fleece can be worn under a jacket or over a sweater. The softshell jacket will put you in the best conditions to enjoy your walks at the sea or in the countryside. Whatever the weather brings, you\'ll be sure to stay dry!<br><br>Also find <a  data-document-id="104286" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/clothing\/104286-parka">parkas<\/a>, <a  data-document-id="103922" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/103922-jacket-blazer">jackets<\/a> and <a  data-document-id="103929" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/103929-puffer-jacket">puffer jackets<\/a> for men.<\/div><div><br><\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 103943,
                                                                            title: "Fisherman\u2019s smock",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/103943-fisherman-s-smock",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Fisherman\u2019s smock - Men<\/h1><div align="justify">Discover our selection of fisherman\'s smock, an essential piece of Breton clothing. Today, the fisherman\'s smock still has its basic attributes: the button and the inside pocket, perfect for an outdoor life.<br><br>Discover also our range of <a  data-document-id="104293" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/clothing\/104293-raincoat">raincoats<\/a> for men.<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848563,
                                                                            title: "Sailing jacket",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/848563-sailing-jacket",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Sailing jacket - Men<\/h1><div align="justify">Our sailing suits offer you the guarantee of lasting comfort and protection. Our products are designed to allow you to go out on the water in all weather conditions.<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Clothing",
                                                                target: "https:\/\/www.armorlux.com\/en\/103838-clothing",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 103950,
                                                                            title: "Fisherman's jumper & Jumper",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/103950-fisherman-s-jumper-jumper",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Fisherman\'s jumper &amp; Jumper - Men<\/h1><div align="justify">Timeless, jumpers and fisherman jumpers are favorites in the wardrobe! Play with styles thanks to the different knits, materials and details offered. For a casual look, discover the<a  data-document-id="104356" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/clothing\/104356-sweaters"> sweaters<\/a> to combine comfort and style.<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532576,
                                                                                            title: "BASICS",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532569,
                                                                                            title: "FISHERMAN'S JUMPER",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532578,
                                                                                            title: "SWEATERS",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 103957,
                                                                            title: "Cardigan",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/103957-cardigan",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Cardigan - Men<\/h1><div align="justify">Discover our collection of cardigans for men: striped, plain or two-tone, discover our complete range of wool and cotton sweaters. Take advantage of all the Armor-lux quality to combine trend, comfort and lightness. Available in many colors: plain or striped, blue, red, beige, brown or gray, adopt the shade you need!<br><br>Find also our <a  data-document-id="103950" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/103950-fisherman-s-jumper-jumper">marine jumpers<\/a> for men.<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532580,
                                                                                            title: "BUTTON CARDIGAN",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532582,
                                                                                            title: "ZIP CARDIGAN",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 103964,
                                                                            title: "Breton striped shirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/103964-breton-striped-shirt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">\tBreton striped shirt - Men<\/h1><div align="justify">Discover our collection of authentic Breton striped shirts. For an excellent Breton style in the middle of winter, combine your Breton striped shirt with a <a  data-document-id="104272" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/clothing\/104272-pea-coat">pea coat<\/a>, a <a  data-document-id="104279" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/clothing\/104279-duffle-coat">duffle coat<\/a> or even a <a  data-document-id="103957" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/103957-cardigan">cardigan<\/a>.<br><br>The materials of our Breton striped shirt: thick cotton, light cotton, cotton and linen, fair trade cotton, wool.<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532473,
                                                                                            title: "CLASSICS",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532584,
                                                                                            title: "LIGHT COTTON",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532586,
                                                                                            title: "THICK COTTON",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 103971,
                                                                            title: "T-shirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/103971-t-shirt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">T-shirt - Men<\/h1><div align="justify">Armor-lux offers a wide range of T-shirts: plain, printed, cotton or linen. Find the one that will follow you all season long ! <\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532588,
                                                                                            title: "BASICS",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532589,
                                                                                            title: "PRINT T-SHIRT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 10015278,
                                                                                            title: null,
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 103978,
                                                                            title: "Polo shirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/103978-polo-shirt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">\tPolo shirt - Men<\/h1><div align="justify">Stylish and sporty, in long or short sleeves, Armor-lux men\'s rugby style polo shirts will suit your casual or more sophisticated outfit.<br>Our polo shirts are available in small, medium and large sizes and in multiple colors: black, white, pink, red, navy blue, green...<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532592,
                                                                                            title: "BASICS",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532594,
                                                                                            title: "RUGBY SHIRTS",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 103985,
                                                                            title: "Shirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/103985-shirt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Shirt - Men<\/h1><div align="justify">Plain or checked, long or short sleeves, straight or slim fit? Find the shirt you need among our wide range. For a casual look or a more trendy style, choose an Armor-lux shirt.<br><br>Discover also our collection of <a  data-document-id="103971" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/103971-t-shirt">T-shirts<\/a> and <a  data-document-id="103978" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/103978-polo-shirt">polo shirts<\/a>.<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532596,
                                                                                            title: "SLIM FIT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532601,
                                                                                            title: "CLASSIC FIT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532598,
                                                                                            title: "RELAXED FIT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 3649657,
                                                                                            title: null,
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 103992,
                                                                            title: "Trousers",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/103992-trousers",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Trousers - Men<\/h1><div align="justify">Paired with your <a  data-document-id="103964" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/103964-breton-striped-shirt">Breton striped shirt<\/a>, <a  data-document-id="103978" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/103978-polo-shirt">polo shirt<\/a> or <a  data-document-id="103950" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/103950-fisherman-s-jumper-jumper">jumper<\/a>, find the perfect piece in our range of men\'s pants: chino, straight pants, fitted, in cotton, denim and elastane, you will love it!<br><br>Discover our <a  data-document-id="103985" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/103985-shirt">shirts<\/a> to complete your outfit.<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532604,
                                                                                            title: "CHINOS",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532606,
                                                                                            title: "JEANS",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532607,
                                                                                            title: "CARGO & MULTIPOCKETS",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 103999,
                                                                            title: "Bermuda & shorts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/103999-bermuda-shorts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">\tBermuda &amp; shorts - Men<\/h1><div align="justify">Paired with your <a  data-document-id="103964" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/103964-breton-striped-shirt">Breton striped shirt<\/a>, <a  data-document-id="103978" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/103978-polo-shirt">polo shirt<\/a> or <a  data-document-id="103950" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/103950-fisherman-s-jumper-jumper">jumper<\/a>, you will find the appropriate product in our range of men\'s bermuda shorts: cotton, denim and elastane, Armor-lux offers you a wide choice for the beautiful days. <\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Underwear & nightwear",
                                                                target: "https:\/\/www.armorlux.com\/en\/103852-underwear",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 104006,
                                                                            title: "T-shirt & undershirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/104006-t-shirt-undershirt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> T-shirt &amp; undershirt - Men<\/h1><div align="justify">To be worn alone or under a jumper or a shirt, the T-shirt (or undershirt) is an essential for your wardrobe! Made of cotton, it ensures warmth and comfort. Discover our range of long or <a  data-document-id="104496" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/underwear\/104496-short-sleeve-undershirt">short-sleeved T-shirts<\/a>, our <a  data-document-id="104503" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/underwear\/104503-tank-top">tank tops<\/a> and our <a  data-document-id="104510" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/underwear\/104510-ultra-warm">ultra-warmers<\/a>.<br><br>Also to be discovered : <a  data-document-id="104489" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/underwear\/104489-long-sleeve-undershirt">Long sleeved T-shirt<\/a>, <a  data-document-id="104503" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/underwear\/104503-tank-top">Tank top<\/a><\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532609,
                                                                                            title: "LONG SLEEVE UNDERSHIRT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532611,
                                                                                            title: "SHORT SLEEVE UNDERSHIRT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532613,
                                                                                            title: "TANK TOP",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532615,
                                                                                            title: "ULTRA WARM",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104013,
                                                                            title: "Boxer & trunk",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/104013-boxer-trunk",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Boxer &amp; trunk - Men<\/h1><div align="justify">Choose the Armor-lux quality for your underwear. For a perfect comfort, discover our range of boxer shorts and trunks.<br>Also to be discovered: <a  data-document-id="104020" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/104020-briefs">briefs for men.<\/a><\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532617,
                                                                                            title: "TRUNKS",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532650,
                                                                                            title: "BOXER",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104020,
                                                                            title: "Briefs",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/104020-briefs",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Brief - Men<\/h1><div align="justify">For a great comfort and a perfect support, adopt the Armor-lux briefs! A range of underwear whose quality has been proven for 80 years.<br><br>Also to be discovered: <a  data-document-id="104524" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/underwear\/104524-boxer">Boxer shorts<\/a> and <a  data-document-id="104517" target="_self" href="https:\/\/www.armorlux.com\/en\/men\/underwear\/104517-trunk">trunks<\/a>. <br><\/div><div><br><\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104027,
                                                                            title: "Pyjama",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/104027-pyjama",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Pyjama - Men<\/h1><div align="justify">Long or short sleeved cotton pyjamas, pyjashort or nightdress...Discover our comfortable nightwear that will guarantee you a warm night\'s sleep this season! Our pyjamas (long or short) are made of cotton and available in large sizes and in multiple colors.<br><br>Find also the complete range of <a  data-document-id="103852" target="_self" href="https:\/\/www.armorlux.com\/en\/103852-underwear">underwear<\/a> for men.<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 11477630,
                                                                            title: "Bathing suit",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/11477630-bathing-suit",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Accessories",
                                                                target: "https:\/\/www.armorlux.com\/en\/103866-accessories",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 104041,
                                                                            title: "Beanie, cap & hat",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/104041-beanie-cap-hat",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Beanie, cap &amp; hat - Men<\/h1><div align="justify">In wool or cotton, striped or plain, discover our hats and caps inspired by the marine world. These pieces, always timeless and elegant, will keep you warm this season. Blue, white or red, find the Armor-lux stripes through these accessories. <\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104048,
                                                                            title: "Scarf",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/104048-scarf",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Scarf - Men<\/h1><div align="justify">In wool or cotton, our scarves will help you face the most capricious weather, in all elegance! Soft and beautiful, they will accessorize all your outfits!<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 4365435,
                                                                            title: "Belt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/4365435-belt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104055,
                                                                            title: "Socks",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/104055-socks",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Socks - Men<\/h1><div align="justify">To dress your feet with softness and warmth, discover our socks, plain or striped, you\'ll love it!<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104062,
                                                                            title: "Slippers",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/104062-slippers",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Slippers - Men<\/h1><div align="justify">Soft, warm and resistant, fall for the Armor-lux slippers! In wool for winter, or in cotton for summer, you will adore them!<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104069,
                                                                            title: "Shoes",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/104069-shoes",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Shoes - Men<\/h1><div align="justify">Adapted to your sea outings, discover our range of nautical shoes.<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104076,
                                                                            title: "Luggage",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/men\/104076-luggage",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Luggage - Men<\/h1><div align="justify">The bags of the Armor-lux collection are designed and developed in a style always inspired by the marine world. Quality pieces in a resolutely modern and elegant design.<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Selection of the moment",
                                                                target: null,
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 848341,
                                                                            title: "New in for Men",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/848341-new-in-for-men",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> New in for men <\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848362,
                                                                            title: "New in Bermudes",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/848362-new-in-bermudes",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">New in Bermudes - New collection<\/h1><div align="justify">Dive into the Bermude universe! For men and women, you will find warm, waterproof and functional pieces for all your outdoor activities. Parkas, puffer jackets, shirts and pants are waiting for you! <\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 819087,
                                                                            title: "Brest 2024 - Men",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/events\/819087-brest-2024-men",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                        id: 10916307,
                                                                                        title: null,
                                                                                        link: {},
                                                                                        image: {},
                                                                                    }, ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "BlockAttributes",
                                                                                    items: [{
                                                                                        key: "topicBlock"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 11259564,
                                                                            title: "Arkea Ultim Challenge - Brest",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/11259564-arkea-ultim-challenge-brest",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 4287507,
                                                                            title: "Marin Breton Almanac Collection",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/4287507-marin-breton-almanac-collection",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                        id: 9265910,
                                                                                        title: null,
                                                                                        link: {},
                                                                                        image: {},
                                                                                    }, ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "BlockAttributes",
                                                                                    items: [{
                                                                                        key: "topicBlock"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818338,
                                                                            title: "Festival Interceltique de Lorient",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/818338-festival-interceltique-de-lorient",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                        id: 5926153,
                                                                                        title: null,
                                                                                        link: {},
                                                                                        image: {},
                                                                                    }, ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "BlockAttributes",
                                                                                    items: [{
                                                                                        key: "topicBlock"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 11424294,
                                                                            title: "La Rochelle Maritime Festival",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/11424294-la-rochelle-maritime-festival",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                        id: 11428559,
                                                                                        title: null,
                                                                                        link: {},
                                                                                        image: {},
                                                                                    }, ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "BlockAttributes",
                                                                                    items: [{
                                                                                        key: "topicBlock"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: "",
                                                                target: null,
                                                                class: "col-lg-2",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 9773225,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 10628898,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/655cc3852ae3b_Gabarit_images_menu_homme_vestiaire_marin.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/655cc3852ae3b_Gabarit_images_menu_homme_vestiaire_marin.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/655cc3852ae3b_Gabarit_images_menu_homme_vestiaire_marin.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/819052-navy-style",
                                                                    content: '<p style="text-align: center; font-size: 24px ; font-weight:700 ;">Navy style<\/p>',
                                                                }, ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: null,
                                                                target: null,
                                                                class: "col-lg-2",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 8311335,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 11255260,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/65afc187025dd_image_menu_nouveaut_s_homme.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/65afc187025dd_image_menu_nouveaut_s_homme.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/65afc187025dd_image_menu_nouveaut_s_homme.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/848341-new-in-for-men",
                                                                    content: '<h3 style="text-align: center;">New Collection<\/h3>',
                                                                }, ],
                                                            },
                                                        ],
                                                    },
                                                },
                                                entries: [],
                                            },
                                        },
                                        {
                                            type: "url",
                                            common: {
                                                title: "Women",
                                                class: "",
                                                url: "#",
                                                targetBehavior: "_self",
                                                id: 0,
                                                inPath: false,
                                                current: false,
                                                subMenu: {
                                                    type: "subMenu",
                                                    common: {
                                                        id: 102098,
                                                        title: null,
                                                        entries: [{
                                                                type: "publishableList",
                                                                title: "Coat, parka & jacket",
                                                                target: null,
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 104083,
                                                                            title: "Coat, duffle coat & pea coat",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104083-coat-duffle-coat-pea-coat",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Coat, duffle coat &amp; pea coat - Women<\/h1><div align="justify">To protect you from the winter cold, discover the coat that will follow you all season long.<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532242,
                                                                                            title: "DUFFLE COAT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532240,
                                                                                            title: "PEA COAT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104090,
                                                                            title: "Parka, windbreaker & raincoat",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104090-parka-windbreaker-raincoat",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Parka, windbreaker &amp; raincoat - Women<\/h1><div align="justify">Rainy days will be fun once protected under your Armor-Lux raincoat! Discover our range of parkas and raincoats in bright colors and with pretty striped details.<br>Find also our<a  data-document-id="104545" target="_self" href="https:\/\/www.armorlux.com\/en\/women\/clothing\/104545-parka"> parkas<\/a>, <a  data-document-id="104552" target="_self" href="https:\/\/www.armorlux.com\/en\/women\/clothing\/104552-raincoat">raincoats<\/a> and <a  data-document-id="104111" target="_self" href="https:\/\/www.armorlux.com\/en\/women\/104111-fleece-softshell-jacket">fleece jackets<\/a> to stay warm.<\/div><div><br><\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532244,
                                                                                            title: "PARKA",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532249,
                                                                                            title: "RAINCOAT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104097,
                                                                            title: "Jacket & trench coat",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104097-jacket-trench-coat",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">\tJacket &amp; trench coat - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104104,
                                                                            title: "Puffer jacket",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104104-puffer-jacket",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Puffer jacket - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532261,
                                                                                            title: "LIGHTWEIGHT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532266,
                                                                                            title: "ULTRA-WARM",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104111,
                                                                            title: "Fleece & softshell jacket",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104111-fleece-softshell-jacket",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Fleece &amp; softshell jacket - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Clothing",
                                                                target: "https:\/\/www.armorlux.com\/en\/103845-clothing",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 104118,
                                                                            title: "Fisherman's jumper & Jumper",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104118-fisherman-s-jumper-jumper",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Fisherman\'s jumper &amp; pullover - Women<\/h1><div style="text-align: justify;">Its 3 buttons on the collar and its inimitable stripe have made its legend... Discover or rediscover the authentic fisherman\'s jumper, which has become an essential in women\'s wardrobes! In wool for winter or cotton for summer, navy blue for the classics or coloured for the bold, the fisherman\'s jumper is reinvented by Armor-lux to satisfy all women!<\/div><div style="text-align: justify;"><br><\/div><div style="text-align: justify;">Armor-lux also offers a range of <a  data-document-id="104125" target="_self" href="https:\/\/www.armorlux.com\/en\/women\/104125-cardigan">cardigans<\/a> for women.<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532488,
                                                                                            title: "BASICS",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532268,
                                                                                            title: "FISHERMAN'S JUMPER",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104125,
                                                                            title: "Cardigan",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104125-cardigan",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Cardigan - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104132,
                                                                            title: "Breton striped shirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104132-breton-striped-shirt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532281,
                                                                                            title: "CLASSICS",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532286,
                                                                                            title: "LIGHT COTTON",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532291,
                                                                                            title: "THICK COTTON",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "BlockAttributes",
                                                                                    items: [{
                                                                                        key: "topicBlock"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104139,
                                                                            title: "Blouse & shirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104139-blouse-shirt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Blouse &amp; shirt - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104146,
                                                                            title: "T-shirt, top & polo shirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104146-t-shirt-top-polo-shirt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532490,
                                                                                            title: "POLO SHIRT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532302,
                                                                                            title: "TANK TOP",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532492,
                                                                                            title: "T-SHIRT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "BlockAttributes",
                                                                                    items: [{
                                                                                        key: "topicBlock"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104153,
                                                                            title: "Trousers",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104153-trousers",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Trousers - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532494,
                                                                                            title: "SLIM FIT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532496,
                                                                                            title: "STRAIGHT CUT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532498,
                                                                                            title: "EXPANDABLE WAIST",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104160,
                                                                            title: "Capris & shorts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104160-capris-shorts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Capris &amp; shorts - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104167,
                                                                            title: "Dress",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104167-dress",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: [],
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: [],
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104174,
                                                                            title: "Skirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104174-skirt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Skirt - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Underwear & nightwear",
                                                                target: "https:\/\/www.armorlux.com\/en\/103873-underwear",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 104181,
                                                                            title: "Long sleeve undershirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104181-long-sleeve-undershirt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">\tLong sleeve undershirt - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532500,
                                                                                            title: "100% COTTON",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532501,
                                                                                            title: "STRETCHY",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532503,
                                                                                            title: "ULTRA WARM",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104188,
                                                                            title: "Short sleeve undershirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104188-short-sleeve-undershirt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Short sleeve undershirt - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532504,
                                                                                            title: "100% COTTON",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532505,
                                                                                            title: "STRETCHY",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532507,
                                                                                            title: "ULTRA WARM",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104195,
                                                                            title: "Tank top & Camis",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104195-tank-top-camis",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">\tTank top &amp; Camis - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532509,
                                                                                            title: "100% COTTON",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532511,
                                                                                            title: "STRETCHY",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532513,
                                                                                            title: "ULTRA WARM",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104202,
                                                                            title: "Briefs",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104202-briefs",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Panties - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 532313,
                                                                                            title: "LOW RISE",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532514,
                                                                                            title: "MEDIUM RISE",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 532515,
                                                                                            title: "HIGH CUT",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                        key: "generalAttributes",
                                                                                        items: [{
                                                                                            key: "description"
                                                                                        }],
                                                                                    },
                                                                                    {
                                                                                        key: "BlockAttributes",
                                                                                        items: [{
                                                                                            key: "topicBlock"
                                                                                        }],
                                                                                    },
                                                                                ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104209,
                                                                            title: "Leggings",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104209-leggings",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Leggings - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104755,
                                                                            title: "Pyjama",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/nightwear\/104755-pyjama",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Pyjama - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104762,
                                                                            title: "Nightdress",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/nightwear\/104762-nightdress",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Nightdress - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 8724864,
                                                                            title: "Bathing suit",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/8724864-bathing-suit",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: [],
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: [],
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Accessories",
                                                                target: "https:\/\/www.armorlux.com\/en\/103887-accessories",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 104230,
                                                                            title: "Beanie, cap & hat",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104230-beanie-cap-hat",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">\tBeanie, cap &amp; hat - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104237,
                                                                            title: "Scarf",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104237-scarf",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Scarf - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 4365428,
                                                                            title: "Belt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/4365428-belt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104244,
                                                                            title: "Socks",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104244-socks",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Socks - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104251,
                                                                            title: "Slippers",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104251-slippers",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Slippers - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104258,
                                                                            title: "Shoes",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104258-shoes",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Shoes - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104265,
                                                                            title: "Luggage",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/women\/104265-luggage",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Luggage - Women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Selection of the moment",
                                                                target: null,
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 848355,
                                                                            title: "New in for Women",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/848355-new-in-for-women",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> New in for women - New collection<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848334,
                                                                            title: "New in Terre&Mer",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/848334-new-in-terre-mer",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> New in Terre &amp; Mer<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848362,
                                                                            title: "New in Bermudes",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/848362-new-in-bermudes",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">New in Bermudes - New collection<\/h1><div align="justify">Dive into the Bermude universe! For men and women, you will find warm, waterproof and functional pieces for all your outdoor activities. Parkas, puffer jackets, shirts and pants are waiting for you! <\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 819066,
                                                                            title: "Brest 2024 - Women",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/events\/819066-brest-2024-women",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                        id: 10916307,
                                                                                        title: null,
                                                                                        link: {},
                                                                                        image: {},
                                                                                    }, ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "BlockAttributes",
                                                                                    items: [{
                                                                                        key: "topicBlock"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 11259564,
                                                                            title: "Arkea Ultim Challenge - Brest",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/11259564-arkea-ultim-challenge-brest",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 4287507,
                                                                            title: "Marin Breton Almanac Collection",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/4287507-marin-breton-almanac-collection",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                        id: 9265910,
                                                                                        title: null,
                                                                                        link: {},
                                                                                        image: {},
                                                                                    }, ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "BlockAttributes",
                                                                                    items: [{
                                                                                        key: "topicBlock"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818338,
                                                                            title: "Festival Interceltique de Lorient",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/818338-festival-interceltique-de-lorient",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                        id: 5926153,
                                                                                        title: null,
                                                                                        link: {},
                                                                                        image: {},
                                                                                    }, ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "BlockAttributes",
                                                                                    items: [{
                                                                                        key: "topicBlock"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 11424294,
                                                                            title: "La Rochelle Maritime Festival",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/11424294-la-rochelle-maritime-festival",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                        id: 11428559,
                                                                                        title: null,
                                                                                        link: {},
                                                                                        image: {},
                                                                                    }, ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "BlockAttributes",
                                                                                    items: [{
                                                                                        key: "topicBlock"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: "",
                                                                target: null,
                                                                class: "col-lg-2",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 9773222,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 10628904,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/655cc5e614055_Gabarit_images_menu_femme_vestiaire_marin.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/655cc5e614055_Gabarit_images_menu_femme_vestiaire_marin.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/655cc5e614055_Gabarit_images_menu_femme_vestiaire_marin.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/819045-navy-style",
                                                                    content: '<p style="text-align: center; font-size: 24px ; font-weight:700 ;">Navy style<\/p>',
                                                                }, ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: "",
                                                                target: null,
                                                                class: "col-lg-2",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 8311349,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 11255261,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/65afc1b6aa196_image_menu_nouveaut_s_femme.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/65afc1b6aa196_image_menu_nouveaut_s_femme.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/65afc1b6aa196_image_menu_nouveaut_s_femme.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/848355-new-in-for-women",
                                                                    content: '<h3 style="text-align: center;">New Collection<\/h3>',
                                                                }, ],
                                                            },
                                                        ],
                                                    },
                                                },
                                                entries: [],
                                            },
                                        },
                                        {
                                            type: "url",
                                            common: {
                                                title: "Kids",
                                                class: "",
                                                url: "#",
                                                targetBehavior: "_self",
                                                id: 0,
                                                inPath: false,
                                                current: false,
                                                subMenu: {
                                                    type: "subMenu",
                                                    common: {
                                                        id: 102099,
                                                        title: null,
                                                        entries: [{
                                                                type: "publishableList",
                                                                title: "Kids 2-14 years",
                                                                target: "https:\/\/www.armorlux.com\/en\/103901-kids-2-14-years",
                                                                class: "col-lg-2 col-lg-offset-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 104818,
                                                                            title: "Pea coat, duffle coat & jacket",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/kids-baby\/104818-pea-coat-duffle-coat-jacket",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Pea coat, duffle coat &amp; jacket -  Kids 2-14 years <\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104825,
                                                                            title: "Fisherman's jumper & knitwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/kids-baby\/104825-fisherman-s-jumper-knitwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Fisherman\'s jumper &amp; knitwear -  Kids 2-14 years <\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104832,
                                                                            title: "Fisherman's jumper & knitwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/kids-baby\/104832-fisherman-s-jumper-knitwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">\tBreton striped shirt -  Kids 2-14 years <\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104839,
                                                                            title: "T-shirt & Polo shirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/kids-baby\/104839-t-shirt-polo-shirt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">T-shirt &amp; Polo shirt -  Kids 2-14 years <\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104846,
                                                                            title: "Dress & trousers",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/kids-baby\/104846-dress-trousers",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Dress &amp; trousers -  Kids 2-14 years <\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104853,
                                                                            title: "Nightwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/kids-baby\/104853-nightwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">\tNightwear - Kids 2-14 years <\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104860,
                                                                            title: "Accessories",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/kids-baby\/104860-accessories",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Accessories -  Kids 2-14 years <\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "baby 3-24 months",
                                                                target: "https:\/\/www.armorlux.com\/en\/103894-baby-3-24-months",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 104769,
                                                                            title: "Fisherman's jumper & knitwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/kids-baby\/104769-fisherman-s-jumper-knitwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Fisherman\'s jumper &amp; knitwear -  Baby 3 - 24 months <\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104783,
                                                                            title: "Breton striped shirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/kids-baby\/104783-breton-striped-shirt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Breton striped shirt -  Baby 3 - 24 months <\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104776,
                                                                            title: "T-shirt & Polo shirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/kids-baby\/104776-t-shirt-polo-shirt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">\tT-shirt &amp; Polo shirt -  Baby 3 - 24 months <\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104790,
                                                                            title: "Breton striped shirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/kids-baby\/104790-breton-striped-shirt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Dress &amp; trousers -  Baby 3 - 24 months <\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104797,
                                                                            title: "Bodysuit, pyjama & onesies",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/kids-baby\/104797-bodysuit-pyjama-onesies",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Bodysuit, pyjama &amp; onesies -  Baby 3 - 24 months <\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104804,
                                                                            title: "Cuddly toy",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/kids-baby\/104804-cuddly-toy",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">\tCuddly toy -  Baby 3 - 24 months <\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104811,
                                                                            title: "Accessories",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/kids-baby\/104811-accessories",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Accessories -  Baby 3 - 24 months <\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Selection",
                                                                target: null,
                                                                class: "hidden col-lg-2",
                                                                publishable: [
                                                                    []
                                                                ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: "",
                                                                target: null,
                                                                class: "col-lg-2",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 8008224,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 9403928,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/648c7250cbb02_image_menu_vestiaire_marin_enfant.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/648c7250cbb02_image_menu_vestiaire_marin_enfant.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/648c7250cbb02_image_menu_vestiaire_marin_enfant.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/4580086-navy-style",
                                                                    content: '<p style="text-align: center; font-size: 24px ; font-weight:700 ;">Navy style<\/p>',
                                                                }, ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: "",
                                                                target: null,
                                                                class: "col-lg-2",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 9574448,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 11110960,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/659e5ed02fcc4_image_menu_soldes_enfant.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/659e5ed02fcc4_image_menu_soldes_enfant.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/659e5ed02fcc4_image_menu_soldes_enfant.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/818177-kids",
                                                                }, ],
                                                            },
                                                        ],
                                                    },
                                                },
                                                entries: [],
                                            },
                                        },
                                        {
                                            type: "url",
                                            common: {
                                                title: "The Breton shirt",
                                                class: "",
                                                url: "#",
                                                targetBehavior: "_self",
                                                id: 0,
                                                inPath: false,
                                                current: false,
                                                subMenu: {
                                                    type: "subMenu",
                                                    common: {
                                                        id: 102100,
                                                        title: "The breton shirt",
                                                        entries: [{
                                                                type: "publishableList",
                                                                title: "The striped workshop",
                                                                target: null,
                                                                class: "col-lg-2 col-lg-offset-3",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 101910,
                                                                            title: "The story of the breton shirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/the-story-of-the-breton-shirt.html",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 102042,
                                                                            title: "Your own Breton shirt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/your-own-breton-shirt.html",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 102112,
                                                                            name: "enrichedPage",
                                                                            title: "Enriched page",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                            },
                                                                            attributes: [],
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: [],
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 4253260,
                                                                            title: "Which breton striped shirt is right for you?",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/which-breton-striped-shirt-is-right-for-you-.html",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: "",
                                                                target: null,
                                                                class: "col-lg-3",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 102101,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 4444548,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/61dc34d793429_img_menu_la_mariniere_7.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/61dc34d793429_img_menu_la_mariniere_7.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/61dc34d793429_img_menu_la_mariniere_7.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/your-own-breton-shirt.html",
                                                                    content: '<p style="text-align: center; font-size: 24px ; font-weight:700 ;">Your own Breton shirt<\/p>',
                                                                }, ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: null,
                                                                target: null,
                                                                class: "col-lg-3",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 4292526,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 10017167,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/64f5f220da12f_image_menu_quelle_mariniere_2.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/64f5f220da12f_image_menu_quelle_mariniere_2.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/64f5f220da12f_image_menu_quelle_mariniere_2.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/which-breton-striped-shirt-is-right-for-you-.html",
                                                                    content: '<p style="text-align: center; font-size: 24px ; font-weight:700 ;">Wich Breton striped shirt is right for you ?<\/p>',
                                                                }, ],
                                                            },
                                                        ],
                                                    },
                                                },
                                                entries: [],
                                            },
                                        },
                                        {
                                            type: "url",
                                            common: {
                                                title: "Home",
                                                class: "",
                                                url: "#",
                                                targetBehavior: "_self",
                                                id: 0,
                                                inPath: false,
                                                current: false,
                                                subMenu: {
                                                    type: "subMenu",
                                                    common: {
                                                        id: 532675,
                                                        title: null,
                                                        entries: [{
                                                                type: "publishableList",
                                                                title: "Home Linen",
                                                                target: null,
                                                                class: "col-lg-2 col-lg-offset-1",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 104895,
                                                                            title: "Bed linen",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/home\/104895-bed-linen",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Bed linen - Home<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104888,
                                                                            title: "Kitchen linen",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/home\/104888-kitchen-linen",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Kitchen linen - Home<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104902,
                                                                            title: "Bath Linen",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/home\/104902-bath-linen",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Bath linen - Home<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Decoration",
                                                                target: null,
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 104958,
                                                                            title: "Navy decoration",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/home\/104958-navy-decoration",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: [],
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: [],
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104965,
                                                                            title: "Porcelain",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/home\/104965-porcelain",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Porcelain - Home<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Sewing",
                                                                target: null,
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                    common: {
                                                                        id: 4336130,
                                                                        title: "Cotton fabric for cutting",
                                                                        URL: {
                                                                            canonical: "https:\/\/www.armorlux.com\/en\/4336130-cotton-fabric-for-cutting",
                                                                            publishedInWebsite: true,
                                                                        },
                                                                    },
                                                                }, ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Cosmetics",
                                                                target: null,
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 104909,
                                                                            title: "Body",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/home\/104909-body",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Body - Cosmetics<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 104916,
                                                                            title: "Face",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/home\/104916-face",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Face - cosmetics<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Culture",
                                                                target: null,
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                    common: {
                                                                        id: 5925244,
                                                                        title: "Bookshop",
                                                                        URL: {
                                                                            canonical: "https:\/\/www.armorlux.com\/en\/5925244-bookshop",
                                                                            publishedInWebsite: true,
                                                                        },
                                                                    },
                                                                }, ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: null,
                                                                target: null,
                                                                class: "col-lg-2",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 9370298,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 9370293,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/6475c12b37683_image_menu_tricot_au_metre.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/6475c12b37683_image_menu_tricot_au_metre.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/6475c12b37683_image_menu_tricot_au_metre.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/4336130-cotton-fabric-for-cutting",
                                                                    content: '<p style="text-align: center; font-size: 24px ; font-weight:700 ;">Cotton fabric for cutting<\/p>',
                                                                }, ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: "",
                                                                target: null,
                                                                class: "col-lg-2",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 6274759,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 6274758,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/63316fadae9f5_img_menu_maison_livre.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/63316fadae9f5_img_menu_maison_livre.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/63316fadae9f5_img_menu_maison_livre.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/home-armor-lux-book-armor-lux-the-big-story-of-a-small-stripe-6248963.html",
                                                                    content: '<p style="text-align: center; font-size: 24px ; font-weight:700 ;">The big story of Armor-lux<\/p>',
                                                                }, ],
                                                            },
                                                        ],
                                                    },
                                                },
                                                entries: [],
                                            },
                                        },
                                        {
                                            type: "url",
                                            common: {
                                                title: "Route du Rhum",
                                                class: "hidden",
                                                url: "#",
                                                targetBehavior: "_self",
                                                id: 0,
                                                inPath: false,
                                                current: false,
                                                subMenu: {
                                                    type: "subMenu",
                                                    common: {
                                                        id: 7301066,
                                                        title: null,
                                                        entries: [{
                                                                type: "publishableList",
                                                                title: "Official store",
                                                                target: null,
                                                                class: "col-lg-2 col-lg-offset-4",
                                                                publishable: [
                                                                    [],
                                                                    [],
                                                                    [],
                                                                    []
                                                                ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: "Official store",
                                                                target: null,
                                                                class: "col-lg-3",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 7301089,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 7301088,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/635933c2ed55f_image_menu_route_du_rhum.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/635933c2ed55f_image_menu_route_du_rhum.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/635933c2ed55f_image_menu_route_du_rhum.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/route-du-rhum-destination-guadeloupe.html",
                                                                }, ],
                                                            },
                                                        ],
                                                    },
                                                },
                                                entries: [],
                                            },
                                        },
                                        {
                                            type: "url",
                                            common: {
                                                title: "About us",
                                                class: "",
                                                url: "#",
                                                targetBehavior: "_self",
                                                id: 0,
                                                inPath: false,
                                                current: false,
                                                subMenu: {
                                                    type: "subMenu",
                                                    common: {
                                                        id: 533563,
                                                        title: "About Armor-lux",
                                                        entries: [{
                                                                type: "publishableList",
                                                                title: null,
                                                                target: null,
                                                                class: "col-lg-2 col-lg-offset-3",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 101512,
                                                                            title: "Our story",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/our-story.html",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 532834,
                                                                            title: "Our commitments",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/our-commitments.html",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 8006510,
                                                                            title: "Our expertise",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/8006510\/our-expertise.html",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 8006722,
                                                                            title: "Our manufacturing processes",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/our-manufacturing-processes.html",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 521328,
                                                                            title: "Our brands",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/our-brands.html",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    [],
                                                                ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: null,
                                                                target: null,
                                                                class: "col-lg-2",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 1377245,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 8250723,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/63c7ca20c9fb6_img_menu_notre_histoire_2.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/63c7ca20c9fb6_img_menu_notre_histoire_2.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/63c7ca20c9fb6_img_menu_notre_histoire_2.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/our-story.html",
                                                                    content: '<p style="text-align: center; font-size: 24px ; font-weight:700 ;">Our story<\/p>',
                                                                }, ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: null,
                                                                target: null,
                                                                class: "col-lg-2",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 1377849,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 8250717,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/63c7c9f80b8fa_img_menu_savoir_faire_2.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/63c7c9f80b8fa_img_menu_savoir_faire_2.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/63c7c9f80b8fa_img_menu_savoir_faire_2.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/8006510\/our-expertise.html",
                                                                    content: '<p style="text-align: center; font-size: 24px ; font-weight:700 ;">Our expertise<\/p>',
                                                                }, ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: null,
                                                                target: null,
                                                                class: "col-lg-2",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 8250753,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 10017168,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/64f5f24304b5d_img_menu_nos_engagements_RSE_2.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/64f5f24304b5d_img_menu_nos_engagements_RSE_2.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/64f5f24304b5d_img_menu_nos_engagements_RSE_2.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/our-commitments.html",
                                                                    content: '<p style="text-align: center; font-size: 24px ; font-weight:700 ;">Our commitments<\/p>',
                                                                }, ],
                                                            },
                                                        ],
                                                    },
                                                },
                                                entries: [],
                                            },
                                        },
                                        {
                                            type: "url",
                                            common: {
                                                title: "New In",
                                                class: "",
                                                url: "#",
                                                targetBehavior: "_self",
                                                id: 0,
                                                inPath: false,
                                                current: false,
                                                subMenu: {
                                                    type: "subMenu",
                                                    common: {
                                                        id: 3408214,
                                                        title: null,
                                                        entries: [{
                                                                type: "publishableList",
                                                                title: "New in - Men",
                                                                target: null,
                                                                class: "col-lg-3 col-lg-offset-1",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 848257,
                                                                            title: "Jackets & Coats",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/new-collection\/848257-jackets-coats",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">Jackets &amp; coats - New in for men<\/h1><div align="justify">Dive into the new collection of men\'s jackets and coats and find the perfect piece for you! <\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848271,
                                                                            title: "Jumpers & cardigans",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/new-collection\/848271-jumpers-cardigans",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: [],
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: [],
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848285,
                                                                            title: "Breton striped shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/new-collection\/848285-breton-striped-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Breton striped shirts - New in for men<\/h1><div align="justify">Short or long sleeves, the Breton striped shirts are essential for the sailor dressing. <\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848264,
                                                                            title: "T-shirts & polo shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/new-collection\/848264-t-shirts-polo-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> T-shirts &amp; polo shirts - New in for men<\/h1><div align="justify">Explore the new collection of T-shirts and polo shirts for men. Plain or striped, find the perfect piece for this summer !<br><\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848383,
                                                                            title: "Shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/new-collection\/848383-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Shirts - New in for men<\/h1><div align="justify">With short or long sleeves, to be worn open or closed, the Armor-lux shirt is suitable for many occasions. <\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848390,
                                                                            title: "Trousers",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/new-collection\/848390-trousers",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Trousers &amp; shorts - New in for men<\/h1><div align="justify">Find the perfect pants! With a fisherman jumper or a polo shirt but always trendy ! <\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848278,
                                                                            title: "Underwear & nightwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/new-collection\/848278-underwear-nightwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Underwear &amp; nightwear - New in for men<\/h1><div align="justify">Explore the new collection of underwear and nightwear men. Boxers, trunks or briefs, find your ideal piece ! <br><\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "New in - Women",
                                                                target: null,
                                                                class: "col-lg-3",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 848411,
                                                                            title: "Jackets & Coats",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/new-collection\/848411-jackets-coats",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Jackets &amp; coats - New in for women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848418,
                                                                            title: "Jumpers & cardigans",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/new-collection\/848418-jumpers-cardigans",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Jumpers &amp; cardigans - New in for women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848425,
                                                                            title: "Breton striped shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/new-collection\/848425-breton-striped-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Breton striped shirts - New in for women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848292,
                                                                            title: "T-shirts & polo shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/new-collection\/848292-t-shirts-polo-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> T-shirts &amp; polo shirts - New in for women<\/h1><div align="justify">Find the perfect T-shirt for this season. Plain, striped or patterned, dive into the Armor-lux universe.<\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848432,
                                                                            title: "Blouses",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/new-collection\/848432-blouses",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Blouses - New in for women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848439,
                                                                            title: "Dresses & Skirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/new-collection\/848439-dresses-skirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Dresses &amp; skirts - New in for women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848453,
                                                                            title: "Trousers",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/new-collection\/848453-trousers",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> Trousers &amp; shorts - New in for women<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848446,
                                                                            title: "Underwear & nightwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/new-collection\/848446-underwear-nightwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: [],
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: [],
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "New in - Kids and baby",
                                                                target: null,
                                                                class: "col-lg-3",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 848334,
                                                                            title: "New in Terre&Mer",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/848334-new-in-terre-mer",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4"> New in Terre &amp; Mer<\/h1>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 848362,
                                                                            title: "New in Bermudes",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/848362-new-in-bermudes",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                description: {
                                                                                    title: "Description",
                                                                                    type: "RichText",
                                                                                    renderingMode: null,
                                                                                    value: '<h1 class="h4">New in Bermudes - New collection<\/h1><div align="justify">Dive into the Bermude universe! For men and women, you will find warm, waterproof and functional pieces for all your outdoor activities. Parkas, puffer jackets, shirts and pants are waiting for you! <\/div>',
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "generalAttributes",
                                                                                    items: [{
                                                                                        key: "description"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Lookbook",
                                                                target: null,
                                                                class: "hidden col-lg-3",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 9698855,
                                                                            title: "Autumn - Winter Woman",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/autumn-winter-woman.html",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 9700500,
                                                                            title: "Autumn - Winter Man",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/autumn-winter-man.html",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 10109914,
                                                                            title: "Autumn - Winter Kids",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/autumn-winter-kids.html",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 4803572,
                                                                            title: "Armor-lux X Nolwenn Faligot",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/armor-lux-x-nolwenn-faligot.html",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: null,
                                                                target: null,
                                                                class: "hidden col-lg-4",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 9773310,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 9773309,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/64c910ee7f309_image_menu_nouveaut_s_homme_hiver2.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/64c910ee7f309_image_menu_nouveaut_s_homme_hiver2.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/64c910ee7f309_image_menu_nouveaut_s_homme_hiver2.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/autumn-winter-man.html",
                                                                    content: '<h3 style="text-align: center;">Men\'s lookbook<\/h3>',
                                                                }, ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: null,
                                                                target: null,
                                                                class: "hidden col-lg-4",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 9773318,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 9773316,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/64c91160d10a4_image_menu_nouveaut_s_femme_hiver2.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/64c91160d10a4_image_menu_nouveaut_s_femme_hiver2.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/64c91160d10a4_image_menu_nouveaut_s_femme_hiver2.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/autumn-winter-woman.html",
                                                                    content: '<h3 style="text-align: center;">Women\'s lookbook<\/h3>',
                                                                }, ],
                                                            },
                                                        ],
                                                    },
                                                },
                                                entries: [],
                                            },
                                        },
                                        {
                                            type: "url",
                                            common: {
                                                title: "Sales",
                                                class: "hidden",
                                                url: "#",
                                                targetBehavior: "_self",
                                                id: 0,
                                                inPath: false,
                                                current: false,
                                                subMenu: {
                                                    type: "subMenu",
                                                    common: {
                                                        id: 3058071,
                                                        title: "Sales",
                                                        entries: [{
                                                                type: "publishableList",
                                                                title: "Men",
                                                                target: "https:\/\/www.armorlux.com\/en\/818163-men",
                                                                class: "col-lg-2 col-lg-offset-1",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 818254,
                                                                            title: "Jackets & Coats",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818254-jackets-coats",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818954,
                                                                            title: "Jackets, Fisherman's smock & Fleece jackets",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818954-jackets-fisherman-s-smock-fleece-jackets",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818268,
                                                                            title: "Jumpers & Cardigans",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818268-jumpers-cardigans",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818275,
                                                                            title: "Breton Shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818275-breton-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818282,
                                                                            title: "T-Shirts & Poloshirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818282-t-shirts-poloshirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818961,
                                                                            title: "Polo shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818961-polo-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818289,
                                                                            title: "Shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818289-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818261,
                                                                            title: "Trousers",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818261-trousers",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818968,
                                                                            title: "Bermudas & shorts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818968-bermudas-shorts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818296,
                                                                            title: "Underwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818296-underwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 4374521,
                                                                            title: "Bottom underwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/4374521-bottom-underwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818303,
                                                                            title: "Nightwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818303-nightwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Women",
                                                                target: "https:\/\/www.armorlux.com\/en\/818170-women",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 818184,
                                                                            title: "Jackets & Coats",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818184-jackets-coats",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818975,
                                                                            title: "Jackets, fleeces & raincoats",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818975-jackets-fleeces-raincoats",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818198,
                                                                            title: "Jumpers & Cardigans",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818198-jumpers-cardigans",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818205,
                                                                            title: "Breton Shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818205-breton-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818212,
                                                                            title: "T-Shirts & Poloshirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818212-t-shirts-poloshirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818226,
                                                                            title: "Tunics & Blouses",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818226-tunics-blouses",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818191,
                                                                            title: "Trousers",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818191-trousers",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818219,
                                                                            title: "Dresses & Skirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818219-dresses-skirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818233,
                                                                            title: "Underwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818233-underwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 4374528,
                                                                            title: "Bottom underwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/4374528-bottom-underwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818240,
                                                                            title: "Nightwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818240-nightwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Kids",
                                                                target: "https:\/\/www.armorlux.com\/en\/818177-kids",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 818401,
                                                                            title: "Jackets & Coats",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818401-jackets-coats",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818408,
                                                                            title: "Jumpers & Cardigans",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818408-jumpers-cardigans",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818415,
                                                                            title: "Breton shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818415-breton-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818429,
                                                                            title: "T-shirts & poloshirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818429-t-shirts-poloshirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818793,
                                                                            title: "Trousers, Dresses & Skirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818793-trousers-dresses-skirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818422,
                                                                            title: "Nightwear & Underwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818422-nightwear-underwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818842,
                                                                            title: "Accessories",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818842-accessories",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Baby",
                                                                target: "https:\/\/www.armorlux.com\/en\/818737-baby",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 818758,
                                                                            title: "Coats, Jumpers & Cardigans",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818758-coats-jumpers-cardigans",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818786,
                                                                            title: "Baby accessories",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818786-baby-accessories",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818765,
                                                                            title: "Breton Shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818765-breton-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818779,
                                                                            title: "Trousers & Sets",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818779-trousers-sets",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818772,
                                                                            title: "Onesies, Pyjamas & Sleepsuits",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818772-onesies-pyjamas-sleepsuits",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818849,
                                                                            title: "Accessories",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818849-accessories",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Accessories",
                                                                target: "https:\/\/www.armorlux.com\/en\/818247-accessories",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 818366,
                                                                            title: "Hats & Beanies",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818366-hats-beanies",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818352,
                                                                            title: "Scarves",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818352-scarves",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818359,
                                                                            title: "Socks",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818359-socks",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818905,
                                                                            title: "Belt",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818905-belt",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818744,
                                                                            title: "Shoes",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818744-shoes",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 818380,
                                                                            title: "Bags",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818380-bags",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    [],
                                                                    {
                                                                        common: {
                                                                            id: 818373,
                                                                            title: "Home",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/sales\/818373-home",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                        ],
                                                    },
                                                },
                                                entries: [],
                                            },
                                        },
                                        {
                                            type: "url",
                                            common: {
                                                title: "Christmas",
                                                class: "hidden",
                                                url: "#",
                                                targetBehavior: "_self",
                                                id: 0,
                                                inPath: false,
                                                current: false,
                                                subMenu: {
                                                    type: "subMenu",
                                                    common: {
                                                        id: 7791492,
                                                        title: null,
                                                        entries: [{
                                                                type: "publishableList",
                                                                title: "Christmas collection",
                                                                target: null,
                                                                class: "col-lg-2 col-lg-offset-3",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 10884581,
                                                                            title: "Party outfits",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/10884581-party-outfits",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 4114464,
                                                                            title: "Christmas collection",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/4114464-christmas-collection",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 10536663,
                                                                                            title: "The little touches",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 10536671,
                                                                                            title: "\u20ac50 to \u20ac100",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 10536676,
                                                                                            title: "\u20ac100 to \u20ac150",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 10536682,
                                                                                            title: "Prestigious gifts",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "BlockAttributes",
                                                                                    items: [{
                                                                                        key: "topicBlock"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 7791848,
                                                                            title: "The little touches",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/7791848-the-little-touches",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 10536663,
                                                                                            title: "The little touches",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 10536671,
                                                                                            title: "\u20ac50 to \u20ac100",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 10536676,
                                                                                            title: "\u20ac100 to \u20ac150",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 10536682,
                                                                                            title: "Prestigious gifts",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "BlockAttributes",
                                                                                    items: [{
                                                                                        key: "topicBlock"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 4114471,
                                                                            title: "Gifts from 50\u20ac to 100\u20ac",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/4114471-gifts-from-50-to-100-",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 10536663,
                                                                                            title: "The little touches",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 10536671,
                                                                                            title: "\u20ac50 to \u20ac100",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 10536676,
                                                                                            title: "\u20ac100 to \u20ac150",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 10536682,
                                                                                            title: "Prestigious gifts",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "BlockAttributes",
                                                                                    items: [{
                                                                                        key: "topicBlock"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 4114478,
                                                                            title: "Gifts from 100\u20ac to 150\u20ac",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/4114478-gifts-from-100-to-150-",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 10536663,
                                                                                            title: "The little touches",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 10536671,
                                                                                            title: "\u20ac50 to \u20ac100",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 10536676,
                                                                                            title: "\u20ac100 to \u20ac150",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 10536682,
                                                                                            title: "Prestigious gifts",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "BlockAttributes",
                                                                                    items: [{
                                                                                        key: "topicBlock"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 4114485,
                                                                            title: "Prestigious gifts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/4114485-prestigious-gifts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                        typology: {
                                                                            id: 103810,
                                                                            name: "enrichedTopic",
                                                                            title: "Enriched topic",
                                                                            groups: {
                                                                                generalAttributes: {
                                                                                    title: "General attributes",
                                                                                    pos: 0,
                                                                                },
                                                                                BlockAttributes: {
                                                                                    title: "Upper block",
                                                                                    pos: 1,
                                                                                },
                                                                            },
                                                                            attributes: {
                                                                                topicBlock: {
                                                                                    title: "Topic Block",
                                                                                    type: "DocumentIdArray",
                                                                                    renderingMode: null,
                                                                                    value: [{
                                                                                            id: 10536663,
                                                                                            title: "The little touches",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 10536671,
                                                                                            title: "\u20ac50 to \u20ac100",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 10536676,
                                                                                            title: "\u20ac100 to \u20ac150",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                        {
                                                                                            id: 10536682,
                                                                                            title: "Prestigious gifts",
                                                                                            link: {},
                                                                                            image: {},
                                                                                        },
                                                                                    ],
                                                                                    pos: 2,
                                                                                },
                                                                            },
                                                                            contexts: {
                                                                                list: {
                                                                                    title: "List on the website",
                                                                                },
                                                                            },
                                                                            visibilities: {
                                                                                list: [{
                                                                                    key: "BlockAttributes",
                                                                                    items: [{
                                                                                        key: "topicBlock"
                                                                                    }],
                                                                                }, ],
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: "",
                                                                target: null,
                                                                class: "col-lg-3",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 7793134,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 10590291,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/655c76b78993e_Image_menu_Noel.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/655c76b78993e_Image_menu_Noel.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/655c76b78993e_Image_menu_Noel.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/4114464-christmas-collection",
                                                                    content: '<p style="text-align: center; font-size: 24px ; font-weight:700 ;">Christmas collection<\/p>',
                                                                }, ],
                                                            },
                                                            {
                                                                type: "announcementList",
                                                                title: null,
                                                                target: null,
                                                                class: "col-lg-3",
                                                                announcements: [{
                                                                    common: {
                                                                        id: 10897234,
                                                                        LCID: "en_US",
                                                                        model: "Rbs_Catalog_Announcement",
                                                                        type: "announcement",
                                                                    },
                                                                    visual: {
                                                                        id: 10897230,
                                                                        alt: null,
                                                                        title: null,
                                                                        original: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/0\/0\/657b11d3ba7ea_Image_menu_Tenues_de_fetes.jpg')}}",
                                                                        originalMaxWidth: 0,
                                                                        originalMaxHeight: 0,
                                                                        listItem: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/624\/780\/657b11d3ba7ea_Image_menu_Tenues_de_fetes.jpg')}}",
                                                                        listItemMaxWidth: 624,
                                                                        listItemMaxHeight: 780,
                                                                        detail: "https:\/\/armorlux-armorlux-com-storage.omn.proximis.com\/Imagestorage\/images\/1000\/1200\/657b11d3ba7ea_Image_menu_Tenues_de_fetes.jpg')}}",
                                                                        detailMaxWidth: 1000,
                                                                        detailMaxHeight: 1200,
                                                                    },
                                                                    URL: "https:\/\/www.armorlux.com\/en\/10884581-party-outfits",
                                                                    content: '<h3 style="text-align: center;">Party outfits<\/h3>',
                                                                }, ],
                                                            },
                                                        ],
                                                    },
                                                },
                                                entries: [],
                                            },
                                        },
                                        {
                                            type: "url",
                                            common: {
                                                title: "Clearance sale",
                                                class: "hidden",
                                                url: "#",
                                                targetBehavior: "_self",
                                                id: 0,
                                                inPath: false,
                                                current: false,
                                                subMenu: [],
                                                entries: [],
                                            },
                                        },
                                        {
                                            type: "url",
                                            common: {
                                                title: "Outlet",
                                                class: "hidden",
                                                url: "#",
                                                targetBehavior: "_self",
                                                id: 0,
                                                inPath: false,
                                                current: false,
                                                subMenu: {
                                                    type: "subMenu",
                                                    common: {
                                                        id: 5912057,
                                                        title: "Outlet",
                                                        entries: [{
                                                                type: "publishableList",
                                                                title: "Men",
                                                                target: "https:\/\/www.armorlux.com\/en\/3427328-men",
                                                                class: "col-lg-2 col-lg-offset-1",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 3427363,
                                                                            title: "Jackets & Coats",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427363-jackets-coats",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427370,
                                                                            title: "Jumpers & Cardigans",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427370-jumpers-cardigans",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427377,
                                                                            title: "T-Shirts & Poloshirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427377-t-shirts-poloshirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427384,
                                                                            title: "Breton shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427384-breton-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427531,
                                                                            title: "Shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427531-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427391,
                                                                            title: "Trousers",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427391-trousers",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427398,
                                                                            title: "Underwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427398-underwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427538,
                                                                            title: "Nightwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427538-nightwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Women",
                                                                target: "https:\/\/www.armorlux.com\/en\/3427335-women",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 3427405,
                                                                            title: "Jackets & Coats",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427405-jackets-coats",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427412,
                                                                            title: "Jumpers & Cardigans",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427412-jumpers-cardigans",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427419,
                                                                            title: "T-Shirts & Poloshirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427419-t-shirts-poloshirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427426,
                                                                            title: "Breton shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427426-breton-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427573,
                                                                            title: "Tunics & blouses",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427573-tunics-blouses",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427587,
                                                                            title: "Dresses & Skirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427587-dresses-skirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427433,
                                                                            title: "Trousers",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427433-trousers",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427440,
                                                                            title: "Underwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427440-underwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427545,
                                                                            title: "Nightwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427545-nightwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Kids",
                                                                target: "https:\/\/www.armorlux.com\/en\/3427349-kids",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 3427447,
                                                                            title: "Jackets & Coats",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427447-jackets-coats",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427454,
                                                                            title: "Jumpers & Cardigans",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427454-jumpers-cardigans",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427461,
                                                                            title: "T-Shirts & Poloshirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427461-t-shirts-poloshirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427468,
                                                                            title: "Breton shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427468-breton-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427475,
                                                                            title: "Dresses",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427475-dresses",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427559,
                                                                            title: "Underwear",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427559-underwear",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Baby",
                                                                target: "https:\/\/www.armorlux.com\/en\/3427356-baby",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 3427482,
                                                                            title: "Breton Shirts & T-shirts",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427482-breton-shirts-t-shirts",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427594,
                                                                            title: "Jumpers & Cardigans",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427594-jumpers-cardigans",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427601,
                                                                            title: "Trousers & Dresses",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427601-trousers-dresses",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427489,
                                                                            title: "Bodysuits",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427489-bodysuits",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                ],
                                                            },
                                                            {
                                                                type: "publishableList",
                                                                title: "Accessories",
                                                                target: "https:\/\/www.armorlux.com\/en\/3427342-accessories",
                                                                class: "col-lg-2",
                                                                publishable: [{
                                                                        common: {
                                                                            id: 3427496,
                                                                            title: "Scarves",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427496-scarves",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427503,
                                                                            title: "Hats & Beanies",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427503-hats-beanies",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    {
                                                                        common: {
                                                                            id: 3427580,
                                                                            title: "Shoes",
                                                                            URL: {
                                                                                canonical: "https:\/\/www.armorlux.com\/en\/outlet\/3427580-shoes",
                                                                                publishedInWebsite: true,
                                                                            },
                                                                        },
                                                                    },
                                                                    [],
                                                                ],
                                                            },
                                                        ],
                                                    },
                                                },
                                                entries: [],
                                            },
                                        },
                                        {
                                            type: "document",
                                            common: {
                                                title: "Pre-order",
                                                class: "hidden",
                                                url: "https:\/\/www.armorlux.com\/en\/pre-order.html",
                                                targetBehavior: null,
                                                id: 6349126,
                                                inPath: false,
                                                current: false,
                                                subMenu: null,
                                                entries: [],
                                            },
                                        },
                                    ],
                                },
                            };
                        </script>

                        <nav class="navbar navbar-default menu__nav-container" data-block-id="mainMenuCustom">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-responsive-collapse-mainMenuCustom" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <span class="navbar-brand visible-sm-block">Menu principal US</span>
                            </div>

                            <div class="menu__container">
                                <ul class="nav navbar-nav menu__nav">
                                    <!-- For Desktop view -->
                                    <li data-toggle-parent data-toggle-class class="dropdown menu__item {{ Route::is('home') ? 'highlighted' : null }}">
                                    <a  href="{{route('home')}}" title="Home">
                                        <p class="h5">Home </p>
                                    </a>
                                    <div data-toggle-element class="menu__toggle" aria-label="ouvrir le menu">
                                        <i class="arl-icon brd-icon icon-chevron-right" aria-hidden="true"></i>
                                    </div>
                                    </li>
                                    @foreach($categories as $key=>$category)
                                    
                                    <li data-toggle-parent data-toggle-class class="dropdown menu__item {{($category->slug==request()->segment(1)) ? 'highlighted' : null }}">
                                    <a  href="{{route('products' , [$category->slug , $category->id])}}" title="{{$category->title}}">
                                    <p class="h5"> {{$category->title}}</p>
                                    </a>
                                        <div data-toggle-element class="menu__toggle" aria-label="ouvrir le menu">
                                            <i class="arl-icon brd-icon icon-chevron-right" aria-hidden="true"></i>
                                        </div>
                                        <ul class="menu__submenu">
                                            <li data-toggle-close class="hidden-lg" aria-label="fermer le menu">
                                                <i class="arl-icon brd-icon icon-chevron-left" aria-hidden="true"></i>
                                                {{$category->title}}
                                            </li>

                                            <li class="menu__submenu-container row">
                                            @php
                                            $subCategories = App\Models\Category::where('parent_id', $category->id)->get();                                            
                                            @endphp
                                            @foreach($subCategories as $subCategory)
                                                <div data-toggle-parent data-toggle-class class="submenu type-publishable-list col-lg-2 col-lg-offset-1">
                                                    <a href="{{route('products' , [$subCategory->slug , $subCategory->id])}}" title="{{$subCategory->title}}">
                                                        <p class="h4">{{$subCategory->title}}</p>
                                                    </a>
                                                    <div data-toggle-element class="menu__toggle" aria-label="ouvrir le menu">
                                                        <i class="arl-icon brd-icon icon-chevron-right" aria-hidden="true"></i>
                                                    </div>
                                                    <ul class="menu__submenu-submenu">
                                                        <li data-toggle-close class="hidden-lg" aria-label="fermer le menu">
                                                            <i class="arl-icon brd-icon icon-chevron-left" aria-hidden="true"></i>
                                                            {{$subCategory->title}}
                                                        </li>
                                                        @php
                                                        $subSubCategories = App\Models\Product::where('category_id', $subCategory->id)->get();                                            
                                                        @endphp
                                                        @foreach($subSubCategories as $SSCategory)
                                                        <li>
                                                            <a href="{{route('product.details',[$SSCategory->slug , $SSCategory->id])}}" title="{{$SSCategory->title}}">
                                                                {{$SSCategory->title}}
                                                            </a>
                                                        </li>
                                                        @endforeach                                                        
                                                    </ul>
                                                </div>
                                                @endforeach
                                                
                                            </li>
                                        </ul>
                                    </li>
                                    @endforeach
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
                <div class="header__search">
                </div>
            </div>
        </div>
    </div>
</header>