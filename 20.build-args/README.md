# Build Arguments

For any service, you can declare [build arguments](https://docs.docker.com/compose/compose-file/#/args), which are values available to the image only at build time. For example, if you must pass the image a set of credentials in order to access an asset or repository when the image is built, you would pass that value to the image as a build argument.

This example demonstrates three different ways to build arguments to the image at build time. Each of the build arguments -- `UNENCRYPTED`, `ENCRYPTED`, and `FROMFILE` are declared in the `Dockerfile` and then set in the `codeship-services.yml` file. For each of them, a default value of `default` is defined. When the build argument is consumed in this example. it is assigned to an environment variable to verify that it is correctly being passed into the image at build time. It is not necessary to assign a build argument to an environment variable.

Learn more about [build arguments](https://docs.docker.com/compose/compose-file/#/args) from Docker, or refer to the Codeship articles about [build arguments](https://documentation.codeship.com/docker/getting-started/build-arguments) and [encryption](https://documentation.codeship.com/docker/getting-started/encryption).
