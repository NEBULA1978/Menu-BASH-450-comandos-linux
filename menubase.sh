#!/bin/bash

while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio"
    echo "2. Mostrar calendario"
    echo "3. Mostrar dato"
    echo "5. Seleccionar solo las frases que empiezan por la izquierda del todo solamente y mostramos por pantalla"
    echo "6. Crear lista de mombres del directorio actual numerados y guardamos en archivo"
    echo "7. Wardar nombres del fichero actual en archivo nombres.txt"
    echo "8. Crear lista de mombres y mostrar por consola de la parte abajo del menu"
    echo "9. Ver pasos menu bash"
    echo "10.  Eliminar espacios a esta frase: Establecer caracter y conversión de ficheros"
    echo "11. Ver 450 comamdos de archivo 450-comandos-linux.txt"
    echo "12. Crear archivo de texto con nombres de VARIOS-MENUS-BASH-main"
    echo "13. Ver 100 preguntas linux"
    echo "14. Ver comandos-linux-de-la-A-Z.txt"
    echo "15. Ver contenido de archivos .sh de este directorio"
    echo "16. Ver la primera palabrade un archivo de texto con awk"
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Mostrando directorio"
        ls
        read foo
        ;;
    2)
        echo "Mostrando calendario"
        cal
        read foo
        ;;
    3)
        echo "Mostrando datos"
        date
        read foo
        ;;
    5)
        echo "Seleccionar solo las frases que empiezan por la izquierda del todo solamente y mostramos por pantalla"
        grep "^[^[:space:]]" apuntes-linux-comandos.txt
        cat apuntes-linux-comandos.txt | more
        read foo
        ;;
    6)
        echo "Crear lista de mombres del directorio actual numerados y guardamos en archivo"
        bash ./prueba-nombres-menu-BUENO.sh
        cat nombres3.txt
        
        read foo
        ;;
    7)
        echo "Wardar nombres del fichero actual en archivo nombres.txt"
        ls > nombres.txt
        cat nombres.txt | more
        
        read foo
        ;;
    8)
        echo "Crear lista de mombres y mostarar por consola de la parte abajo del menu"
    
        bash ./'prueba-nombres-menu-BUENO copy.sh'
        # cat nombres2.txt | more
        
        read foo
        ;;
    9)
        echo "Ver pasos menu bash"
    
       
        cat pasos.txt | more
        
        read foo
        ;;
    10)
        echo "Eliminar espacios a esta frase: Establecer caracter y conversión de ficheros"
    
        echo "Establecer caracter y conversión de ficheros" | tr -s '[:space:]' '-'

        
        read foo
        ;;
    11)
        echo "Ver 450 comamdos de archivo 450-comandos-linux.txt"
    
        cat 450-comandos-linux.txt | more
        
        read foo
        ;;
    12)
        echo "Crear archivo de texto con nombres de VARIOS-MENUS-BASH-main"
    
        ls > nombres-menus.txt
        
        read foo
        ;;
    13)
        echo "Ver 100 preguntas linux"
    
        cat apuntes-100-pregunats.txt | more
        
        read foo
        ;;
    14)
        echo "Ver comandos-linux-de-la-A-Z.txt"
    
        cat comandos-linux-de-la-A-Z.txt | more
        
        read foo
        ;;
    15)
        echo "Ver contenido de archivos .sh de este directorio"
    
        cat *.sh | more
        
        read foo
        ;;
    16)
        echo "Ver la primera palabrade un archivo de texto con awk"
    
        primera_palabra=$(awk 'NR == 100 {print $1}' comandos-linux-de-la-A-Z.txt)
        echo "La primera palabra de la línea 100 es: $primera_palabra"

        
        read foo
        ;;
    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
