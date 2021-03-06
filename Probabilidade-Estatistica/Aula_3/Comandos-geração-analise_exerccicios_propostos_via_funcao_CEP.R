Comandos para gera��o e an�lise dos exerc�cios

=====================================================================================================================================

Exercic�o 2.1

#gera��o dos dados
m=25; n=14; mn=m*n; mi=150; sigma=10; set.seed(4125); x=round(rnorm(mn,mi,sigma),2) 
x[155:168]=x[155:168]-1.5*sigma; x=round(x,0)

#an�lise
xS2(m,n,x)
x2=x[-(155:168)]; m=24; xS2(m,n,x2)

=====================================================================================================================================	

Exerc�cio 2.2

#gera��o dos dados
m=20; n=5; mn=m*n; mi=500; sigma=1; set.seed(2453); x=round(rnorm(mn,mi,sigma),1)

#an�lise
xR1(m,n,x,500,0.5)
xR2(m,n,x)

=====================================================================================================================================

Exerc�cios 3.1 e 3.2

#gera��o dos dados (os mesmos para os exerc�cios 3.1 e 3.2)
m=30; n=1; mn=m*n; mi=170; sigma=2; set.seed(1367); x=round(rnorm(mn,mi,sigma),1); 
x[25]=x[25]+3*sigma

#an�lise
### Exerc�cio 3.1 ###
cusum(m,n,x,mi,sigma) 
### Exerc�cio 3.2 ###
MMEP(m,n,170,2,0.2,3,x) 

=====================================================================================================================================

Exerc�cio 4.1

#gera��o dos dados
set.seed(3785); x=rbinom(20,100,0.1);
set.seed(2432); x[10:11]=rbinom(2,100,0.25);

#an�lise
pse(20,100,x)
pse(18,100,x[-(10:11)])

=====================================================================================================================================

Exerc�cio 4.2

#gera��o dos dados
tamanho=seq(80,130); set.seed(1349); tamanho=sample(tamanho,25,replace=T);
sementes=seq(0,9999); set.seed(8867); sementes=sample(sementes,25,replace=F);
prob=c(rep(0.1,22),rep(0.2,3)); x=numeric(25);
for (i in 1:25) {
	set.seed(sementes[i]); x[i]=rbinom(1,tamanho[i],prob[i])
	      }

#an�lise
### item a ###
pse(25,tamanho,x)
### item b ###
pse(23,tamanho[-(24:25)],x[-(24:25)])

=====================================================================================================================================

Exerc�cio 4.3

#gera��o dos dados
set.seed(2068); x=rbinom(30,50,0.2);
set.seed(1735); x[16:20]=rbinom(5,50,0.3);

#an�lise
### item a ###
npce(30,50,x,0.2)
npce(27,50,x[-(17:19)],0.2)
### item b ###
#fazer a conta

=========================