+++
title = "index"
sort_by = "weight"
#redirect_to = "introduction"
+++

# WAV Reference book

> WAV isn't just a single file format... it's a dozen formats in a trenchcoat.

So... WAV files. They're probably the most commonly supported audio format. And can be fairly simple. Just a list of [chunks](@/chunk/_index.md). The original standard {{ spec(ref="RIFF1991") }} documents them... and allows custom chunks. So any particular WAV file might contain any of dozens (hundreds?) of different chunks, each with their own format, hopefully documented. :) Aaaaand, those docs were published over several decades... some no longer even have an official home. 

This is an attempt to collect and normalize WAV chunk specifications in one place. It is primarily focused on [metadata](@/metadata.md), but I aspire to eventually cover all chunks in common use.

Goals: 

* be useful to folks learning about WAV file structure
  * high level info - for folks using and troubleshooting WAV files
  * detailed info - enough to implement and improve WAV parsing libraries
* collect details and reference material about various WAV chunks, especially metadata
* links to primary sources (where available)

If you find an error or would like additional information added, please check the [issue tracker](https://github.com/briandorsey/wavref/issues) and comment on an existing issue or add a new one. Thank you in advance! 

Happy recording, editing, archiving and listening! 

Take care, <br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Brian
