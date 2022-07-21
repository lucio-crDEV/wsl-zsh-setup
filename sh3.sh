#Actualizando dependencias
sudo apt update -y && sudo apt upgrade -y;

#instalando nuevas dependencias
sudo apt install cowsay;
sudo apt install figlet;
sudo apt install lolcat;
sudo apt install git;
sudo apt install neovim;
sudo apt install zsh;
sudo apt purge nodejs;

#solicitando version node e isntalandola
echo "Ingrese la version de node que dese instalar"
echo "version: ";  read arg

curl -sL https://deb.nodesource.com/setup_$arg.x | sudo -E bash -
sudo apt install nodejs

#configurando GIT
git config --global init.defaultBranch main;


echo "Ingrese credenciales GIT: email"
read email
echo "Ingrese su usuario"
read user

git config --global user.email "$email"
git config --global user.name "$user"


#Setea zsh como bash predeterminada
chsh -s $(which zsh)

#mensaje final
figlet "Toodo listo" |  lolcat
