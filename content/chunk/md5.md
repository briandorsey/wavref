+++
title = "MD5"
weight = 70
description = "MD5 checksum of data chunk"

[taxonomies]
spec=["MD5_2017"]

[extra]
status = "READY"
+++

# WRID>RIFF-WAVE>MD5

> Note: all chunks are four bytes. `MD5` is `"MD5 "`, the last character is a space (ASCII 32).

> ...an audio-data-only checksum (including the entire <data> chunk, excluding the chunk id, size declaration, and any optional padding byte). This will create a hash value for only the audio portion of the file which helps validate the integrity of the audio but allows for alteration of the metadata.
>
> [Audio Data Checksums](https://mediaarea.net/BWFMetaEdit/md5)

This chunk is defined by [BWFMetaEdit](https://mediaarea.net/BWFMetaEdit/) (a WAVE metadata viewer/editor focused on archival use cases). 

{{ wrid_table(prefix="WRID>RIFF-WAVE>MD5 ") }}
{{ wrid_table(prefix="WRID>RIFF-WAVE>MD5 ", spec="WAVRef") }}

## Learning References

## Specification

{{ chunk_specs() }}

