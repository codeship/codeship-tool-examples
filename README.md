# Codeship Tool Examples 

Examples for use with the Codeship tool.

#### Prerequisites

Before being able to run these examples, you need the following

* [jet](https://github.com/codeship/codeship-tool/releases)
* A local docker client
* A local or remote docker daemon
* A checkout of this repo

These components can all be put inside a container to avoid having them local to your workstation. If you are running this from OSX you may need to authorize the temporary registry being created during the examples, this involves writing a simple configuration change to your vm:

```
$ boot2docker ssh "echo $'EXTRA_ARGS=\"--insecure-registry <YOUR INSECURE HOST>\"' | sudo tee -a /var/lib/boot2docker/profile && sudo /etc/init.d/docker restart"
```

In this example `<YOUR INSECURE HOST>` would simply be the ip address of your boot2docker instance, with port 5000, e.g. `192.168.99.100:5000`. You can do the same with docker-machine by creating a new machine and passing the insecure registry flag: `--engine-insecure-registry 0.0.0.0`.

#### Running the examples

To run all of the examples run `make test`. This will execute each example in turn.

To run a specific example, cd to the directory of the example you wish to run. You can execute the example with `jet steps --push`, however be sure to run the before and after scripts if they exist.

```
$ ./before.sh
$ jet steps --push=true
$ ./after.sh
```

#### Repositories that use the Codeship tool

* peter-edge/smartystreets_ruby (https://github.com/peter-edge/smartystreets_ruby)
* peter-edge/go-scm (https://github.com/peter-edge/go-scm)

#### Questions? Comments?

brendan@codeship.com
