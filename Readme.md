# Configuraciones

## ¿como usar un hard link?

Al correr

```
ln /a/b/Main.java /JavaFiles
```

se crea un archivo clon (no es una copia) del Main.java, esto implica que si se modifica Main.java en
/a/b o en /JavaFiles, ambos archivos se modifican a la vez. Sin embargo, si se elimina uno, el otro NO
se elimina, entonces para eliminar todos los clones, hace falta eliminar cada uno de ellos.

## ¿como usar un symbolic link?

Al correr
```
ln -s /a/b/Main.java /JavaFiles
```

se crea un enlace simbolico o como en windows se conoce como "acceso directo", esto implica que este
symbolic link solo apunte al archivo original, más no es el mismo y mucho menos una copia.



## git y los hard & symbolic links

En este contexto, si commiteamos un symbolic links, solo estaremos haciendo un commit del PATH del archivo 
original, es por ello que no se recomienda. Por otro lado Git reconoce los hard links y los commitea como si
fuesen originales. Conclusion -> Usar hard links en Git


## hard link para este archivo init.vim

Ejecute los comandos (suponiendo que tiene este archivo en su Home (~))

```
ln init.vim .config/nvim/ 
```
