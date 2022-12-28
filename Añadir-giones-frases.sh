# como puedo eliminar espacios a esta frase: Establecer caracter y conversión de ficheros
#  y poner guiones con bash 

# Para eliminar los espacios en una cadena de texto y reemplazarlos con guiones en Bash, puedes utilizar la función tr y expresiones regulares.

# La sintaxis básica de la función tr es la siguiente:

# tr [opciones] conjunto1 conjunto2

# Donde conjunto1 es el conjunto de caracteres que se deben buscar y reemplazar y conjunto2 es el conjunto de caracteres con los que se deben reemplazar los caracteres de conjunto1.

# Para eliminar los espacios y reemplazarlos con guiones, puedes utilizar la siguiente expresión:

echo "Establecer caracter y conversión de ficheros" | tr -s '[:space:]' '-'

# La opción -s indica que se deben eliminar los caracteres de espacio múltiples. El conjunto [:space:] es una clase de caracteres que incluye todos los caracteres de espacio, como espacios, tabulaciones y saltos de línea.

# El resultado de la expresión anterior sería:

# Establecer-caracter-y-conversión-de-ficheros
