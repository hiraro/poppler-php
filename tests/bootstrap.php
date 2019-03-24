<?php
require_once __DIR__ . '/../vendor/autoload.php';

$bin_dir_env = getenv("POPPLER_PHP_BIN_DIR");
if (!empty($bin_dir_env)) {
    NcJoes\PopplerPhp\Config::setBinDirectory($bin_dir_env);
}
