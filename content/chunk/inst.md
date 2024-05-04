+++
title = "inst"
weight = 66
description = "Pitch, volume, velocity for playback by sampler."

[taxonomies]
spec=["RIFF1994"]

[extra]
status = "REF"
+++

# WRID>RIFF-WAVE>inst

TODO: overview

> The WAVE form is NEARLY the perfect file format for storing a sampled sound synthesizer's samples. Bits per sample, sample rate, number of channels, and complex looping can be specified with current WAVE subchunks, but a sample's pitch and its desired volume relative to other samples cannot. The optional instrument subchunk defined below fills in these needed
parameters
>
> {{ spec(ref="RIFF1994") }}

{{ wrid_table(prefix="WRID>RIFF-WAVE>inst", spec="WAVRef") }}

## Learning References

## Specification

{{ chunk_specs() }}

