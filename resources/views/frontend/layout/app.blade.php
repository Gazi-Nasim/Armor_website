<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    @include('frontend.layout.head')
</head>

<body id="app" class="antialiased nosidebar floating-thread no-thread">
    <div id="website-ga" data-rbs-website-google-analytics="" data-block-id="analytics" data-identifier=""></div>

    <script type="text/javascript">
        window.__change["gtm"] = {
            contextData: {
                page_category: "home_page",
                user_email: null,
                user_logged: false,
            },
        };
        (function(w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                "gtm.start": new Date().getTime(),
                event: "gtm.js"
            });
            let f = d.getElementsByTagName(s)[0],
                j = d.createElement(s),
                dl = l !== "dataLayer" ? "&l=" + l : "";
            j.async = true;
            j.src = "../../www.googletagmanager.com/gtm5445.html?id=" + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, "script", "dataLayer", "GTM-P2BNRBS");
    </script>

    <div id="google-tag-manager" data-emakina-gtm-google-tag-manager="" data-block-id="gtm" data-identifier="GTM-P2BNRBS" data-send-purchase="1" data-send-customer-in-purchase="1" data-send-customer-email="1" data-send-category-page="1"></div>

    <script type="text/javascript" src="http://connect.nosto.com/include/armorlux-prod" async></script>
    <script type="text/javascript">
        (function() {
            var name = "nostojs";
            window[name] =
                window[name] ||
                function(cb) {
                    (window[name].q = window[name].q || []).push(cb);
                };
        })();
        nostojs((api) => api.setAutoLoad(true));
    </script>

    <div id="nosto-informations" class="hidden" data-account-id="armorlux-prod" data-block-id="nosto" data-vendor-id="c:nosto-WUzTMDxJ"></div>

    <div class="nosto_customer" style="display: none">
        <span class="email"></span>
        <span class="first_name"></span>
        <span class="last_name"></span>
        <span class="customer_reference"></span>
        <span class="marketing_permission"></span>
    </div>

    <script type="text/javascript">
        window.__change["dispatchModal"] = null;
    </script>

    <div data-ng-controller="commonDispatchModalController" data-has-to-be-displayed="false">
        <div id="commonDispatchModalContentHidden" class="hidden">
            <div class="dispatch-modal__wrapper container-fluid">
                <img src="https://armorlux-armorlux-com-storage.omn.proximis.com/Imagestorage/images/2560/1600/60c7626eb37f5_5fa9741af3116_logo.svg" title="" alt="" class="dispatch-modal__logo" />
                <div class="dispatch-modal__description"></div>
                <div class="dispatch-modal__buttons-container">
                    <a href="https://www.armorlux.com/" data-ng-click="userSawDispatchModal()" class="btn btn-primary full-width">
                        ZU WWW.ARMORLUX.COM WECHSELN
                    </a>
                    <a data-ng-click="$dismiss(); userSawDispatchModal()" class="btn btn-secondary full-width">
                        AUF WWW.ARMORLUX.COM BLEIBEN
                    </a>
                </div>
            </div>
        </div>
    </div>
    @include('frontend.layout.header')
    @yield('content')
    @include('frontend.layout.footer')
    @include('frontend.layout.footer_assets')
</body>

</html>