<?php

require_once __DIR__ . '/vendor/autoload.php';

use \Samizdam\Skeleton\App\Cli\Application;
use Symfony\Component\Console\Application as SymfonyApp;

$components = require __DIR__ . '/config/components.php';
$di = (new \FreeElephants\DI\InjectorBuilder)->buildFromArray($components);

$app = $di->get(Application::class);

$commands = require_once __DIR__ . '/config/cli-commands.php';
$symfonyApp = new SymfonyApp();

foreach ($commands as $commandClassName) {
    $commandInstance = $di->get($commandClassName);
    $symfonyApp->addCommand($commandInstance);
}

$app = new Application($symfonyApp);

$app->run();

