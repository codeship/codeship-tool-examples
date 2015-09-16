## 18 Load Balancer

This example shows how to run a load balancer in front of multiple containers.

### Running the integration test

    jet steps

Runs an integration test that pings the application over http.

### Running the server

    jet run lb

Runs the application, exposing the top level load balancer. If you `curl` the app a few times you'll see different web servers handling the request.
