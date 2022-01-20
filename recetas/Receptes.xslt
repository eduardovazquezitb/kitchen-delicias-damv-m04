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



		<div class="targeta">
            <header>
				<header style="font-size:30px;color:green">
					Recetas de pastas
				</header>
				<p>
					La pasta es uno de los pilares básicos en la alimentación de un deportista.<br/>
					Gracias a su alto valor nutricional aporta muchos carbohidratos de bajo índice<br/>
					glucémico. Ideal para realizar un esfuerzo prolongado y no quedarse sin energía.
					<hr style="height:2px;border-width:0;color:rgba(0,0,0,1);background-color:rgba(0,0,0,1)"/> 
				</p>
			</header>
            <xsl:for-each select="receta">
                <section>
                    <header style="color:green">
                        <b><u><a href="../receta/Receptes.xml"> <xsl:value-of select="@nombre"/></a></u></b>
                    </header>
                    <article>
                        <header>
                            <i>Receta de&#160;<xsl:value-of select="@nombre"/></i>
                        </header>
                        <br/>
                        <b>Pasos:</b>&#160;<xsl:value-of select="count(elaboracion/paso)" />  <br/>
                        <b>Cocina:</b> tradicional <br/>  
                        <b>Vegetariana:</b> sí <br/>
                        <b>Celíacos:</b> no<br/>
                        <b>Anticáncer:</b> no<br/>
                        <b>Autor:</b> IVANRUGARCIA
                            <hr style="height:2px;border-width:0;color:rgba(0,0,0,1);background-color:rgba(0,0,0,1)"/> 
                    </article>
                </section>
            </xsl:for-each>   
		</div>
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