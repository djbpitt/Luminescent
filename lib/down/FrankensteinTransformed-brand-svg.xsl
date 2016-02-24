<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://www.w3.org/2000/svg"
    xpath-default-namespace="http://www.w3.org/2000/svg"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:strip-space elements="*"/>
    
    <xsl:output indent="no"/>
    
    <xsl:variable name="viewWidth"  select="number(tokenize(/svg/@viewBox,'\s+')[3])"/>
    <xsl:variable name="viewHeight" select="number(tokenize(/svg/@viewBox,'\s+')[4])"/>
    
    <xsl:template match="svg">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:copy-of select="node()"/>
            <g transform="translate({ $viewWidth - 164 } { $viewHeight - 60 })">
              <xsl:call-template name="brand"/>
            </g>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template name="brand">
        
    <svg viewBox="0 0 720 200" width="144" height="40">
    <desc>
        Credits box with license for Frankenstein Transformed
        Anchored at lower right
    </desc>
    <!--<rect fill="lavender" width="100%" height="100%"/>-->
    <!--
    <g transform="translate(180 100)" font-size="13" text-anchor="start">
        <text>Licensed under a</text>
        <text y="20"><a xlink:href="http://creativecommons.org/licenses/by/4.0/">Creative Commons</a></text>
        <text y="40"><a xlink:href="http://creativecommons.org/licenses/by/4.0/">Attribution 4.0</a></text>
        <text y="60"><a xlink:href="http://creativecommons.org/licenses/by/4.0/">International License</a>.</text>
    </g>
    -->
    <g transform="translate(720 200)">
        <!--<circle cx="0" cy="0" r="5" fill="green"/>-->

        <g transform="translate(-130 -52)"
         font-size="80" font-weight="bold"
         font-family="'Courier', 'Courier 10 Pitch', monospace"
         text-anchor="end">
            <text y="-72">Frankenstein</text>
            <text>Trans formed</text>
        </g>
        <g transform="translate(-120 -172)">
            <!--<image x="0" y="-120" xlink:href="lib/qr-frankensteintransformed.svg"
                width="120" height="120"/>-->

            <svg version="1.1"
              baseProfile="full"
              width="120"
              height="120"
              viewBox="32 32 232 232">
                <desc>QR: http://wendellpiez.com/FrankensteinTransformed</desc>

                <!-- grabbed from https://qrd.by/qr-code-generator-svg
     and modified by hand -->
                <!--<rect width="296" height="296" fill="#ffffff" x="0" y="0"/>-->
                <defs>
                    <rect id="p" width="8" height="8"/>
                </defs>
                <g fill="#000000">
                    <use x="32" y="32" xlink:href="#p"/>
                    <use x="32" y="40" xlink:href="#p"/>
                    <use x="32" y="48" xlink:href="#p"/>
                    <use x="32" y="56" xlink:href="#p"/>
                    <use x="32" y="64" xlink:href="#p"/>
                    <use x="32" y="72" xlink:href="#p"/>
                    <use x="32" y="80" xlink:href="#p"/>
                    <use x="32" y="96" xlink:href="#p"/>
                    <use x="32" y="112" xlink:href="#p"/>
                    <use x="32" y="128" xlink:href="#p"/>
                    <use x="32" y="144" xlink:href="#p"/>
                    <use x="32" y="208" xlink:href="#p"/>
                    <use x="32" y="216" xlink:href="#p"/>
                    <use x="32" y="224" xlink:href="#p"/>
                    <use x="32" y="232" xlink:href="#p"/>
                    <use x="32" y="240" xlink:href="#p"/>
                    <use x="32" y="248" xlink:href="#p"/>
                    <use x="32" y="256" xlink:href="#p"/>
                    <use x="40" y="32" xlink:href="#p"/>
                    <use x="40" y="80" xlink:href="#p"/>
                    <use x="40" y="96" xlink:href="#p"/>
                    <use x="40" y="128" xlink:href="#p"/>
                    <use x="40" y="136" xlink:href="#p"/>
                    <use x="40" y="144" xlink:href="#p"/>
                    <use x="40" y="152" xlink:href="#p"/>
                    <use x="40" y="168" xlink:href="#p"/>
                    <use x="40" y="208" xlink:href="#p"/>
                    <use x="40" y="256" xlink:href="#p"/>
                    <use x="48" y="32" xlink:href="#p"/>
                    <use x="48" y="48" xlink:href="#p"/>
                    <use x="48" y="56" xlink:href="#p"/>
                    <use x="48" y="64" xlink:href="#p"/>
                    <use x="48" y="80" xlink:href="#p"/>
                    <use x="48" y="104" xlink:href="#p"/>
                    <use x="48" y="120" xlink:href="#p"/>
                    <use x="48" y="128" xlink:href="#p"/>
                    <use x="48" y="136" xlink:href="#p"/>
                    <use x="48" y="168" xlink:href="#p"/>
                    <use x="48" y="192" xlink:href="#p"/>
                    <use x="48" y="208" xlink:href="#p"/>
                    <use x="48" y="224" xlink:href="#p"/>
                    <use x="48" y="232" xlink:href="#p"/>
                    <use x="48" y="240" xlink:href="#p"/>
                    <use x="48" y="256" xlink:href="#p"/>
                    <use x="56" y="32" xlink:href="#p"/>
                    <use x="56" y="48" xlink:href="#p"/>
                    <use x="56" y="56" xlink:href="#p"/>
                    <use x="56" y="64" xlink:href="#p"/>
                    <use x="56" y="80" xlink:href="#p"/>
                    <use x="56" y="96" xlink:href="#p"/>
                    <use x="56" y="120" xlink:href="#p"/>
                    <use x="56" y="136" xlink:href="#p"/>
                    <use x="56" y="152" xlink:href="#p"/>
                    <use x="56" y="176" xlink:href="#p"/>
                    <use x="56" y="184" xlink:href="#p"/>
                    <use x="56" y="208" xlink:href="#p"/>
                    <use x="56" y="224" xlink:href="#p"/>
                    <use x="56" y="232" xlink:href="#p"/>
                    <use x="56" y="240" xlink:href="#p"/>
                    <use x="56" y="256" xlink:href="#p"/>
                    <use x="64" y="32" xlink:href="#p"/>
                    <use x="64" y="48" xlink:href="#p"/>
                    <use x="64" y="56" xlink:href="#p"/>
                    <use x="64" y="64" xlink:href="#p"/>
                    <use x="64" y="80" xlink:href="#p"/>
                    <use x="64" y="96" xlink:href="#p"/>
                    <use x="64" y="104" xlink:href="#p"/>
                    <use x="64" y="136" xlink:href="#p"/>
                    <use x="64" y="144" xlink:href="#p"/>
                    <use x="64" y="152" xlink:href="#p"/>
                    <use x="64" y="160" xlink:href="#p"/>
                    <use x="64" y="176" xlink:href="#p"/>
                    <use x="64" y="192" xlink:href="#p"/>
                    <use x="64" y="208" xlink:href="#p"/>
                    <use x="64" y="224" xlink:href="#p"/>
                    <use x="64" y="232" xlink:href="#p"/>
                    <use x="64" y="240" xlink:href="#p"/>
                    <use x="64" y="256" xlink:href="#p"/>
                    <use x="72" y="32" xlink:href="#p"/>
                    <use x="72" y="80" xlink:href="#p"/>
                    <use x="72" y="104" xlink:href="#p"/>
                    <use x="72" y="112" xlink:href="#p"/>
                    <use x="72" y="120" xlink:href="#p"/>
                    <use x="72" y="136" xlink:href="#p"/>
                    <use x="72" y="184" xlink:href="#p"/>
                    <use x="72" y="208" xlink:href="#p"/>
                    <use x="72" y="256" xlink:href="#p"/>
                    <use x="80" y="32" xlink:href="#p"/>
                    <use x="80" y="40" xlink:href="#p"/>
                    <use x="80" y="48" xlink:href="#p"/>
                    <use x="80" y="56" xlink:href="#p"/>
                    <use x="80" y="64" xlink:href="#p"/>
                    <use x="80" y="72" xlink:href="#p"/>
                    <use x="80" y="80" xlink:href="#p"/>
                    <use x="80" y="96" xlink:href="#p"/>
                    <use x="80" y="112" xlink:href="#p"/>
                    <use x="80" y="128" xlink:href="#p"/>
                    <use x="80" y="144" xlink:href="#p"/>
                    <use x="80" y="160" xlink:href="#p"/>
                    <use x="80" y="176" xlink:href="#p"/>
                    <use x="80" y="192" xlink:href="#p"/>
                    <use x="80" y="208" xlink:href="#p"/>
                    <use x="80" y="216" xlink:href="#p"/>
                    <use x="80" y="224" xlink:href="#p"/>
                    <use x="80" y="232" xlink:href="#p"/>
                    <use x="80" y="240" xlink:href="#p"/>
                    <use x="80" y="248" xlink:href="#p"/>
                    <use x="80" y="256" xlink:href="#p"/>
                    <use x="88" y="120" xlink:href="#p"/>
                    <use x="88" y="128" xlink:href="#p"/>
                    <use x="88" y="144" xlink:href="#p"/>
                    <use x="88" y="160" xlink:href="#p"/>
                    <use x="88" y="168" xlink:href="#p"/>
                    <use x="88" y="176" xlink:href="#p"/>
                    <use x="96" y="32" xlink:href="#p"/>
                    <use x="96" y="80" xlink:href="#p"/>
                    <use x="96" y="88" xlink:href="#p"/>
                    <use x="96" y="112" xlink:href="#p"/>
                    <use x="96" y="120" xlink:href="#p"/>
                    <use x="96" y="128" xlink:href="#p"/>
                    <use x="96" y="144" xlink:href="#p"/>
                    <use x="96" y="160" xlink:href="#p"/>
                    <use x="96" y="176" xlink:href="#p"/>
                    <use x="96" y="184" xlink:href="#p"/>
                    <use x="96" y="200" xlink:href="#p"/>
                    <use x="96" y="224" xlink:href="#p"/>
                    <use x="96" y="232" xlink:href="#p"/>
                    <use x="96" y="248" xlink:href="#p"/>
                    <use x="96" y="256" xlink:href="#p"/>
                    <use x="104" y="40" xlink:href="#p"/>
                    <use x="104" y="64" xlink:href="#p"/>
                    <use x="104" y="96" xlink:href="#p"/>
                    <use x="104" y="104" xlink:href="#p"/>
                    <use x="104" y="120" xlink:href="#p"/>
                    <use x="104" y="128" xlink:href="#p"/>
                    <use x="104" y="136" xlink:href="#p"/>
                    <use x="104" y="144" xlink:href="#p"/>
                    <use x="104" y="160" xlink:href="#p"/>
                    <use x="104" y="176" xlink:href="#p"/>
                    <use x="104" y="192" xlink:href="#p"/>
                    <use x="104" y="200" xlink:href="#p"/>
                    <use x="104" y="208" xlink:href="#p"/>
                    <use x="104" y="216" xlink:href="#p"/>
                    <use x="104" y="224" xlink:href="#p"/>
                    <use x="112" y="32" xlink:href="#p"/>
                    <use x="112" y="40" xlink:href="#p"/>
                    <use x="112" y="48" xlink:href="#p"/>
                    <use x="112" y="72" xlink:href="#p"/>
                    <use x="112" y="80" xlink:href="#p"/>
                    <use x="112" y="88" xlink:href="#p"/>
                    <use x="112" y="96" xlink:href="#p"/>
                    <use x="112" y="112" xlink:href="#p"/>
                    <use x="112" y="120" xlink:href="#p"/>
                    <use x="112" y="160" xlink:href="#p"/>
                    <use x="112" y="168" xlink:href="#p"/>
                    <use x="112" y="184" xlink:href="#p"/>
                    <use x="112" y="192" xlink:href="#p"/>
                    <use x="112" y="224" xlink:href="#p"/>
                    <use x="112" y="232" xlink:href="#p"/>
                    <use x="112" y="248" xlink:href="#p"/>
                    <use x="120" y="32" xlink:href="#p"/>
                    <use x="120" y="72" xlink:href="#p"/>
                    <use x="120" y="104" xlink:href="#p"/>
                    <use x="120" y="112" xlink:href="#p"/>
                    <use x="120" y="120" xlink:href="#p"/>
                    <use x="120" y="136" xlink:href="#p"/>
                    <use x="120" y="152" xlink:href="#p"/>
                    <use x="120" y="160" xlink:href="#p"/>
                    <use x="120" y="176" xlink:href="#p"/>
                    <use x="120" y="184" xlink:href="#p"/>
                    <use x="120" y="192" xlink:href="#p"/>
                    <use x="120" y="200" xlink:href="#p"/>
                    <use x="120" y="208" xlink:href="#p"/>
                    <use x="120" y="224" xlink:href="#p"/>
                    <use x="120" y="232" xlink:href="#p"/>
                    <use x="120" y="248" xlink:href="#p"/>
                    <use x="120" y="256" xlink:href="#p"/>
                    <use x="128" y="32" xlink:href="#p"/>
                    <use x="128" y="40" xlink:href="#p"/>
                    <use x="128" y="56" xlink:href="#p"/>
                    <use x="128" y="80" xlink:href="#p"/>
                    <use x="128" y="96" xlink:href="#p"/>
                    <use x="128" y="128" xlink:href="#p"/>
                    <use x="128" y="144" xlink:href="#p"/>
                    <use x="128" y="152" xlink:href="#p"/>
                    <use x="128" y="192" xlink:href="#p"/>
                    <use x="128" y="208" xlink:href="#p"/>
                    <use x="128" y="224" xlink:href="#p"/>
                    <use x="128" y="248" xlink:href="#p"/>
                    <use x="136" y="32" xlink:href="#p"/>
                    <use x="136" y="40" xlink:href="#p"/>
                    <use x="136" y="48" xlink:href="#p"/>
                    <use x="136" y="56" xlink:href="#p"/>
                    <use x="136" y="64" xlink:href="#p"/>
                    <use x="136" y="88" xlink:href="#p"/>
                    <use x="136" y="104" xlink:href="#p"/>
                    <use x="136" y="112" xlink:href="#p"/>
                    <use x="136" y="128" xlink:href="#p"/>
                    <use x="136" y="136" xlink:href="#p"/>
                    <use x="136" y="144" xlink:href="#p"/>
                    <use x="136" y="160" xlink:href="#p"/>
                    <use x="136" y="184" xlink:href="#p"/>
                    <use x="136" y="256" xlink:href="#p"/>
                    <use x="144" y="32" xlink:href="#p"/>
                    <use x="144" y="48" xlink:href="#p"/>
                    <use x="144" y="64" xlink:href="#p"/>
                    <use x="144" y="80" xlink:href="#p"/>
                    <use x="144" y="96" xlink:href="#p"/>
                    <use x="144" y="104" xlink:href="#p"/>
                    <use x="144" y="144" xlink:href="#p"/>
                    <use x="144" y="152" xlink:href="#p"/>
                    <use x="144" y="168" xlink:href="#p"/>
                    <use x="144" y="176" xlink:href="#p"/>
                    <use x="144" y="184" xlink:href="#p"/>
                    <use x="144" y="192" xlink:href="#p"/>
                    <use x="144" y="200" xlink:href="#p"/>
                    <use x="144" y="208" xlink:href="#p"/>
                    <use x="144" y="216" xlink:href="#p"/>
                    <use x="144" y="232" xlink:href="#p"/>
                    <use x="144" y="240" xlink:href="#p"/>
                    <use x="144" y="248" xlink:href="#p"/>
                    <use x="152" y="48" xlink:href="#p"/>
                    <use x="152" y="88" xlink:href="#p"/>
                    <use x="152" y="96" xlink:href="#p"/>
                    <use x="152" y="104" xlink:href="#p"/>
                    <use x="152" y="112" xlink:href="#p"/>
                    <use x="152" y="120" xlink:href="#p"/>
                    <use x="152" y="136" xlink:href="#p"/>
                    <use x="152" y="144" xlink:href="#p"/>
                    <use x="152" y="160" xlink:href="#p"/>
                    <use x="152" y="168" xlink:href="#p"/>
                    <use x="152" y="176" xlink:href="#p"/>
                    <use x="152" y="184" xlink:href="#p"/>
                    <use x="152" y="200" xlink:href="#p"/>
                    <use x="152" y="208" xlink:href="#p"/>
                    <use x="152" y="216" xlink:href="#p"/>
                    <use x="152" y="232" xlink:href="#p"/>
                    <use x="152" y="240" xlink:href="#p"/>
                    <use x="152" y="256" xlink:href="#p"/>
                    <use x="160" y="64" xlink:href="#p"/>
                    <use x="160" y="80" xlink:href="#p"/>
                    <use x="160" y="128" xlink:href="#p"/>
                    <use x="160" y="136" xlink:href="#p"/>
                    <use x="160" y="192" xlink:href="#p"/>
                    <use x="160" y="224" xlink:href="#p"/>
                    <use x="160" y="232" xlink:href="#p"/>
                    <use x="160" y="248" xlink:href="#p"/>
                    <use x="168" y="40" xlink:href="#p"/>
                    <use x="168" y="56" xlink:href="#p"/>
                    <use x="168" y="64" xlink:href="#p"/>
                    <use x="168" y="96" xlink:href="#p"/>
                    <use x="168" y="104" xlink:href="#p"/>
                    <use x="168" y="120" xlink:href="#p"/>
                    <use x="168" y="136" xlink:href="#p"/>
                    <use x="168" y="216" xlink:href="#p"/>
                    <use x="168" y="240" xlink:href="#p"/>
                    <use x="176" y="32" xlink:href="#p"/>
                    <use x="176" y="48" xlink:href="#p"/>
                    <use x="176" y="64" xlink:href="#p"/>
                    <use x="176" y="72" xlink:href="#p"/>
                    <use x="176" y="80" xlink:href="#p"/>
                    <use x="176" y="104" xlink:href="#p"/>
                    <use x="176" y="136" xlink:href="#p"/>
                    <use x="176" y="160" xlink:href="#p"/>
                    <use x="176" y="168" xlink:href="#p"/>
                    <use x="176" y="200" xlink:href="#p"/>
                    <use x="176" y="216" xlink:href="#p"/>
                    <use x="176" y="240" xlink:href="#p"/>
                    <use x="176" y="248" xlink:href="#p"/>
                    <use x="184" y="40" xlink:href="#p"/>
                    <use x="184" y="56" xlink:href="#p"/>
                    <use x="184" y="64" xlink:href="#p"/>
                    <use x="184" y="88" xlink:href="#p"/>
                    <use x="184" y="96" xlink:href="#p"/>
                    <use x="184" y="104" xlink:href="#p"/>
                    <use x="184" y="144" xlink:href="#p"/>
                    <use x="184" y="168" xlink:href="#p"/>
                    <use x="184" y="176" xlink:href="#p"/>
                    <use x="184" y="184" xlink:href="#p"/>
                    <use x="184" y="208" xlink:href="#p"/>
                    <use x="184" y="216" xlink:href="#p"/>
                    <use x="184" y="224" xlink:href="#p"/>
                    <use x="184" y="232" xlink:href="#p"/>
                    <use x="184" y="256" xlink:href="#p"/>
                    <use x="192" y="32" xlink:href="#p"/>
                    <use x="192" y="40" xlink:href="#p"/>
                    <use x="192" y="72" xlink:href="#p"/>
                    <use x="192" y="80" xlink:href="#p"/>
                    <use x="192" y="128" xlink:href="#p"/>
                    <use x="192" y="152" xlink:href="#p"/>
                    <use x="192" y="168" xlink:href="#p"/>
                    <use x="192" y="176" xlink:href="#p"/>
                    <use x="192" y="192" xlink:href="#p"/>
                    <use x="192" y="200" xlink:href="#p"/>
                    <use x="192" y="208" xlink:href="#p"/>
                    <use x="192" y="216" xlink:href="#p"/>
                    <use x="192" y="224" xlink:href="#p"/>
                    <use x="192" y="232" xlink:href="#p"/>
                    <use x="192" y="240" xlink:href="#p"/>
                    <use x="192" y="256" xlink:href="#p"/>
                    <use x="200" y="120" xlink:href="#p"/>
                    <use x="200" y="192" xlink:href="#p"/>
                    <use x="200" y="224" xlink:href="#p"/>
                    <use x="200" y="232" xlink:href="#p"/>
                    <use x="200" y="240" xlink:href="#p"/>
                    <use x="200" y="248" xlink:href="#p"/>
                    <use x="208" y="32" xlink:href="#p"/>
                    <use x="208" y="40" xlink:href="#p"/>
                    <use x="208" y="48" xlink:href="#p"/>
                    <use x="208" y="56" xlink:href="#p"/>
                    <use x="208" y="64" xlink:href="#p"/>
                    <use x="208" y="72" xlink:href="#p"/>
                    <use x="208" y="80" xlink:href="#p"/>
                    <use x="208" y="96" xlink:href="#p"/>
                    <use x="208" y="120" xlink:href="#p"/>
                    <use x="208" y="128" xlink:href="#p"/>
                    <use x="208" y="136" xlink:href="#p"/>
                    <use x="208" y="176" xlink:href="#p"/>
                    <use x="208" y="192" xlink:href="#p"/>
                    <use x="208" y="208" xlink:href="#p"/>
                    <use x="208" y="224" xlink:href="#p"/>
                    <use x="208" y="248" xlink:href="#p"/>
                    <use x="216" y="32" xlink:href="#p"/>
                    <use x="216" y="80" xlink:href="#p"/>
                    <use x="216" y="104" xlink:href="#p"/>
                    <use x="216" y="136" xlink:href="#p"/>
                    <use x="216" y="152" xlink:href="#p"/>
                    <use x="216" y="160" xlink:href="#p"/>
                    <use x="216" y="168" xlink:href="#p"/>
                    <use x="216" y="184" xlink:href="#p"/>
                    <use x="216" y="192" xlink:href="#p"/>
                    <use x="216" y="224" xlink:href="#p"/>
                    <use x="216" y="232" xlink:href="#p"/>
                    <use x="216" y="240" xlink:href="#p"/>
                    <use x="216" y="248" xlink:href="#p"/>
                    <use x="224" y="32" xlink:href="#p"/>
                    <use x="224" y="48" xlink:href="#p"/>
                    <use x="224" y="56" xlink:href="#p"/>
                    <use x="224" y="64" xlink:href="#p"/>
                    <use x="224" y="80" xlink:href="#p"/>
                    <use x="224" y="104" xlink:href="#p"/>
                    <use x="224" y="120" xlink:href="#p"/>
                    <use x="224" y="136" xlink:href="#p"/>
                    <use x="224" y="168" xlink:href="#p"/>
                    <use x="224" y="184" xlink:href="#p"/>
                    <use x="224" y="192" xlink:href="#p"/>
                    <use x="224" y="200" xlink:href="#p"/>
                    <use x="224" y="208" xlink:href="#p"/>
                    <use x="224" y="216" xlink:href="#p"/>
                    <use x="224" y="224" xlink:href="#p"/>
                    <use x="224" y="240" xlink:href="#p"/>
                    <use x="224" y="256" xlink:href="#p"/>
                    <use x="232" y="32" xlink:href="#p"/>
                    <use x="232" y="48" xlink:href="#p"/>
                    <use x="232" y="56" xlink:href="#p"/>
                    <use x="232" y="64" xlink:href="#p"/>
                    <use x="232" y="80" xlink:href="#p"/>
                    <use x="232" y="136" xlink:href="#p"/>
                    <use x="232" y="144" xlink:href="#p"/>
                    <use x="232" y="168" xlink:href="#p"/>
                    <use x="232" y="184" xlink:href="#p"/>
                    <use x="232" y="192" xlink:href="#p"/>
                    <use x="232" y="200" xlink:href="#p"/>
                    <use x="232" y="208" xlink:href="#p"/>
                    <use x="232" y="216" xlink:href="#p"/>
                    <use x="232" y="248" xlink:href="#p"/>
                    <use x="232" y="256" xlink:href="#p"/>
                    <use x="240" y="32" xlink:href="#p"/>
                    <use x="240" y="48" xlink:href="#p"/>
                    <use x="240" y="56" xlink:href="#p"/>
                    <use x="240" y="64" xlink:href="#p"/>
                    <use x="240" y="80" xlink:href="#p"/>
                    <use x="240" y="104" xlink:href="#p"/>
                    <use x="240" y="112" xlink:href="#p"/>
                    <use x="240" y="144" xlink:href="#p"/>
                    <use x="240" y="152" xlink:href="#p"/>
                    <use x="240" y="168" xlink:href="#p"/>
                    <use x="240" y="184" xlink:href="#p"/>
                    <use x="240" y="192" xlink:href="#p"/>
                    <use x="240" y="232" xlink:href="#p"/>
                    <use x="240" y="240" xlink:href="#p"/>
                    <use x="240" y="248" xlink:href="#p"/>
                    <use x="248" y="32" xlink:href="#p"/>
                    <use x="248" y="80" xlink:href="#p"/>
                    <use x="248" y="104" xlink:href="#p"/>
                    <use x="248" y="136" xlink:href="#p"/>
                    <use x="248" y="168" xlink:href="#p"/>
                    <use x="248" y="192" xlink:href="#p"/>
                    <use x="248" y="224" xlink:href="#p"/>
                    <use x="248" y="232" xlink:href="#p"/>
                    <use x="248" y="240" xlink:href="#p"/>
                    <use x="256" y="32" xlink:href="#p"/>
                    <use x="256" y="40" xlink:href="#p"/>
                    <use x="256" y="48" xlink:href="#p"/>
                    <use x="256" y="56" xlink:href="#p"/>
                    <use x="256" y="64" xlink:href="#p"/>
                    <use x="256" y="72" xlink:href="#p"/>
                    <use x="256" y="80" xlink:href="#p"/>
                    <use x="256" y="96" xlink:href="#p"/>
                    <use x="256" y="120" xlink:href="#p"/>
                    <use x="256" y="128" xlink:href="#p"/>
                    <use x="256" y="136" xlink:href="#p"/>
                    <use x="256" y="144" xlink:href="#p"/>
                    <use x="256" y="152" xlink:href="#p"/>
                    <use x="256" y="176" xlink:href="#p"/>
                    <use x="256" y="224" xlink:href="#p"/>
                    <use x="256" y="232" xlink:href="#p"/>
                    <use x="256" y="240" xlink:href="#p"/>
                    <use x="256" y="248" xlink:href="#p"/>
                </g>
            </svg>
        </g>

        <g transform="translate(-130 -12)"
         font-size="25"
         font-family="'Noto Sans', 'Trebuchet MS', sans-serif"
         text-anchor="end">
            <a xlink:href="http://wendellpiez.com/FrankensteinTransformed">
                <text>http://wendellpiez.com/FrankensteinTransformed</text>
            </a>
        </g>
        <g transform="translate(-120 -42)">
            <a xlink:href="http://creativecommons.org/licenses/by/4.0/">
                <!--<image x="0" y="0" xlink:href="lib/by.svg" width="120" height="42"/>-->
                <svg 
                 width="120"
                 height="42"
                 id="svg2759">
                    <defs id="defs2761"/>
                    
                    
                    <g id="layer1">
                        <g transform="matrix(0.9937728,0,0,0.9936696,-177.69267,6.25128e-7)"
                     id="g260">
                            <path id="path3817_1_"
                           d="M 181.96579,0.51074 L 296.02975,0.71338 C 297.6235,0.71338 299.04733,0.47705 299.04733,3.89404 L 298.90768,41.46093 L 179.08737,41.46093 L 179.08737,3.75439 C 179.08737,2.06934 179.25046,0.51074 181.96579,0.51074 z"
                           style="fill:#aab2ab"/>
                            
                            <path d="M 297.29636,0 L 181.06736,0 C 179.82078,0 178.80613,1.01416 178.80613,2.26074 L 178.80613,41.75732 C 178.80613,42.03906 179.03513,42.26757 179.31687,42.26757 L 299.04734,42.26757 C 299.32908,42.26757 299.55808,42.03905 299.55808,41.75732 L 299.55808,2.26074 C 299.55807,1.01416 298.54343,0 297.29636,0 z M 181.06735,1.02148 L 297.29635,1.02148 C 297.98043,1.02148 298.53658,1.57714 298.53658,2.26074 C 298.53658,2.26074 298.53658,18.20898 298.53658,29.71045 L 215.19234,29.71045 C 212.14742,35.21631 206.28121,38.95459 199.54879,38.95459 C 192.81344,38.95459 186.94869,35.21973 183.90524,29.71045 L 179.8276,29.71045 C 179.8276,18.20899 179.8276,2.26074 179.8276,2.26074 C 179.82761,1.57715 180.38376,1.02148 181.06735,1.02148 z"
                           id="path263"/>
                            
                            <g enable-background="new    " id="g265">
                                <path d="M 253.07761,32.95605 C 253.39499,32.95605 253.68503,32.98437 253.94773,33.04003 C 254.20945,33.09569 254.43308,33.18749 254.62058,33.31542 C 254.8071,33.44237 254.95261,33.6123 255.05515,33.82323 C 255.15769,34.03514 255.20945,34.29589 255.20945,34.60741 C 255.20945,34.94335 255.13328,35.22264 254.97996,35.44628 C 254.82762,35.67089 254.60105,35.85351 254.30223,35.99706 C 254.71434,36.11522 255.02196,36.32226 255.22508,36.61815 C 255.4282,36.91404 255.52977,37.27049 255.52977,37.68749 C 255.52977,38.02343 255.46434,38.31444 255.33348,38.56054 C 255.20262,38.80566 255.02586,39.00683 254.80516,39.1621 C 254.58348,39.31835 254.33055,39.43358 254.04735,39.5078 C 253.76317,39.583 253.47215,39.6201 253.17235,39.6201 L 249.936,39.6201 L 249.936,32.95604 L 253.07761,32.95604 L 253.07761,32.95605 z M 252.89011,35.65137 C 253.15183,35.65137 253.36667,35.58887 253.53562,35.46485 C 253.70359,35.34083 253.78757,35.13965 253.78757,34.86036 C 253.78757,34.70509 253.75925,34.57716 253.70359,34.47852 C 253.64695,34.37891 253.57273,34.30176 253.47898,34.24512 C 253.38523,34.18946 253.27781,34.15039 253.15671,34.12891 C 253.03561,34.10743 252.90866,34.09668 252.77878,34.09668 L 251.40476,34.09668 L 251.40476,35.65137 L 252.89011,35.65137 z M 252.97604,38.47949 C 253.11959,38.47949 253.25631,38.46582 253.38717,38.4375 C 253.51803,38.40918 253.63326,38.3623 253.73385,38.29785 C 253.83346,38.23242 253.91256,38.14355 253.97213,38.03125 C 254.0317,37.91992 254.061,37.77637 254.061,37.60254 C 254.061,37.26074 253.96432,37.0166 253.77096,36.87012 C 253.5776,36.72461 253.32174,36.65137 253.00436,36.65137 L 251.40475,36.65137 L 251.40475,38.47949 L 252.97604,38.47949 z"
                              id="path267"
                              style="fill:#ffffff"/>
                                
                                <path d="M 255.78854,32.95605 L 257.43209,32.95605 L 258.99264,35.58789 L 260.54342,32.95605 L 262.17721,32.95605 L 259.70358,37.0625 L 259.70358,39.62012 L 258.23483,39.62012 L 258.23483,37.02539 L 255.78854,32.95605 z"
                              id="path269"
                              style="fill:#ffffff"/>
                                
                            </g>
                            
                            <g id="g5908_1_"
                        transform="matrix(0.872921,0,0,0.872921,50.12536,143.2144)">
                                
                                <path id="path5906_1_"
                              d="M 186.90065,-141.46002 C 186.90623,-132.77923 179.87279,-125.73852 171.19257,-125.73291 C 162.51235,-125.72736 155.47051,-132.76025 155.46547,-141.44098 C 155.46547,-141.44714 155.46547,-141.45331 155.46547,-141.46002 C 155.46043,-150.14081 162.49333,-157.18152 171.17355,-157.18658 C 179.8549,-157.19213 186.89561,-150.15924 186.90065,-141.47845 C 186.90065,-141.4729 186.90065,-141.46619 186.90065,-141.46002 z"
                              style="fill:#ffffff"/>
                                
                                <g id="g5706_1_" transform="translate(-289.6157,99.0653)">
                                    <path id="path5708_1_"
                                 d="M 473.57574,-253.32751 C 477.06115,-249.8421 478.80413,-245.5736 478.80413,-240.52532 C 478.80413,-235.47594 477.09136,-231.25329 473.66582,-227.85741 C 470.03051,-224.28081 465.734,-222.49309 460.77635,-222.49309 C 455.87858,-222.49309 451.65648,-224.26628 448.11122,-227.81261 C 444.56541,-231.35845 442.79277,-235.59563 442.79277,-240.52532 C 442.79277,-245.45391 444.56541,-249.7213 448.11122,-253.32751 C 451.56642,-256.81402 455.7885,-258.557 460.77635,-258.557 C 465.82465,-258.55701 470.09039,-256.81403 473.57574,-253.32751 z M 450.45776,-250.98267 C 447.51104,-248.00629 446.03823,-244.51978 446.03823,-240.52033 C 446.03823,-236.52198 447.49651,-233.06507 450.41247,-230.14966 C 453.32897,-227.23316 456.80096,-225.77545 460.82952,-225.77545 C 464.85808,-225.77545 468.35967,-227.24768 471.33605,-230.19385 C 474.16198,-232.9303 475.57549,-236.37091 475.57549,-240.52033 C 475.57549,-244.63837 474.13903,-248.13379 471.26781,-251.00501 C 468.39714,-253.87568 464.9179,-255.31159 460.82952,-255.31159 C 456.74112,-255.31158 453.28314,-253.86841 450.45776,-250.98267 z M 458.21225,-242.27948 C 457.76196,-243.26117 457.08795,-243.75232 456.18903,-243.75232 C 454.59986,-243.75232 453.80558,-242.68225 453.80558,-240.54321 C 453.80558,-238.40368 454.59986,-237.33471 456.18903,-237.33471 C 457.23841,-237.33471 457.98795,-237.85546 458.43769,-238.89922 L 460.64045,-237.72625 C 459.59052,-235.86077 458.01536,-234.92779 455.91496,-234.92779 C 454.29506,-234.92779 452.99733,-235.42449 452.0229,-236.4168 C 451.0468,-237.41021 450.56016,-238.77953 450.56016,-240.52532 C 450.56016,-242.24035 451.06245,-243.60186 452.06764,-244.61034 C 453.07283,-245.61888 454.32466,-246.12291 455.82545,-246.12291 C 458.04557,-246.12291 459.63526,-245.24803 460.59626,-243.50005 L 458.21225,-242.27948 z M 468.57562,-242.27948 C 468.12475,-243.26117 467.46417,-243.75232 466.5932,-243.75232 C 464.97217,-243.75232 464.16107,-242.68225 464.16107,-240.54321 C 464.16107,-238.40368 464.97217,-237.33471 466.5932,-237.33471 C 467.64429,-237.33471 468.38037,-237.85546 468.80048,-238.89922 L 471.05249,-237.72625 C 470.00421,-235.86077 468.43127,-234.92779 466.33478,-234.92779 C 464.7171,-234.92779 463.42218,-235.42449 462.44831,-236.4168 C 461.47614,-237.41021 460.98896,-238.77953 460.98896,-240.52532 C 460.98896,-242.24035 461.48341,-243.60186 462.47181,-244.61034 C 463.45966,-245.61888 464.71711,-246.12291 466.24531,-246.12291 C 468.4615,-246.12291 470.04896,-245.24803 471.0066,-243.50005 L 468.57562,-242.27948 z"/>
                                    
                                </g>
                                
                            </g>
                            
                            <g id="g275">
                                <circle cx="255.55124"
                                cy="15.31348"
                                r="10.80664"
                                id="circle277"
                                style="fill:#ffffff"/>
                                
                                <g id="g279">
                                    <path d="M 258.67819,12.18701 C 258.67819,11.77051 258.3403,11.4331 257.92526,11.4331 L 253.15182,11.4331 C 252.73678,11.4331 252.39889,11.7705 252.39889,12.18701 L 252.39889,16.95996 L 253.72994,16.95996 L 253.72994,22.61182 L 257.34713,22.61182 L 257.34713,16.95996 L 258.67818,16.95996 L 258.67818,12.18701 L 258.67819,12.18701 z"
                                 id="path281"/>
                                    
                                    <circle cx="255.53854" cy="9.1723604" r="1.63281" id="circle283"/>
                                    
                                </g>
                                
                                <path clip-rule="evenodd"
                              d="M 255.5239,3.40723 C 252.29148,3.40723 249.55515,4.53516 247.31589,6.79102 C 245.01804,9.12452 243.8696,11.88672 243.8696,15.07569 C 243.8696,18.26466 245.01804,21.00733 247.31589,23.30225 C 249.61374,25.59668 252.35007,26.74414 255.5239,26.74414 C 258.73679,26.74414 261.52195,25.58789 263.87742,23.27295 C 266.09715,21.07568 267.2075,18.34326 267.2075,15.07568 C 267.2075,11.8081 266.07762,9.04687 263.8198,6.79101 C 261.56003,4.53516 258.79538,3.40723 255.5239,3.40723 z M 255.55319,5.50684 C 258.20163,5.50684 260.45065,6.44092 262.30026,8.30811 C 264.1694,10.15528 265.10397,12.41114 265.10397,15.07569 C 265.10397,17.75928 264.18893,19.98633 262.35885,21.75587 C 260.43014,23.66212 258.16256,24.61476 255.55319,24.61476 C 252.94284,24.61476 250.69381,23.67189 248.80612,21.78517 C 246.91647,19.89845 245.97311,17.66212 245.97311,15.0757 C 245.97311,12.48879 246.92721,10.23341 248.83541,8.30812 C 250.6655,6.44092 252.90475,5.50684 255.55319,5.50684 z"
                              id="path285"
                              style="fill-rule:evenodd"/>
                                
                            </g>
                            
                        </g>
                    </g>
                </svg>
                
            </a>
        </g>


    </g>


   


</svg>
    </xsl:template>
</xsl:stylesheet>