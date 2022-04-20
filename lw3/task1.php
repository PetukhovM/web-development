<?php
header('Content-Type: text/plain');

function getGetParameter(string $parameterName): ?string
{
    return isset($_GET[$parameterName]) ? $_GET[$parameterName] : null;
}

$parameterValue = getGetParameter('text');

if (($parameterValue === null) or ($parameterValue === '')) 
{
    echo 'Текст не может быть пустым';
}

$parameterValue = trim($parameterValue);
$parameterValue = preg_replace('/\s\s+/', ' ', $parameterValue);
echo $parameterValue; 