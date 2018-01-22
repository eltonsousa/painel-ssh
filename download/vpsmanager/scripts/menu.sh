#!/bin/bash
#testando loop infinito while
x="teste"
menu ()
{
  while true $x != "teste" 
  do
  clear
  #TITULO
  tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
  tput setaf 3 ; tput bold ; echo "MINI SCRIPT" ; tput sgr0
  tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
  tput setaf 3 ; tput bold ; echo "Powered by | Sousa Tips" ; tput sgr0
  # MENU
  tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
  tput setaf 7 ; tput bold ; echo "[1] Atualizar sistema"
  sleep 1
  echo "[2] Criar Usuário"
  sleep 1
  echo "[3] Alterar data do Usuário"
  sleep 1
  echo "[4] Alterar Limite de Conexões"
  sleep 1
  echo "[5] Mudar senha"
  sleep 1
  echo "[6] Remover expirados"
  sleep 1
  echo "[7] Remover Usuário"
  sleep 1
  echo "[8] Verifica número de Conexões"
  sleep 1
  echo "[9] Limitar Conexões [screen]"
  sleep 1
  echo "[10] Adiciona host"
  sleep 1
  echo "[11] Deletar host"
  sleep 1
  echo "[12] Sair" ; tput sgr0
  sleep 1
  tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
  sleep 1
  echo ""
  tput setaf 7 ; tput bold ; echo "Digite a opção" ; tput sgr0
  echo ""
  read x
  tput setaf 3 ; tput bold ; echo "Opção informada ($x)" ; tput sgr0
  case "$x" in
    
    1)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      tput setaf 3 ; tput bold ; echo "Atualizando ..." ; tput sgr0
      sudo apt-get update > /dev/null
      sudo apt-get upgrade -y > /dev/null
      tput setaf 2 ; tput bold ; echo "Concluído!" ; tput sgr0
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      sleep 4
      ;;
    2)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      bash criarusuario
      echo "Concluído!"
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    3)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #echo "digite seu nome:"
      bash mudardata
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    4)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #echo "digite seu nome:"
      bash alterarlimite
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    5)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #echo "digite seu nome:"
      bash alterarsenha
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    6)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #echo "digite seu nome:"
      bash expcleaner
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    7)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #echo "digite seu nome:"
      bash remover
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;  
    8)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #echo "digite seu nome:"
      bash sshmonitor
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    9)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #echo "digite seu nome:"
      bash sshlimiter
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    10)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #echo "digite seu nome:"
      bash addhost
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    11)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #echo "digite seu nome:"
      bash delhost 
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    12)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      echo "Saindo..."
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      sleep 4
      clear;
      exit;
      ;;
    *)
      echo "opção invalida"
      sleep 4
  esac
  done
}
menu