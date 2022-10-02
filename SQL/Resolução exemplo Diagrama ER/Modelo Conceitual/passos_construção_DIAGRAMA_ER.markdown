# Como construir um diagrama ER
# How to Build a ER diagram

* Nota:  Seguem-se passos da construção exemplo do diagrama ER do enunciado !!

* Note: The following steps of constructing of ER diagram is an example from the statment
-----------------------------------------------------------

Enunciado problema `Base de Dados Biblioteca`

![](/Enunciado.png)

----------------------

*  1º Passo = Identificar as `` entidades`` e os seus respetivos ``atributos``

entidade = Biblioteca |
atributos =>`` código``*, descrição, endereço

entidade = Associado     |
atributos => ``matrícula``*, nome e sexo

entidade = Livro |
atributos => ``ISBN``* e título

entidade = Autor |
atributos => ``código``* e nome

entidade = Assunto |
atributos => ``código``* e descrição

![entidades_atributos](/Entidades_atributos.png)

-----------------------------------------------------------

* 2º passo = Identificar as respetivas ``chaves primárias``/atributos identificadores

PK = ``Primary Key``(chave primária)/atributo identificador

	entidade = Biblioteca:
		PK => código
	
	entidade = Associado:
		PK => matrícula
	
	entidade = Livro:
		PK => ISBN
	
	entidade = Autor:
		PK => código
	
	entidade = Assunto:
		PK => código

--------------------------------------------

* 3º passo = representar as entidades e os seus respetivos atributos no modelo

representação das entidades e dos respetivos atributos :
![](/representa%C3%A7%C3%A3o%20das%20entidades.png)

----------------------------------------------

* 4º passo = representar os relacionamentos e cardinalidades entre as entidades 

nota : o minímo é sempre 0 quando representado unicamente `n` ou `1` na sua cardinalidade

cardinalidade na engenharia :

![](/Rpresenta%C3%A7%C3%A3o%20da%20cardinalidade%20em%20engenharia%20software(informa%C3%A7%C3%A3o)%2002.png)




![](/Rpresenta%C3%A7%C3%A3o%20da%20cardinalidade%20em%20engenharia%20software(informa%C3%A7%C3%A3o).png)


* Representação dos relacionamentos e cardinalidades entre as entidades :

![](/representa%C3%A7%C3%A3o%20dos%20relacionamentos%20e%20cardinalidades%20entre%20entidades.png)