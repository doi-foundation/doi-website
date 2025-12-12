<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
  xmlns:tbx="urn:iso:std:iso:30042:ed-1"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xlink="http://www.w3.org/1999/xlink">
  
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
  <xsl:template match="/standard">
    
    <!-- bookmarks -->
    <div class='tabs-nav col'>
      <xsl:for-each select="body/section">
        <nav class='top-nav'>
          <xsl:attribute name="internal-destination">
            <xsl:value-of select="@id"/>
          </xsl:attribute>
          <a class='handbook-nav'>     
            <xsl:choose>
              <xsl:when test="@id = 'preface' or @id = 'sec-glossary'">
                <xsl:value-of select="title"/>
              </xsl:when>
              <xsl:otherwise>                
                <xsl:value-of select="substring-after(@id,'sec')"/><xsl:text>&#xA0;</xsl:text><xsl:value-of select="title"/>
              </xsl:otherwise>
            </xsl:choose> 
          </a>
          <xsl:for-each select="section">
            <nav class='sub-nav'>
              <xsl:attribute name="internal-destination">
                <xsl:value-of select="@id"/>
              </xsl:attribute>
              <a>
                <xsl:value-of select="substring-after(@id,'sec')"/><xsl:text>&#xA0;</xsl:text><xsl:value-of select="title"/>
              </a>  
            </nav>  
          </xsl:for-each>
        </nav>
      </xsl:for-each>
    </div>
    
    <div class="tabs tabs-content col">
      <!-- Apply templates to children of document element -->
      <xsl:apply-templates select="*"/>
    </div>
     
  </xsl:template>
  
  <xsl:template match="front" />
  
  <!-- title element: render as an H1 (first occurence) or H2 otherwise -->
  <xsl:template match="title">
    <xsl:choose>
      <xsl:when test="not(preceding::title)">
        <h2><xsl:value-of select="normalize-space(.)"/></h2>
      </xsl:when>
      <xsl:otherwise>
        <h3><xsl:value-of select="normalize-space(.)"/></h3>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <!-- title element: render as an H1 (first occurence) or H2 otherwise -->
  <xsl:template match="subtitle">
    <xsl:choose>
      <xsl:when test="not(preceding::subtitle)">
        <h3><xsl:value-of select="normalize-space(.)"/></h3>
      </xsl:when>
      <xsl:otherwise>
        <h4><xsl:value-of select="normalize-space(.)"/></h4>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <!-- section: use <section> and render a heading if it has a title child -->
  <xsl:template match="section">
    <div class="content">
      <xsl:attribute name="internal-destination">
        <xsl:value-of select="@id"/>
      </xsl:attribute>
      
           

      <xsl:if test="@*">
        <div class="attributes" style='display:none;'>
          <xsl:text>Attributes: </xsl:text>
          <xsl:call-template name="attributes-as-string">
            <xsl:with-param name="node" select="."/>
          </xsl:call-template>
        </div>
      </xsl:if>
      
      <xsl:choose>         
        <xsl:when test="title">
          <div class='section-title'><h2><xsl:value-of select="normalize-space(title)"/></h2></div>
          <div class='section-main'>
            <xsl:apply-templates select="node()[not(self::title)]"/>
          </div>
        </xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates select="node()"/>
        </xsl:otherwise>
      </xsl:choose>
    </div>
  </xsl:template>
  
  <!-- section: use <section> and render a heading if it has a title child -->
  <xsl:template match="section/section">
    <xsl:if test="count(ancestor::section)=1">
        <div name='chapters' class='chapters'>
          <xsl:attribute name="internal-destination">
            <xsl:value-of select="@id"/>
          </xsl:attribute>
          <xsl:apply-templates select="node()"/>
        </div>
    </xsl:if> 
  </xsl:template>
  <!-- section: use <section> and render a heading if it has a title child -->
  <xsl:template match="section/section/section">
    <xsl:if test="count(ancestor::section)=2">
      <details name='chapter-chapters' class='chapter-chapters'>
        <xsl:attribute name="internal-destination">
          <xsl:value-of select="@id"/>
        </xsl:attribute>
        <summary>
          <xsl:value-of select="title"/>
        </summary>
        <xsl:apply-templates select="node()"/>
      </details>
    </xsl:if> 
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
          <xsl:apply-templates select="list-item"/>
        </ol>
      </xsl:when>
      <xsl:otherwise>
        <ul>
          <xsl:apply-templates select="list-item"/>
        </ul>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="list-item">
    <li><xsl:apply-templates/></li>
  </xsl:template>
  
  <!-- simple table rendering -->
  <xsl:template match="table">
    <table>
      <xsl:apply-templates select="thead | tbody | tr | row"/>
    </table>
  </xsl:template>
  
  <xsl:template match="thead">
    <thead>
      <xsl:apply-templates select="tr|row"/>
    </thead>
  </xsl:template>

  <xsl:template match="tbody">
    <tbody>
      <xsl:apply-templates select="tr|row"/>
    </tbody>
  </xsl:template>
  <xsl:template match="table-wrap/label" />
  <xsl:template match="table-wrap/caption" />
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
  <xsl:template match="fig">
    <figure>
        <img>
          <xsl:attribute name="src">
            <xsl:text>/</xsl:text>
            <xsl:value-of select="graphic/@xlink:href"/>
          </xsl:attribute>
          <xsl:attribute name="alt-text">
            <xsl:value-of select="caption/title"/>
          </xsl:attribute>
      </img>
      <figcaption>
        <xsl:value-of select="label"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="caption/title"/>
      </figcaption>
    </figure>
        
  </xsl:template>

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
  <xsl:template match="xxxx">
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
  
  <xsl:template match="ext-link">
    <xsl:text>&#xA0;</xsl:text>
    <a>
      <xsl:attribute name="href">
        <xsl:value-of select="@xlink:href"/>
      </xsl:attribute>
      <xsl:apply-templates/>
    </a>
    <xsl:text>&#xA0;</xsl:text>
  </xsl:template>
  
  <!-- footnotes -->
  <xsl:template match="xref">
    <a class='footnote-link'>
      <xsl:attribute name="ref-type">
        <xsl:value-of select="@ref-type"/>
      </xsl:attribute>
      <xsl:attribute name="rid">
        <xsl:value-of select="@rid"/>
      </xsl:attribute>
      <xsl:attribute name="href">
        #<xsl:value-of select="@rid"/>
      </xsl:attribute>
      <xsl:apply-templates/>
    </a>
  </xsl:template>
  
  <xsl:template match="tbx:termEntry">
    <p class="p_GlossaryTerm" style="page-break-after: avoid;">
      <span class="f_GlossaryTerm">
        <xsl:value-of select="tbx:langSet/tbx:term"/>
      </span>
    </p>
    <p class="p_GlossaryDefinition">
      <span class="f_GlossaryDefinition">
        <xsl:value-of select="tbx:langSet/tbx:definition"/>
      </span>
    </p>
  </xsl:template>
  
  <xsl:template match="tbx:langSet | tbx:term | tbx:definition"/>
  
  <xsl:template match="sup">
    <sup>
      <xsl:apply-templates/>
    </sup>
    
  </xsl:template>
  
  <xsl:template match="fn">
    <div class='footnote'>   
      <xsl:attribute name="id">
        <xsl:value-of select="@id"/>
      </xsl:attribute>   
      <div class='fn-id'>
      </div>
      <div class='fn-content'>
        <xsl:apply-templates select="node()"/>
      </div>
    </div>
  </xsl:template>
  
  
  
  <xsl:template match="index-term">    
    <xsl:text>&#xA0;</xsl:text>    
  </xsl:template>
  <!--
  <xsl:template match="index-term">
    <a>
      
      <xsl:attribute name="internal-destination">
        <xsl:value-of select="@ref"/>
      </xsl:attribute>
      <xsl:attribute name="class">internal-link</xsl:attribute>
      LINK TO->
        <xsl:apply-templates select="node()"/>
    </a>
  </xsl:template>
  -->
  
  <!-- Text nodes: output as-is (with normalization) -->
  <xsl:template match="text()">
    <xsl:value-of select="normalize-space(.)"/>
  </xsl:template>
  
  <!-- Comments and processing instructions: ignore to keep HTML clean -->
  <xsl:template match="comment() | processing-instruction()" />
  
</xsl:stylesheet>
