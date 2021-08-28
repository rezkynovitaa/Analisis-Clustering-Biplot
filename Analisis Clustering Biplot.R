#menginstall Library Cluster
library(cluster)

#menginput Data Sekolah untuk analisis CLuster.txt
#menamakan data dengan data1

#Metode Non Hierarki (K Means)
dataku<-cbind(data1$S1,data1$S3)

#Membagi data dengan 4 cluster
kluster<-kmeans(dataku,4,iter.max=1000)
kluster
h<-data.frame(dataku,kluster[1])

#memplot kelompok
plot(h[,1:2],col=h$cluster,pch=20,xlab="STANDAR ISI",ylab="STANDAR KEMPOTENSI KELULUSAN",main="K-Means")
text(data1,labels=(as.vector(data1$NAMA.SEKOLAH)),cex=0.5,pos=1)
points(kluster$centers,col=c(1:2),pch=8,cex=1)

#mencari tahu cluster yang cocok dengan akreditasi dengan interval A(85-100),B(79-85),C(65-79), dan TT(<65)
library(car)
rowMeans(kluster$center)
h$cluster<-recode(h$cluster, '2="A"')
h$cluster<-recode(h$cluster, '3="B"')
h$cluster<-recode(h$cluster, '1="C"')
h$cluster<-recode(h$cluster, '4="TT"')
summary.factor(h$cluster)

#Clustering Biplot
pca<-princomp(dataku,cor=T,score=T)
pca
library(factoextra)
fviz_pca_biplot(pca,geom=c("point"),label="all",habillage = h$cluster, palette = palette(rainbow(24)),addEllipses = T,title = "Clustering Biplot")


#Melihat Daftar Sekolah Sesuai dengan Akreditasi
#akreditasi A
hasil<-cbind(h$cluster,data1$NAMA.SEKOLAH)
A<-subset(hasil[,2],hasil[,1]=="A")

#akreditasi B
B<-subset(hasil[,2],hasil[,1]=="B")
B

#akreditasi C
C<-subset(hasil[,2],hasil[,1]=="C")
C

#akreditasi TT
D<-subset(hasil[,2],hasil[,1]=="TT")
D