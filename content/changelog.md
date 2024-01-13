+++
title = "Change Log"
weight = 90
+++

# Change Log

## Releases

* Current - 0.1
    * add wrid_table_subchunks shortcode, test with LIST-INFO 
    * sort headings manually, approximately by date spec released
    * use spec taxonomy to create backlinks from specs to chunks
    * create spec taxonomy: enables full generation of Specification section of chunk entries, and in the future, backlinks from specs to chunks
    * create spec_detail shortcode (draft version for now)
    * create spec and spec_bib shortcodes, using static spec data
    * Setup Zola and prototype initial structure
* [release_date] - [version] - [summary]
	* [things that were done]
* Future maybe
    * create list of types and shortcode to link to them
    * chunk: cue - see how it fits into WRID model
    * decide on data structure changes to include field details from specs. (in addition to the normalized WAVRef version)
        * add wrid_table() chunk filtering on "spec" as well as chunk (based on Taxonomies?) needed due to multiple specs refering to the same chunk
        * this implies a WAVRef spec as the default and an attempt to normalize?
    * chunk: (Audio Definition Model)[https://www.bbc.co.uk/rd/publications/audio-definition-model-software]
    * fmt chunk: download and include table of audio types: 
        * [WAVE and AVI Codec Registries](https://www.iana.org/assignments/wave-avi-codec-registry/wave-avi-codec-registry.xhtml) RFC2361. 
    * update sidebar with vertical line (similar to Zola docs)
    * write WRID spec and overview
        * current WRID assumes chunks can only ever have one kind of parent... is this true?
        * how to refer to the chunk itself? Include trailing `>` to make ids with spaces clearer? 
    * update `spec/_index` to show more info
    * test HTML layout on narrow windows - what to do about TOC? 
    * create reference files and WRID based metadata dumps
    * add chunk documentation from base spec
    * add license info and 
    * display version/relase in the HTML
    * add pointer to gh issue tracker for corrections/additions
    * setup build and deployment
