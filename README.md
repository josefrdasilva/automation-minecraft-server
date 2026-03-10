# Minecraft Server Infrastructure
Este projeto documenta a implementação de um servidor de Minecraft de alta disponibilidade, executado em hardware dedicado (reaproveitado). O objetivo é prover um ambiente estável e automatizado, utilizando boas práticas de administração de sistemas Linux e conteinerização.

## Tecnologias e Ferramentas
- Hardware: Desktop reaproveitado (x86_64).
- Sistema Operacional: Ubuntu Server 24.04.
- Virtualização: Docker e Docker Compose.
- Segurança de Rede: Firewall UFW com regras de tráfego restritas.
- Automação: Shell Scripting e Cron para rotinas de manutenção.

## Funcionalidades Implementadas
- Gerenciamento de Infraestrutura: Servidor isolado em containers para facilitar a manutenção e atualização.
- Automação de Backups: Script de backup automatizado que compacta os dados do mundo de hora em hora.
- Gestão de Armazenamento: Limpeza automática de arquivos de backup obsoletos para otimização de espaço em disco.
- Monitoramento: Análise de logs do servidor em tempo real através da linha de comando.
- Segurança: Restrição de acesso a portas e gerenciamento de permissões de usuário para execução de comandos do Docker.

## Estrutura do Repositório
- docker-compose.yml: Configurações de inicialização do servidor.
- backup_minecraft.sh: Script de rotina de backup e limpeza.
