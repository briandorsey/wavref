+++
title = "RIFF-WAVE"
weight = 10
description = "Container structure for multimedia data."

[taxonomies]
spec=["RIFF1991", "RIFF1994"]

[extra]
status = "REF"
+++

# WRID>RIFF-WAVE

> DRAFT!

TODO: overview

> Programs must expect (and ignore) any unknown chunks encountered, as with all RIFF forms. However, [`fmt `](@/chunk/fmt.md) must always occur before [`data`](@/chunk/data.md), and both of these chunks are mandatory in a WAVE file.
> 
> {{ spec(ref="RIFF1991") }}

{{ wrid_table(prefix="WRID>RIFF-WAVE", spec="WAVRef") }}

The only chunks you can expect to be in every valid WAVE file are [`fmt `](@/chunk/fmt.md) and [`data`](@/chunk/data.md). Everything else is optional. 

{{ spec(ref="RIFF1991") }} specifies the following chunks for `WAVE` files: 

* [`fmt `](@/chunk/fmt.md) - Format of audio samples in data chunk. 
* [`fact`](@/chunk/fact.md) - Number of samples for compressed audio in data chunk. 
* [`data`](@/chunk/data.md) - Wave sample data
* [`cue `](@/chunk/cue.md) -  A series of positions in the waveform data chunk. 
* [`plst`](@/chunk/plst.md) - Play order for cue points. Very rare. 
* [`LIST`-`INFO`](@/chunk/info.md) - A LIST of descripitve text chunks. 
* [`LIST`-`adtl`](@/chunk/adtl.md) - A LIST of CuePoint annotation chunks. 
* [`LIST`-`wavl`](@/chunk/wavl.md) - A LIST of audio and/or silence chunks: data, slnt 
* [`JUNK`](@/chunk/junk.md) - file padding (no content)

## Learning References

* [Audio File Format Specifications](https://www.mmsp.ece.mcgill.ca/Documents/AudioFormats/WAVE/WAVE.html) by Prof. Peter Kabal
  * includes copies of original specs from MS & later specs. Overview of file format, sample WAV files. 

## Specification

{{ chunk_specs() }}

