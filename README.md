Docker image build environment
==============================

These images are our build environment to build Docker images in them.

Please note:
* This is for an internal build environment
* Image names are not best practice

## Building

```
docker build --rm -t registry.example.com/icinga/docker-image-build .
docker push registry.example.com/icinga/docker-image-build
```

## License

Icinga, all tools and documentation are licensed under the terms of the GNU
General Public License Version 2, you will find a copy of this license in the
COPYING file included in the source package.
