//
// showdown.js -- A javascript port of Markdown.
//
// Copyright (c) 2007 John Fraser.
//
// Original Markdown Copyright (c) 2004-2005 John Gruber
//   <http://daringfireball.net/projects/markdown/>
//
// Redistributable under a BSD-style open source license.
// See license.txt for more information.
//
// The full source distribution is at:
//
//				A A L
//				T C A
//				T K B
//
//   <http://www.attacklab.net/>
//
//
// Wherever possible, Showdown is a straight, line-by-line port
// of the Perl version of Markdown.
//
// This is not a normal parser design; it's basically just a
// series of string substitutions.  It's hard to read and
// maintain this way,  but keeping Showdown close to the original
// design makes it easier to port new features.
//
// More importantly, Showdown behaves like markdown.pl in most
// edge cases.  So web applications can do client-side preview
// in Javascript, and then build identical HTML on the server.
//
// This port needs the new RegExp functionality of ECMA 262,
// 3rd Edition (i.e. Javascript 1.5).  Most modern web browsers
// should do fine.  Even with the new regular expression features,
// We do a lot of work to emulate Perl's regex functionality.
// The tricky changes in this file mostly have the "attacklab:"
// label.  Major or self-explanatory changes don't.
//
// Smart diff tools like Araxis Merge will be able to match up
// this file with markdown.pl in a useful way.  A little tweaking
// helps: in a copy of markdown.pl, replace "#" with "//" and
// replace "$text" with "text".  Be sure to ignore whitespace
// and line endings.
//
//
// Showdown usage:
//
//   var text = "Markdown *rocks*.";
//
//   var converter = new Showdown.converter();
//   var html = converter.makeHtml(text);
//
//   alert(html);
//
// Note: move the sample code to the bottom of this
// file before uncommenting it.
//
//
// Showdown namespace
//
var Showdown={extensions:{}},forEach=Showdown.forEach=function(a,b){if(typeof a.forEach=="function")a.forEach(b);else{var c,d=a.length;for(c=0;c<d;c++)b(a[c],c,a)}},stdExtName=function(a){return a.replace(/[_-]||\s/g,"").toLowerCase()};Showdown.converter=function(a){var b,c,d,e=0,f=[],g=[];if(typeof module!="undefind"&&typeof exports!="undefined"&&typeof require!="undefind"){var h=require("fs");if(h){var i=h.readdirSync((__dirname||".")+"/extensions").filter(function(a){return~a.indexOf(".js")}).map(function(a){return a.replace(/\.js$/,"")});Showdown.forEach(i,function(a){var b=stdExtName(a);Showdown.extensions[b]=require("./extensions/"+a)})}}a&&a.extensions&&Showdown.forEach(a.extensions,function(a){typeof a=="string"&&(a=Showdown.extensions[stdExtName(a)]);if(typeof a!="function")throw"Extension '"+a+"' could not be loaded.  It was either not found or is not a valid extension.";Showdown.forEach(a(this),function(a){a.type?a.type==="language"||a.type==="lang"?f.push(a):(a.type==="output"||a.type==="html")&&g.push(a):g.push(a)})}),this.makeHtml=function(a){return b={},c={},d=[],a=a.replace(/~/g,"~T"),a=a.replace(/\$/g,"~D"),a=a.replace(/\r\n/g,"\n"),a=a.replace(/\r/g,"\n"),a="\n\n"+a+"\n\n",a=L(a),a=a.replace(/^[ \t]+$/mg,""),Showdown.forEach(f,function(b){a=j(b,a)}),a=y(a),a=l(a),a=k(a),a=n(a),a=J(a),a=a.replace(/~D/g,"$$"),a=a.replace(/~T/g,"~"),Showdown.forEach(g,function(b){a=j(b,a)}),a};var j=function(a,b){if(a.regex){var c=new RegExp(a.regex,"g");return b.replace(c,a.replace)}if(a.filter)return a.filter(b)},k=function(a){return a+="~0",a=a.replace(/^[ ]{0,3}\[(.+)\]:[ \t]*\n?[ \t]*<?(\S+?)>?[ \t]*\n?[ \t]*(?:(\n*)["(](.+?)[")][ \t]*)?(?:\n+|(?=~0))/gm,function(a,d,e,f,g){return d=d.toLowerCase(),b[d]=F(e),f?f+g:(g&&(c[d]=g.replace(/"/g,"&quot;")),"")}),a=a.replace(/~0/,""),a},l=function(a){a=a.replace(/\n/g,"\n\n");var b="p|div|h[1-6]|blockquote|pre|table|dl|ol|ul|script|noscript|form|fieldset|iframe|math|ins|del|style|section|header|footer|nav|article|aside",c="p|div|h[1-6]|blockquote|pre|table|dl|ol|ul|script|noscript|form|fieldset|iframe|math|style|section|header|footer|nav|article|aside";return a=a.replace(/^(<(p|div|h[1-6]|blockquote|pre|table|dl|ol|ul|script|noscript|form|fieldset|iframe|math|ins|del)\b[^\r]*?\n<\/\2>[ \t]*(?=\n+))/gm,m),a=a.replace(/^(<(p|div|h[1-6]|blockquote|pre|table|dl|ol|ul|script|noscript|form|fieldset|iframe|math|style|section|header|footer|nav|article|aside)\b[^\r]*?<\/\2>[ \t]*(?=\n+)\n)/gm,m),a=a.replace(/(\n[ ]{0,3}(<(hr)\b([^<>])*?\/?>)[ \t]*(?=\n{2,}))/g,m),a=a.replace(/(\n\n[ ]{0,3}<!(--[^\r]*?--\s*)+>[ \t]*(?=\n{2,}))/g,m),a=a.replace(/(?:\n\n)([ ]{0,3}(?:<([?%])[^\r]*?\2>)[ \t]*(?=\n{2,}))/g,m),a=a.replace(/\n\n/g,"\n"),a},m=function(a,b){var c=b;return c=c.replace(/\n\n/g,"\n"),c=c.replace(/^\n/,""),c=c.replace(/\n+$/g,""),c="\n\n~K"+(d.push(c)-1)+"K\n\n",c},n=function(a){a=u(a);var b=z("<hr />");return a=a.replace(/^[ ]{0,2}([ ]?\*[ ]?){3,}[ \t]*$/gm,b),a=a.replace(/^[ ]{0,2}([ ]?\-[ ]?){3,}[ \t]*$/gm,b),a=a.replace(/^[ ]{0,2}([ ]?\_[ ]?){3,}[ \t]*$/gm,b),a=w(a),a=x(a),a=D(a),a=l(a),a=E(a),a},o=function(a){return a=A(a),a=p(a),a=G(a),a=s(a),a=q(a),a=H(a),a=F(a),a=C(a),a=a.replace(/  +\n/g," <br />\n"),a},p=function(a){var b=/(<[a-z\/!$]("[^"]*"|'[^']*'|[^'">])*>|<!(--.*?--\s*)+>)/gi;return a=a.replace(b,function(a){var b=a.replace(/(.)<\/?code>(?=.)/g,"$1`");return b=M(b,"\\`*_"),b}),a},q=function(a){return a=a.replace(/(\[((?:\[[^\]]*\]|[^\[\]])*)\][ ]?(?:\n[ ]*)?\[(.*?)\])()()()()/g,r),a=a.replace(/(\[((?:\[[^\]]*\]|[^\[\]])*)\]\([ \t]*()<?(.*?(?:\(.*?\).*?)?)>?[ \t]*((['"])(.*?)\6[ \t]*)?\))/g,r),a=a.replace(/(\[([^\[\]]+)\])()()()()()/g,r),a},r=function(a,d,e,f,g,h,i,j){j==undefined&&(j="");var k=d,l=e,m=f.toLowerCase(),n=g,o=j;if(n==""){m==""&&(m=l.toLowerCase().replace(/ ?\n/g," ")),n="#"+m;if(b[m]!=undefined)n=b[m],c[m]!=undefined&&(o=c[m]);else{if(!(k.search(/\(\s*\)$/m)>-1))return k;n=""}}n=M(n,"*_");var p='<a href="'+n+'"';return o!=""&&(o=o.replace(/"/g,"&quot;"),o=M(o,"*_"),p+=' title="'+o+'"'),p+=">"+l+"</a>",p},s=function(a){return a=a.replace(/(!\[(.*?)\][ ]?(?:\n[ ]*)?\[(.*?)\])()()()()/g,t),a=a.replace(/(!\[(.*?)\]\s?\([ \t]*()<?(\S+?)>?[ \t]*((['"])(.*?)\6[ \t]*)?\))/g,t),a},t=function(a,d,e,f,g,h,i,j){var k=d,l=e,m=f.toLowerCase(),n=g,o=j;o||(o="");if(n==""){m==""&&(m=l.toLowerCase().replace(/ ?\n/g," ")),n="#"+m;if(b[m]==undefined)return k;n=b[m],c[m]!=undefined&&(o=c[m])}l=l.replace(/"/g,"&quot;"),n=M(n,"*_");var p='<img src="'+n+'" alt="'+l+'"';return o=o.replace(/"/g,"&quot;"),o=M(o,"*_"),p+=' title="'+o+'"',p+=" />",p},u=function(a){function b(a){return a.replace(/[^\w]/g,"").toLowerCase()}return a=a.replace(/^(.+)[ \t]*\n=+[ \t]*\n+/gm,function(a,c){return z('<h1 id="'+b(c)+'">'+o(c)+"</h1>")}),a=a.replace(/^(.+)[ \t]*\n-+[ \t]*\n+/gm,function(a,c){return z('<h2 id="'+b(c)+'">'+o(c)+"</h2>")}),a=a.replace(/^(\#{1,6})[ \t]*(.+?)[ \t]*\#*\n+/gm,function(a,c,d){var e=c.length;return z("<h"+e+' id="'+b(d)+'">'+o(d)+"</h"+e+">")}),a},v,w=function(a){a+="~0";var b=/^(([ ]{0,3}([*+-]|\d+[.])[ \t]+)[^\r]+?(~0|\n{2,}(?=\S)(?![ \t]*(?:[*+-]|\d+[.])[ \t]+)))/gm;return e?a=a.replace(b,function(a,b,c){var d=b,e=c.search(/[*+-]/g)>-1?"ul":"ol";d=d.replace(/\n{2,}/g,"\n\n\n");var f=v(d);return f=f.replace(/\s+$/,""),f="<"+e+">"+f+"</"+e+">\n",f}):(b=/(\n\n|^\n?)(([ ]{0,3}([*+-]|\d+[.])[ \t]+)[^\r]+?(~0|\n{2,}(?=\S)(?![ \t]*(?:[*+-]|\d+[.])[ \t]+)))/g,a=a.replace(b,function(a,b,c,d){var e=b,f=c,g=d.search(/[*+-]/g)>-1?"ul":"ol",f=f.replace(/\n{2,}/g,"\n\n\n"),h=v(f);return h=e+"<"+g+">\n"+h+"</"+g+">\n",h})),a=a.replace(/~0/,""),a};v=function(a){return e++,a=a.replace(/\n{2,}$/,"\n"),a+="~0",a=a.replace(/(\n)?(^[ \t]*)([*+-]|\d+[.])[ \t]+([^\r]+?(\n{1,2}))(?=\n*(~0|\2([*+-]|\d+[.])[ \t]+))/gm,function(a,b,c,d,e){var f=e,g=b,h=c;return g||f.search(/\n{2,}/)>-1?f=n(K(f)):(f=w(K(f)),f=f.replace(/\n$/,""),f=o(f)),"<li>"+f+"</li>\n"}),a=a.replace(/~0/g,""),e--,a};var x=function(a){return a+="~0",a=a.replace(/(?:\n\n|^)((?:(?:[ ]{4}|\t).*\n+)+)(\n*[ ]{0,3}[^ \t\n]|(?=~0))/g,function(a,b,c){var d=b,e=c;return d=B(K(d)),d=L(d),d=d.replace(/^\n+/g,""),d=d.replace(/\n+$/g,""),d="<pre><code>"+d+"\n</code></pre>",z(d)+e}),a=a.replace(/~0/,""),a},y=function(a){return a+="~0",a=a.replace(/(?:^|\n)```(.*)\n([\s\S]*?)\n```/g,function(a,b,c){var d=b,e=c;return e=B(e),e=L(e),e=e.replace(/^\n+/g,""),e=e.replace(/\n+$/g,""),e="<pre><code"+(d?' class="'+d+'"':"")+">"+e+"\n</code></pre>",z(e)}),a=a.replace(/~0/,""),a},z=function(a){return a=a.replace(/(^\n+|\n+$)/g,""),"\n\n~K"+(d.push(a)-1)+"K\n\n"},A=function(a){return a=a.replace(/(^|[^\\])(`+)([^\r]*?[^`])\2(?!`)/gm,function(a,b,c,d,e){var f=d;return f=f.replace(/^([ \t]*)/g,""),f=f.replace(/[ \t]*$/g,""),f=B(f),b+"<code>"+f+"</code>"}),a},B=function(a){return a=a.replace(/&/g,"&amp;"),a=a.replace(/</g,"&lt;"),a=a.replace(/>/g,"&gt;"),a=M(a,"*_{}[]\\",!1),a},C=function(a){return a=a.replace(/(\*\*|__)(?=\S)([^\r]*?\S[*_]*)\1/g,"<strong>$2</strong>"),a=a.replace(/(\*|_)(?=\S)([^\r]*?\S)\1/g,"<em>$2</em>"),a},D=function(a){return a=a.replace(/((^[ \t]*>[ \t]?.+\n(.+\n)*\n*)+)/gm,function(a,b){var c=b;return c=c.replace(/^[ \t]*>[ \t]?/gm,"~0"),c=c.replace(/~0/g,""),c=c.replace(/^[ \t]+$/gm,""),c=n(c),c=c.replace(/(^|\n)/g,"$1  "),c=c.replace(/(\s*<pre>[^\r]+?<\/pre>)/gm,function(a,b){var c=b;return c=c.replace(/^  /mg,"~0"),c=c.replace(/~0/g,""),c}),z("<blockquote>\n"+c+"\n</blockquote>")}),a},E=function(a){a=a.replace(/^\n+/g,""),a=a.replace(/\n+$/g,"");var b=a.split(/\n{2,}/g),c=[],e=b.length;for(var f=0;f<e;f++){var g=b[f];g.search(/~K(\d+)K/g)>=0?c.push(g):g.search(/\S/)>=0&&(g=o(g),g=g.replace(/^([ \t]*)/g,"<p>"),g+="</p>",c.push(g))}e=c.length;for(var f=0;f<e;f++)while(c[f].search(/~K(\d+)K/)>=0){var h=d[RegExp.$1];h=h.replace(/\$/g,"$$$$"),c[f]=c[f].replace(/~K\d+K/,h)}return c.join("\n\n")},F=function(a){return a=a.replace(/&(?!#?[xX]?(?:[0-9a-fA-F]+|\w+);)/g,"&amp;"),a=a.replace(/<(?![a-z\/?\$!])/gi,"&lt;"),a},G=function(a){return a=a.replace(/\\(\\)/g,N),a=a.replace(/\\([`*_{}\[\]()>#+-.!])/g,N),a},H=function(a){return a=a.replace(/<((https?|ftp|dict):[^'">\s]+)>/gi,'<a href="$1">$1</a>'),a=a.replace(/<(?:mailto:)?([-.\w]+\@[-a-z0-9]+(\.[-a-z0-9]+)*\.[a-z]+)>/gi,function(a,b){return I(J(b))}),a},I=function(a){var b=[function(a){return"&#"+a.charCodeAt(0)+";"},function(a){return"&#x"+a.charCodeAt(0).toString(16)+";"},function(a){return a}];return a="mailto:"+a,a=a.replace(/./g,function(a){if(a=="@")a=b[Math.floor(Math.random()*2)](a);else if(a!=":"){var c=Math.random();a=c>.9?b[2](a):c>.45?b[1](a):b[0](a)}return a}),a='<a href="'+a+'">'+a+"</a>",a=a.replace(/">.+:/g,'">'),a},J=function(a){return a=a.replace(/~E(\d+)E/g,function(a,b){var c=parseInt(b);return String.fromCharCode(c)}),a},K=function(a){return a=a.replace(/^(\t|[ ]{1,4})/gm,"~0"),a=a.replace(/~0/g,""),a},L=function(a){return a=a.replace(/\t(?=\t)/g,"    "),a=a.replace(/\t/g,"~A~B"),a=a.replace(/~B(.+?)~A/g,function(a,b,c){var d=b,e=4-d.length%4;for(var f=0;f<e;f++)d+=" ";return d}),a=a.replace(/~A/g,"    "),a=a.replace(/~B/g,""),a},M=function(a,b,c){var d="(["+b.replace(/([\[\]\\])/g,"\\$1")+"])";c&&(d="\\\\"+d);var e=new RegExp(d,"g");return a=a.replace(e,N),a},N=function(a,b){var c=b.charCodeAt(0);return"~E"+c+"E"}},typeof module!="undefined"&&(module.exports=Showdown),typeof define=="function"&&define.amd&&define("showdown",function(){return Showdown});

/* global _:false */


/* global document:false */

(function() {
  'use strict';
  var ContactCtrl, HomeCtrl, ProjectDetailCtrl, ProjectListCtrl, ResumeCtrl, mod, neuPortfolio,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  angular.module('dummPortfolio.constants', []);

  angular.module('dummPortfolio.services', ['dummPortfolio.constants', 'pascalprecht.translate']);

  angular.module('dummPortfolio.config', ['ui.router', 'dummPortfolio.services']);

  angular.module('dummPortfolio.controller', []);

  angular.module('dummPortfolio.directives', ['ng']);

  neuPortfolio = angular.module('dummPortfolio', ['dummPortfolio.constants', 'dummPortfolio.config', 'dummPortfolio.controller', 'dummPortfolio.services', 'dummPortfolio.directives', 'ngAnimate', 'ngCookies', 'ngTouch', 'ngSanitize', 'restangular', 'ui.router', 'btford.markdown', 'pascalprecht.translate']);

  angular.module('dummPortfolio.constants').constant('constants.globals', {
    email: 'bellon.pierre@gmail.com',
    github: 'pbellon',
    twitter: 'toutenrab',
    name: 'Pierre Bellon',
    linkedin: '138099227'
  });

  angular.module('dummPortfolio.constants').constant('constants.projects', {
    all: [
      {
        id: 1,
        link: 'https://www.detective.io',
        picture: 'images/screenshots/detective-io.png',
        thumbnail: 'images/screenshots/detective-io.thumb.png',
        tags: ['MODELS.TAGS.DDJ'],
        github: 'https://github.com/jplusplus/detective.io/'
      }, {
        id: 2,
        picture: 'images/screenshots/spendingstories.png',
        thumbnail: 'images/screenshots/spendingstories.thumb.png',
        tags: ['MODELS.TAGS.DDJ', 'MODELS.TAGS.VIZ'],
        link: 'http://spendingstories.org',
        github: 'https://github.com/okfn/spendingstories/'
      }, {
        id: 3,
        picture: 'images/screenshots/arte-wow.png',
        thumbnail: 'images/screenshots/arte-wow.thumb.png',
        link: 'http://europe.arte.tv/fr/evenements/world-of-work/',
        github: 'https://github.com/jplusplus/arte-world-of-work/',
        tags: ['MODELS.TAGS.DDJ']
      }, {
        id: 4,
        picture: 'images/screenshots/jeu_d_influences.png',
        thumbnail: 'images/screenshots/jeu_d_influences.thumb.png',
        link: 'http://jeu-d-influences.',
        github: 'https://github.com/jplusplus/arte-world-of-work/',
        tags: ['MODELS.TAGS.SRS_GAME']
      }, {
        id: 5,
        picture: 'images/screenshots/datawrapper.png',
        thumbnail: 'images/screenshots/datawrapper.thumb.png',
        link: 'https://datawrapper.de/',
        github: 'https://github.com/datawrapper/datawrapper',
        tags: ['MODELS.TAGS.VIZ']
      }, {
        id: 6,
        picture: 'images/screenshots/tractatus-tree.png',
        thumbnail: 'images/screenshots/tractatus-tree.thumb.png',
        link: 'http://pbellon.github.io/tractatus-tree/',
        github: 'https://github.com/jplusplus/arte-world-of-work/',
        tags: ['MODELS.TAGS.VIZ']
      }, {
        id: 7,
        picture: 'images/screenshots/githubers-audience.png',
        thumbnail: 'images/screenshots/githubers-audience.thumb.png',
        link: 'https://docs.google.com/spreadsheets/d/1gdxK9hJG9go52RKZxplKyi1aAlKrxKqVFU6w8yXZx5s/pubchart?oid=42127376&format=interactive',
        github: 'https://github.com/pbellon/githubers-audience.py',
        tags: ['MODELS.TAGS.VIZ']
      }
    ]
  });

  angular.module('dummPortfolio.constants').constant('constants.resume', {
    skills: [
      {
        name: 'Front End',
        order: 1,
        skills: [
          {
            name: 'AngularJS',
            experience: 80
          }, {
            name: 'CoffeeScript',
            experience: 85
          }, {
            name: 'Bootstrap',
            experience: 75
          }, {
            name: 'Less / CSS',
            experience: 65
          }
        ]
      }, {
        order: 2,
        name: 'Back End',
        skills: [
          {
            name: 'Django',
            experience: 80
          }, {
            name: 'Ruby On Rails',
            experience: 50
          }, {
            name: 'Express (NodeJS)',
            experience: 55
          }, {
            name: 'PHP',
            experience: 60
          }
        ]
      }, {
        order: 3,
        name: 'Other',
        skills: [
          {
            name: 'Android SDK',
            experience: 60
          }, {
            name: 'Git / GitHub',
            experience: 70
          }, {
            name: 'Heroku & AWS',
            experience: 65
          }, {
            name: 'D3.js',
            experience: 40
          }
        ]
      }
    ],
    jobs: [
      {
        title: 'Full stack developer',
        company: 'Journalism++',
        years: [2013, 2014],
        duration: '2 years',
        description: 'As a full-stack developer, I was involved in many data-driven journalism\nprojects like *[Detective.io][dio]* and *[SpendingStories][spd]*. This experience made me confortable in technical specifications writing.\nIt also improved by a great factor my software designing and developing skills in both Front-End and Back-End.\n[dio]: http://pbellon.github.com/#/projects/1\n[spd]: http://pbellon.github.com/#/projects/2'
      }, {
        company: 'MeetOnExhibitions',
        title: 'Mobile & Web developer',
        years: [2011, 2012],
        duration: '1 year',
        description: 'MeetOnExhibitions provides a solution for exhibition organizers to easily generate mobile\napplications for their events thanks to a RubyOnRails website. I took part as the main developer of\nthe Android & BlackBerry platforms. This experience made me dive for the first time into a web MVC framework using a\nTest Driven Development approach. It also made me discover and use the powerness of Design Patterns for creating\nreliable and efficient software architectures.'
      }, {
        company: 'Kasual Business',
        title: 'Mobile developer',
        years: [2010],
        duration: '3 months',
        description: 'I joined Kasual Business mobile development team during an internship to work on a wine bottle matching\napplication called *Smart Bordeaux*. I was in charge of the localization and geolocation features of this application.\nThis was my first mobile development experience, it made me aware of multi-platform and multi-languages software\nengineering issues.'
      }, {
        company: 'SQLI',
        title: 'Web developer',
        years: [2009],
        duration: '3 months',
        description: 'My job was to add features to an open source ergonomic analysis tool called *ClickHeat*.\nI was charged to improve the kind of data captured on a user click and visualize them. It was my first\nprofessional experience. It made me discover the basis of web development using PHP and MySQL\ncombined with jQuery to create dynamic websites.'
      }
    ],
    interests: [
      {
        description: 'Music is a big part of my life. I love to create music thanks to my 30 years old guitar and my MIDI keyboard.',
        iconClass: 'fa fa-music'
      }, {
        description: 'Cinema. Some may say I\'m a bit elitist concerning my choices. Well.. I am. Sometimes.',
        iconClass: 'fa fa-film'
      }, {
        description: 'Reading. A lot of Science-Fiction but also Sociology & old-school Philosphy.',
        iconClass: 'fa fa-book'
      }
    ],
    education: [
      {
        name: 'Lycée Pape Clément',
        years: [2008],
        location: 'Pessac',
        option: 'Engineer’s sciences',
        hasDiploma: true,
        cursus: 'Baccalauréat Scientifique / A-Level'
      }, {
        name: 'Supinfo',
        years: [2008, 2010],
        location: 'Bordeaux',
        hasDiploma: false,
        cursus: 'Preparatory Cycle in Computer Science'
      }, {
        name: 'EPSI',
        years: [2010, 2013],
        location: 'Montpellier',
        hasDiploma: true,
        cursus: 'Master degree in Computer Science',
        option: 'Software Engineering'
      }
    ]
  });

  angular.module('dummPortfolio.config').run([
    '$rootScope', '$location', '$window', function($rootScope, $location, $window) {
      return $rootScope.$on('$stateChangeSuccess', function() {
        if (!$window.ga) {
          return;
        }
        return $window.ga('send', 'pageview', {
          page: $location.path()
        });
      });
    }
  ]);

  angular.module('dummPortfolio.config').run([
    '$rootScope', '$state', '$translate', '$location', function($rootScope, $state, $translate, $location) {
      return $rootScope.$on('$stateChangeSuccess', function(ev, toState, toParams) {
        var changeLang, lang;
        lang = toParams.locale;
        changeLang = 'en';
        $translate.use(lang);
        if (lang === 'en') {
          changeLang = 'fr';
        }
        $rootScope.changeLang = changeLang;
        $rootScope.changeLangURL = $location.absUrl().replace(lang, changeLang);
      });
    }
  ]);

  angular.module('dummPortfolio.config').config([
    '$translateProvider', function($translateProvider) {
      var I18N_EN_LOCALES, I18N_FR_LOCALES;
      I18N_EN_LOCALES = {
        TEMPLATES: {
          NAV: {
            HOME: 'Home',
            PROJECTS: 'Projects',
            CONTACT: 'Contact',
            RESUME: 'Résumé',
            MY_LINKEDIN_PROFILE: 'My LinkedIn profile',
            MY_GITHUB_ACCOUNT: 'My GitHub account',
            MY_TWITTER_ACCOUNT: 'My twitter account',
            CHANGE_LANG: 'Voir ce site en Français'
          },
          FOOTER: {
            DESCRIPTION: 'This portfolio has been crafted with ♥ thanks to <a href="https://angularjs.org/" rel="nofollow" target="_blank">AngularJS</a> and <a href="http://yeoman.io/" rel="nofollow" target="_blank">Yeoman</a>. Its code is available on <a href="https://github.com/pbellon/dummPortfolio" rel="nofollow" target="_blank">GitHub</a>.'
          },
          PROJECTS: {
            LIST: {
              TITLE: 'Projects',
              DETAILS_OF: 'More details about {{ title }}',
              INTRO: 'As a developer at <a target="_blank" rel="nofollow" href="http://jplusplus.org" title="Journalism++ website">Journalism++</a> I worked\non many data-driven journalism projects. It made me realise the key role\nof data in our world and the importance of using it to tell engaging\nstories.\n\nHere are some projects I proudly took part in.'
            },
            DETAIL: {
              GO_BACK_TO_PROJECTS: 'Go back to projects',
              GITHUB_OF: 'Github homepage of',
              PROJECT_GITHUB: 'See it on Github',
              SEE_WEBSITE: 'See {{title}} website'
            }
          },
          HOME: {
            META_TITLE: 'Web Engineer',
            PROJECTS_BTN: 'See my projects',
            CONTACT_BTN: 'Hire me!',
            TITLE: 'I\'m Pierre Bellon, I\'m a web engineer',
            INTRO: 'I love to craft data-driven tools and websites.\nI\'m confortable with building RESTful API architectures and advanced user\ninterfaces on <a href="#!/en/projects">meaningful projects</a>.'
          },
          CONTACT: {
            TITLE: 'Say hello!',
            INTRO: 'I\'m currently looking some new projects to took part in.<br>\nI\'m particuraly interested in projects that meet one or more of the following aspects/topics.',
            CONTACT_ME: 'Let me know by  <a href=\'{{ email }}\'>email</a> if you want me to work\nat your side or if you have a project you want to realise.',
            INTERESTS: {
              OSS: 'Open Source',
              PUB: 'Of Public Interest',
              DDJ: '@:MODELS.TAGS.DDJ',
              VIZ: 'Data Visualization'
            }
          }
        },
        MODELS: {
          TAGS: {
            DDJ: 'Data Driven Journalism',
            VIZ: 'Visualization',
            SRS_GAME: 'Serious Game'
          },
          PROJECTS: {
            1: {
              TITLE: 'Detective.io',
              SUBTITLE: 'Structure your investigations',
              DESCRIPTION: 'Detective.io is a tool dedicated to data-driven investigations.\nIts power lies in an advanced interface designed to design, collect & visualize\ncomplex data like social networks data.\n\n<i class="fa fa-trophy"></i> Winner of the "Best story on a single topic" award of [Data Journalism Awards 2014][dja] for the [Migrants Files][tmf] investigation.\n\n[dja]: http://www.globaleditorsnetwork.org/programmes/data-journalism-awards/\n[tmf]: https://www.detective.io/detective/the-migrants-files/'
            },
            2: {
              TITLE: 'SpendingStories',
              SUBTITLE: 'Give meaning to big figures',
              DESCRIPTION: 'What **23 billion** US dollars worth ? That\'s indeed a huge amount\nof money. But *how* huge ?<br/>\nWell, with that you could afford yourself **WhatsApp** or **47%** of the **UK defense budget**.\n\nBig spendings or figures are abstract things that have no meaning\nwhen you separate them from their context. *SpendingStories* wants\nto give meaning to big and small figures by using public spending\nstories as a context.'
            },
            3: {
              TITLE: 'Arte: World of Work',
              SUBTITLE: 'A study of the world of work',
              DESCRIPTION: 'Built around a playful survey this application wants to provide\ntools to young Europeeans to improve their perception of the world\nof work and to compare their opinions with the ones of their generation.\n\nThis project is also a socioligical study to check if fact that we\ngive between some questions are met by the answers young Europeeans\ndo. Results are now available and it gather more that 10 000'
            },
            4: {
              TITLE: 'Jeu d\'influences - France5',
              SUBTITLE: 'Could you handle the crysis?',
              DESCRIPTION: 'This serious game put you at the head of Habinat, a leader of construction. Everybody see you\nas a succesful entrepeneur, until that night, when your talented right-hand engineer and designer\nof the company\'s main product is found dead, by suicide.\n\nNow you have to face the mediatic storm that is coming, helped by Patrick Luaud, a famous communication\nadvisor, a "spin doctor".<br/>\nWill you do the *right* choices ?\n\n<i class="fa fa-trophy"></i> Best crossmedia piece at [Liege Web Festival - 2014][LWF]\n[LWF]: http://liegewebfest.be/'
            },
            5: {
              TITLE: 'Datawrapper',
              SUBTITLE: 'Data-visualization made easy',
              DESCRIPTION: 'DataWrapper is a tool that allow you to easily create data-visualization'
            },
            6: {
              TITLE: 'Tractatus Tree',
              SUBTITLE: 'Visualizing philosphy',
              DESCRIPTION: 'This project is a personnal experimentation of how we can use a\ndata-driven tools like [D3.js][d3] to explore a Philosophy piece like\nthe Tractatus logico-philosophicus (Logisch-Philosophische Abhandlung\nin its original name).\n\nThis book published in 1921 was written by Ludwig Wittgenstein.\nIts numbered propositions follows a tree structure,(1, then 1.1, 1.2 etc.)\nwhich made me think we could easily visualize it.\n\n[d3]: http://d3js.org/'
            },
            7: {
              TITLE: 'githubers-audience.py',
              SUBTITLE: 'What is your GitHub\'s profile audience ?',
              DESCRIPTION: 'This project is a small Python script wrote during the writing of my\nmemoire called *Is it relevant for a journalistic company to run an open-source project?*.\nIts purpose is to navigate around every repository of one or many given githubers to\nanalyse their audience in the developer community.\n\nThe main goal was to show that running projects in open-source could create new ways of engaging its users and create links in\nthe developer community.\n\nSide chart is available on [google spreedsheet][chart].\n\n[chart]: https://docs.google.com/spreadsheets/d/1gdxK9hJG9go52RKZxplKyi1aAlKrxKqVFU6w8yXZx5s/pubchart?oid=42127376&format=interactive'
            }
          }
        }
      };
      I18N_FR_LOCALES = {
        TEMPLATES: {
          NAV: {
            HOME: 'Acceuil',
            PROJECTS: 'Projets',
            CONTACT: 'Contact',
            RESUME: 'CV (Anglais)',
            MY_LINKEDIN_PROFILE: 'Mon profile LinkedIn',
            MY_GITHUB_ACCOUNT: 'Mon profile GitHub',
            MY_TWITTER_ACCOUNT: 'Suivez moi sur Twitter',
            CHANGE_LANG: 'See this website in English'
          },
          FOOTER: {
            DESCRIPTION: 'Ce portfolio a été créé avec ♥ avec <a href="https://angularjs.org/" rel="nofollow" target="_blank">AngularJS</a> et <a href="http://yeoman.io/" rel="nofollow" target="_blank">Yeoman</a>. Son code est disponible sur <a href="https://github.com/pbellon/dummPortfolio" rel="nofollow" target="_blank">GitHub</a>.'
          },
          PROJECTS: {
            LIST: {
              TITLE: 'Projets',
              DETAILS_OF: 'Détails de {{ title }}',
              INTRO: 'En temps que développeur à <a target="_blank" rel="nofollow" href="http://jplusplus.org" title="Site web de Journalism++">Journalism++</a>\nj\'ai travaillé sur de nombreux projets de journalisme de données. J\'ai pris alors conscience du rôle clé des données dans nos sociétés et\net du subtile équilibre pour les employer dans des contenus éditoriaux à volonté démocratique.\n\nVoici une partie des projets dans lesquels j\'ai eu l\'honneur de participer.'
            },
            DETAIL: {
              GO_BACK_TO_PROJECTS: 'Retour au projets',
              GITHUB_OF: 'Page github de',
              PROJECT_GITHUB: 'Voir sur GitHub',
              SEE_WEBSITE: 'Voir le site web de {{title}}'
            }
          },
          HOME: {
            META_TITLE: 'Ingénieur Web',
            PROJECTS_BTN: 'Voir mes réalisations',
            CONTACT_BTN: 'Embauchez moi !',
            TITLE: 'Je m\'appelle Pierre Bellon, je suis ingénieur web',
            INTRO: 'J\'aime fabriquer des outils et sites web pilotés par les donnés.\nJe suis à l\'aise avec la conception et la réalisation d\'architecture\nweb RESTful et d\'interfaces utilisateur avancées sur des\n<a href="#!/fr/projects">projets à visée démocratiques</a>.'
          },
          CONTACT: {
            TITLE: 'Contactez moi',
            INTRO: 'Je recherche actuellement à participer sur de nouveaux projets. <br>\nJe suis particulièrement intéressé dans les projets rejoignant un\nou plusieurs des sujets/aspects suivants.',
            CONTACT_ME: 'Je reste joignable par <a href=\'{{ email }}\'>courriel</a> si vous souhaitez que je travail à vos côtés ou réaliser un projet avec ma participation.',
            INTERESTS: {
              OSS: 'Open Source',
              PUB: 'D\'intérêt public',
              DDJ: '@:MODELS.TAGS.DDJ',
              VIZ: 'Visualisation de données'
            }
          }
        },
        MODELS: {
          TAGS: {
            DDJ: 'Journalisme de données',
            VIZ: 'Visualisation'
          },
          PROJECTS: {
            1: {
              TITLE: 'Detective.io',
              SUBTITLE: 'Structurez vos enquêtes',
              DESCRIPTION: 'Detective.io est un outil dédié aux enquêtes pilotées par les données.\nSa puissance repose sur son interface évoluée permettant de concevoir, collecter et\nvisualiser des données complexes telle que peuvent l\'être les données sociales en réseau.\n\n<i class="fa fa-trophy"></i> Gagnant du prix "Best story on a single topic" des\n    [Data Journalism Awards 2014][dja] pour l\'enquête [Migrants Files][tmf].\n\n[dja]: http://www.globaleditorsnetwork.org/programmes/data-journalism-awards/\n[tmf]: https://www.detective.io/detective/the-migrants-files/'
            },
            2: {
              TITLE: 'SpendingStories',
              SUBTITLE: 'Donner du sens aux grands montants',
              DESCRIPTION: 'Que valent **23 milliards** de dollars étasuniens ?\nOn se doute qu\'il s\'agit d\'un montant d\'argent énorme.\nMais énorme *comment* ?<br/>\nEt bien avec ce montant, vous pourriez acheter **WhatsApp** ou bien payer seulement **47%** du **budget de la défense du Royaume-Unis**.\n\nLes grands montants ou grandes dépenses sont des choses abstraites\noù l\'on peut difficilement trouver du sens lorsqu\'on les sépare\nde leur contexte. *SpendingStories* a pour but de redonner du sens\nà tous ces grand nombres en les comparant avec des données publiques\ncomme celle des dépenses étatiques par exemple.'
            },
            3: {
              TITLE: 'Arte: World of Work',
              SUBTITLE: 'Une étude du monde du travail',
              DESCRIPTION: 'Construite autour d\'un sondage ludique, cette application a pour\nbut de donner aux jeunes européens des outils pour enrichir leur\nperception du monde du travail et de situer leur opinions par rapport\naux autres membres de la génération Y.'
            },
            4: {
              TITLE: 'Jeu d\'influences - France5',
              SUBTITLE: 'La gestion de crise dont vous êtes le "héros"',
              DESCRIPTION: 'Ce serious game vous place à la tête de Habinat, une entreprise pionnère de la construction\nde maisons écologiques. Votre carrière est un sans-fautes reconnue des autres. Jusqu\'à cette nuit\noù le corps sans vie de votre bras droit et ingénieur principal est retrouvé après son suicide.\n\nÀ partir de ce moment vous devez faire face à la tempête médiatiquement qui gronde.\nDans cette tache vous serez aidés par Patrick Luaud, un conseiller en communication,\nun "spin doctor".<br/>\nPrendez-vous les *bonnes* décisions ?\n\n<i class="fa fa-trophy"></i> "Meilleure oeuvre transmédia" du [Liege Web Festival - 2014][LWF]\n[LWF]: http://liegewebfest.be/'
            },
            5: {
              TITLE: 'Datawrapper',
              SUBTITLE: 'Les visualisations de données à portée de main',
              DESCRIPTION: 'DataWrapper est un outil permettant de créer simplement des visualisation de données\nà partir de données tabulaires (excel, CSV).\n\nÀ partir d\'un simple copier-coller depuis\nvotre tableur vous pourrez créer des visualisations *efficaces* et *justes* afin\nde pouvoir les insérer sur votre site web/vos articles.'
            },
            6: {
              TITLE: 'Tractatus Tree',
              SUBTITLE: 'Visualisation de données phiolosophiques',
              DESCRIPTION: 'Ce projet est une expérimentation personnelle sur la façon dont\nnous pouvons utiliser des outils pilotés par les données comme [D3.js][d3]\nafin d\'explorer des oeuvre philosophiques telle que le Tractatus Logico Philosophicus\n(Logisch-Philosophische Abhandlung de son titre original).\n\nCe livre publié en 1921 est écrit par Ludwig Wittgenstein, philosophe logicien du 20ème siècle.\nSes propositions numérotées suivent une structure en arbre (1, puis 1.1, 1.2 etc.)\nce qui me fit penser que celles-ci pouvaient facilement être visualisées.\n\n[d3]: http://d3js.org/'
            },
            7: {
              TITLE: 'githubers-audience.py',
              SUBTITLE: 'L\'audience de votre profil GitHub',
              DESCRIPTION: 'Ce projet est un script Python que j\'ai créé durant l\'écriture\nde mon mémoire intitulé *Est-il pertinent pour une entreprise à but\njournalistique de mener un projet open-source ?*.\nSon principe est de naviguer sur l\'ensemble des projets d\'un ou plusieurs\nutilisateurs de GitHub pour analyser l\'audience globale de leurs projets\nau sein de la communauté des développeur.\n\n[chart]: https://docs.google.com/spreadsheets/d/1gdxK9hJG9go52RKZxplKyi1aAlKrxKqVFU6w8yXZx5s/pubchart?oid=42127376&format=interactive'
            }
          }
        }
      };
      $translateProvider.translations('en', I18N_EN_LOCALES);
      $translateProvider.translations('fr', I18N_FR_LOCALES);
      return $translateProvider.preferredLanguage('en');
    }
  ]);

  angular.module('dummPortfolio').run([
    '$rootScope', '$state', '$translate', 'constants.globals', function($rootScope, $state, $translate, GLOBALS) {
      $rootScope.langUsed = $translate.use;
      $rootScope.lang = $translate.use();
      $rootScope.changeLang = function() {
        var use;
        if ($rootScope.lang === 'fr') {
          use = 'en';
        } else {
          use = 'fr';
        }
        $translate.use(use);
        return $rootScope.$broadcast('lang:changed', use);
      };
      $rootScope.$state = $state;
      $rootScope.globals = function() {
        return GLOBALS;
      };
    }
  ]);

  angular.module('dummPortfolio.config').config([
    '$stateProvider', '$urlRouterProvider', '$locationProvider', function($stateProvider, $urlRouterProvider, $locationProvider) {
      $locationProvider.hashPrefix('!');
      $stateProvider.state('portfolio', {
        url: '/{locale}',
        abstract: true,
        template: '<div ui-view></div>'
      }).state('portfolio.home', {
        url: '',
        templateUrl: 'partials/home.html',
        controller: 'HomeCtrl'
      }).state('portfolio.contact', {
        url: '/contact',
        templateUrl: 'partials/contact.html',
        controller: 'ContactCtrl as contact'
      }).state('portfolio.projects', {
        template: '<div ui-view></div>',
        url: '/projects',
        abstract: true,
        resolve: {
          tags: [
            '$stateParams', function(params) {
              if (params.tags) {
                return params.tags.split(',');
              } else {
                return [];
              }
            }
          ],
          projects: [
            'services.projectWrapper', function(wrapper) {
              return wrapper.wrapList();
            }
          ]
        }
      }).state('portfolio.projects.list', {
        url: '?tags',
        templateUrl: 'partials/projects.list.html',
        controller: 'ProjectListCtrl as projects'
      }).state('portfolio.projects.detail', {
        url: '/:id',
        templateUrl: 'partials/projects.detail.html',
        controller: 'ProjectDetailCtrl as project',
        resolve: {
          project: ["projects", "$stateParams", function(projects, $stateParams) {
            return _.findWhere(projects, {
              id: parseInt($stateParams.id)
            });
          }]
        }
      }).state('portfolio.resume', {
        url: '/resume',
        controller: 'ResumeCtrl',
        templateUrl: 'partials/resume.html'
      });
      return $urlRouterProvider.otherwise('/en');
    }
  ]);

  ContactCtrl = (function() {
    function ContactCtrl() {
      this.email = 'mailto:bellon.pierre@gmail.com';
    }

    return ContactCtrl;

  })();

  angular.module('dummPortfolio.controller').controller('ContactCtrl', ContactCtrl);

  HomeCtrl = (function() {
    function HomeCtrl($scope) {
      $scope.hello = 'world';
      console.log('HomeCtrl activated');
    }

    return HomeCtrl;

  })();

  angular.module('dummPortfolio.controller').controller('HomeCtrl', HomeCtrl);

  ProjectDetailCtrl = (function() {
    function ProjectDetailCtrl(translate, scope, state, project) {
      this.translate = translate;
      this.scope = scope;
      this.state = state;
      this.current = project;
      this.translate(this.current.title()).then((function(_this) {
        return function(v) {
          var i18nK;
          i18nK = 'TEMPLATES.PROJECTS.DETAIL.SEE_WEBSITE';
          return _this.translate(i18nK, {
            title: v
          }).then(function(title) {
            _this.scope.seeWebsite = title;
          });
        };
      })(this));
    }

    ProjectDetailCtrl.prototype.searchTag = function(tag) {
      return this.state.go('projects.list', {
        tags: tag
      });
    };

    ProjectDetailCtrl.$inject = ['$translate', '$scope', '$state', 'project'];

    return ProjectDetailCtrl;

  })();

  angular.module('dummPortfolio.controller').controller('ProjectDetailCtrl', ProjectDetailCtrl);

  ProjectListCtrl = (function() {
    function ProjectListCtrl(PROJECTS, selectedTags) {
      this.selectedTags = selectedTags;
      this.selectTag = __bind(this.selectTag, this);
      this.unselectTag = __bind(this.unselectTag, this);
      this.hasSelectedTags = __bind(this.hasSelectedTags, this);
      this.count = __bind(this.count, this);
      this.filteredProjects = __bind(this.filteredProjects, this);
      this.all = __bind(this.all, this);
      this.list = PROJECTS;
    }

    ProjectListCtrl.prototype.all = function() {
      return this.list;
    };

    ProjectListCtrl.prototype.filteredProjects = function() {
      var filtered;
      filtered = _.where(this.all(), (function(_this) {
        return function(project) {
          if (_this.selectedTags.length > 0) {
            return _.every(_this.selectedTags, function(tag) {
              return _.contains(project.tags, tag);
            });
          } else {
            return true;
          }
        };
      })(this));
      return filtered;
    };

    ProjectListCtrl.prototype.count = function() {
      return this.all().length;
    };

    ProjectListCtrl.prototype.hasSelectedTags = function() {
      return this.selectedTags.length > 0;
    };

    ProjectListCtrl.prototype.unselectTag = function(tag) {
      this.selectedTags = _.reject(this.selectedTags, function(v) {
        return v === tag;
      });
      return this.selectedTags;
    };

    ProjectListCtrl.prototype.selectTag = function(tag) {
      if (this.selectedTags.indexOf(tag) === -1) {
        return this.selectedTags.push(tag);
      }
    };

    ProjectListCtrl.$inject = ['projects', 'tags'];

    return ProjectListCtrl;

  })();

  angular.module('dummPortfolio.controller').controller('ProjectListCtrl', ProjectListCtrl);

  ResumeCtrl = (function() {
    function ResumeCtrl(scope, globals, resume) {
      this.scope = scope;
      this.globals = globals;
      this.resume = resume;
      this.scope.email = this.globals.email;
      this.scope.github = this.globals.github;
      this.scope.twitter = this.globals.twitter;
      this.scope.mailtoEmail = 'mailto:' + this.globals.email;
      this.scope.resume = this.resume;
    }

    ResumeCtrl.$inject = ['$scope', 'constants.globals', 'constants.resume'];

    return ResumeCtrl;

  })();

  angular.module('dummPortfolio').controller('ResumeCtrl', ResumeCtrl);

  mod = angular.module('dummPortfolio.directives');

  mod.directive('viewTitle', [
    '$rootScope', function($rootScope) {
      return {
        restrict: 'EA',
        link: function(scope, iElement) {
          var setViewTitle, tagName;
          setViewTitle = function(title) {
            $rootScope.viewTitle = title;
          };
          tagName = iElement[0].tagName.toLowerCase();
          if (tagName === 'view-title' || tagName === 'viewtitle') {
            iElement.remove();
          }
          scope.$watch(function() {
            return iElement.text();
          }, setViewTitle);
          return scope.$on('$destroy', function() {
            return delete $rootScope.viewTitle;
          });
        }
      };
    }
  ]);

  mod.directive('viewHead', function() {
    var head;
    head = angular.element(document.head);
    return {
      restrict: 'A',
      link: function(scope, iElement) {
        head.append(iElement);
        return scope.$on('$destroy', function() {
          return iElement.remove();
        });
      }
    };
  });

  angular.module('dummPortfolio.services').service('services.projectWrapper', [
    'constants.projects', function(PROJECTS) {
      var wrap;
      wrap = function(project) {
        var i18nAttrKey, i18nPrefix;
        i18nPrefix = function(project) {
          return 'MODELS.PROJECTS.' + project.id;
        };
        i18nAttrKey = function(project, ATTR) {
          return i18nPrefix(project) + '.' + ATTR;
        };
        return _.extend(project, {
          title: function() {
            return i18nAttrKey(this, 'TITLE');
          },
          subtitle: function() {
            return i18nAttrKey(this, 'SUBTITLE');
          },
          description: function() {
            return i18nAttrKey(this, 'DESCRIPTION');
          }
        });
      };
      return {
        wrapList: function() {
          return _.map(PROJECTS.all, wrap);
        }
      };
    }
  ]);

}).call(this);
