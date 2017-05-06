
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	
	
	<title>Tech Talk Web Portal</title>

	<link rel="shortcut icon" href="assets/images/gt_favicon.png">
	
	
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" type="text/css">

	
	<link rel="stylesheet" href="assets/css/magister.css">

	<style>
		html {
	background:#505D6E url(assets/images/body4.jpg) no-repeat center center fixed; 
	min-height:100%;
	-webkit-background-size: cover;
	   -moz-background-size: cover;
	     -o-background-size: cover;
	        background-size: cover;
}

body {
	background:transparent;
	min-height:100%; 	
	-webkit-font-smoothing: antialiased;
	-webkit-overflow-scrolling: touch;
	line-height: 1.5em;
	font-size:14px;
	font-family: Helvetica, Arial, sans-serif;
	color:#fff;
	color:rgba(255,255,255,.8); 
	font-weight: normal;
}


/********************************************************/
/*                    Navigation bar                    */
/********************************************************/
.mainmenu { z-index: 999999; width:100%;  padding: 30px 0 0 0;}
@media (min-width: 768px) {
	.mainmenu { position: fixed; }
}

.navbar-toggle {
	position:relative;
	float:left;
	display:block;
	padding: 9px 10px;
	background: rgba(255, 255, 255, 0.2);
	background-image: none;
	border: 0 none;
	top:0px; 
	-webkit-border-radius: 2px;
	   -moz-border-radius: 2px;
	        border-radius: 2px;
	outline: 0;
	opacity: 1;
	-webkit-transition: all .45s;
	   -moz-transition: all .45s;
	        transition: all .45s;
	        float: left;
}
.navbar-toggle .icon-bar {
  display: block;
  width: 22px;
  height: 2px;
  background: #fff;
}
.navbar-toggle .icon-bar + .icon-bar {
	margin-top: 4px;
}
.open .navbar-toggle { 
	top:-70px; 
	opacity: 0;  
}
.mainmenu .dropdown-menu {
	top: -14em;
	left: 0px;
	font-size: 13px;
	padding:0;
	background:none;
	border:0 none;
	border-radius: 2px;
	-webkit-box-shadow: none;
	box-shadow: none;
	display:block;
	opacity:0;
	-webkit-transition: all .45s;
	   -moz-transition: all .45s;
	        transition: all .45s;
}
.mainmenu .dropdown-menu .active { 
	font-weight:bold;
}
.mainmenu .open .dropdown-menu { 
	top:2px;
	opacity:1;
}
.mainmenu .dropdown-menu a { 
	padding:10px 10px;
	margin:0;
	color:white;
	text-decoration: none;
	-webkit-border-radius: 2px;
	   -moz-border-radius: 2px;
	        border-radius: 2px;
}
.mainmenu .dropdown-menu a:hover { 
	background:rgba(255,255,255,.1);
	color:white;
	padding:10px 8px 10px 12px;
}



/********************************************************/
/*             Sections - universal classes             */
/********************************************************/
.section { 
	z-index: 1;
	min-height:420px;
	width: 100%; 
	overflow:auto;
	height:100%;
	padding-top:100px;
	padding-bottom:50px; 
	display:none;
	top:0;
} 
@media (min-width: 768px) {
	.section { padding-top:160px;}
}

/* Show one of sections */
#head { 
	display: block;
}


/********************************************************/
/*                      Typography                      */
/********************************************************/
a { color:#fff; text-decoration: none; }
a:hover, a:active { color:#fff; text-decoration: underline; }
.lead { 
	font-weight:normal;
	font-size:1.5em;
	line-height:1.2em;
}

.title,
.subtitle { 
	font-family: 'Wire One', Helvetica, Arial, sans-serif;
	font-weight:normal;
	font-size:7em;
	margin-bottom:15px; 
	color:#FDF9F4; 
	line-height:1em;
}
.subtitle { 
	line-height:.9em;
	font-size:5.5em;
	margin-top:0;
	margin-bottom:40px; 
}
.tagline { 
	font-size:1.4em;
	line-height:1.3em;
	font-weight:normal;
	margin-bottom:75px;
}

@media (max-width: 767px) {
	.lead { 
		font-size:1.3em;
	}
}


/********************************************************/
/*                   UI - Buttons                       */
/********************************************************/
.btn{
	color:#333;
	text-shadow: none;
	text-decoration: none;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	border:0 none;
}
.btn:hover {
	color:#000;
}
.btn-lg { 
	padding:16px 30px;
	font-size:inherit;
}

.btn-link {
	color:rgba(255,255,255,.8);
}
.btn-link:hover, .btn-link:focus, .btn-link:active {
	color:#fff
}
.btn-default {
	background: rgba(255,255,255,.5);
}
.btn-default:hover, .btn-default:focus, .btn-default:active, .btn-default.active {
	background: rgba(255,255,255,.8);
}
.btn-primary {
	background: rgba(255,255,255,.2);
}
.btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary:active {
	background: rgba(255,255,255,.5);
}



/********************************************************/
/*                 UI - Thumbnails                      */
/********************************************************/
.thumbnail {
	background-color: rgba(255,255,255,.2);
	border: 0 none;
	padding:10px;
	-webkit-border-radius: 2px;
	   -moz-border-radius: 2px;
	        border-radius: 2px;
}
.thumbnail .caption {
	color: inherit;
}



/********************************************************/
/*                 Everything else                      */
/********************************************************/

.list-social .btn { 
	font-size:1.3em; 
}
.list-social .btn:hover, .list-social .btn:active, .list-social .btn:focus { 
	text-decoration: none; 
}


/* Social buttons in the footer */
#social { 
	margin-top:50px;
	margin-bottom:50px;
}
#social .wrapper { 
	width:340px; 
	margin:0 auto;
}






























/***********************************************************/
/*                   Theme: text shadows                   */
/***********************************************************/
.text-shadows { 	
	text-shadow:0 1px 2px rgba(0,0,0,.2);
}
.text-shadows .title,
.text-shadows .subtitle,
.text-shadows .tagline { 
	text-shadow:0 2px 3px rgba(0,0,0,.4);
}
.text-shadows .mainmenu .dropdown-menu a { 
	text-shadow:0 2px 1px rgba(0,0,0,.2);
}
.text-shadows .mainmenu .dropdown-menu a:hover { 
	text-shadow:none;
}



/***********************************************************/
/*                   Inverted theme                        */
/***********************************************************/
.theme-invert { 	
	color:#222;
	color:rgba(0,0,0,.8); 
 }
.theme-invert a { 
	color:#000;
}
.theme-invert .btn {
	color:rgba(255,255,255,.8);
}
.theme-invert .btn:hover {
	color:#fff;
}
.theme-invert .btn-link {
	color:rgba(0,0,0,.8);
}
.theme-invert .btn-link:hover, .theme-invert .btn-link:focus, .theme-invert .btn-link:active {
	color:#000
}
.theme-invert .navbar-toggle {
	background: rgba(0, 0, 0, 0.12);
}
.theme-invert .navbar-toggle .icon-bar {
  background: #333;
}
.theme-invert .mainmenu .dropdown-menu a { 
	color:#000;
}
.theme-invert .mainmenu .dropdown-menu a:hover { 
	background:rgba(0,0,0,.1);
	color:#000;
}

.theme-invert .title,
.theme-invert .subtitle,
.theme-invert .tagline { 
	color:#222222; 
}

.theme-invert .btn-default {
	background: rgba(0,0,0,.4);
}
.theme-invert .btn-default:hover,
.theme-invert .btn-default:focus,
.theme-invert .btn-default:active,
.theme-invert .btn-default.active {
	background: rgba(0,0,0,.6);
	color:#fff;
}
.theme-invert .btn-primary {
	background: rgba(0,0,0,.2);
}
.theme-invert .btn-primary:hover,
.theme-invert .btn-primary:focus,
.theme-invert .btn-primary:active,
.theme-invert .btn-primary.active {
	background: rgba(0,0,0,.3);
	color:#fff;
}

.theme-invert .thumbnail {
	background-color: rgba(255,255,255,.8);
}
.thumbnail .caption {
	color: inherit;
}



		
	</style>
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href='http://fonts.googleapis.com/css?family=Wire+One' rel='stylesheet' type='text/css'>
</head>


<body class="theme-invert">

<nav class="mainmenu">
	<div class="container">
		<div class="dropdown">
			<button type="button" class="navbar-toggle" data-toggle="dropdown"><span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
			<!-- <a data-toggle="dropdown" href="#">Dropdown trigger</a> -->
			<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
				<li><a href="#" class="active">Home</a></li>
				
			</ul>
		</div>
	</div>
</nav>


<!-- Main (Home) section -->
<section class="section" id="head">
	<div class="container">

		<div class="row">
			<div class="col-md-10 col-lg-10 col-md-offset-1 col-lg-offset-1 text-center">	

				<!-- Site Title, your name, HELLO msg, etc. -->
				<h1 class="title">ATMECS Tech Talk Portal</h1>
				<h2 class="subtitle">Upcoming TechTalks</h2>

				<!-- Short introductory (optional) -->
				<h3 class="tagline">
					Aspiring Minds </br>
					Innovative
				</h3>
				
				<!-- Nice place to describe your site in a sentence or two -->
				<p><a href="signinup.jsp" class="btn btn-default btn-lg">Register For TechTalk</a></p>
	
			</div> <!-- /col -->
		</div> <!-- /row -->
	
	</div>
</section>



<!-- Fourth (Contact) section -->
<section class="section" id="contact">
	<div class="container">
	
		<h2 class="text-center title">Get in touch</h2>

		<div class="row">
			<div class="col-sm-8 col-sm-offset-2 text-center">
				<p class="lead">Request a Tech Talk???</p>
				<p>Feel free to email me, or drop me a line in Twitter!</p>
				<p><b>krishna.tiwari@atmecs.com</b><br><br></p>
				<ul class="list-inline list-social">
					<li><a href="https://twitter.com/serggg" class="btn btn-link"><i class="fa fa-twitter fa-fw"></i> Twitter</a></li>
					<li><a href="https://github.com/pozhilov" class="btn btn-link"><i class="fa fa-github fa-fw"></i> Github</a></li>
					<li><a href="http://linkedin/in/pozhilov" class="btn btn-link"><i class="fa fa-linkedin fa-fw"></i> LinkedIn</a></li>
				</ul>
			</div>
		</div>

	</div>
</section>


<!-- Load js libs only when the page is loaded. -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="assets/js/modernizr.custom.72241.js"></script>
<!-- Custom template scripts -->


<script>
//global. currently active menu item 
var current_item = 0;

// few settings
var section_hide_time = 1300;
var section_show_time = 1300;

// jQuery stuff
jQuery(document).ready(function($) {

	// Switch section
	$("a", '.mainmenu').click(function() 
	{
		if( ! $(this).hasClass('active') ) { 
			current_item = this;
			// close all visible divs with the class of .section
			$('.section:visible').fadeOut( section_hide_time, function() { 
				$('a', '.mainmenu').removeClass( 'active' );  
				$(current_item).addClass( 'active' );
				var new_section = $( $(current_item).attr('href') );
				new_section.fadeIn( section_show_time );
			} );
		}
		return false;
	});		
});


/* Modernizr 2.7.1 (Custom Build) | MIT & BSD
 * Build: http://modernizr.com/download/#-backgroundsize-opacity-rgba-textshadow-shiv-mq-teststyles-testprop-testallprops-prefixes-domprefixes
 */
;window.Modernizr=function(a,b,c){function z(a){i.cssText=a}function A(a,b){return z(l.join(a+";")+(b||""))}function B(a,b){return typeof a===b}function C(a,b){return!!~(""+a).indexOf(b)}function D(a,b){for(var d in a){var e=a[d];if(!C(e,"-")&&i[e]!==c)return b=="pfx"?e:!0}return!1}function E(a,b,d){for(var e in a){var f=b[a[e]];if(f!==c)return d===!1?a[e]:B(f,"function")?f.bind(d||b):f}return!1}function F(a,b,c){var d=a.charAt(0).toUpperCase()+a.slice(1),e=(a+" "+n.join(d+" ")+d).split(" ");return B(b,"string")||B(b,"undefined")?D(e,b):(e=(a+" "+o.join(d+" ")+d).split(" "),E(e,b,c))}var d="2.7.1",e={},f=b.documentElement,g="modernizr",h=b.createElement(g),i=h.style,j,k={}.toString,l=" -webkit- -moz- -o- -ms- ".split(" "),m="Webkit Moz O ms",n=m.split(" "),o=m.toLowerCase().split(" "),p={},q={},r={},s=[],t=s.slice,u,v=function(a,c,d,e){var h,i,j,k,l=b.createElement("div"),m=b.body,n=m||b.createElement("body");if(parseInt(d,10))while(d--)j=b.createElement("div"),j.id=e?e[d]:g+(d+1),l.appendChild(j);return h=["&#173;",'<style id="s',g,'">',a,"</style>"].join(""),l.id=g,(m?l:n).innerHTML+=h,n.appendChild(l),m||(n.style.background="",n.style.overflow="hidden",k=f.style.overflow,f.style.overflow="hidden",f.appendChild(n)),i=c(l,a),m?l.parentNode.removeChild(l):(n.parentNode.removeChild(n),f.style.overflow=k),!!i},w=function(b){var c=a.matchMedia||a.msMatchMedia;if(c)return c(b).matches;var d;return v("@media "+b+" { #"+g+" { position: absolute; } }",function(b){d=(a.getComputedStyle?getComputedStyle(b,null):b.currentStyle)["position"]=="absolute"}),d},x={}.hasOwnProperty,y;!B(x,"undefined")&&!B(x.call,"undefined")?y=function(a,b){return x.call(a,b)}:y=function(a,b){return b in a&&B(a.constructor.prototype[b],"undefined")},Function.prototype.bind||(Function.prototype.bind=function(b){var c=this;if(typeof c!="function")throw new TypeError;var d=t.call(arguments,1),e=function(){if(this instanceof e){var a=function(){};a.prototype=c.prototype;var f=new a,g=c.apply(f,d.concat(t.call(arguments)));return Object(g)===g?g:f}return c.apply(b,d.concat(t.call(arguments)))};return e}),p.rgba=function(){return z("background-color:rgba(150,255,150,.5)"),C(i.backgroundColor,"rgba")},p.backgroundsize=function(){return F("backgroundSize")},p.textshadow=function(){return b.createElement("div").style.textShadow===""},p.opacity=function(){return A("opacity:.55"),/^0.55$/.test(i.opacity)};for(var G in p)y(p,G)&&(u=G.toLowerCase(),e[u]=p[G](),s.push((e[u]?"":"no-")+u));return e.addTest=function(a,b){if(typeof a=="object")for(var d in a)y(a,d)&&e.addTest(d,a[d]);else{a=a.toLowerCase();if(e[a]!==c)return e;b=typeof b=="function"?b():b,typeof enableClasses!="undefined"&&enableClasses&&(f.className+=" "+(b?"":"no-")+a),e[a]=b}return e},z(""),h=j=null,function(a,b){function l(a,b){var c=a.createElement("p"),d=a.getElementsByTagName("head")[0]||a.documentElement;return c.innerHTML="x<style>"+b+"</style>",d.insertBefore(c.lastChild,d.firstChild)}function m(){var a=s.elements;return typeof a=="string"?a.split(" "):a}function n(a){var b=j[a[h]];return b||(b={},i++,a[h]=i,j[i]=b),b}function o(a,c,d){c||(c=b);if(k)return c.createElement(a);d||(d=n(c));var g;return d.cache[a]?g=d.cache[a].cloneNode():f.test(a)?g=(d.cache[a]=d.createElem(a)).cloneNode():g=d.createElem(a),g.canHaveChildren&&!e.test(a)&&!g.tagUrn?d.frag.appendChild(g):g}function p(a,c){a||(a=b);if(k)return a.createDocumentFragment();c=c||n(a);var d=c.frag.cloneNode(),e=0,f=m(),g=f.length;for(;e<g;e++)d.createElement(f[e]);return d}function q(a,b){b.cache||(b.cache={},b.createElem=a.createElement,b.createFrag=a.createDocumentFragment,b.frag=b.createFrag()),a.createElement=function(c){return s.shivMethods?o(c,a,b):b.createElem(c)},a.createDocumentFragment=Function("h,f","return function(){var n=f.cloneNode(),c=n.createElement;h.shivMethods&&("+m().join().replace(/[\w\-]+/g,function(a){return b.createElem(a),b.frag.createElement(a),'c("'+a+'")'})+");return n}")(s,b.frag)}function r(a){a||(a=b);var c=n(a);return s.shivCSS&&!g&&!c.hasCSS&&(c.hasCSS=!!l(a,"article,aside,dialog,figcaption,figure,footer,header,hgroup,main,nav,section{display:block}mark{background:#FF0;color:#000}template{display:none}")),k||q(a,c),a}var c="3.7.0",d=a.html5||{},e=/^<|^(?:button|map|select|textarea|object|iframe|option|optgroup)$/i,f=/^(?:a|b|code|div|fieldset|h1|h2|h3|h4|h5|h6|i|label|li|ol|p|q|span|strong|style|table|tbody|td|th|tr|ul)$/i,g,h="_html5shiv",i=0,j={},k;(function(){try{var a=b.createElement("a");a.innerHTML="<xyz></xyz>",g="hidden"in a,k=a.childNodes.length==1||function(){b.createElement("a");var a=b.createDocumentFragment();return typeof a.cloneNode=="undefined"||typeof a.createDocumentFragment=="undefined"||typeof a.createElement=="undefined"}()}catch(c){g=!0,k=!0}})();var s={elements:d.elements||"abbr article aside audio bdi canvas data datalist details dialog figcaption figure footer header hgroup main mark meter nav output progress section summary template time video",version:c,shivCSS:d.shivCSS!==!1,supportsUnknownElements:k,shivMethods:d.shivMethods!==!1,type:"default",shivDocument:r,createElement:o,createDocumentFragment:p};a.html5=s,r(b)}(this,b),e._version=d,e._prefixes=l,e._domPrefixes=o,e._cssomPrefixes=n,e.mq=w,e.testProp=function(a){return D([a])},e.testAllProps=F,e.testStyles=v,e}(this,this.document);
</script>
</body>
</html>