#!/bin/bash

printf '<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <link rel="stylesheet" type="text/css" href="/style.css">
    <title>%s</title>
</head>

<body>
' User

pandoc -f markdown $1 | sed -e 's/<h1/<header>\n<h1/gm' | sed -e 's/<\/h1>/<\/h1>\n<\/header>/gm'


printf '</body>

</html>
'