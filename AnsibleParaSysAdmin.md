# Udemy - Ansible para SysAdmin

### **Instrutor**: Phillipe Costa
### **Linkedin**: 
### **Página curso na Udemy**: [Link para página do curso](https://www.udemy.com/course/ansible-para-sysadmin/?couponCode=ST11MT91624A)
### Pasta Google Drive Treinamento: [Link para pasta do curso](https://drive.google.com/drive/folders/1ywcCxGLRNvVvXWHoaUsbqN4OpvNxFlCG?usp=drive_link)
### **Início**: 16/09/2024
### **Término**: 

---
# Dia 01

---
# Seção 1: Introdução ao Treinamento

## Introdução ao Treinamento

Grupo Telegram: [Link para página do grupo](https://t.me/+SBk6LHKdpzeMLiWp)

## Requisitos Técnicos

- Nativamente o Ansible roda apenas em Linux
- Recomendação treinamento Linux: [Administração de Sistemas GNU/Linux: Fundamentos e Prática](https://www.udemy.com/course/adm-so-gnulinux/?referralCode=58F8BE46FFB066C7811A&couponCode=ST11MT91624A)
- Recomendação treinamento VirtualBox: [VirtualBox: Craindo laboratórios com máquinas virtuais](https://www.udemy.com/course/vboxlabs/?referralCode=69393EE188E9A32B5C9B)
- Antes de querer automatizar alguma tarefa ou serviço, aprenda a fazer de forma manual
- Ambientes Windows eu consigo gerencia-los

# Seção 2: Introdução ao Ansible

## O que é Ansible

- Em ficção científica, Ansible é uma forma de comunicação superlumínica, inicialmente proposta por _**Ursula K**_ em seu livro _**Rocannon's Workd de 1966**_
- Ferramenta de automação (Gestão de Configuração) Open Source
- Desenvolvida por _**Michael DeHaan**_ (Red Hat)
- Trabalha com quatro pilares:
    - Gerenciamento de mudanças
        - **Idempotente**: nunca irá fazer a mesma tarefa mais que uma vez
        - **System State**: onde armazena o estado atual da máquina
        - **Versões de aplicações**: consigo deixar o ambiente rodando com uma versão específica da minha aplicação
        - **Alertas de mudanças**: caso tenha ocorrido alguma alteração no ambiente o Ansible consegue validar e gerar alertas desta mudança, permitindo voltar a uma versão anterior, garantindo que o ambiente esteja da forma que foi pré determinado
    - Provisionamento
        - Configuração:
        - Instalação:
        - Preparação:
        - Alteração do System State:
    - Automação
        - Execução de tarefas de forma automática
        - Ordenação de tarefas (tasks)
        - Realizar decisões
        - Ad-hoc tasks
    - Orquestração
        - Múltiplos servidores
        - Múltiplas aplicações
        - Diferentes tarefas
        - Ambiente híbrido

## Por que Ansible?

Além do Ansible, encontramos no mercado diversas ferramentas que se propõe a fazer o mesmo, que é a **Gestão de Configuração**, dentre as quais podemos citar:

1. **Puppet**: Uma ferramenta amplamente utilizada para automatizar a gestão de infraestrutura e garantir que os sistemas estejam configurados corretamente.
2. **Chef**: Focada em automação de infraestrutura, permite a configuração e gerenciamento de servidores em grande escala.
3. **SaltStack**: Conhecida por sua velocidade e escalabilidade, é usada para automação de TI e orquestração de infraestrutura.
4. **CFEngine**: Uma das ferramentas mais antigas, é conhecida por sua eficiência e capacidade de gerenciar grandes quantidades de servidores.
5. **Terraform**: Embora seja mais conhecida como uma ferramenta de infraestrutura como código (IaC), também pode ser usada para gestão de configuração, especialmente em ambientes de nuvem.

Essas ferramentas ajudam a automatizar e gerenciar a configuração de sistemas, garantindo consistência e eficiência.

Por que escolher o Ansible: ele tem várias vantagens que o tornam uma escolha popular para gestão de configuração:

1. **Simplicidade**: O Ansible usa uma linguagem simples baseada em YAML para definir configurações, o que facilita a leitura e a escrita dos playbooks, mesmo para quem não tem muita experiência em programação.

2. **Sem Agentes**: Diferente de algumas outras ferramentas, o Ansible não requer a instalação de agentes nos nós gerenciados. Ele se comunica via SSH, o que simplifica a configuração e a manutenção.

3. **Comunidade Ativa**: O Ansible tem uma comunidade grande e ativa, o que significa que há muitos recursos, tutoriais e módulos disponíveis para ajudar a resolver problemas e expandir funcionalidades.

4. **Flexibilidade**: Pode ser usado para uma ampla gama de tarefas, desde a configuração de servidores até a orquestração de aplicações complexas e a automação de tarefas de TI.

5. **Integração com Outras Ferramentas**: O Ansible se integra bem com outras ferramentas de DevOps e infraestrutura, como Docker, Kubernetes, e serviços de nuvem como AWS, Azure e Google Cloud.

## Arquitetura & Funcionamento do Ansible

Documentação oficial do Ansible [Link para página da documentação](https://docs.ansible.com/)

### Representação gráfica da Arquitetura do Ansible

![img-Imagem da Arquitetura do Ansible](./Imagens/Ansible-Arquitetura.png)

### Como ele funciona?

### 1. **Desenvolvimento e Requisitos de Python**
- **Desenvolvido em Python**: O Ansible é escrito em Python, o que significa que você precisa ter Python instalado no seu sistema para utilizá-lo.
    - **Versões Suportadas**: Python 3.5 ou superior, ou Python 2.7.
    - **Localização do Interpretador**: Por padrão, o Ansible procura o interpretador Python em **/usr/bin/python**. Se o Python estiver em outro local, você pode configurar o caminho usando a variável **ansible_interpreter**.

### 2. **Métodos de Comunicação e Autenticação**

### **Comunicação**
- **Comunicação via SSH**: O Ansible utiliza o SSH para se comunicar com seus targets (servidores Unix Like, roteadores, switches, etc.). Isso elimina a necessidade de instalar agentes nos nós gerenciados.
- **Comunicação via WinRM**: Para servidores Microsoft Windows, o Ansible usa o serviço WinRM (Windows Remote Management) para comunicação.

#### **Autenticação**
- **Usuário e Senha**: O Ansible pode autenticar usando um nome de usuário e senha. Ele também suporta autenticação via LDAP e Kerberos.
- **Chave SSH**: Para servidores Linux, a autenticação pode ser feita usando chaves SSH, o que é considerado mais seguro e conveniente do que senhas.

---
# Dia 02

---
# Coming soon