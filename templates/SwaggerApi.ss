<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Swagger UI</title>
    <% require css('silverstripe/swagger-ui:client/swagger-ui.css') %>
    <% require css('silverstripe/swagger-ui:client/index.css') %>
    <link rel="icon" type="image/png" href="$resourceURL(/swagger/client/favicon-32x32.png)" sizes="32x32" />
    <link rel="icon" type="image/png" href="$resourceURL(/swagger/client/favicon-16x16.png)" sizes="16x16" />
  </head>

  <body>
    <div id="swagger-ui"></div>
    <% require javascript('silverstripe/swagger-ui:client/swagger-ui-bundle.js') %>
    <% require javascript('silverstripe/swagger-ui:client/swagger-ui-standalone-preset.js') %>
    <% require javascript('silverstripe/swagger-ui:client/swagger-initializer.js') %>
    <script>
        window.onload = function() {
  //<editor-fold desc="Changeable Configuration Block">

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

    //</editor-fold>
    };
    </script>
  </body>
</html>
