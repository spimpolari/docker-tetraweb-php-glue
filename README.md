# Glue + PHP for CI
Docker image for glue based on [tetraweb/php](https://github.com/TetraWeb/docker/) image. A simple command line tool to generate sprites.

## Glue

Glue is a simple command line tool to generate sprites using any kind of source images like PNG, JPEG or GIF. Glue will generate a unique PNG file containing every source image and a map file including the necessary information to use it. 

```bash
docker run pionl/tetraweb-php-glue:latest glue
docker run pionl/tetraweb-php-glue:latest php --version
```

## Contribution

1. Change the `Dockerfile.template`
2. Edit `build.sh` if new version is added
3. Run `build.sh` to build images
4. Run `build.sh deploy` to build and push images
