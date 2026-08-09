<?php

require_once __DIR__ . '/vendor/autoload.php';

use \Samizdam\Skeleton\App\Cli\Application;
use Symfony\Component\Console\Application as SymfonyApp;

$di = (new \FreeElephants\DI\InjectorBuilder)->buildFromArray($components);

$app = $di->get(Application::class);

$commands = require_once __DIR__ . '/config/cli-commands.php';
$symfonyApp = new SymfonyApp();

foreach ($commands as $commandClassName) {
    $commandInstance = $di->get($commandClassName);
    $symfonyApp->add($commandInstance);
}

$app = new Application($symfonyApp);

$app->run();

