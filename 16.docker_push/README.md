### Usage

#### Set up the registry
`$ ./before.sh`


#### Run the steps via jet. 
Include the `push` flag in order to allow the push to happen
If you are using Docker Machine, you must make sure the registry is available on port 5000, either by adding a port forwarding rule between the Docker Machine VM and your local host, or by using the Docker Machine VM IP address directly. You can change the location of the registry in the `codeship-services.yml` and `codeship-steps.yml` files.

`$ jet steps --push=true`


#### Cleanup
`$ ./after.sh`

