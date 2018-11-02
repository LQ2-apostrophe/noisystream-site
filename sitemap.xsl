<?xml version="1.0" encoding="UTF-8"?><xsl:stylesheet version="2.0"
				xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<xsl:variable name="tableMinWidth" select="'600px'"/><xsl:variable name="colorMain" select="'#333'"/><xsl:variable name="colorAccent" select="'#ff3333'"/><xsl:variable name="relativeFontColor" select="'#ffffff'"/><title>XML Sitemap &#124; Noisy Stream</title><style style="text/css">	body {
		font-size: 14px;
		font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif;
		margin: 0;
	}
	a {
		color: #05809e;
		text-decoration: none;
	}
	h1 {
		font-size: 24px;
		font-family: Verdana,Geneva,sans-serif;
		font-weight: normal;
		margin: 0;
		color: <xsl:value-of select="$colorAccent" />;
	}
	h1 img {
		vertical-align: bottom;
		margin-right: 14px;
		image-rendering: -webkit-optimize-contrast;
	}
	#description {
		background-color: <xsl:value-of select="$colorMain" />;
		border-bottom: 7px solid <xsl:value-of select="$colorAccent" />;
		color: <xsl:value-of select="$relativeFontColor" />;
		padding: 30px 30px 20px;
	}
	#description a {
		color: <xsl:value-of select="$relativeFontColor" />;
	}
	#content {
		padding: 10px 30px 30px;
		background: #fff;
	}
	a:hover {
		border-bottom: 1px solid;
	}
	table {
		min-width: <xsl:value-of select="$tableMinWidth" />;
		border-spacing: 0;
	}
	th, td {
		font-size: 12px;
		border: 0px solid;
		padding: 10px 15px;
	}
	th {
		text-align: left;
		border-bottom: 1px solid <xsl:value-of select="$colorAccent" />;
	}
	tr:nth-of-type(2n+3) {
		background-color: #eaeaea;
	}
	#footer {
		margin: 20px 30px;
		font-size: 12px;
		color: #999;
	}
	#footer a {
		color: inherit;
	}
	#description a, #footer a {
		border-bottom: 1px solid;
	}
	#description a:hover, #footer a:hover {
		border-bottom: none;
	}</style>			</head>
			<body>
				<div id="description">
					<a href="https://noisystream.lq2music.com"><h1><img src="https://noisystream.lq2music.com/wp-content/uploads/2017/10/NoisyStream_main_v_w.svg" width="1" height="1" />Noisy Stream &#8212; XML Sitemap</h1></a><p>This is a generated XML Sitemap, meant to be consumed by search engines like <a href="https://www.google.com/" target="_blank" rel="nofollow noreferrer noopener">Google</a> or <a href="https://www.bing.com/" target="_blank" rel="nofollow noreferrer noopener">Bing</a>.</p><p>You can find more information on XML sitemaps at <a href="https://www.sitemaps.org/" target="_blank" rel="nofollow noreferrer noopener">sitemaps.org</a>.</p>				</div>
				<div id="content">
					<table>
	<tr>
		<th>URL</th>
		<th>Last Updated</th>
		<th>Priority</th>
	</tr>
	<xsl:for-each select="sitemap:urlset/sitemap:url">
		<xsl:variable name="itemURL" select="sitemap:loc"/><xsl:variable name="lastmod" select="concat(substring(sitemap:lastmod,0,11),concat(' ',substring(sitemap:lastmod,12,5)))"/><xsl:variable name="priority" select="substring(sitemap:priority,0,4)"/>
		<tr>
			<td><a href="{$itemURL}"><xsl:choose><xsl:when test="string-length($itemURL)&gt;99"><xsl:value-of select="substring($itemURL,0,96)" />...</xsl:when><xsl:otherwise><xsl:value-of select="$itemURL" /></xsl:otherwise></xsl:choose></a></td>
			<td><xsl:value-of select="$lastmod" /></td>
			<td><xsl:value-of select="$priority" /></td>
		</tr>
	</xsl:for-each>
</table>				</div>
				<div id="footer">
									</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
