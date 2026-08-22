<p align="center">
  🌐 <b>Idiomas / Languages:</b> <a href="README.es.md">Español 🇪🇸</a> | <a href="README.md">English 🇬🇧</a>
</p>

---
# Playerbot Manager

**Una add-on de World of Warcraft WotLK 3.3.5a para servidores privados AzerothCore que realiza el seguimiento del gear score, iLvL, casillas de equipamiento, especializaciones, estrategias y composición de banda para toda tu lista de playerbots.**

**Versión 1.4**

---

## Cambios recientes — v1.4 (3 de julio de 2026)

### Reordenar filas

* Arrastrar para reordenar — agarra el tirador `#` a la izquierda de una fila y arrastra. Funciona en las pestañas de Clase, Banda y Grupo
* El orden manual se guarda y limpia la ordenación activa de columnas

### LevelSync

* Nuevo botón de Exportación (abajo a la derecha) — copia los personajes sincronizados (nombre, clase, nivel, nivel de IP) al rastreador

### Progresión Individual

* Se ha añadido el nuevo comando `.ip attune onyxia/blacktemple` a la lista de comandos

### Pestañas de Clase

* Las casillas de equipamiento ahora se resaltan al pasar el cursor por encima, igual que en la pestaña de Grupo

### Botón CC — Mago, Sacerdote, Brujo, Druida

Se ha añadido un botón **CC** a la ficha de personaje para estas cuatro clases, alternando la estrategia de control de masas `cc`:

* **Mago** — Polimorfia
* **Sacerdote** — Encadenar no-muerto
* **Brujo** — Miedo / Desterrar
* **Druida** — Ciclón / Hipnotizar / Raíces enredadoras

### Invitar a Banda *(mod-playerbots PR #2502)*

* Se ha eliminado la solución alternativa de pausa/reincorporación del 6.º miembro — la conversión de grupo a banda ahora se gestiona desde el servidor

---

## Características

### Pestañas de Clase
![Class Tracker](Screenshots/ClassTab.png)
Cada una de las 10 clases jugables tiene su propia pestaña con casillas ilimitadas en la lista. Cada fila de personaje realiza el seguimiento de:

* Especialización — detectada automáticamente mediante la inspección de talentos o mediante escaneos manuales
* iLvL — nivel medio del equipamiento equipado calculado mediante inspección
* Gear Score — GearScore real de estilo WotLK calculado a partir del equipamiento inspeccionado, coloreado según la calidad del objeto
* 17 casillas de equipamiento — Cabeza, Cuello, Hombros, Espalda, Pecho, Muñecas, Manos, Cintura, Piernas, Pies, Anillo 1, Anillo 2, Abalorio 1, Abalorio 2, Mano principal, Mano secundaria, A distancia
* Pasa el cursor por encima de cualquier casilla de equipamiento para ver la información completa del objeto

### Ficha de Personaje
![Character Sheet](Screenshots/CharacterSheet.png)
Haz clic en el nombre de cualquier bot para abrir su ficha de personaje.

* **Árbol de especialización** — tres iconos de árbol de talentos en la parte superior, uno por especialización. Las especializaciones activas están iluminadas; las inactivas están en gris. Haz clic para cambiar.
* **Lista de estrategias** — todas las estrategias de combate (CO) y no combate (NC) activas se muestran y se codifican por colores según el nivel. Haz clic en cualquier icono de estrategia para activarla o desactivarla.
* **Acceso rápido** — botones de Talentos, Inventario y Libro de hechizos para el bot sin salir de la ventana.

### Colores de Estrategia

Las respuestas de estrategia de los bots se filtran del chat regular y se muestran en un marco de salida propio del add-on, etiquetadas con el color de clase del bot.

| Nivel | Color | Ejemplos |
|---|---|---|
| 1 | Color de clase | sangre, escarcha, profano, armas, furia, sanación sagrada, sombras… |
| 2 | Amarillo | sanación, sanación secundaria, bmana, bdps, beneficio… |
| 3 | Naranja | asistencia de tanque, asistencia de dps, atracción, cc… |
| 4 | Oro oscuro | botín, recolectar, comida… |
| 5 | Por estrategia | impulso, evitar área, sigilo, pociones, formación… |

### Controles Inferiores

* **+ Añadir Objetivo** — Añade el objetivo al rastreador
* **+ Añadir Grupo** — Añade de golpe a todos los miembros del grupo/banda
* **+ Añadir Equipamiento de Objetivo/Grupo** — Actualiza tanto el iLvL como el GS mediante inspección (no afecta a la especialización)
* **+ Añadir Especialización de Objetivo/Grupo** — Lee la especialización de talentos (no afecta al GS); desactivado durante un escaneo activo
* **Escaneo Completo de Grupo** — Ejecuta las tres fases automáticamente: añadir miembros → escanear equipamiento → escanear especialización
* **Detener** — Cancela un escaneo en curso en cualquier momento, incluida la fase de adición de miembros
* **Iniciar / Cerrar Sesión de Todos los Bots** — `.playerbots bot add/remove \*`
* **Cerrar Sesión de Bots Huérfanos** — Cierra la sesión de los bots de la lista que no estén actualmente en tu grupo de banda activo
* **Disolver Grupo / Banda** — Expulsa a todos los miembros y luego abandona. Requiere confirmación

### Cuadro de Salida

* Registro con desplazamiento en la parte inferior de la ventana del rastreador
* Todos los mensajes de estado se dirigen aquí en lugar del chat
* Desplazable con la rueda del ratón, historial de 500 líneas
* Alternador de expansión (∧) / colapso (∨) para ver más líneas visibles
* **Botón DBG** — activa/desactiva el registro detallado de depuración de inspección (verde = activo)

### Barras de Resumen

* **Barra media** — nivel medio de objeto registrado por clase (valores en oro)
* **Barra GS** — GearScore medio por clase (valores en oro)
* **Barra de recuento** — total de personajes por clase

### Botones de Ayuda

Tres iconos de ayuda en la barra de cabecera (pasa el cursor por encima para ver la información):

* **Configuración** — Cómo configurar tu rastreador
* **Pestaña de Banda** — Cómo usar la pestaña de Banda: elegir un nivel/banda, añadir personajes, invitar mediante INVITAR A BANDA o INVITAR A GRUPO
* **Pestaña de Vista General** — Cómo usar la pestaña de Vista General: añadir/eliminar de la banda, invitar al grupo, filtrar y ordenar
* **Pestaña de Clase** — Cómo usar las pestañas de clase: filtrar, asignar icono de especialización, inspección de casillas de equipamiento, barra de recuento

## Pestaña de Banda
![Raid Planner](Screenshots/RaidTab.png)
Hasta 40 casillas distribuidas en dos columnas. Cada casilla muestra el icono de clase, el icono de especialización, el nombre, el iLvL, el GS, las necesidades, el rol y las notas.

### Invitar a Banda / Invitar a Grupo

* **INVITAR A BANDA** — Cierra la sesión de los bots antiguos automáticamente, abandona el grupo, se convierte en banda e invita a todos los miembros de la lista mediante `.playerbots bot add`. Siempre invita desde la tabla de la banda seleccionada actualmente.
* **INVITAR A GRUPO** — Invita al equipo de 5 jugadores desde la pestaña Mazmorras de 5 Jugadores T0. Funciona de manera independiente de qué pestaña esté activa. **Invitar a Grupo** siempre lee de la lista T0 / N/A (5 Jugadores) independientemente del nivel que se muestre actualmente.

Ambos botones eliminan primero los bots activos, abandonan el grupo actual y luego vuelven a añadir a cada miembro de la lista por orden. Los bots omitidos se vuelven a invitar automáticamente. Un botón de **Detener** cancela el proceso en cualquier momento.

## Pestaña de Vista General

Vista principal de todos los personajes registrados de todas las clases — 3 columnas de 20 filas (60 por página, 180 en total).

* Grupos A, B, C para organizar los personajes
* Ordenar por Especialización, Nombre, iLvL, GS o pertenencia a la banda (+ cabecera)
* Añadir a la Banda (clic izquierdo +) y Eliminar de la Banda (clic derecho +) por fila
* Invitar al Grupo (clic izquierdo >) y Expulsar del Grupo (clic derecho >) por fila
* Eliminar personajes directamente
* La barra de recuento muestra los totales de todas las páginas

---

## Pestaña de Progresión Individual

Requiere el módulo del servidor **mod-individual-progression** ([github.com/ZhengPeiRu21/mod-individual-progression](https://github.com/ZhengPeiRu21/mod-individual-progression)).

Muestra una tabla de referencia completa de niveles que indica cada nivel de progresión, sus bandas, el límite de nivel, el jefe final y lo que desbloquea. Pasa el cursor por encima de cualquier fila de nivel para ver información detallada.

### Botón + Añadir Niveles de IP

Un nuevo botón **+ Añadir Niveles de IP** en la barra inferior lee el nivel de IP actual de cada personaje registrado y lo escribe en el rastreador automáticamente. Esto te permite ver de un vistazo dónde se encuentra cada bot en el sistema de progresión sin tener que comprobar cada personaje individualmente.

---

## Pestaña LevelSync

Interfaz integrada para el módulo de servidor mod-levelsync. Se comunica mediante comandos de servidor `.levelsync`. No se necesita ningún add-on adicional.

## Cómo Usar

### Seguimiento del Equipamiento

* **+ Añadir Equipamiento de Objetivo/Grupo** — actualiza tanto el iLvL como el GS sin modificar la especialización
* Pasa el cursor por encima de cualquier casilla de equipamiento para ver la información completa del objeto
* Los colores de las casillas de equipamiento reflejan la calidad del objeto de WoW

### Crear una Lista de Banda

1. Cambia a la pestaña de Banda y selecciona un nivel y una banda en los menús desplegables de la cabecera
2. Utiliza el + en cualquier fila de personaje (pestaña de Clase o Vista General) para añadirlo a la banda activa
3. Haz clic derecho en + para eliminar un personaje de la lista de la banda
4. Haz clic en **Invitar a Banda** para iniciar la sesión de todos los miembros de la lista

### Gestionar un Grupo de 5 Jugadores

1. Cambia a la pestaña **T0 / N/A (5 Jugadores)** en la pestaña de Banda
2. Añade hasta 5 personajes mediante las pestañas de Clase o Vista General
3. Haz clic en **Invitar a Grupo** para iniciar sus sesiones

### Copiar una Lista

1. Navega hasta la lista de origen y haz clic en **Copiar**
2. Cambia al destino, haz clic en **Pegar** y confirma

### Importar / Exportar Personajes

Utiliza el botón Importar/Exportar para generar una cadena de texto de tu lista actual. Cópiala e impórtala en otra cuenta para transferir tus personajes registrados y los datos de equipamiento.

---

## Instalación
Nota: No se requiere ningún otro mod o add-on para usar Playerbot Manager

### Opción 1 — Git Clone (recomendado, se mantiene actualizado)

Navega hasta tu carpeta AddOns y ejecuta:
```git clone https://github.com/Lichborne-AC/PlayerBotManager```

Para actualizar más adelante, simplemente ejecuta `git pull` dentro de la carpeta PlayerBotManager.

### Opción 2 — Instalación Manual

1. Descarga el zip más reciente desde la página de Releases
2. Extrae y arrastra la carpeta PlayerBotManager a:

   World of Warcraft/Interface/AddOns/

3. Inicia WoW y escribe `/pmb` o haz clic en el botón del minimapa

   **Requisitos:** WoW 3.3.5a (WotLK) | AzerothCore | Módulo Playerbot

---

## Créditos

Creado para servidores privados AzerothCore.

Agradecimientos especiales a: **Dohtt**, **Scarecr0w12** — TheCGN.net, **Dreathean**, **Revision**, **Crow**, **LatChee**, **InvaderCanuck** y **ScoobyPwnsOnU** por las sugerencias de funciones, pruebas y apoyo.

Agradecimientos adicionales a Wishmaster117 por Multibot, cuyo trabajo sentó las bases para varios sistemas de PBM, y a la comunidad de Discord de Playerbots por su apoyo.

**Preguntas y Soporte:** lichborne.wow@proton.me | Discord: jared2219

---

## Descargas Sugeridas

* **[mod-levelsync](https://github.com/Lichborne-AC/mod-levelsync)** — Módulo de servidor AzerothCore que alimenta la pestaña LevelSync. No es obligatorio, pero la pestaña LevelSync no tendrá ningún efecto sin él.

---

## Compatibilidad

WoW 3.3.5a (build 12340) | AzerothCore | Módulo Playerbot