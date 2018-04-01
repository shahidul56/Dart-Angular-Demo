## Setup for Development

Welcome to the example app used in the
[Setup for Development](https://webdev.dartlang.org/angular/guide/setup) page
of [Dart for the web](https://webdev.dartlang.org).

You can run a [hosted copy](https://webdev.dartlang.org/examples/quickstart) of this
sample. Or run your own copy:

1. Create a local copy of this repo (use the "Clone or download" button above).
2. Get the dependencies: `pub get`
3. Launch a development server: `pub serve`
4. In a browser, open [http://localhost:8080](http://localhost:8080)

In Dartium, you'll see the app right away. In other modern browsers,
you'll have to wait a bit while pub converts the app.

---

*Note:* The content of this repository is generated from the
[Angular docs repository][docs repo] by running the
[dart-doc-syncer](//github.com/dart-lang/dart-doc-syncer) tool.
If you find a problem with this sample's code, please open an [issue][].

[docs repo]: //github.com/dart-lang/site-webdev/tree/master/examples/ng/doc/quickstart
[issue]: //github.com/dart-lang/site-webdev/issues/new?title=examples/ng/doc/quickstart


<h1 align="center">Comenzando con React, Redux y Dart</h1>

<h1 align="center">
  <img src="https://github.com/Ing-Brayan-Martinez/Dart-React-Redux-Demo/blob/master/docs/capture.png" alt="Dart React Redux Demo" width="800"/>
</h1>

[![Build Status](https://travis-ci.org/leerob/dart-react-todo.svg?branch=master)](https://travis-ci.org/leerob/dart-react-todo)
[![codecov](https://codecov.io/gh/leerob/dart-react-todo/branch/master/graph/badge.svg)](https://codecov.io/gh/leerob/dart-react-todo)
[![Strong Mode Compliant](https://img.shields.io/badge/strong_mode-on-brightgreen.svg)](https://github.com/leerob/dart-react-todo/blob/master/analysis_options.yaml#L2)

### Visión de conjunto

Hay un millón de formas diferentes de crear una aplicación web en el paisaje actual. Diferentes idiomas y frameworks van y 
vienen y varían en popularidad. No hay una sola manera correcta de hacer las cosas y, en última instancia, se trata de 
sopesar los pros y los contras de las herramientas disponibles a su disposición. El objetivo de este documento es informarle
 sobre otra opción que posiblemente no haya considerado anteriormente: el uso de React, Redux en Dart.

### Tabla de Contenidos

- [Inicio rápido](#inicio-rápido)
- [Que es Dart?](#que-es-dart)
- [Que es React?](#que-es-react)
- [Que es Redux?](#que-es-redux)
- [Empezando](#empezando)
- [Dart Development Environment](#dart-development-environment)
- [Referencias](#referencias)
- [Recursos Adicionales](#recursos-adicionales)

### Inicio rápido

```bash
$ git clone https://github.com/Ing-Brayan-Martinez/Dart-React-Redux-Demo.git
$ cd Dart-React-Redux-Demo
$ pub get
$ pub serve --port=9080
```

Abra http://localhost:9080/ para ver la aplicación.

### Que es Dart?

Dart es un lenguaje de programación originalmente [desarrollado por Google] (https://www.dartlang.org/) para la construcción 
de aplicaciones web complejas. Es una alternativa de tipo estático a JavaScript que se compila en JS para su uso en el navegador. 
Es de código abierto, fácil de aprender y fácil de escalar. ¡Pero espera hay mas!

- Integración IDE fuerte (finalización de código, navegación de código, análisis estático, etc.)
- Conjunto básico fuerte de bibliotecas comunes (asincrónicas, colecciones, aislamientos, etc.)
- Excelente ecosistema de desarrollo
- Soporte multi-threading
- Y [mucho, mucho más] (https://www.dartlang.org/guides/language)

Google usa Dart para [AdWords] (https://news.dartlang.org/2016/03/the-new-adwords-ui-uses-dart-we-asked.html) que constituye 
la mayoría de los ingresos de Google. Si tiene curiosidad, aquí hay una lista de algunas compañías 
[que usan Dart.] (Https://www.dartlang.org/community/who-uses-dart)

### Que es React?

React es una librería Javascript focalizada en el desarrollo de interfaces de usuario. Esa es su principal área de trabajo, 
pero lo cierto es que con todo el ecosistema de aplicaciones y herramientas y componentes, con React encontramos un excelente aliado para hacer todo tipo de aplicaciones web, SPA (Single Page Application) o incluso aplicaciones para móviles.

### Que es Redux?

Redux es una librería para controlar el estado de nuestras aplicaciones web fácilmente, de una forma consistente entre 
cliente y servidor, testeable y con una gran experiencia de desarrollo. Tambien se puede descir que Redux es un contenedor 
predecible del estado de aplicaciones JavaScript.

Redux está en gran parte influenciado por la arquitectura Flux propuesta por Facebook para las aplicaciones de React.js
 y por el lenguaje Elm, esta muy pensado para React.js, o cual cualquier otra librería de vistas. Es muy pequeño (2kB) y no tiene 
dependencias. 

### Empezando

Puede instalar Dart en macOS usando Homebrew.

```bash
$ brew tap dart-lang/dart
$ brew install dart --with-content-shell --with-dartium
```

### Dart Development Environment

El Dart SDK viene con herramientas para ayudarlo a ponerse en marcha.
de tener que configurar su propio entorno de desarrollo y construcción para cada
proyecto. Estas herramientas proporcionan administración de dependencias, compilación de código /
minificación, y soporte de depuración fuera de la caja.

#### Directory & File Structure

Dart tiene una estructura de directorios prescrita para garantizar que sus herramientas funcionen
fuera de la caja.

```
your_app/
├── lib/
│   └── src/
├── test/
├── tool/
├── web/
├── pubspec.lock
└── pubspec.yaml
```

* **`lib/`**
  * Contiene todo el código de implementación interna.
* **`test/`**
  * Contiene todas las pruebas de unidad, integración y funcionales.
* **`tool/`**
  * Contiene herramientas de desarrollo, scripts y configuración.
* **`web/`**
  * Este directorio se sirve de forma predeterminada al ejecutar la aplicación. Es común
    incluye un archivo `index.html` en este directorio.
* **`pubspec.yaml`**
  * Este archivo define todos los metadatos sobre su proyecto como nombre, versión, autores,
    dependencias, etc.
* **`pubspec.lock`**
  * Este archivo especifica la versión de cada dependencia instalada en el proyecto.
    Se actualizará automáticamente cuando las dependencias cambien en `pubspec.yaml`
    o corriendo`pub upgrade`.

#### Pub

El Dart SDK viene con una herramienta llamada `pub` para ayudarlo a administrar su código base. El comando `pub get`
se usa para descargar las dependencias de un proyecto. Esto es lo primero que tendrá  que hacer cuando revise un 
repositorio de Dart existente.

`pub serve` inicia un servidor de desarrollo para su aplicación Dart. Actualizar su navegador recompilará sus archivos
Dart a JavaScript. Como se mencionó anteriormente, con Dart 2.0 podrá "cargar en caliente" con dartdevc. Puede descargar
un prelanzamiento de Dart 2.0 si lo necesita ahora.

Para recuperar todas las dependencias de la aplicación de tareas pendientes y comenzar un servidor, podemos ejecutar:

```bash
$ pub get
$ pub serve
```
Now, we can open up http://localhost:8080/ to see the todo application.


#### Dartium.

Dartium es una compilación especial de [Chromium] (https://en.wikipedia.org/wiki/Chromium_ (web_browser)) distribuido 
con el Dart SDK que incluye Dart VM. Usar Dartium significa que no tiene que compilar su código en JavaScript hasta 
que esté listo para probarlo en otros navegadores. Esto permite un ciclo de iteración de desarrollo más rápido.

Dartium se va en Dart 2.0. En Dart 2.0, usará Chrome u otros navegadores estándar para las pruebas en lugar de Dartium
gracias a un nuevo compilador de desarrollo llamado [dartdevc] (https://webdev.dartlang.org/tools/dartdevc). En lugar
de profundizar en Dartium, este tutorial usará Chrome en lugar de Dartium. Para obtener más información, consulte
[Actualizaciones de Dart 2.0] (https://www.dartlang.org/dart-2.0).


#### IDE

El IDE que eliges es principalmente preferencia personal, pero aquí hay algunos que sugiero para Dart:

- [VS Code](https://code.visualstudio.com/) (Free)
- [WebStorm](https://www.jetbrains.com/webstorm/) (Requires License)

#### dart_dev

[dart_dev](https://github.com/Workiva/dart_dev) es nuestra herramienta centralizada construida sobre Dart SDK. Todos los proyectos de Dart finalmente comparten 
un conjunto común de requisitos de desarrollo:

- Pruebas (unidad, integración y funcional)
- Cobertura de código
- Formateo de código coherente
- Análisis estático para detectar problemas
- Generación de documentación

El Dart SDK proporciona las herramientas necesarias para llevar a cabo las tareas mencionadas anteriormente, pero carece
de un patrón de uso consistente en múltiples proyectos. Usando dart_dev, un único archivo de configuración tendrá nuestro
proyecto configurado y listo para usar una variedad de argumentos de línea de comando.

Por ejemplo: analicemos y formateemos toda nuestra base de códigos.

```bash
$ pub run dart_dev analyze
$ pub run dart_dev format
```

Para hacer las cosas aún más simples, podemos configurar un alias de bash

```bash
$ alias ddev='pub run dart_dev'
```

que convierte los comandos anteriores en:

```bash
$ ddev analyze
$ ddev format
```



### Referencias
    
Este proyecto fue basado en:

- [Curso avanzado de React (Redux y Testing)](https://www.youtube.com/watch?v=RZNNu2pO49g&list=PLxyfMWnjW2kuyePV1Gzn5W_gr3BGIZq8G)
- [redux-example](https://github.com/makeitrealcamp/redux-example)
- [dart-react-todo](https://github.com/leerob/dart-react-todo)

### Recursos Adicionales

- [workiva.github.io](https://workiva.github.io/)
- [Getting the most out of React in Dart](https://www.youtube.com/watch?v=ekBD-_jRjds)
- [Intro to Dart for Java Developers](https://codelabs.developers.google.com/codelabs/from-java-to-dart/index.html#0)
- [Language Tour](https://www.dartlang.org/guides/language/language-tour)
- [Library Tour](https://www.dartlang.org/guides/libraries/library-tour)
- [Effective Dart](https://www.dartlang.org/guides/language/effective-dart)
- [Futures Tutorial](https://www.dartlang.org/tutorials/language/futures)
- [Streams Tutorial](https://www.dartlang.org/tutorials/language/streams)
- [Dart by Example](http://jpryan.me/dartbyexample/)

