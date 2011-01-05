<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:m="http://metrics.sourceforge.net/2003/Metrics-First-Flat">
	
	<xsl:template match="/">
		<html>
			<head>
				<title>Code Metrics Report</title>
			</head>
			<body>
				<h1>Code Metrics Report</h1>
				<ul>
					<li><a href="#NORM">Number of Overridden Methods (親クラスのメソッドをオーバーライドしたメソッド数)</a></li>
					<li><a href="#NOF">Number of Attributes (クラス中のフィールド数)</a></li>
					<li><a href="#NSC">Number of Children (クラスの持つサブクラスの数)</a></li>
					<li><a href="#MLOC">Methods Lines of Code (メソッドのコード行数 コメント行・空行は含まない)</a></li>
					<li><a href="#NOM">Number of Methods (クラス中のメソッド数)</a></li>
					<li><a href="#NBD">Nested Block Depth (メソッド中の最大ネスト数)</a></li>
					<li><a href="#DIT">Depth of Inheritance Tree (Java.lang.Objectクラスからの継承の深さ)</a></li>
					<li><a href="#VG">McCabe Cyclomatic Complexity (メソッドのサイクロマチック数)</a></li>
					<li><a href="#PAR">Number of Parameters (メソッドのパラメータ数)</a></li>
					<li><a href="#LCOM">Lack of Cohesion of Methods (クラス中のメソッドの凝集性欠如の度合い Henderson-Sellersの定義)</a></li>
					<li><a href="#NSM">Number of Static Methods (クラス中の静的メソッドの数)</a></li>
					<li><a href="#WMC">Weighted methods per Class (クラス中のすべてのメソッドのサイクロマチック数(VG)の和)</a></li>
					<li><a href="#NSF">Number of Static Attributes (クラス中の静的フィールド数)</a></li>
				</ul>
				
				<div id="NORM"><h2>NORM(Number of Overridden Methods) -- greater than 1</h2></div>
				<table border="1">
					<tr bgcolor="#9acd32">
						<td>ClassName</td>
						<td>Number</td>
					</tr>
					<xsl:for-each select="m:Metrics/m:Metric[@id='NORM']/m:Values/m:Value">
						<xsl:if test="@value &gt; 1">
						<tr>
							<td><xsl:value-of select="@package"/>.<xsl:value-of select="@source"/></td>
							<td><xsl:value-of select="@value"/></td>
						</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<a href="#">Top of Page</a>
				
				<div id="NOF"><h2>NOF(Number of Attributes) -- greater than 3</h2></div>
				<table border="1">
					<tr bgcolor="#9acd32">
						<td>ClassName</td>
						<td>Number</td>
					</tr>
					<xsl:for-each select="m:Metrics/m:Metric[@id='NOF']/m:Values/m:Value">
						<xsl:if test="@value &gt; 3">
						<tr>
							<td><xsl:value-of select="@package"/>.<xsl:value-of select="@source"/></td>
							<td><xsl:value-of select="@value"/></td>
						</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<a href="#">Top of Page</a>
				
				<div id="NSC"><h2>NSC(Number of Children) -- greater than 1</h2></div>
				<table border="1">
					<tr bgcolor="#9acd32">
						<td>ClassName</td>
						<td>Number</td>
					</tr>
					<xsl:for-each select="m:Metrics/m:Metric[@id='NSC']/m:Values/m:Value">
						<xsl:if test="@value &gt; 1">
						<tr>
							<td><xsl:value-of select="@package"/>.<xsl:value-of select="@source"/></td>
							<td><xsl:value-of select="@value"/></td>
						</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<a href="#">Top of Page</a>
				
				<div id="MLOC"><h2>MLOC(Method Lines of Code) -- greater than 10</h2></div>
				<table border="1">
					<tr bgcolor="#9acd32">
						<td>ClassName</td>
						<td>MethodName</td>
						<td>Lines</td>
					</tr>
					<xsl:for-each select="m:Metrics/m:Metric[@id='MLOC']/m:Values/m:Value">
						<xsl:if test="@value &gt; 10">
						<tr>
							<td><xsl:value-of select="@package"/>.<xsl:value-of select="@source"/></td>
							<td><xsl:value-of select="@name"/></td>
							<td><xsl:value-of select="@value"/></td>
						</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<a href="#">Top of Page</a>
				
				<div id="NOM"><h2>NOM(Number of Methods) -- greater than 5</h2></div>
				<table border="1">
					<tr bgcolor="#9acd32">
						<td>ClassName</td>
						<td>Number</td>
					</tr>
					<xsl:for-each select="m:Metrics/m:Metric[@id='NOM']/m:Values/m:Value">
						<xsl:if test="@value &gt; 5">
						<tr>
							<td><xsl:value-of select="@package"/>.<xsl:value-of select="@source"/></td>
							<td><xsl:value-of select="@value"/></td>
						</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<a href="#">Top of Page</a>
				
				<div id="NBD"><h2>NBD(Nested Block Depth) -- greater than 2</h2></div>
				<table border="1">
					<tr bgcolor="#9acd32">
						<td>ClassName</td>
						<td>MethodName</td>
						<td>Depth</td>
					</tr>
					<xsl:for-each select="m:Metrics/m:Metric[@id='NBD']/m:Values/m:Value">
						<xsl:if test="@value &gt; 2">
						<tr>
							<td><xsl:value-of select="@package"/>.<xsl:value-of select="@source"/></td>
							<td><xsl:value-of select="@name"/></td>
							<td><xsl:value-of select="@value"/></td>
						</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<a href="#">Top of Page</a>
				
				<div id="DIT"><h2>DIT(Depth of Inheritance Tree) -- greater than 1</h2></div>
				<table border="1">
					<tr bgcolor="#9acd32">
						<td>ClassName</td>
						<td>Number</td>
					</tr>
					<xsl:for-each select="m:Metrics/m:Metric[@id='DIT']/m:Values/m:Value">
						<xsl:if test="@value &gt; 1">
						<tr>
							<td><xsl:value-of select="@package"/>.<xsl:value-of select="@source"/></td>
							<td><xsl:value-of select="@value"/></td>
						</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<a href="#">Top of Page</a>
				
				<div id="VG"><h2>VG(McCabe Cyclomatic Complexity) -- greater than 5</h2></div>
				<table border="1">
					<tr bgcolor="#9acd32">
						<td>ClassName</td>
						<td>MethodName</td>
						<td>Complexity</td>
					</tr>
					<xsl:for-each select="m:Metrics/m:Metric[@id='VG']/m:Values/m:Value">
						<xsl:if test="@value &gt; 5">
						<tr>
							<td><xsl:value-of select="@package"/>.<xsl:value-of select="@source"/></td>
							<td><xsl:value-of select="@name"/></td>
							<td><xsl:value-of select="@value"/></td>
						</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<a href="#">Top of Page</a>
				
				<div id="PAR"><h2>PAR(Number of Parameters) -- greater than 2</h2></div>
				<table border="1">
					<tr bgcolor="#9acd32">
						<td>ClassName</td>
						<td>MethodName</td>
						<td>Number</td>
					</tr>
					<xsl:for-each select="m:Metrics/m:Metric[@id='PAR']/m:Values/m:Value">
						<xsl:if test="@value &gt; 2">
						<tr>
							<td><xsl:value-of select="@package"/>.<xsl:value-of select="@source"/></td>
							<td><xsl:value-of select="@name"/></td>
							<td><xsl:value-of select="@value"/></td>
						</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<a href="#">Top of Page</a>
				
				<div id="LCOM"><h2>LCOM(Lack of Cohesion of Methods) -- greater than 0.5</h2></div>
				<table border="1">
					<tr bgcolor="#9acd32">
						<td>ClassName</td>
						<td>Ratio</td>
					</tr>
					<xsl:for-each select="m:Metrics/m:Metric[@id='LCOM']/m:Values/m:Value">
						<xsl:if test="@value &gt; 0.5">
						<tr>
							<td><xsl:value-of select="@package"/>.<xsl:value-of select="@source"/></td>
							<td><xsl:value-of select="@value"/></td>
						</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<a href="#">Top of Page</a>
				
				<div id="NSM"><h2>NSM(Number of Static Methods) -- greater than 1</h2></div>
				<table border="1">
					<tr bgcolor="#9acd32">
						<td>ClassName</td>
						<td>Number</td>
					</tr>
					<xsl:for-each select="m:Metrics/m:Metric[@id='NSM']/m:Values/m:Value">
						<xsl:if test="@value &gt; 1">
						<tr>
							<td><xsl:value-of select="@package"/>.<xsl:value-of select="@source"/></td>
							<td><xsl:value-of select="@value"/></td>
						</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<a href="#">Top of Page</a>
				
				<div id="WMC"><h2>WMC(Weighted methods per Class) -- greater than 50</h2></div>
				<table border="1">
					<tr bgcolor="#9acd32">
						<td>ClassName</td>
						<td>Weight</td>
					</tr>
					<xsl:for-each select="m:Metrics/m:Metric[@id='WMC']/m:Values/m:Value">
						<xsl:if test="@value &gt; 50">
						<tr>
							<td><xsl:value-of select="@package"/>.<xsl:value-of select="@source"/></td>
							<td><xsl:value-of select="@value"/></td>
						</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<a href="#">Top of Page</a>
				
				<div id="NSF"><h2>NSF(Number of Static Attributes) -- greater than 1</h2></div>
				<table border="1">
					<tr bgcolor="#9acd32">
						<td>ClassName</td>
						<td>Number</td>
					</tr>
					<xsl:for-each select="m:Metrics/m:Metric[@id='NSF']/m:Values/m:Value">
						<xsl:if test="@value &gt; 1">
						<tr>
							<td><xsl:value-of select="@package"/>.<xsl:value-of select="@source"/></td>
							<td><xsl:value-of select="@value"/></td>
						</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<a href="#">Top of Page</a>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
