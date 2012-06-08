# 1) Checkout:
## checkout do zero
# git clone git@github.com:medcescato/book-agile-depot-app.git
# cd book-agile-depot-app

# ?
# git remote add origin git@github.com:medcescato/book-agile-depot-app.git

## trazer ultima versao (update override changes)
# git checkout .

# 2) Comparando mudancas locais:
## lista o que mudou localmente desde o ultimo checkout
# git status

# diff de todos os arquivos que mudaram (no ubuntu, chama o meld)
# git difftool

# 3) Comitando:
## adicionar novos arquivos criados ao repositorio
# git add .

## commit local
# git commit -a -m 'nome da tag'

## push pro repositorio (commit)
# git push -u origin master
