+++
title = "plst"
weight = 44
description = "Play order for cue points. Very rare."

[taxonomies]
spec=["RIFF1991", "RIFF1994"]

[extra]
status = "REF"
+++

# WRID>RIFF-WAVE>plst

> DRAFT!

TODO: overview

> The plst chunk specifies a play order for a series of cue points.
>
> {{ spec(ref="RIFF1991") }}

## Usage

While this chunk is defined in {{ spec(ref="RIFF1991") }}, it seems to be *extremely* rarely included in WAVE files. I haven't been able to find a single example in my collection of files. 

## Spec

{{ wrid_table(prefix="WRID>RIFF-WAVE>plst", spec="WAVRef", col_repeat_group=true) }}

All fields where Repeat Group = `segment` repeat `segments` times as a group (struct).

## Learning References

## Specification

{{ chunk_specs() }}

