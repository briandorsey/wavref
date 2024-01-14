# WAVRef

DRAFT: WAV Reference Book.  

An attempt to collect WAV file format specification data in one place. Primarily focused on metadata specs, but eventually hope it will be comprehensive resource.



## build notes

To prep the WRID JSON file from CSV:
```
curl https://docs.google.com/spreadsheets/d/17BeembicsB4u3tzX1SeVDnabqWfB8JNNbQQcLlD5gMY/gviz/tq?tqx=out:csv&sheet=wrid -o wrid_data.csv

qsv tojsonl wrid_data.csv  | jq -s '.' > wrid_data.json
```

## release checklist

* changelog.md - move current --> release
* config.toml - update extra.release

