# Scripts para automação dos labs

remove_shutdown.sh: cria um link simbólico para o reboot target, ou seja, ao tentar desligar, ele reinicia.

restore_shutdown.sh: desfaz o link para o reboot target

restore.sh: restaura o ambiente padrão dos computadores

update.sh: atualiza os computadores

clean.sh: remove o lixo do sistema

# Uso do crontab para automação

O arquivo crontab do linux é como o agendador de tarefas do windows, é possível definir datas específicas para a execução de scripts. Abaixo, segue o melhor guia de uso do Crontab que encontrei.

Link: https://www.hostinger.com.br/tutoriais/cron-job-guia

# Fluxo de operação das máquinas

Ao ligar:
<br>1 - restore.sh é acionado para recuperar o ambiente padrão
<br>2 - remove_shutdown.sh remove a função de desligamento do sistema, linkando para o reboot


Às 00:00:
<br>3 - update.sh atualiza os computadores
<br>4 - clean.sh limpa o lixo do sistema

Às 2:00:
<br>5 - restore_shutdown.sh devolve a função de desligamento dos computadores
<br>6 - poweroff.sh é acionado para desligar as máquinas

# Melhorias

M1: Tentar fazer uso do preload ou snapshots do linux (mais avançado) para melhorias de performance
<br>M2: Criar um servidor de arquivos dedicado para persistir dados de usuários