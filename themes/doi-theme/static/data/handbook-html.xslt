<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <!-- Output HTML5 -->
  <xsl:output method="html" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"
              encoding="UTF-8" indent="yes"/>
  
  <!-- Helper: join attributes into a string for display -->
  <xsl:template name="attributes-as-string">
    <xsl:param name="node" select="."/>
    <xsl:for-each select="$node/@*">
      <xsl:value-of select="concat(name(), '=&quot;', ., '&quot;')"/>
      <xsl:if test="position() != last()">
        <xsl:text>; </xsl:text>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <!-- Root: create HTML skeleton -->
  <xsl:template match="/">
   
        <!-- Apply templates to children of document element -->
        <xsl:apply-templates select="*"/>
     
  </xsl:template>
  
  <!-- title element: render as an H1 (first occurence) or H2 otherwise -->
  <xsl:template match="title">
    <xsl:choose>
      <xsl:when test="not(preceding::title)">
        <h1><xsl:value-of select="normalize-space(.)"/></h1>
      </xsl:when>
      <xsl:otherwise>
        <h2><xsl:value-of select="normalize-space(.)"/></h2>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <!-- section: use <section> and render a heading if it has a title child -->
  <xsl:template match="section">
    <section>
      <xsl:if test="@*">
        <div class="attributes">
          <xsl:text>Attributes: </xsl:text>
          <xsl:call-template name="attributes-as-string">
            <xsl:with-param name="node" select="."/>
          </xsl:call-template>
        </div>
      </xsl:if>
      
      <xsl:choose>
        <xsl:when test="title">
          <h2><xsl:value-of select="normalize-space(title)"/></h2>
          <xsl:apply-templates select="node()[not(self::title)]"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates select="node()"/>
        </xsl:otherwise>
      </xsl:choose>
    </section>
  </xsl:template>
  
  <!-- paragraph variants -->
  <xsl:template match="para | p">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <!-- list / item -->
  <xsl:template match="list">
    <xsl:choose>
      <xsl:when test="@type = 'ordered' or @ordered = 'true'">
        <ol>
          <xsl:apply-templates select="item"/>
        </ol>
      </xsl:when>
      <xsl:otherwise>
        <ul>
          <xsl:apply-templates select="item"/>
        </ul>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="item">
    <li><xsl:apply-templates/></li>
  </xsl:template>
  
  <!-- simple table rendering -->
  <xsl:template match="table">
    <table>
      <xsl:apply-templates select="thead | tr | row"/>
    </table>
  </xsl:template>
  
  <xsl:template match="thead">
    <thead>
      <xsl:apply-templates select="tr|row"/>
    </thead>
  </xsl:template>
  
  <xsl:template match="tr | row">
    <tr>
      <xsl:for-each select="th | header | td | cell">
        <xsl:choose>
          <xsl:when test="name() = 'th' or name() = 'header'">
            <th><xsl:apply-templates/></th>
          </xsl:when>
          <xsl:otherwise>
            <td><xsl:apply-templates/></td>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each>
    </tr>
  </xsl:template>
  
  <!-- image element -->
  <xsl:template match="image | img">
    <xsl:variable name="src">
      <xsl:choose>
        <xsl:when test="@src"><xsl:value-of select="@src"/></xsl:when>
        <xsl:when test="@href"><xsl:value-of select="@href"/></xsl:when>
        <xsl:otherwise/>
      </xsl:choose>
    </xsl:variable>
    <xsl:if test="string-length($src) &gt; 0">
      <div>
        <img>
          <xsl:attribute name="src"><xsl:value-of select="$src"/></xsl:attribute>
          <xsl:if test="@alt">
            <xsl:attribute name="alt"><xsl:value-of select="@alt"/></xsl:attribute>
          </xsl:if>
        </img>
        <xsl:if test="@caption">
          <div class="caption"><xsl:value-of select="@caption"/></div>
        </xsl:if>
      </div>
    </xsl:if>
  </xsl:template>
  
  <!-- Fallback for any element: show element name and render children -->
  <xsl:template match="xx">
    <section>
      <div class="elem-name">
        <xsl:value-of select="name()"/>
        <xsl:if test="@*">
          <span class="attributes">[<xsl:call-template name="attributes-as-string"><xsl:with-param name="node" select="."/></xsl:call-template>]</span>
        </xsl:if>
      </div>
      
      <!-- If element contains only text, show it inline -->
      <xsl:choose>
        <xsl:when test="normalize-space(string(.)) and not(*)">
          <div><xsl:value-of select="normalize-space(.)"/></div>
        </xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates/>
        </xsl:otherwise>
      </xsl:choose>
    </section>
  </xsl:template>
  
  <!-- Text nodes: output as-is (with normalization) -->
  <xsl:template match="text()">
    <xsl:value-of select="normalize-space(.)"/>
  </xsl:template>
  
  <!-- Comments and processing instructions: ignore to keep HTML clean -->
  <xsl:template match="comment() | processing-instruction()" />
  
</xsl:stylesheet>
