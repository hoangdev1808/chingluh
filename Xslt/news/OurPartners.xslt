<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/NewsList">
        <section class="section home-4">
            <div class="container">
                <div class="wrap-title" data-aos="fade-down">
                    <div class="section-title">
                        <xsl:value-of select="ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <a class="btn btn-primary" href="#">
                        <xsl:value-of select="VMText" disable-output-escaping="yes"></xsl:value-of>
                    </a>
                </div>
            </div>
            <div class="no-container" data-aos="fade-up">
                <div class="swiper-partner">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="News"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="swiper-pagination"></div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <div class="swiper-slide">
            <div class="wrap-item">
                <div class="item">
                    <div class="img">
                        <img class="lazyload">
                            <xsl:attribute name="data-src">
                                <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="inner-content desc">
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </div>
                <div class="desc text-uppercase mt-30">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>