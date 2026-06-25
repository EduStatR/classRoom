graf.pizza<-function(x){
  tab1<-table(x)
  porc<-round(prop.table(tab1)*100,2)
  rotulos<-paste(names(porc)," ","(",tab1,";"," ",porc,"%)",sep="")
  pie(
    porc,
    main="",
    #col=rainbow(dim(tab1)),
    col = hcl.colors(length(tab1), palette = "Dark 3"),
    cex.main=1.5,
    labels=rotulos
  )
}

