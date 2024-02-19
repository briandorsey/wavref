# WAVRef

DRAFT: WAV Reference Book.  

Source files for a WAV Reference Book.

Please see the [WAV Reference Book](https://wavref.til.cafe/) <-- online here.

This is an attempt to collect and normalize WAV chunk specifications in one place. It is primarily focused on metadata, but I aspire to eventually cover all chunks in common use.


## build notes

To prep the WRID JSON file from CSV:
```
cd static/data

curl "https://docs.google.com/spreadsheets/d/17BeembicsB4u3tzX1SeVDnabqWfB8JNNbQQcLlD5gMY/gviz/tq?tqx=out:csv&sheet=wrid" -o wrid_data.csv

qsv tojsonl wrid_data.csv  | jq -s '.' > wrid_data.json
```

## release checklist

* changelog.md - move current --> release
* config.toml - update extra.release


