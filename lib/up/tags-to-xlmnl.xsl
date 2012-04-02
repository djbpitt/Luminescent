<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:s="http://lmnl-markup.org/ns/luminescent/tags"
  xmlns:x="http://lmnl-markup.org/ns/xLMNL"
  xpath-default-namespace="http://lmnl-markup.org/ns/luminescent/tags"
  exclude-result-prefixes="xs s"
  version="2.0">

  <xsl:key name="end-for-start" match="end | empty" use="@rID"/>
  
  <xsl:template match="/root">
    <x:root>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates select="*"/>
    </x:root>
  </xsl:template>
  
  <xsl:template match="doc">
    <x:document>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates/>
    </x:document>
  </xsl:template>
  
  <xsl:template match="text">
    <x:content>
      <xsl:for-each-group select="span|atom|comment"
        group-adjacent="string-join((@layer,@ranges),':')">
        <!-- wrapping text spans and atoms together -->
        <x:span start="{@off}" end="{@off + sum(current-group()/self::span/string-length(.)) + count(current-group()/self::atom)}">
          <xsl:apply-templates select="@layer | @ranges"/>
          <xsl:apply-templates select="current-group()"/>
        </x:span>
      </xsl:for-each-group>
    </x:content>
    <xsl:apply-templates select="start | empty"/>
  </xsl:template>
  
  <xsl:template match="atom">
    <x:atom>
      <xsl:apply-templates select="@gi | @so | @sl | @eo | @el"/>
      <xsl:apply-templates/>
    </x:atom>
  </xsl:template>

  <xsl:template match="comment">
    <x:comment>
      <xsl:apply-templates select="@so | @sl | @eo | @el"/>
      <xsl:value-of select="."/>
    </x:comment>
  </xsl:template>
  
  <xsl:template match="start | empty">
    <xsl:variable name="end" select="key('end-for-start',@rID)"/>
    <x:range start="{@off}" end="{$end/@off}">
      <xsl:apply-templates select="@gi | @rID | @so | @sl | @eo | @el"/>
      <xsl:apply-templates select="(.|$end)/(annotation | comment)"/>
    </x:range>
  </xsl:template>
 
 <xsl:template match="annotation">
    <x:annotation>
      <xsl:apply-templates select="@aID | @gi | @so | @sl | @eo | @el"/>
      <xsl:apply-templates/>
    </x:annotation>
  </xsl:template>

  <xsl:template match="@gi">
    <xsl:attribute name="name" select="."/>
  </xsl:template>
  
  <xsl:template match="@aID | @rID">
    <xsl:attribute name="ID" select="."/>
  </xsl:template>
  
  <xsl:template match="@*">
    <xsl:copy-of select="."/>
  </xsl:template>
  
</xsl:stylesheet>