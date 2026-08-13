<?php

namespace Samizdam\Skeleton\App\Cli;

use Symfony\Component\Console\Application as SymfonyApp;

class Application
{

    public function __construct(private readonly SymfonyApp $symfonyApp)
    {

    }
    public function run()
    {
        $this->symfonyApp->run();
    }
}