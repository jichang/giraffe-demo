#!/bin/sh
if [ ! -e "paket.lock" ]
then
    exec mono .paket/paket.exe install
fi
dotnet restore src/Hurry
dotnet build src/Hurry

