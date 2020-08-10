# PHP Copy/Paste Detector Docker

[PHP Copy/Paste Detector](https://github.com/sebastianbergmann/phpcpd) inside a docker container.


To run against your project, mount the path as a volume and point the image to it:

```sh
docker run -it --name phpcpd-cli --rm \
--volume=/path/to/php-project:/php-project \
bengroup/phpcpd /php-project

```
