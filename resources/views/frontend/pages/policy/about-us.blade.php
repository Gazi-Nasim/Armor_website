@extends('frontend.layout.app')
@section('title', 'Welcome to Dmore Hotel & Resort')
@section('content')

<div id="content">
    <section id="content-top" class="container">
        <div data-type="block" data-id="thread" data-name="Rbs_Website_Thread" data-layout-rbs-website-thread="" data-rbs-block-container="thread" class="block"><nav>
	<ul class="breadcrumb">
		<li><a href="https://www.armorlux.com/en/">Home</a></li>
			<li>
			<a href="101615-useful-links">				Useful links
			</a>		</li>
			<li class="active">
							Privacy policy
					</li>
		</ul>
</nav>

<script type="application/ld+json">{"@context":"https:\/\/schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","position":1,"name":"Home","item":"https:\/\/www.armorlux.com\/en\/"},{"@type":"ListItem","position":2,"name":"Useful links","item":"https:\/\/www.armorlux.com\/en\/101615-useful-links"},{"@type":"ListItem","position":3,"name":"Privacy policy"}]}</script></div>
    </section>
    <section id="content-middle">
        <main id="content-column">
            <div class="editable-zone" data-id="mainContent">
                <div data-type="block" data-id="2" data-name="Rbs_Website_Richtext" data-layout-rbs-website-richtext="" data-rbs-block-container="2" class="block container">
                    <div class="richtext">
                        <h2 style="text-align: justify;">{{$page_info->name ?? ''}}</h2>
                        <div style="text-align: justify;"><br></div>
                        <div style="text-align: justify;"><br>{!!$page_info->content!!}</div>
                    </div>
                </div>
            </div>
        </main>
    </section>
</div>
@endsection