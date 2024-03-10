#!/bin/bash

curl "https://docs.google.com/spreadsheets/d/17BeembicsB4u3tzX1SeVDnabqWfB8JNNbQQcLlD5gMY/gviz/tq?tqx=out:csv&sheet=wrid&range=A:L" -o wrid_data.csv

qsv tojsonl wrid_data.csv  | jq -s '.' > wrid_data.json
