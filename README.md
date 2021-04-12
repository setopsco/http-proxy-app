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

* `NGINX_HOST`
  * Example: `test.schnellofant.de`
  * The virtual host (domain) the proxy app serves its content on (i.e., project domain).

* `NGINX_PROXY`
  * Example: `https://zweitag.aws.zweitagapps.de`
  * The existing deployment from which to serve content (i.e., the old application server).

## References

* [SetOps docs](https://zweitag.setops.net/docs)
* [App Migration Guide](https://docs.google.com/document/d/1XYAbtBKQEuyRj4yVqO8_Ek1O5MECxkayvMAB4X14mKU/edit?usp=sharing)
