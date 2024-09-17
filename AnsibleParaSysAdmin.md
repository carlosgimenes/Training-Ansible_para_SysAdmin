# Udemy - Ansible para SysAdmin

### **Instrutor**: Phillipe Costa
### **Linkedin**: Perfil do LinkedIn
### **Página do curso na Udemy**: [Link para página do curso](https://www.udemy.com/course/ansible-para-sysadmin/?couponCode=ST11MT91624A)
### **Pasta Google Drive Treinamento**: [Link para pasta do curso](https://drive.google.com/drive/folders/1ywcCxGLRNvVvXWHoaUsbqN4OpvNxFlCG?usp=drive_link)
### **Início**: 16/09/2024
### **Término**: 

---

## Dia 01

---

## Seção 1: Introdução ao Treinamento

### Introdução ao Treinamento

Grupo Telegram: [Link para página do grupo no Telegram](https://t.me/+SBk6LHKdpzeMLiWp)

### Requisitos Técnicos

- Nativamente o Ansible roda apenas em Linux
- Recomendação treinamento Linux: [Administração de Sistemas GNU/Linux: Fundamentos e Prática](https://www.udemy.com/course/adm-so-gnulinux/?referralCode=58F8BE46FFB066C7811A&couponCode=ST11MT91624A)
- Recomendação treinamento VirtualBox: [VirtualBox: Craindo laboratórios com máquinas virtuais](https://www.udemy.com/course/vboxlabs/?referralCode=69393EE188E9A32B5C9B)
- Antes de querer automatizar alguma tarefa ou serviço, aprenda a fazer de forma manual
- Ambientes Windows eu consigo gerencia-los

## Seção 2: Introdução ao Ansible

### O que é Ansible

- **Origem do Nome**: Em ficção científica, Ansible é uma forma de comunicação superlumínica, inicialmente proposta por Ursula K. Le Guin em seu livro _Rocannon's World_ de 1966.
- **Ferramenta de Automação**: Ansible é uma ferramenta de automação de código aberto para gestão de configuração, provisionamento e orquestração.
- **Desenvolvedor**: Criada por Michael DeHaan e mantida pela Red Hat.

### Os Quatro Pilares do Ansible

1. **Gerenciamento de Mudanças**
   - **Idempotência**: As tarefas são idempotentes, ou seja, não serão executadas novamente se o estado desejado já foi alcançado.
   - **Estado do Sistema**: Mantém o estado atual da máquina, garantindo que as configurações sejam aplicadas conforme necessário.
   - **Versões de Aplicações**: Permite manter o ambiente rodando com versões específicas das aplicações.
   - **Alertas de Mudanças**: Detecta e alerta sobre alterações no ambiente, permitindo reverter para uma versão anterior se necessário.

2. **Provisionamento**
   - **Configuração**: Define e aplica configurações em servidores e dispositivos.
   - **Instalação**: Automatiza a instalação de software e dependências.
   - **Preparação**: Prepara o ambiente para execução de aplicações.
   - **Alteração do Estado do Sistema**: Modifica o estado do sistema conforme necessário para atender aos requisitos de configuração.

3. **Automação**
   - **Execução de Tarefas**: Automatiza a execução de tarefas repetitivas e complexas.
   - **Ordenação de Tarefas**: Define a ordem de execução das tarefas (playbooks).
   - **Decisões**: Toma decisões baseadas em condições definidas (handlers e conditionals).
   - **Tarefas Ad-hoc**: Permite a execução de comandos e tarefas pontuais sem a necessidade de playbooks.

4. **Orquestração**
   - **Múltiplos Servidores**: Gerencia e coordena a configuração de múltiplos servidores simultaneamente.
   - **Múltiplas Aplicações**: Orquestra a implantação e configuração de várias aplicações.
   - **Diferentes Tarefas**: Coordena a execução de diferentes tarefas em sequência ou em paralelo.
   - **Ambiente Híbrido**: Suporta a gestão de ambientes híbridos, incluindo nuvem pública, privada e infraestrutura on-premises.

### Por que Ansible?

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

### Arquitetura & Funcionamento do Ansible

Documentação oficial do Ansible [Link para página da documentação oficial do Ansible](https://docs.ansible.com/)

#### Representação gráfica da Arquitetura do Ansible

![Arquitetura do Ansible](./Imagens/Ansible-Arquitetura.png)

#### Como ele funciona?

- **Desenvolvimento**
  - **Desenvolvido em Python**: O Ansible é escrito em Python, o que significa que você precisa ter Python instalado no seu sistema para utilizá-lo.
    - **Versões Suportadas**: Python 3.5 ou superior, ou Python 2.7.
    - **Localização do Interpretador**: Por padrão, o Ansible procura o interpretador Python em **/usr/bin/python**. Se o Python estiver em outro local, você pode configurar o caminho usando a variável **ansible_interpreter**.

- **Métodos de Comunicação e Autenticação**
  - **Comunicação**
    - **Comunicação via SSH**: O Ansible utiliza o SSH para se comunicar com seus targets (servidores Unix Like, roteadores, switches, etc.). Isso elimina a necessidade de instalar agentes nos nós gerenciados.
    - **Comunicação via WinRM**: Para servidores Microsoft Windows, o Ansible usa o serviço WinRM (Windows Remote Management) para comunicação.

  - **Autenticação**
    - **Usuário e Senha**: O Ansible pode autenticar usando um nome de usuário e senha. Ele também suporta autenticação via LDAP e Kerberos.
    - **Chave SSH**: Para servidores Linux, a autenticação pode ser feita usando chaves SSH, o que é considerado mais seguro e conveniente do que senhas.

---

## Dia 02

---

### Introdução a linguagem YAML

#### YAML, o que é?

- Yet another Markup Language ou YAML Ain't markup language
- Linguagem de serialização de dados
- Amplamente utilizada em arquivos de configuração
- Conhecida pela simplicidade e legibilidade
- Usa recuo no estilo Python para indicar hierarquia e alinhamento
- _**ATENÇÃO: É necessário utilizar espaços em branco pois caracteres de tabulação não são permitidos**_

YAML Ain't Markup Language version 1.2 Revision 1.2.2 (2021-10-01) [Link para página oficial da versão](https://yaml.org/spec/1.2.2/)

#### Estrutura YAML

- YAML inclui funcionalidades de várias linguagens como Perl, C, XML e HTML
- Arquivos YAML têm a extensão "**.yml**" ou "**.yaml**"
- Estruturados em formato de **mapas** ou **listas**
  - **Mapas**:
    - Associam pares de chave-valor
    - Cada chave deve ser única e a ordem das chaves não importa
  - **Listas**:
    - Contém valores em uma ordem específica
    - Cada item da lista começa com um traço (-) seguido de um espaço
    - Itens da listasão separados por um recuo

Documentação do YAML - Ansible [Link para página documentação YAML no Ansible](https://docs.ansible.com/ansible/latest/reference_appendices/YAMLSyntax.html)

#### Exemplo de estrutura Mapas e Lista

![Estrutura de Mapas e Listas no Ansible](./Imagens/Ansible-EstruturaMapasLista.png)

#### Onde o YAML é usado?

- Arquivos de configuração
- Ferramentas de automação como Ansible
- Orquestração de conteiners com Kubernetes
- Definição de pipelines em CI/CD (Integração Contínua/Entrega Contínua)
