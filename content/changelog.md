+++
title = "Change Log"
weight = 90
+++

# Change Log

## Releases

* Current - 0.1
    * better blockquote via CSS (last quote in series treated as source)
    * display release version in the HTML
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
    * go through each chunk and pull a few spec quotes
    * chunk: cue - see how it fits into WRID model 
        * anything with more than one parent? 
    * decide on data structure changes to include field details from specs. (in addition to the normalized WAVRef version)
        * add wrid_table() chunk filtering on "spec" as well as chunk (based on Taxonomies?) needed due to multiple specs refering to the same chunk
        * this implies a WAVRef spec as the default and an attempt to normalize?
        * create list of data types and shortcode to link to them
    * fmt chunk: download and include table of audio types: 
        * [WAVE and AVI Codec Registries](https://www.iana.org/assignments/wave-avi-codec-registry/wave-avi-codec-registry.xhtml) RFC2361. 
    * write WRID spec and overview
        * current WRID assumes chunks can only ever have one kind of parent... is this true?
        * how to refer to the chunk itself? Include trailing `>` to make ids with spaces clearer? 
    * update `spec/_index` to show more info
    * create reference files and WRID based metadata dumps
    * add chunk documentation from base spec
    * add license info 
    * add text and pointer to gh issue tracker for corrections/additions
    * setup build and deployment
    * fix HTML layout on narrow windows - what to do about TOC? 
    * --- initial release ---
    * document XMP: [XMP specification](https://www.adobe.com/devnet/xmp.html)
    * update sidebar with vertical line (similar to Zola docs)
    * chunks: [Audio Definition Model](https://www.bbc.co.uk/rd/publications/audio-definition-model-software)
        * [EBU ADM Guidelines Introduction](https://adm.ebu.io/index.html)
