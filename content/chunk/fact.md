+++
title = "fact"
weight = 30
description = "TODO: description of fact"

[taxonomies]
spec=["RIFF1991", "RIFF1994"]

[extra]
status = "DRAFT"
+++

# WRID>RIFF-WAVE>fact

TODO: overview

> The “ fact” chunk is required if the waveform data is contained in a “ wavl” LIST chunk and for all compressed audio formats. The chunk is not required for PCM files using the “ data” chunk format.
>
> {{ spec(ref="RIFF1991") }}

... 

{{ wrid_table(prefix="WRID>RIFF-WAVE>fact", spec="WAVRef") }}

...

> The "fact" chunk will be expanded to include any other information required by future WAVE formats. Added fields will appear following the <dwFileSize> field. Applications can use the chunk size field to determine which fields are present.
>
>
> {{ spec(ref="RIFF1991") }}

The above seems... not great. :/ It looks as though the various compressed file formats optionally add additional data here. TODO: find and add refrence supporting this comment. 

TODO: check and see if {{ spec(ref="RIFF1994") }} adds more.

## Learning References

## Specification

{{ chunk_specs() }}

