+++
title = "Change Log"
+++

# Change Log

## Releases

* Current - 0.1
    * create spec taxonomy: enables full generation of Specification section of chunk entries, and in the future, backlinks from specs to chunks
    * create spec_detail shortcode (draft version for now)
    * create spec and spec_bib shortcodes, using static spec data
    * Setup Zola and prototype initial structure
* [release_date] - [version]
	* [things that were done]
* Future maybe
    * try to use tagging from chunks to create backlinks *from* specs
    * update sidebar with vertical line (similar to Zola docs)
    * collapse specification page on sidebar?
    * question: fill in specification references based on backlinks from static data?
    * decide on data structure changes to include field details from specs. (in addition to the normalized WAVRef version)
        * add wrid_table() chunk filtering on "spec" as well as chunk (based on Taxonomies?) needed due to multiple specs refering to the same chunk
        * this implies a WAVRef spec as the default and an attempt to normalize?
    * update `spec/_index` to show more info
    * chunk: cue - see how it fits into WRID model
    * chunk: (Audio Definition Model)[https://www.bbc.co.uk/rd/publications/audio-definition-model-software]
    * fmt chunk: download and include table of audio types: 
        * [WAVE and AVI Codec Registries](https://www.iana.org/assignments/wave-avi-codec-registry/wave-avi-codec-registry.xhtml) RFC2361. 
    * convert wrid_table shortcode to html version with md wrapper? 
    * write WRID spec and overview
    * test HTML layout on narrow windows - what to do about TOC? 
    * create reference files and WRID based metadata dumps
    * add chunk documentation from base spec
    * display version/relase in the HTML
    * setup build and deployment
