+++
title = "RIFF-WAVE"
weight = 10
description = "Container structure for multimedia data."

[taxonomies]
spec=["RIFF1991", "RIFF1994"]

[extra]
status = "DRAFT"
+++

# WRID>RIFF-WAVE

> DRAFT!

TODO: overview

{{ spec(ref="RIFF1991") }} specifies the following chunks for `WAVE` files: 


* [fmt](@/chunk/fmt.md) - Format
* [fact](@/chunk/fact.md) - Fact chunk
* data - Wave data
* [cue](@/chunk/cue.md) - Cue points
* [plst](@/chunk/plst.md) - Playlist
* [LIST-INFO](@/chunk/info.md) - Info data list
* LIST-asdl - Associated data list
* [JUNK](@/chunk/junk.md) - file padding (no content)

{{ wrid_table(prefix="WRID>RIFF-WAVE", spec="WAVRef") }}

## Learning References

* [Audio File Format Specifications](https://www.mmsp.ece.mcgill.ca/Documents/AudioFormats/WAVE/WAVE.html) by Prof. Peter Kabal
  * includes copies of original specs from MS & later specs. Overview of file format, sample WAV files. 

## Specification

{{ chunk_specs() }}

