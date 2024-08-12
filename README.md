![Docker Pulls](https://img.shields.io/docker/pulls/ecespedes/mkdocs)![Docker Image Version (tag)](https://img.shields.io/docker/v/ecespedes/mkdocs/latest)

# MkDocs en Docker

## Características

Imagen creada con:

-   Python 3.9

-   MkDocs 1.6.0

-   MkDocks-Material 9.5.27

## Iniciar el Servicio

### Con docker run

```bash
docker run --rm -it -p 8000:8000 -v .:/usr/src/app ecespedes/mkdocs:1.0.0 bash
```

### Con docker-compose

```docker
name: mkdocs
services:
  mkdoc:
    image: ecespedes/mkdocs:1.0.0
    container_name: mkdocs
    stdin_open: true
    tty: true
    ports:
      - 8000:8000
    volumes:
      - .:/usr/src/app
    restart: always
```

#### Ingresar al contenedor

```bash
docker exec -it mkdoc bash
```

## Comandados

### Crear nuevo proyecto

```bash
mkdock new [nombre_proyecto]
```

### Iniciar el servidor para desarrollo

```bash
mkdocs serve -a 0.0.0.0:8000
```

### Exportar a formato para web-server

```bash
mkdocs build
```

## Temas y Plugins

Para incluir mas temas y/o plugins editar el archivo `requirements.txt`

puede obtener nuevos temas en:

[Temas](https://github.com/mkdocs/mkdocs/wiki/MkDocs-Themes)

[Plugins](https://github.com/mkdocs/catalog)

---

## Sitios oficiales

[MkDocs](https://www.mkdocs.org)

[MkDocs-Material](https://github.com/squidfunk/mkdocs-material)

[Cómo utilizar Markdown para escribir documentación | Adobe Experience Cloud](https://experienceleague.adobe.com/es/docs/contributor/contributor-guide/writing-essentials/markdown)
