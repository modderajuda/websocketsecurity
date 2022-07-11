#!/bin/bash
[[ $(screen -list| grep -c 'bot_teste') == '0' ]] && {
    clear
    echo -e "\E[44;1;37m            GERENCIAR BADVPN-UDP (PRO)            \E[0m"
    echo ""
    echo -e "\033[1;31m[\033[1;36m01\033[1;31m] \033[1;37m• \033[1;33mINSTALAR BADVPN(7300 PADRÃO) $var_sks1 \033[0m"
    echo -e "\033[1;31m[\033[1;36m02\033[1;31m] \033[1;37m• \033[1;33mINSTALAR BADVPN ARM(7300 PADRÃO) $var_sks1 \033[0m"
    echo -e "\033[1;31m[\033[1;36m03\033[1;31m] \033[1;37m• \033[1;33mATIVAR BADVPN(7296) $var_sks1 \033[0m"
    echo -e "\033[1;31m[\033[1;36m04\033[1;31m] \033[1;37m• \033[1;33mATIVAR BADVPN(7297) $var_sks1 \033[0m"
    echo -e "\033[1;31m[\033[1;36m05\033[1;31m] \033[1;37m• \033[1;33mATIVAR BADVPN(7298) $var_sks1 \033[0m"
    echo -e "\033[1;31m[\033[1;36m06\033[1;31m] \033[1;37m• \033[1;33mATIVAR BADVPN(7299) $var_sks1 \033[0m"
    echo -e "\033[1;31m[\033[1;36m07\033[1;31m] \033[1;37m• \033[1;33mATIVAR BADVPN(7200) $var_sks1 \033[0m"
    echo -e "\033[1;31m[\033[1;36m08\033[1;31m] \033[1;37m• \033[1;33mATIVAR BADVPN(7400) $var_sks1 \033[0m"
    echo -e "\033[1;31m[\033[1;36m09\033[1;31m] \033[1;37m• \033[1;33mATIVAR BADVPN(7500) $var_sks1 \033[0m"
    echo -e "\033[1;31m[\033[1;36m10\033[1;31m] \033[1;37m• \033[1;33mATIVAR TODAS AS PORTAS BADVPN $var_sks1 \033[0m"
    echo -e "\033[1;31m[\033[1;36m11\033[1;31m] \033[1;37m• \033[1;33mMONITOR DE PORTAS BADVPN-UDP \033[0m"
    echo ""
    echo -ne "\033[1;32mO QUE DESEJA FAZER \033[1;33m?\033[1;37m "
    read x
    echo "Opção informada ($x)"
    echo "================================================"
    case "$x" in


    1)
    bash <(curl -sL wget https://raw.githubusercontent.com/BGXSJYRABJE/hdisbsi/main/badvpn/badvpn)
    echo "================================================"
    ;;
    2)
    install dos2unix -y /dev/null
    wget https://raw.githubusercontent.com/KDUIVGUVIVIRT/F/main/F2/badvpn/badvpn.sh /dev/null
    chmod 777 badvpn.sh
    ./badvpn.sh
    echo "================================================"
    clear
    echo -e "\033[1;32mPORTA BADVPN PRO ATIVADO COM SUCESSO\033[1;33m"
    sleep 4
    menu
} || {
    screen -r -S "bot_teste" -X quit
    clear
    echo "BOT DESATIVADO"
    menu
}
