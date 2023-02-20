#librerias
import os , time 
import subprocess
#Colores
negro = '\033[30m'
rojo = '\033[31m'
verde = '\033[32m'
amarillo = '\033[33m'
azul = '\033[34m'
rosado = '\033[35m'
calipso= '\033[36m'
blanco = '\033[37m'
cierre = '\033[39m'
#banner 
banner = """
   mm   m    mmmmmmmm  mmmm         mmmmm   mmmm        m     m m    m
   ##   #    #   #    m"  "m          #    "   "#       #  #  # ##  ##
  #  #  #    #   #    #    #          #      mmm"       " #"# # # ## #
  #mm#  #    #   #    #    #          #        "#       ### ##" # "" #
 #    # "mmmm"   #     #mm#         mm#mm  "mmm#"        #   #  #    # 
 
"""

#menu
print(azul+banner)
print(verde+" 1 >>> Instalar Requerimientos")
print(verde+" 2 >>> Instalar I3 WM ")
print(rojo+" 3 >>> Exit")
opt_menu = input(amarillo+">>>> ")
if opt_menu == "1":
    os.system('sudo apt update -y ; sudo apt install rofi ; sudo apt install polybar ; sudo apt install terminator ; git clone https://github.com/adi1090x/polybar-themes.git ; cd polybar-themes ; sudo bash setup.sh ')
        
elif opt_menu == "2":
    os.system('sudo apt install i3 ; sudo apt install nitrogen ; sudo rm -rf $HOME/.config/i3 ; cp -r i3 $HOME/.config/')
else:
    print("Error") 
