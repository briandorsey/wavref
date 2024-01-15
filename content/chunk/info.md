+++
title = "LIST-INFO"
weight = 20
description = "TODO: description of LIST-INFO"

[taxonomies]
spec=["RIFF1991", "RIFF1994"]

[extra]
status = "DRAFT"
+++

# WRID>RIFF-WAVE>LIST-INFO

> DRAFT!

TODO: overview

The `LIST` chunk is a container which holds additional subchunks of `list_type`. This page is about the `INFO` variant. 

> The ‘INFO’ list is a registered global form type that can store information that helps identify the contents of the chunk. This information is useful but does not affect the way a program interprets the file; examples are copyright information and comments. An ‘INFO’ list is a ‘LIST’ chunk with list type ‘INFO’.
>
> {{ spec(ref="RIFF1991") }}

... 

{{ wrid_table(prefix="WRID>RIFF-WAVE>LIST-INFO") }}

TODO: info about subchunks... example subchunk:

{{ wrid_table(prefix="WRID>RIFF-WAVE>LIST-INFO>ICMT", col_desc=false) }}

INFO subchunks defined in {{ spec(ref="RIFF1991") }}:

{{ wrid_table_subchunks(prefix="WRID>RIFF-WAVE>LIST-INFO", spec="WAVRef", col_wrid=false) }}
## Learning References

## Specification

{{ chunk_specs() }}

