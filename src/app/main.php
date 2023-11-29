<?php

echo "RUNNING SCRIPT....";
echo PHP_EOL;
$output = shell_exec("ll");
echo $output;
echo PHP_EOL;
echo "END...";
echo PHP_EOL;