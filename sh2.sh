#!/bin/bash
# Actualizando dependencias
sudo apt update -y && sudo apt upgrade -y

# Agregando dependencia / tema
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Agregando source al rc de zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

# Configuración para cerrar la terminal al salir
if [ "$SHLVL" = 1 ]; then
    trap "exit" INT TERM
    export TERM=linux
    kill -s TERM $$
fi

# Reiniciar la terminal o abrir una nueva sesión de Zsh para aplicar los cambios
echo 'Ahora debes configurar el tema ingresando "p10k configure" en tu terminal \n(recuerda tener instalada la fuente tipográfica necesaria)' | lolcat -a -s 3000 
sleep 5
echo "\nLa terminal se reiniciara ahora para aplicar los cambios"  | lolcat -a -s 3000 
sleep 3
echo "Para más duda revisa el readme.md del repositorio, éxito!" |  lolcat -a -s 3000
slep 1
echo '"p10k configure"' |  lolcat -a -s 3000
echo '"p10k configure"' |  lolcat -a -s 3000
echo '"p10k configure"' |  lolcat -a -s 3000
echo '"p10k configure"' |  lolcat -a -s 3000
echo '"p10k configure"' |  lolcat -a -s 3000
sleep 9
reset

# Carga la configuración de Zsh sin iniciar una nueva sesión
source ~/.zshrc
