+++
title = "Change Log"
weight = 90
+++

# Change Log

## Releases

* Current - 0.1
    * sort headings manually, approximately by date spec released
    * use spec taxonomy to create backlinks from specs to chunks
    * create spec taxonomy: enables full generation of Specification section of chunk entries, and in the future, backlinks from specs to chunks
    * create spec_detail shortcode (draft version for now)
    * create spec and spec_bib shortcodes, using static spec data
    * Setup Zola and prototype initial structure
* [release_date] - [version] - [summary]
	* [things that were done]
* Future maybe
    * update sidebar with vertical line (similar to Zola docs)
    * collapse specification page on sidebar?
    * decide on data structure changes to include field details from specs. (in addition to the normalized WAVRef version)
        * add wrid_table() chunk filtering on "spec" as well as chunk (based on Taxonomies?) needed due to multiple specs refering to the same chunk
        * this implies a WAVRef spec as the default and an attempt to normalize?
    * update `spec/_index` to show more info
    * chunk: cue - see how it fits into WRID model
    * chunk: (Audio Definition Model)[https://www.bbc.co.uk/rd/publications/audio-definition-model-software]
    * fmt chunk: download and include table of audio types: 
        * [WAVE and AVI Codec Registries](https://www.iana.org/assignments/wave-avi-codec-registry/wave-avi-codec-registry.xhtml) RFC2361. 
    * write WRID spec and overview
        * current WRID assumes chunks can only ever have one kind of parent... is this true?
        * how to refer to the chunk itself? Include trailing `>` to make ids with spaces clearer? 
    * test HTML layout on narrow windows - what to do about TOC? 
    * create reference files and WRID based metadata dumps
    * add chunk documentation from base spec
    * display version/relase in the HTML
    * setup build and deployment
