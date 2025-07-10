## O que é?
Hmmm, para não precisar ficar fazendo do zero a configuraca do lazyvim, com LPS e afins, criei esse repo suuuper básico para configurar pra mim :)

## Passos (caso eu esquecer, com toda certeza vou esquecer)
``` bash
1. Instalar o vim

``` bash
brew install vim
``` 
```
```
````
```

2. Instalar lazyvim
``` bash
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim
```

3. Baixar esse repo
``` bash
git@github.com:gustamms/lazyvim-conf.git
```

4. Pegar os arquivos e substituir
Pegue a pasta plugins e substitua na pasta: ~/.config/nvim/lua
Pegue o arquivo `init.lua` e substitua na pasta ~/.config/nvim

5. Abra o vim e espere a magia acontecer, se não acontecer nada
``` bash
:Lazy sync
```
