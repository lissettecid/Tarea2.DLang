# Ficha D (DLang)

- **Propósito:**
  Es un lenguaje de propósito general.

- **Paradigma:**
  Se considera como un lenguaje multiparadigma, debido a que incluye:
  - Orientado a Objetos
  - Imperativo
  - Funcional
  - Metaprogramming

- **Fortalezas y debilidades**
  \n**Fortalezas:**
  - Incluye introspección, condiciones de tiempo de compilación complejas y generación de código que puede escribir a partir de funciones D.
  - Al igual que otros lenguajes como C#, contiene un Garbage Collection (GC) que permite que escribamos código que maneja la memoria sin esfuerzo extra.
  - Operaciones comunes se realizan de forma más rápida y sencilla en D si lo comparamos con su antecesor C++.
  - Ciertos aspectos del syntax parsing son más simples, por lo que el código se vuelve más legible.

  **Debilidades:**
  - El lenguaje y sus herramientas son un poco antiguas y tienen mucha capacidad de mejora.
  - El GC es considerado una desventaja también para el desarrollo de baja latencia.
  - D se vuelve complejo cuando se empieza a integrar características de otro lenguaje, debido a que se requiere una sintaxis especial y en ocasiones se presentan errores inesperados.

- **Implementación:**
  Compilado

- **Runtime / Máquina Virtual:**
  El Runtime del lenguaje D no es una máquina virtual, se puede definir mejor como una librería binaria llamada druntime.so. La usa principalmente el compilador aunque en ocasiones puede ser útil acceder a él desde el código de la aplicación. Aquí tenemos el repositorio oficial de git de esta librería: [Librería druntime](https://github.com/dlang/druntime.git)

- **Plataformas soportadas:**
  Está disponible para todas las plataformas: Windows, Linux, Mac, etc.

- **Usuarios notables:**
  He encontrado varias organizaciones que hacen uso de este lenguaje. Entre ellas se encuentran:

  - ebay. Herramientas de minería de datos a gran escala.
  - Facebook. Herramientas de infraestructura
  - Jumia Food. “D nos ayuda a monitorear toda nuestra infraestructura de Kubernetes.”
  - Mercedes-Benz. “D se utiliza para el desarrollo de herramientas de software.”
  - Netflix. “Un lenguaje de sistemas moderno con una curva de aprendizaje muy suave.”

  Aquí un link con [otras organizaciones que hacen uso del lenguaje D](https://dlang.org/orgs-using-d.html).

- **Historia:**
  Su primera versión fue desarrollada por Walter Bright en 1999. Tiene su origen como un rediseño del ya conocido lenguaje C++, sin embargo, D tiene un enfoque más pragmático, por lo que no es considerado como un derivado del anterior. Además, también está influenciado por otros lenguajes como Java, C# e Eiffel. Una versión estable de este fue lanzada el 2 de enero del año 2007. La última versión estable de D Language fue lanzada el 11 de marzo de 2021 y es la versión número **2.096.0**.

- **Estado:**
  Activo