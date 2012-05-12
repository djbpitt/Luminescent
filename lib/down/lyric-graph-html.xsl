<?xml version="1.0" standalone="no"?>
<!DOCTYPE xsl:stylesheet [
<!ENTITY ldquo '&#x201C;' >
<!ENTITY rdquo '&#x201D;' >
]>

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:x="http://lmnl-markup.org/ns/xLMNL"
  xmlns:svg="http://www.w3.org/2000/svg"
  xmlns:f="http://lmnl-markup.org/ns/xslt/utility"
  xmlns:xlink="http://www.w3.org/1999/xlink" exclude-result-prefixes="#all">

  <xsl:import href="bubbles-svg.xsl"/>

  <xsl:import href="xlmnl-xml.xsl"/>

  <xsl:output method="xhtml"/>

  <xsl:variable name="specs" xmlns="http://lmnl-markup.org/ns/xslt/utility">
    <left-margin>0</left-margin>
    <top-margin>10</top-margin>
    <bottom-margin>10</bottom-margin>
    <background-color>#003300</background-color>
    <title>
      <font-family>sans-serif</font-family>
      <font-size>18</font-size>
      <line-height>30</line-height>
      <indent>220</indent>
      <drop>30</drop>
    </title>
    <styles>
      <ranges color="rosybrown" opacity="0.1">vp</ranges>
      <ranges color="darkorange" opacity="0.1">quatrain</ranges>
      <ranges color="gold" opacity="0.1" stroke="orange">s</ranges>
      <ranges color="white" opacity="0.2">l</ranges>
      <ranges color="yellow" opacity="0.2">phr</ranges>
    </styles>
    <bars indent="10">
      <ranges width="30" indent="0">vp</ranges>
      <ranges width="30" indent="30">quatrain</ranges>
      <ranges width="30" indent="60">l</ranges>
      <ranges width="30" indent="90">phr</ranges>
      <ranges width="30" indent="120">s</ranges>
    </bars>
    <discs indent="150">
      <range label="none">vp</range>
      <range label="none">quatrain</range>
      <range>l</range>
      <range label="left">phr</range>
      <range label="left">s</range>
    </discs>
  </xsl:variable>

  <xsl:template match="/">
    <html xml:lang="en">
      <head>
        <title>Lyric graph</title>
        <meta charset="utf-8"/>
        <script type="text/javascript" src="jquery-1.7.1.min.js">
        <xsl:text> </xsl:text>
        </script>
        <script type="text/javascript">
$(document).ready(function() {
  $('.rangebar').hover(
    function(event) {
      /* scroll to the corresponding span,
         found by @class=this.id */
      $('html, body').stop().animate({
            scrollTop: $('.'+this.id).offset().top - 50
        }, 1000);
        event.preventDefault();
      /* also, light it up */
      $('.'+this.id).addClass('shine');

      },
      function() {$('.'+this.id).removeClass('shine')});
    });
        </script>
        <style type="text/css">
div#text    { margin-left:170px; color: white; font-size: 14pt;
              width:330px }
div.vp      { margin-top: 2ex }
h3.title, h4.author { margin: 0px }
h3.title { border-bottom: thin solid white }
div.lg      { margin-top: 2ex }
p.line      { margin-top: 0px; margin-bottom: 0px; margin-left: 1em; text-indent:-1em }
span:hover  { color: gold }
span.shine  { background-color: lemonchiffon; color: darkgreen }
        </style>
      </head>
      <body style="background-color:{$specs/f:background-color}">
        <xsl:call-template name="bars-svg"/>

        <div id="text">
          <xsl:call-template name="display-lyric"/>
        </div>
        <xsl:call-template name="discs-svg"/>
        
        <!--<div style="display:none">
          <xsl:copy-of select="$sonnet-xml"/>
        </div>-->
      </body>
    </html>
  </xsl:template>

 
  <xsl:template name="bars-svg">
    <svg width="{$specs/f:bars/f:ranges[last()]/
      sum((@width,ancestor-or-self::*/@indent))}"
      height="800" xmlns="http://www.w3.org/2000/svg"
      style="position:fixed; top: 0px">
      <g transform="translate({$specs/f:left-margin} {$specs/f:top-margin})">
        <xsl:apply-templates select="/" mode="draw-bars"/>
      </g>
    </svg>
  </xsl:template>
  
  <xsl:template name="discs-svg">
    <svg width="624" height="800" xmlns="http://www.w3.org/2000/svg"
      style="position:fixed; top: 0px; left: 400px; z-index: -1">
      <g transform="translate({$specs/f:left-margin} {$specs/f:top-margin})">
        <xsl:apply-templates select="/" mode="draw-discs"/>
      </g>
    </svg>
  </xsl:template>
  
  <xsl:variable name="lyric-xml">
    <xsl:apply-templates select="$lmnl-document">
      <xsl:with-param name="elements" tunnel="yes" as="xs:string*"
        select="('poem','meta','vp','l')"/>
    </xsl:apply-templates>
  </xsl:variable>

  <xsl:template name="display-lyric">
    <!--<xsl:copy-of select="$sonnet-xml"/>-->
    <xsl:apply-templates select="$lyric-xml" mode="display"/>
  </xsl:template>

  <xsl:template mode="display" match="poem">
    <xsl:apply-templates mode="display"/>
  </xsl:template>

  <xsl:template mode="display" match="meta">
    <xsl:apply-templates select="@title,@author" mode="display"/>
  </xsl:template>
  
  <xsl:template mode="display" match="@title">
    <h3 class="title">
      <xsl:next-match/>
    </h3>
  </xsl:template>
  
  <xsl:template mode="display" match="@author">
    <h4 class="author">
      <xsl:next-match/>
    </h4>
  </xsl:template>
    
  <xsl:template mode="display" match="sonnet">
    <div class="lg">
      <xsl:apply-templates mode="display"/>
    </div>
  </xsl:template>
  
  <xsl:template mode="display" match="l">
    <p class="line">
      <xsl:apply-templates mode="display"/>
    </p>
  </xsl:template>
  
  <xsl:template mode="display" match="vp">
    <div class="{local-name()}">
      <xsl:apply-templates mode="display"/>
    </div>
  </xsl:template>
  
  <xsl:template match="l/x:span" mode="display">
    <span id="{generate-id(.)}"
      class="{string-join(
      for $r in tokenize(@ranges,'\s+') return replace($r,'^R.','bar'),' ')}">
      <xsl:apply-templates/>
    </span>
  </xsl:template>

  <xsl:template match="x:*" mode="display"/>

  <xsl:template match="x:range[@name='sonnet']" mode="animate"
    xmlns="http://www.w3.org/2000/svg"/>


  <xsl:template match="*" mode="animate" xmlns="http://www.w3.org/2000/svg">
    <xsl:param name="stroke-width" select="1" as="xs:double"/>
    <xsl:param name="fill-opacity" select="0.2" as="xs:double"/>
    <set attributeName="fill-opacity" to="{$fill-opacity + 0.1}"
      begin="{replace(@ID,'^R.','bar')}.mouseover"/>
    <set attributeName="fill-opacity" to="{$fill-opacity}"
      begin="{replace(@ID,'^R.','bar')}.mouseout"/>
    <xsl:for-each select="key('spans-by-range',@ID,$lyric-xml)">
      <set attributeName="fill-opacity" to="{$fill-opacity + 0.1}"
        begin="{generate-id(.)}.mouseover"/>
      <set attributeName="stroke-width" to="{$stroke-width * 2}"
        begin="{generate-id(.)}.mouseover"/>
      <set attributeName="fill-opacity" to="{$fill-opacity}"
        begin="{generate-id(.)}.mouseout"/>
      <set attributeName="stroke-width" to="{$stroke-width}"
        begin="{generate-id(.)}.mouseout"/>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>