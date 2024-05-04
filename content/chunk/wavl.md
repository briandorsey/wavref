+++
title = "LIST-wavl"
weight = 55
description = "A LIST of audio and/or silence chunks: data, slnt"

[taxonomies]
spec=["RIFF1991"]

[extra]
status = "REF"
+++

# WRID>RIFF-WAVE>LIST-wavl

TODO: overview

A WAVE file usuall contains just one [`data`](@/chunk/data.md) chunk, however
{{ spec(ref="RIFF1991") }} allows multiple ‘data’ and ‘slnt’ chunks enclosed in
a ‘wavl’ LIST chunk. It is specified to contain a sequence of repeating chunks,
each of which can be either a [`data`](@/chunk/data.md) chunk or `slnt` chunk.

## Usage

While this chunk is defined in {{ spec(ref="RIFF1991") }}, it seems to be *extremely* rarely included in WAVE files. I haven't been able to find a single example in my collection of files. 

## `LIST-wavl` chunk

{{ wrid_table(prefix="WRID>RIFF-WAVE>LIST-wavl", spec="WAVRef") }}

## `data` chunk

See: [`data`](@/chunk/data.md) - Wave sample data

## `slnt` chunk

{{ wrid_table(prefix="WRID>RIFF-WAVE>LIST-wavl>slnt", spec="WAVRef"
    trim_prefix="WRID>RIFF-WAVE>LIST-wavl") }}

> Note: The ‘slnt’ chunk represents silence, not necessarily a repeated zero
> volume or baseline sample. In 16-bit PCM data, if the last sample value played
> before the silence section is a 10000, then if data is still output to the D to
> A converter, it must maintain the 10000 value. If a zero value is used, a click
> may be heard at the start and end of the silence section. If play begins at a
> silence section, then a zero value might be used since no other information is
> available. A click might be created if the data following the silent section
> starts with a nonzero value.
> 
> {{ spec(ref="RIFF1991") }}

## Learning References

## Specification

{{ chunk_specs() }}

