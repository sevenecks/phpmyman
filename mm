#!/usr/bin/env php
<?php

/*
 * (c) Brendan Butts <bbutts@stormcode.net>
 *
 * This source file is subject to the MIT license that is bundled
 * with this source code in the file LICENSE.
 */

/**
 * @author Brendan Butts <bbutts@stormcode.net>
 */
// Composer global install
if (file_exists($a = __DIR__.'/../../autoload.php')) {
    require_once $a;
} else {
    // composer local install
    require_once __DIR__.'/vendor/autoload.php';
}

use SevenEcks\Markdown\MarkdownTerminal;

$path = getenv('HOME') . '/phpmyman/';
if (!file_exists($path)) {
    mkdir($path);
}
$command_or_man = empty($argv[1]) ? 'phpmyman' : $argv[1];
switch ($command_or_man) {
    case 'edit':
        $result = system("vim " . $path .  $argv[2] ." > `tty`");
        echo 'Saved.';
        break;
    case 'phpmyman':
        $content = "mm => show this help file\nmm edit topic => create/edit a pesonal man file\nmm topic => view a personal man file\n";
        echo $content;
        break;
    default:
        $content = file_get_contents($path . $command_or_man);
        $parser = new SevenEcks\Markdown\MarkdownTerminal;
        echo $parser->parse($content);
        break;
}
