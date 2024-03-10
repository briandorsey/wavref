+++
title = "cue"
weight = 43
description = "TODO: description of cue"

[taxonomies]
spec=["RIFF1991", "RIFF1994"]

[extra]
status = "DRAFT"
+++

# WRID>RIFF-WAVE>cue

TODO: overview

{{ wrid_table(prefix="WRID>RIFF-WAVE>cue", spec="WAVRef") }}

## Usage

* See the "Cue-Points Chunk", "Examples of File Position Values" section of {{ spec(ref="RIFF1991") }} for basic information on interpreting the cue-point values. However, it doesn't clearly specify some things. For example is `sample_offset` a byte offset, or a "frame" offset (sample rate * channels).


## Learning References

## Specification

{{ chunk_specs() }}

