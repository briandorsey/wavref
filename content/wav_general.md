+++
title = "WAV overview"
weight = 20
+++

# WAV files

WAV files are based on the RIFF format which is made up of chunks of data with an `id`, `size` and binary data for each. The format is very extensible, and has been in use for over 30 years, leading to a *very* wide variety of chunks which could be in a file. Applications are expected to ignore chunks they don't use and preserve them when editing files (in practice, many applications only preserve chunks they use). 

## WAV file structure

TODO: overview and some visualizations

## normalization in this book

TODO: note about normalizing field names

## other summary documents

## grammars and parser configuration files

* [Kaitai Struct](http://formats.kaitai.io/wav/) format specification of RIFF-WAVE and many common chunks
* [Hex Fiend](http://hexfiend.com/) (MacOS, open source) includes a WAV parsing template which parses many common chunks

## related file formats

* [RF64](https://en.wikipedia.org/wiki/RF64)
* [BW64](https://www.itu.int/dms_pubrec/itu-r/rec/bs/R-REC-BS.2088-1-201910-I!!PDF-E.pdf) {{ spec_bib(ref="BS.2088-1") }}

