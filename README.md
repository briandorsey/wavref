# WAVRef

DRAFT: WAV Reference Book.  

An attempt to collect WAV file format specification data in one place. Primarily focused on metadata specs, but eventually hope it will be comprehensive resource.



## build notes

To prep the WRID JSON file from CSV:
```
qsv tojsonl wrid_data.csv  | jq -s '.' > wrid_data.json
```

