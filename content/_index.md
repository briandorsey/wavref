+++
title = "index"
sort_by = "weight"
+++

# WAV Reference book

An attempt to collect WAV file format specifications in one place. Primarily focused on metadata specs, but eventually hope it will be comprehensive resource.

Goals: 

* be useful to folks learning about WAV file structure
  * high level info - for folks using and troubleshooting WAV files
  * detailed info - enough to implement and improve WAV parsing libraries
* collect details about various WAV chunks, especially metadata
* links to primary sources (where available)

WAV files are based on the RIFF format which is made up of chunks of data with an `id`, `size` and binary data for each. The format is very extensible, and has been in use for over 30 years, leading to a *very* wide variety of chunks which could be in a file. Applications are expected to ignore chunks they don't use and preserve them when editing files (in practice, many applications only preserve chunks they use). 

