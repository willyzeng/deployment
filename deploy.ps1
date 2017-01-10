$global:libraryname="Service Configuration RabbitMQ"
$replacevalue="v1.0.0-rc55"
$variablename="serviceversion_rabbitmq"

. .\lib\Octopuslib.ps1
update-octopusvariable $libraryname $variablename $replacevalue