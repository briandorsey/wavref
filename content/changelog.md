+++
title = "Change Log"
weight = 90
+++

# Change Log

If you find an error or would like additional information added, please check the [issue tracker](https://github.com/briandorsey/wavref/issues) and comment on an existing issue or add a new one. Thank you in advance! 

## Releases

* Current - 0.1
    * added chunk overview page and status info to each chunk
    * more intro text, move intro to it's own file, redirect root to intro
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
    * write introduction - _index.md
    * write WAV overview - wav_general.md
    * glossary - figure out linking to a specific definition
    * fix `spec_bib()` when no value in `see`
    * write initial glossary
    * write initial doc about metadata
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
        * XML chunks? Use simplified XPath? `/Path/To/Node[idx]`
        * fix table scrolling under nav bar
    * update `spec/_index` to show more info
    * create reference files and WRID based metadata dumps
    * add chunk documentation from base spec
    * add license info 
    * add text and pointer to gh issue tracker for corrections/additions
    * setup build and deployment
    * fix HTML layout on narrow windows - what to do about TOC? 
    * --- initial release ---
    * document XMP: [XMP specification](https://www.adobe.com/devnet/xmp.html)
    * document UMID: [UMID](https://en.wikipedia.org/wiki/Unique_Material_Identifier)
    * update sidebar with vertical line (similar to Zola docs)
    * chunks: [Audio Definition Model](https://www.bbc.co.uk/rd/publications/audio-definition-model-software)
        * [EBU ADM Guidelines Introduction](https://adm.ebu.io/index.html)
    * add live fuzzy match filtering to the long WRID table
