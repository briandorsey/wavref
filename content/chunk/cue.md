+++
title = "cue"
weight = 43
description = "A series of positions in the waveform data chunk."

[taxonomies]
spec=["RIFF1991", "RIFF1994"]

[extra]
status = "REF"
+++

# WRID>RIFF-WAVE>cue

TODO: overview

> ... cue-points chunk identifies a series of positions in the waveform data stream.
>
> {{ spec(ref="RIFF1991") }}

{{ wrid_table(prefix="WRID>RIFF-WAVE>cue", col_repeat_group=true) }}

All fields where Repeat Group = `cue_point` repeat `cue_points` times as a group (struct).

## Usage

* See the "Cue-Points Chunk", "Examples of File Position Values" section of {{ spec(ref="RIFF1991") }} for basic information on interpreting the cue-point values. However, it doesn't clearly specify some things. For example: is `sample_offset` a byte offset, or a "frame" offset (sample rate * channels).


## Learning References

## Specification

{{ chunk_specs() }}

