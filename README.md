# WAVRef

DRAFT: WAV Reference Book.  

Source files for a WAV Reference Book.

Please see the [WAV Reference Book](https://wavref.til.cafe/) <-- online here.

This is an attempt to collect and normalize WAV chunk specifications in one place. It is primarily focused on metadata, but I aspire to eventually cover all chunks in common use.


## build notes

To prep the WRID JSON file from CSV:
```
cd static/data

./update.sh
```

## release checklist

* changelog.md - move current --> release
* config.toml - update extra.release


