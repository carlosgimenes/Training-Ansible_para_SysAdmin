#!/bin/bash

###################################################################################################
#
# ConfigurarRedeComIpFixo.sh - Script para Fixar IP da VM
#
# Autor: Carlos Eduardo Gimenes (carlos.gimenes@gmail.com)
# Data Criação: 24/09/2024
#
# Descrição: Script que fixa o IP da VM
#
# Exemplo de uso: ./ConfiguraRedeComIpFixo.sh
#
# Alteracoes:
#	25/09/2024 - Adicionado cabecalho ao script
#
###################################################################################################

# Verifica se o script está sendo executado como root
if [[ $EUID -ne 0 ]]; then
   echo "Este script precisa ser executado como root" 
   exit 1
fi

# Nome da interface de rede, substitua por sua interface real se for diferente
INTERFACE="eth0"

# Configurações de rede
IP_ADDRESS="192.168.0.136/24"
GATEWAY="192.168.0.1"

# Aplicar as configurações usando ip
ip addr add $IP_ADDRESS dev $INTERFACE
ip link set dev $INTERFACE up
ip route add default via $GATEWAY

# Configurações de DNS
echo "nameserver 192.168.0.1" > /etc/resolv.conf
echo "nameserver 8.8.8.8" >> /etc/resolv.conf

# Persistir as configurações usando netplan
cat > /etc/netplan/01-netcfg.yaml <<EOF
network:
  version: 2
  renderer: networkd
  ethernets:
    $INTERFACE:
      dhcp4: no
      addresses:
        - $IP_ADDRESS
      gateway4: $GATEWAY
      nameservers:
        addresses:
          - 192.168.0.1
          - 8.8.8.8
EOF

# Aplicar as configurações do netplan
netplan apply

# Mostrar as configurações aplicadas
echo "Configurações aplicadas:"
ip addr show $INTERFACE
ip route show
cat /etc/resolv.conf
