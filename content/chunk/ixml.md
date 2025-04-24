+++
title = "iXML"
weight = 71
description = "Embedded metadata in production media files."

[taxonomies]
spec=["IXML", "ASWG-G006"]

[extra]
status = "DRAFT"
+++

# WRID>RIFF-WAVE>iXML

## `iXML` chunk

> "All iXML parameters and objects are OPTIONAL. Readers must not assume that any particular parameters exist."
>
> {{ spec(ref="IXML") }}

> "... to ensure that no products are developed which enforce schema compatibility, it has been decided NOT to create a schema for iXML."
>
> {{ spec(ref="IXML") }}

Buckle-up folks, you're going to see a lot of variation in `iXML` chunks. 


## `iXML` root tags (WRID>RIFF-WAVE>iXML)

TODO: overview

{{ wrid_table(prefix="WRID>RIFF-WAVE>iXML") }}

## SYNC_POINT_LIST tags (WRID>RIFF-WAVE>iXML>SYNC_POINT_LIST )

TODO: overview

Example: 
```
<SYNC_POINT_LIST>
  <SYNC_POINT_COUNT>2</SYNC_POINT_COUNT>
  <SYNC_POINT>
    <SYNC_POINT_TYPE>RELATIVE</SYNC_POINT_TYPE>
    <SYNC_POINT_FUNCTION>PRE_RECORD_SAMPLECOUNT</SYNC_POINT_FUNCTION>
    <SYNC_POINT_LOW>930000</SYNC_POINT_LOW>
    <SYNC_POINT_HIGH>0</SYNC_POINT_HIGH>
    <SYNC_POINT_EVENT_DURATION>0</SYNC_POINT_EVENT_DURATION>
  </SYNC_POINT>
  <SYNC_POINT>
    <SYNC_POINT_TYPE>ABSOLUTE</SYNC_POINT_TYPE>
    <SYNC_POINT_FUNCTION>SLATE_GENERIC</SYNC_POINT_FUNCTION>
    <SYNC_POINT_COMMENT>Near start</SYNC_POINT_COMMENT>
    <SYNC_POINT_LOW>1242</SYNC_POINT_LOW>
    <SYNC_POINT_HIGH>0</SYNC_POINT_HIGH>
    <SYNC_POINT_EVENT_DURATION>0</SYNC_POINT_EVENT_DURATION>
  </SYNC_POINT>
</SYNC_POINT_LIST>
```

{{ wrid_table(prefix="WRID>RIFF-WAVE>iXML>SYNC_POINT_LIST", col_group=true, group="SYNC_POINT_LIST") }}

{{ wrid_table(prefix="WRID>RIFF-WAVE>iXML>SYNC_POINT_LIST>SYNC_POINT", col_group=true, group="SYNC_POINT") }}

## ASWG tags (WRID>RIFF-WAVE>iXML>ASWG)

TODO: overview

{{ wrid_table(prefix="WRID>RIFF-WAVE>iXML>ASWG", col_group=true, group="ASWG") }}

## BEXT and LOUDNESS tags

> "If this <BEXT> object appears (redundantly) in a WAVE file (for continuity of format) it is ESSENTIAL that the values match those in the official bext chunk in the same file."
>
> {{ spec(ref="IXML") }}

The iXML spec includes duplicate fields from the [`bext`](@/chunk/bext.md) chunk in the `<BEXT>` and `<LOUDNESS>` tags. This gives a place to store BEXT data in non WAV formats where other chunks may not exist. However, in WAV files it creates the possibility for confusion if they values differ. On top of that, the spec gives contradtictory information on which to use if they're different.

For users, be aware that this is a tricky area between specifications and different applications will sometimes display different data when values are different between these duplicated fields. If you see applications showing different data, check the metadata with a [tool](@metadata.md#software) which will show you both.

For implementors focusing on maxium correctness:

* Warn users if both versions of fields exist and they have different values.
* Do write BEXT data into the [`bext`](@/chunk/bext.md) chunk.
* Do NOT write `<BEXT>` and `<LOUDNESS>` tags when writing the `iXML` chunk.

However, I've heard of software which doesn't read from [`bext`](@/chunk/bext.md) at all if `iXML` is present... so...

For implementors focusing on maximum compatibility: 

* Warn users if both versions of fields exist and they have different values.
* Do write BEXT data into the [`bext`](@/chunk/bext.md) chunk.
* Do write `<BEXT>` and `<LOUDNESS>` tags when writing the `iXML` chunk. Abort and give an error if values differ between the duplicate fields


## Learning References

* [The iXML specification](http://www.gallery.co.uk/ixml/)
* [Sony ASWG iXML Extension](https://github.com/Sony-ASWG/iXML-Extension)

## Specifications

{{ chunk_specs() }}

