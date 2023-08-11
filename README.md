# ensambladoria

Proyectos de prueba en ensamblador. Usando NASM.

## Requisitos

- Necesitas **nasm** en la línea de comandos.
  - `sudo apt install nasm`
- Necesitas **ld** desde línea de comandos. Ya venía instalado en Ubuntu, creo.
- Necesitas **npm** y **node** para usar el `run` de la raíz del proyecto.

## Instalación

Tienes que hacer `npm i` para instalar las dependencias de npm. Sí, necesita un módulo para corregir el `PATH`, porque `node` lo sobreescribe. Este módulo lo corrige, y así el proceso de compilar el programa en ensamblador encuentra lo que necesita.

## Uso

Explicación rápida:

```sh
./run mi-programa
```

Explicación detallada:

Cada programa tiene su propia carpeta, bajo `src/*`.

El nombre de la carpeta permite un numero con punto delante, para ordenarlos automáticamente.

- Se crea una carpeta en `src/*` con el nombre de tu nuevo programa.
- Se crea el fichero `src/001.x/x.asm`. Donde `x` sería el nombre de tu programa.
- Se ejecuta poniéndote en la raíz del proyecto con la consola, y poniendo: `./run x`. 
