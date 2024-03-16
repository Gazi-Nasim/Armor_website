@php
$pages=App\Models\Page::get();
$settings = App\Models\Setting::first();
@endphp
<footer id="footer" class="footer__container">
{{--<div class="footer__top">
        <div data-type="block" data-id="reinsuranceBanner" data-name="Rbs_Highlight_Highlight" data-layout-rbs-highlight-highlight="" data-rbs-block-container="reinsuranceBanner" class="block">
            <div class="reinsurance-banner__container">
                <div class="container">
                    <div class="reinsurance-banner__block">
                        <a href="faq-help.html#paiement">
                            <div class="reinsurance-banner__img-container">
                                <img src="{{asset('frontend/Assets/Imagestorage/images/2560/1600/64020576a3478_Paiement.gif')}}" alt="" title="" class="img" />
                            </div>
                            <div class="reinsurance-banner__description">
                                Secured Payment
                            </div>
                        </a>
                    </div>
                    <div class="reinsurance-banner__block">
                        <a href="faq-help.html#livraison">
                            <div class="reinsurance-banner__img-container">
                                <img src="{{asset('frontend/Assets/Imagestorage/images/2560/1600/640af38293bce_Livraison.gif')}}" alt="" title="" class="img" />
                            </div>

                            <div class="reinsurance-banner__description">
                                Shipping to Over 40+ Locations Worldwide
                            </div>
                        </a>
                    </div>
                    <div class="reinsurance-banner__block">
                        <a href="faq-help.html#retour">
                            <div class="reinsurance-banner__img-container">
                                <img src="{{asset('frontend/Assets/Imagestorage/images/2560/1600/640205561e1e8_Retour.gif')}}" alt="" title="" class="img" />
                            </div>

                            <div class="reinsurance-banner__description">
                                30 Days returns
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>--}}
    <div class="footer__bottom">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-4 footer__information">
                    <div data-type="block" data-id="locationFooter" data-name="Rbs_Website_XhtmlTemplate" data-layout-rbs-website-xhtml-template="" data-rbs-block-container="locationFooter" class="block"> <img src="{{asset('frontend/Assets/Imagestorage/images/2560/1600/6124c5d780ee9_armorlux_logo_white.png')}}" title="" alt="" class="foote__logo" />

                        <div class="footer__address">
                            {{--21-23 rue Louison Bobet<br>ZI de Kerdroniou Ouest<br>29556 QUIMPER Cedex 9--}}
                        </div>
                    </div>
                    <div data-type="block" data-id="socialFooter" data-name="Rbs_Website_XhtmlTemplate" data-layout-rbs-website-xhtml-template="" data-rbs-block-container="socialFooter" class="block">
                        <div class="footer-social__container">
                            <div class="footer-social__links" >
                                <a href="{{$settings->fb}}" target="_blank" >
                                <i class="fa-brands fa-facebook" style="color:#ffff;">Facebook</i>
                                    <span class="sr-only">Facebook</span>
                                </a>
                                <a href="{{$settings->insta}}" target="_blank">
                                <i class="fa-brands fa-instagram">Instagram</i>
                                    <span class="sr-only">Instagram</span>
                                </a>
                                <a href="{{$settings->youtube}}" target="_blank">
                                <i class="fa-brands fa-square-youtube">Youtube</i>
                                    <span class="sr-only">Youtube</span>
                                </a>
                                <a href="{{$settings->linkedin}}" target="_blank">
                                <i class="fa-brands fa-linkedin">Linked</i>
                                    <span class="sr-only">Linkedin</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div data-type="block" data-id="subscribeNewsletter" data-name="Rbs_Website_XhtmlTemplate" data-layout-rbs-website-xhtml-template="" data-rbs-block-container="subscribeNewsletter" class="block">
                        <div class="footer__newsletter_container">
                            {{--<p>Don&#039;t miss out, we&#039;ll tell you everything!</p>
                            <button class="btn btn-secondary reversed" id="linkMailingList" data-ng-controller="commonModalController" data-ng-click="openModal()" data-common-modal-url="subscribe-to-our-newsletter.html">
                                SUBSCRIBE TO OUR NEWSLETTER
                            </button>--}}
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-5">
                    <div class="row">
                        <div class="col-sm-offset-3 col-xs-6 col-sm-offset-3 footer__menus">
                            <div data-type="block" data-id="footerMenuOne" data-name="Emakina_Website_EnrichedMenu" data-layout-emakina-website-enriched-menu="" data-rbs-block-container="footerMenuOne" class="block">
                                <nav data-block-id="footerMenuOne">
                                    <h3>Armor-Lux</h3>
                                    <ul class="nav nav-pills nav-stacked">
                                        @foreach($pages as $pitem)
                                        <li>
                                            <a href="{{route('page', [$pitem->slug])}}">{{$pitem->name}}</a>
                                        </li>
                                        @endforeach
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        {{--<div class="col-xs-6 footer__menus">
                            <div data-type="block" data-id="footerMenuTwo" data-name="Emakina_Website_EnrichedMenu" data-layout-emakina-website-enriched-menu="" data-rbs-block-container="footerMenuTwo" class="block">

                                <nav data-block-id="footerMenuTwo">
                                    <h3>Help &amp; Contact</h3>
                                    <ul class="nav nav-pills nav-stacked">
                                        <li>
                                            <a href="faq-help.html">FAQ - Help</a>
                                        </li>

                                        <li>
                                            <a href="size-guide.html">Size guide</a>
                                        </li>

                                        <li>
                                            <a href="care-instructions.html">Care instructions</a>
                                        </li>

                                        <li>
                                            <a href="103817-men.html">Men</a>
                                        </li>

                                        <li>
                                            <a href="103824-women.html">Women</a>
                                        </li>

                                        <li>
                                            <a href="103831-kids-baby.html">Kids &amp; Baby</a>
                                        </li>

                                    </ul>
                                </nav>
                            </div>
                        </div>--}}
                    </div>
                </div>
                <div class="col-xs-12 col-sm-3">
                    <div data-type="block" data-id="helpFooter" data-name="Rbs_Website_XhtmlTemplate" data-layout-rbs-website-xhtml-template="" data-rbs-block-container="helpFooter" class="block">
                        <div class="">                            
                            <h4>Contact</h4>
                            <!-- <p>BY PHONE</p> -->
                            <span class="footer-help__legend">
                            {{$settings->address}}
                            </span>
                            <span class="footer-help__params">
                                <i class="arl-icon brd-icon icon-phone" aria-hidden="true"></i>
                                <a href="tel:(+33) 02 98 90 10 29">
                                    {{$settings->phone}}*
                                </a>
                            </span>
                            <span class="footer-help__legend small">
                                *
                            </span>
                        </div>
                    </div>
                    <div data-type="block" data-id="avisVerifies" data-name="Rbs_Website_HtmlFragment" class="empty"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer__separation">
        <div class="footer__separation_line"></div>
        <div class="footer__separation_line"></div>
        <div class="footer__separation_line"></div>
    </div>
    {{--<div class="footer__menus utils">
        <div data-type="block" data-id="utilsFooter" data-name="Emakina_Website_EnrichedMenu" data-layout-emakina-website-enriched-menu="" data-rbs-block-container="utilsFooter" class="block">

            <nav data-block-id="utilsFooter">
                <ul class="nav nav-pills">
                    <li>
                        <a href="terms-conditions-of-sale.html">Terms &amp; Conditions of Sale</a>
                    </li>

                    <li>
                        <a href="legal-notice.html">Legal notice</a>
                    </li>

                    <li>
                        <a href="privacy-policy.html">Privacy policy</a>
                    </li>

                    <li>
                        <a href="terms-conditions-of-loyalty-program.html">Terms &amp; Conditions of Loyalty program</a>
                    </li>

                    <li>
                        <a href="conditions-of-our-offers.html">Conditions of our offers</a>
                    </li>

                </ul>
            </nav>
        </div>
        <div data-type="block" data-id="didomiFooter" data-name="Rbs_Website_XhtmlTemplate" data-layout-rbs-website-xhtml-template="" data-rbs-block-container="didomiFooter" class="block"><a href="javascript:Didomi.preferences.show()" class="footer__didomi-link">
                Cookie settings
            </a>
        </div>
    </div>--}}
    <div class="footer__legal">
        <div class="container">
            <div data-type="block" data-id="legalFooter" data-name="Rbs_Website_Text" class="empty"></div>
        </div>
    </div>
</footer>