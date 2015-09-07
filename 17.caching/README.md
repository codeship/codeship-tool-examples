## 17.caching

With this caching example, before a build is attempted a cache image is pulled from the registry. If this image is present it contributes to the docker image cache.

To try this out start the registry, and then time different jet runs:

```
$ ./before.sh
$ time jet steps --push --branch=test  # ~2mins
$ time jet steps --push --branch=test  # ~20s due to caching plus no new images to push
$ time jet steps --push --branch=test  # ~20s
$ ./after.sh
```

You can switch off the `cached` flag in the codeship-services file to see what difference it makes.

