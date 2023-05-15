<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Swagger UI</title>
    <link rel="stylesheet" type="text/css" href="$resourceURL(silverstripe/swagger-ui: /client/swagger-ui.css)" />
    <link rel="stylesheet" type="text/css" href="$resourceURL(silverstripe/swagger-ui: /client/index.css)" />
    <link rel="icon" type="image/png" href="$resourceURL(silverstripe/swagger-ui: /client/favicon-32x32.png)" sizes="32x32" />
    <link rel="icon" type="image/png" href="$resourceURL(silverstripe/swagger-ui: /client//favicon-16x16.png)" sizes="16x16" />
  </head>

  <body>
    <div id="swagger-ui"></div>
    <script src="$resourceURL(silverstripe/swagger-ui: /client/swagger-ui-bundle.js)" charset="UTF-8"> </script>
    <script src="$resourceURL(silverstripe/swagger-ui: /client/swagger-ui-standalone-preset.js)" charset="UTF-8"> </script>
    <script src="$resourceURL(silverstripe/swagger-ui: /client/swagger-initializer.js)" charset="UTF-8"> </script>
    <script>
      window.onload = function() {
        window.ui = SwaggerUIBundle({
            url: "{$documentURL}",
            dom_id: '#swagger-ui',
            deepLinking: true,
            presets: [
            SwaggerUIBundle.presets.apis,
            SwaggerUIStandalonePreset
            ],
            plugins: [
            SwaggerUIBundle.plugins.DownloadUrl
            ],
            layout: "StandaloneLayout"
        });
    };
    </script>
  </body>
</html>
