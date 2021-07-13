# http-proxy-app

An app for proxying requests to an external deployment for migrating http apps (nginx reverse proxy)

This is an app for proxying HTTP requests to an external deployment. It's useful for migrating existing apps to SetOps. It contains a nginx web server which acts as a reverse proxy to the existing app.

## Usage

1. Build the image:

   ```
   make build
   ```

   This builds `http-proxy-app`.

1. Tag and deploy the image as outlined in the [SetOps docs](https://zweitag.setops.net/docs).

## Configuration

The app is configured with environment variables:

* `NGINX_PROXY`
  * Example: `https://mydomain.com`
  * The existing deployment from which to serve content (i.e., the old application server).

* `PORT`
  * Example: `80`
  * The port on which the proxy server will listen.

## References

* [SetOps docs](https://zweitag.setops.net/docs)
