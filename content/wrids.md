+++
title = "WRID list"
weight = 60
+++


# WRIDs



A WRID is intended to be a stable reference to a specific metadata element, including which chunk it is from.

ex: chunk>chunk>chunk>inner/data

* Chunks are separated by `>` characters, with chunks on the left containing chunks on the right. 
* If the chunk's data format itself supports heirarchies of data (XML, JSON, etc) then `/` is used as the separator. 

> NOTE: WRIDs *can* contain whitespace. This is because chunk ids themselves are technically specified as binary (four bytes) but conventionally most are four valid ASCII characters. Several common chunks use a space (ASCII 32) as part of the chunk id.

TODO: write detailed WRID spec and reference here. 

## All WRIDs

This is a list of all WRIDs defined in this book:

{{ wrid_table(col_group=true, col_name_spec=true, col_type_spec=true) }}
