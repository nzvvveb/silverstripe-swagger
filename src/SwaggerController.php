<?php
/**
 * A controller class for serving the Swagger API documentation.
 *
 * @package Silverstripe\Swagger
 */
namespace Silverstripe\Swagger;

use SilverStripe\Control\Director;
use SilverStripe\Control\Controller;
use SilverStripe\Core\Config\Configurable;
use SilverStripe\Core\Manifest\ModuleResourceLoader;

class SwaggerController extends Controller {
    use Configurable;

    /**
     * The path to the Swagger JSON file relative to the `RESOURCES_DIR`.
     *
     * @var string
     * @config
     */
    private static string $swagger_json_path = 'swagger/client/swagger.json';

    /**
     * The template used to render the Swagger API documentation.
     *
     * @var string
     */
    protected string $template = 'SwaggerApi';

    /**
     * Returns the absolute URL to the Swagger JSON file.
     *
     * @return string The URL to the Swagger JSON file.
     */
    public function documentURL(): string
    {
        return Controller::join_links(
            Director::absoluteBaseURL(),
            RESOURCES_DIR,
            ModuleResourceLoader::singleton()->resolvePath($this->config()->get('swagger_json_path'))
        );
    }
}
