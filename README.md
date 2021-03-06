# Asincro
Sincronización de bases de datos en Android. Conecta con https://github.com/gilpgnet/sincro.

Para entender mejor el código, se recomienda estudiar primero los proyectos https://github.com/gilpgnet/Amens
y https://github.com/gilpgnet/Asal.

Si tu computadora presenta problemas para compilar o ejecutar el código, puedes probar la versión para AIDE IDE:
https://github.com/gilpgnet/AideSincro.

## Ejecución en Windows
1. Abre el Símbolo del Sistema (cmd).
2. Prepara el dispositivo para ejecutar la app. Aquí se plantean 3 opciones:
   * [**Emulador Memu.**](https://www.memuplay.com/) Levanta el emulador. En los **Ajustes**, **Opciones de Desarrollo**,
     verifica que la **Depuración USB** esté activada. Desde una terminal teclea el siguiente comando.
  
     ```Batchfile
        call adb connect 127.0.0.1:21503
     ```
  
   * **Emulador normal.**  Levanta el emulador y desde una terminal teclea el siguiente comando.
  
     ```Batchfile
        call adb connect 127.0.0.1
     ```
  
   * **Dispositivo externo en modo desarrollador.** Conecta el dispositivo por USB a tu computadora. Si usas Windows 10, está listo.
     Si es una versión menor, necesitas descargar el driver para tu teléfono del sitio del fabricante, instalarlo y luego conectar tu
     dispositivo.
  
3. Cámbiate a la carpeta del ejemplo descompactado. Por ejemplo, si descompactas el proyecto en la carpeta
   _C:\ejemplos_, introduce el comando
   ```Batchfile
        cd C:\ejemplos\Asincro-master
   ```
4. Prepara el proyecto para usar gradle. Ejecuta el comando
   ```Batchfile
        call gradle wrapper
   ```
   Se crean los archivos
   - carpeta .gradle
   - carpeta gradle
   - gradlew
   - gradlew.bat
5. Modifica la URL del servicio en [/app/src/main/java/net/ramptors/asincro/Util.java](/app/src/main/java/net/ramptors/asincro/Util.java).
6. Para ejecutar el código, ejecuta el comando
   ```Batchfile
        call gradlew installDebug
   ```
   Compila el código y lo instala en el móvil. Solo tienes que hacer clic en el ícono instalado en el dispositivo.
  
7. Si la aplicación aborta inesperadamente, introduce el siguiente comando
   ```Batchfile
        call adb logcat > logcat.txt
   ```
   
   Revisa el contenido del archivo _logcat.txt_. Es algo largo, pero revísalo desde el final hacia el inicio.
8. Para eliminar los archivos innecesarios después de trabajar, ejecuta el comando
   ```Batchfile
        call clean
   ```
   Para volver a usar el proyecto, repite a partir del paso 5.
