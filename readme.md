Sure, here's the README in Markdown format:

# Silverstripe Swagger

A Silverstripe module for serving Swagger API documentation.

## Requirements

- Silverstripe 4.x

## Installation

Install the module using Composer:

```
composer require silverstripe/swagger-ui
```

## Usage

The module provides a `SwaggerController` class that serves the Swagger API documentation on route `/dev/swagger`. 

You can customize the path to the Swagger JSON file by setting the `$swagger_json_path` property in your `config.yml` file:

```yaml
Silverstripe\Swagger\SwaggerController:
  swagger_json_path: 'my/swagger.json'
```

By default, the Swagger JSON file is located at `swagger/client/swagger.json` relative to the `RESOURCES_DIR`.
