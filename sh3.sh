#!/bin/bash

# Función para mostrar barra de progreso
show_progress() {
  echo -n "$1" | pv -p -s $2 -w 80 -N "$3" --color "green" > /dev/null
  echo
}

# Actualizando dependencias y purgando
show_progress "Actualizando dependencias y eliminando..." 100 "Actualizado"
sudo apt update -y && sudo apt upgrade -y;

show_progress "Eliminando Node.js..." 50 "Versiones de Node.js anteriores desinstaladas"
sudo apt purge nodejs -y;

show_progress "Reseteando Git..." 50 "Git desinstalado"
sudo apt purge git -y;

# Instalando nuevas dependencias
show_progress "Instalando dependencias..." 100 "Instalado"
sudo apt install cowsay figlet lolcat git neovim zsh binutils build-essential python3-pip -y && pip3 install virtualenv flask django && sudo npm install -g @angular/cli && sudo npm install -g @ionic/cli;

# Solicitando versión de Node.js e instalándola
echo "Ingrese la versión de Node.js que desea instalar: \n"
echo "Versión: ";  read arg
curl -sL https://deb.nodesource.com/setup_$arg.x | sudo -E bash -
sudo apt install nodejs -y;

# Configurando GIT
# Comando reprecado hay que setear main nuevamente*
sudo git config --global init.defaultBranch main;

echo "Ingrese tus credenciales GIT..."
echo "Email:"; read email
echo "Usuario:"; read user
git config --global user.email "$email" && git config --global user.name "$user"

# Setea zsh como shell predeterminado
chsh -s $(which zsh)

# Mensaje final
figlet "Que comience el juego" | cowsay -f tux -n | lolcat -a -s 1400

# Devolviendo versiones instalas de node y npm
echo "Versión NodeJS | " $(node -v)| lolcat -a -s 2000
echo "Versión NPM | " $(npm -v) | lolcat -a -s 2000

#resetear para aplicar los cambios

sleep 6
echo "la terminal se reiniciara para aplicar los cambios, ahora debes ejecutar el siguiente script con permisos sudo | " $(npm -v) | lolcat -a -s 2000
reset