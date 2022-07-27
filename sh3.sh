# Actualizando dependencias y purgando
sudo apt update -y && sudo apt upgrade -y;
sudo apt purge nodejs -y;
sudo apt purge git -y;

# Instalando nuevas dependencias
sudo apt install cowsay -y;
sudo apt install figlet -y;
sudo apt install lolcat -y;
sudo apt install git -y;
sudo apt install neovim -y;
sudo apt install zsh -y;
sudo apt-get install binutils -y;
sudo apt install build-essential -y;

# solicitando version node e instalándola
echo "Ingrese la version de node que dese instalar: \n"
echo "\tversion: ";  read arg

curl -sL https://deb.nodesource.com/setup_$arg.x | sudo -E bash -
sudo apt install nodejs -y;

# Configurando GIT
# Comando reprecado hay que setear main neuvamente*
git config --global init.defaultBranch main;

echo "Ingresa tus credenciales GIT..."
echo "Email:"; read email
echo "Usuario:"; read user

git config --global user.email "$email" && git config --global user.name "$user"

# Setea zsh como bash predeterminada
chsh -s $(which zsh)

# Mensaje final

figlet "Que comience el juego" | cowsay -f tux -n | lolcat -a -s 1400

# Devolviendo versiones instalas de node y npm
echo "Versión NodeJS | " $(node -v)| lolcat -a -s 2000
echo "Versión NPM | " $(npm -v) | lolcat -a -s 2000
