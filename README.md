# Shaders II

![N|Solid](https://i.gyazo.com/96b3a41310acba564eba0ad8cc707971.png)

# Indice

  - Introducción
  - La aplicación
  - Decisiones de diseño
  - Tutorial
  - Notas del autor
  - Gif sobre el funcionamiento

# Informe

**Introducción**:

En esta novena entrega hemos vuelto a focalizar nuestros objetivos en los shaders que ofrece processing junto a OPENGL. Para esta ocasión hemos empezado un proyecto desde 0 para ver más posibilidades referentes a esta herramienta.

**La aplicación**:

Nuestra aplicación se basa en el personaje de animación Mike Wazowski. Este personaje cuenta con su gran ojo característico el cual sigue al ratón en función de la posición. Así mismo, al presionar el botón del ratón nuestro personaje cierra su ojo, como si de un parpadeo se tratase.

![N|Solid](https://i.gyazo.com/15f6700a361f2f1049ea0c492e2e8dbf.png)

**Decisiones de diseño**:

Hemos decidio implementar al característico personaje debido a su gran globo ocular, en el desarrollo de la aplicación esta se fundamentaba en un ojo humano el cual iba a realizar la misma función de parpadeo, o cambiar el ojo de abierto -> cerrado. No obstante, al ver la posiblidad de agregar un poco más de entidad y personalidad a la propuesta, nos vimos en la obligación de agregar este añadido en forma de personaje verde.

![N|Solid](https://i.gyazo.com/fd065fb2195e469f6bb662932fd9b752)

**Tutorial**

Disponemos de unos controles simples:
    -Para cambiar el "estado" del ojo de abierto a cerrado o de cerrado a abierto, simplemente debemos pulsar el click izquierdo del ratón.
    -El ojo seguirá el cursor, es decir, mirará a la posición actual de nuestro ratón.
  
**Notas del autor**

No hemos sido capaces de aislar el color de las extremidades de nuestro personaje para que no cambie a la vez que el resto del ojo.

**Gif sobre el funcionamiento**


![Alt Text](https://i.gyazo.com/e1c85024c81267ead8bd09bb875640cd.gif)
