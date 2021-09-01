#! bin/bash

# > (maior) - Direciona a saída de um comando para dentro de um arquivo, sobrescrevendo o seu conteúdo, caso o arquivo especificado não exista, ele cria.

# Exemplo: $ echo 1 > arq.txt

# >> (maior-maior) - Direciona a saída de um comando para dentro de um arquivo, ele não sobrescreve o seu conteúdo, apenas acrescenta a saída do comando para o final do conteúdo existente no arquivo, caso o arquivo não tenha sido criado, ele criará.

# Exemplo: echo 2 >> arq.txt

# 2> (2=stderr-maior) - Direciona a saída de erros de um comando para dentro de um arquivo, sobrescrevendo o seu conteúdo, caso o arquivo não exista, ele cria.

# Exemplo: ls 69 2> erros.txt

# 2>> (2=stderr-maior-maior) - Direciona a saída de erros de um comandos para dentro de um arquivo, ele não sobrereve o seu conteúdo, apenas acrescenta a saída do comando para o final do arquivo existente, caso o arquivo não exista, ele criará.

# Exemplo: ls 45 2>> erros.txt

# &> (e-maior) - Direciona a saída padrão e saída de erros de um comando para dentro de um arquivo, ele sobrescreve o conteúdo, caso o arquivo não exista, ele criará.

# Exemplo: cat /etc/* &> saida.txt

#Obs: No exemplo ele irá exibir o conteúdo dentro do /etc, porém lá também existe diretórios no qual vai dar erros pois o comando para exibir diretórios é o "ls".

# &>> (e-maior-maior) - Direciona a saída padrão e saída de erros de um comando para dentro de um arquivo, ele não sobrescreve o seu conteúdo, apenas acrescenta a saída para o final do arquivo existente, caso não exista, ele criará.

# Exemplo: cat /etc/* &>> saida.txt

# < (menor) - Direciona o conteúdo de um arquivo para a entrada de um comando.

# Exemplo: cat < /etc/passwd

# << (menor-menor) -Direciona o conteúdo de um arquivo para a entrada aberta até que seja digitado algum caractere de fim de arquivo, como CTRL+D.

# Exemplo: cat << /etc/passwd

# <<< (menor-menor-menor) - Exibe o caminho para o arquivo.

# Exemplo: cat <<< /etc/passwd

# | (pipe) - Direciona a saída de um comando para a entrada de outro.

# Exemplo: cat /etc/passwd | tail
