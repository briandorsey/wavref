+++
title = "LIST-INFO"
weight = 30
description = "A LIST of descripitve text chunks."

[taxonomies]
spec=["RIFF1991", "RIFF1994"]

[extra]
status = "REF"
+++

# WRID>RIFF-WAVE>LIST-INFO

> DRAFT!

TODO: overview

The `LIST` chunk is a container which holds additional subchunks of `list_type`. This page is about the `INFO` variant. 

> The ‘INFO’ list is a registered global form type that can store information that helps identify the contents of the chunk \[ed: 'chunk' refers to the whole WAVE file in this case\]. This information is useful but does not affect the way a program interprets the file; examples are copyright information and comments. An ‘INFO’ list is a ‘LIST’ chunk with list type ‘INFO’.
>
> {{ spec(ref="RIFF1991") }}

... 

## `LIST-INFO` chunk

{{ wrid_table(prefix="WRID>RIFF-WAVE>LIST-INFO") }}

## Example chunk

TODO: info about subchunks... example subchunk:

{{ wrid_table(prefix="WRID>RIFF-WAVE>LIST-INFO>ICMT"
    trim_prefix="WRID>RIFF-WAVE>LIST-INFO") }}

All of the subchunks are the same format, with only the `id` changing between them.

The name `text` is a placeholder made up for this reference book. {{ spec(ref="RIFF1991") }} doesn't actually name the data portion of the INFO subchunks, probably because the entire data portion is a single `ZSTR`. 

... 

> An ‘INFO’ list should contain only the following chunks. New chunks may be defined, but an application should ignore any chunk it doesn't understand. The chunks listed below may only appear in an ‘INFO’ list. Each chunk contains a ZSTR, or null-terminated text string.
>
> {{ spec(ref="RIFF1991") }}

## INFO subchunks 

Defined in {{ spec(ref="RIFF1991") }}

{{ wrid_table_subchunks(prefix="WRID>RIFF-WAVE>LIST-INFO", col_wrid=false) }}


## Learning References

## Specification

{{ chunk_specs() }}

