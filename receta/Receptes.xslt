<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/recetas">
<html>

<head>
	<meta charset="utf-8" />

	<link rel="stylesheet" href="P02_eduardoVázquez.css" />
	<title>Delicias Kitchen - Receta</title>
</head>

<body>

	<header class="menu">
		<img src="../imagenes/Logo-Delicias.png" alt="logo-delicias"/>
		<hr class="gris"/> 
		<ul>
			<il><a class="brilli" href="../index.html">Inicio</a></il>
			<il><a class="brilli" href="../construccio/construccio.html">Sobre mí</a></il>
			<il><a class="brilli" href="../recetas/Receptes.xml">Recetas</a></il>
			<il><a class="brilli" href="../formulari/formulari.html">Contacto</a></il>
			<il><a class="brilli" href="../construccio/construccio.html">Otras cosas</a></il>
		</ul>
	 	<hr class="gris"/> 
	</header>


	<div style="padding-top:10%; padding-bottom:6%; display:block">

	PÁGINA EN CONSTRUCCIÓN <img src="../imagenes/work2.gif" style="width:3%"/>


  <xsl:for-each select="receta">
		<div class="targeta">
			<section>
				<header>
					<b><xsl:value-of select = "@nombre"/></b>
				</header>
				<article>
					<img src="../imagenes/arroz_con_leche.jpg" alt="logo-delicias" style="width:50%;"/>
					<header>
						<u>Ingredientes:</u>
					</header>
					<table>
						<tbody>
                        <xsl:for-each select = "ingredientes/ingrediente">
						    <tr><td><xsl:value-of select = "@quant"/>&#160;<xsl:value-of select = "@unitats"/>&#160;<xsl:value-of select = "."/></td></tr>
                        </xsl:for-each>
						</tbody>
					</table>
				</article>
				<article>
					<header>
						<u>Pasos a seguir:</u>
					</header>
					<table>
						<tbody>
                        <xsl:for-each select = "elaboracion/paso">
						    <tr><td><b><xsl:value-of select = "@id"/>.</b>&#160;<xsl:value-of select = "."/></td></tr>
                        </xsl:for-each>
						</tbody>
					</table>
				</article>
			</section>
		</div>
  </xsl:for-each>


	</div>


    <footer class="menuPeu">
		<ul>
			<il><a class="brilli_rss" href="https://www.facebook.com">Facebook</a></il>
			<il><a class="brilli_rss" href="https://twitter.com">Twitter</a></il>
			<il><a class="brilli_rss" href="https://www.instagram.com">Instagram</a></il>
			<il><a class="brilli_rss" href="https://www.pinterest.com">Pinterest</a></il>
			<il><a class="brilli_rss" href="https://www.google.com/gmail">Email</a></il>
			<il><a class="brilli_rss" href="./construccio/construccio.html">RSS</a></il>
		</ul>
	</footer>

</body> 
</html>
</xsl:template>
</xsl:stylesheet>
