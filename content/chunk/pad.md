+++
title = "PAD"
weight = 81
description = "padding, filler or outdated information"

[taxonomies]
spec=["RIFF1994"]

[extra]
status = ""
+++

# WRID>RIFF-WAVE>PAD

> Note: all chunks are four bytes. `PAD` is `"PAD "`. The last character is a space (ASCII 32).


> A PAD chunk represents padding. It contains no relevant data; it is a space filler of arbitrary size. When duplicating the file, the copier should maintain the padding of the PAD chunk. Specifically, if the PAD chunk makes the next chunk align on a 2K boundary in the physical file, then this alignment should be preserved even if the size of the PAD chunk must change
>
> {{ spec(ref="RIFF1994") }}


{{ wrid_table(prefix="WRID>RIFF-WAVE>PAD") }}


## Learning References

## Related Chunks

 * similar to [`JUNK`](@/chunk/junk.md).
 * similar to [`FLLR`](@/chunk/fllr.md).

## Specification

{{ chunk_specs() }}

