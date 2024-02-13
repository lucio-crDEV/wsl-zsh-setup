# Configuración de WSL y Ejecución de Scripts

Este repositorio contiene dos scripts de configuración para Windows Subsystem for Linux (WSL) y Zsh. Estos scripts te ayudarán a instalar y configurar las dependencias necesarias en tu entorno WSL.

### Previo:
Para el siguiente tema de zsh necesitas esta fuente instalada y configurada para la terminal
---> MesloLGS NF
- [MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
- [MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
- [MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
- [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

## Pasos para configurar WSL y ejecutar los scripts

### 1. Instalar WSL

Sigue las instrucciones de Microsoft para instalar WSL en tu sistema. Puedes encontrar información detallada en el siguiente enlace: [Instalación de WSL en Windows](https://docs.microsoft.com/es-es/windows/wsl/install-win10)
- Es recomendable realizar esta actualización [Paquete de actualización del kernel de Linux en WSL 2 para máquinas x64](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi)

### 2. Clonar el repositorio

Clona este repositorio en tu entorno WSL. Abre una terminal en WSL y ejecuta el siguiente comando:

```
git clone https://github.com/lucio-crDEV/wsl-zsh-setup.git
```

### 3. Ejecutar el primer script

El primer script se encuentra en la ruta wsl-zsh-setup/script1.sh. Este script se encarga de actualizar las dependencias, eliminar versiones antiguas de Node.js y Git, instalar nuevas dependencias y configurar Git.

Ejecuta el siguiente comando para ejecutar el primer script:

```
cd wsl-zsh-setup
chmod +x script1.sh
./script1.sh
```

### 4. Ejecutar el segundo script
El segundo script se encuentra en la ruta wsl-zsh-setup/script2.sh. Este script se encarga de actualizar las dependencias, instalar el tema Powerlevel10k y configurar Zsh.

Ejecuta el siguiente comando para ejecutar el segundo script:

```
cd wsl-zsh-setup
chmod +x script2.sh
./script2.sh
```

Sigue las instrucciones que se muestran en la terminal durante la ejecución del script.

#### ¡Listo! 

Ahora deberías tener WSL configurado con Zsh y las dependencias necesarias instaladas en tu entorno.

Para más información y detalles sobre los scripts, revisa los archivos de script1.sh y script2.sh en este repositorio.

¡Que disfrutes usando WSL con Zsh!
