+++
title = "Change Log"
weight = 90
+++

# Change Log

If you find an error or would like additional information added, please check the [issue tracker](https://github.com/briandorsey/wavref/issues) and comment on an existing issue or add a new one. Thank you in advance! 

## Releases

* Current - 0.1.1
    * move introduction.md content back to root index and create manual link to it as "Introduction" in sidebar. 
    * fix broken tables in Safari. 
* [release_date] - [version] - [summary]
	* [things that were done]
* 2013-01-14 - version 0.1 - Initial release, base structure and TODOs
    * setup build and deployment
    * wrid_data.csv refactor: literal --> condition
    * added WAVE Format Categories from {{ spec=(ref"RIFF1991") }}
    * better table column wrapping
    * introduction: add text and pointer to gh issue tracker for corrections/additions
    * add favicon.ico
    * add column display filtering for `desc` and `wrid` to wrid_table() and wrid_table_subchunks()
    * add wrid_table() and wrid_table_subchunks() filtering on "spec" 
    * decide on data structure changes to include field details from specs. (include them as additional rows with same WRID and different `spec` value - a new column with spec reference ids. 
    * glossary: use heading links and custom CSS for links 
        * ex: `[chunk](/g#chunk)` renders as: [chunk](/g#chunk)
    * fix shortcodes when no value in `spec.see`
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

---- 

* Future maybe
    * add /glossary --> /g redirect? (or the other way around?)
    * wav files: both simple and complex, depending on what you want to do with them. 
    * wav files: better intro to riff (maybe with a visual?)
    * metadata: why do people care about metadata?
    * create list of WRID normalized data types and shortcode to link to them
    * scroll wide tables horizontally without affecting overall page
    * RIFF1991:data 
    * RIFF1991:cue
    * RIFF1991:LIST-adtl
    * RIFF1991:FACT
    * RIFF1991:LIST-wavl
    * RIFF1991:slnt
    * RIFF1991:plst
    * RIFF1991: country codes
    * RIFF1991: language and dialect codes
    * go through full RIFF1994 spec and add data to wrid_data.csv
    * go through each chunk and pull a few spec quotes
    * write WAV overview - wav_general.md
    * write initial glossary
    * write initial doc about metadata
    * fmt chunk: download and include table of audio types: 
        * [WAVE and AVI Codec Registries](https://www.iana.org/assignments/wave-avi-codec-registry/wave-avi-codec-registry.xhtml) RFC2361. 
    * chunk: add one XML based chunk, probably iXML. Needed before release to verify WRID data model. 
    * write WRID spec and overview
        * current WRID assumes chunks can only ever have one kind of parent... is this true?
        * how to refer to the chunk itself? Include trailing `>` to make ids with spaces clearer? 
        * field names: use words from spec, but lowered_and_underscores
        * XML chunks? Use simplified XPath? `/Path/To/Node[idx]`
        * fix table scrolling under nav bar
        * ok for chunks to repeat for WRID, since the goal is to reliably map field names to which chunk they're stored in. 
            * question: if this is true... do we actually need the full chunk path? Or can we assume chunk ids are unique? Would shorten WRIDs a lot if we go with that.
        * what to do about sequence numbers (cue, for example)? ignore? we're just trying to get to specific fields in the general sense, not specific data
    * update `spec/_index` to show more info
    * fix HTML layout on narrow windows - what to do about TOC? 
    * --- initial release once above complete ---
    * add footer note to all pages: link to file an issue for any innacuracies
    * make example WAV file with specific values mapping to WRIDs (or specific ints, etc) to double-check/validate field locations from other software
    * create an "SDK" of WRID and descriptive information for embedding in other applications.
    * create reference WAV files and WRID based metadata dumps
    * chunk RIFF1991 RIFF: CSET
    * chunk RIFF1991 RIFF: JUNK
    * chunk RIFF1991 WAVE: playlist
    * chunk RIFF1991 WAVE: associated data list
    * document iXML: [iXML spec](http://www.gallery.co.uk/ixml/)
    * document XMP: [XMP specification](https://www.adobe.com/devnet/xmp.html)
    * document UMID: [UMID](https://en.wikipedia.org/wiki/Unique_Material_Identifier)
    * update sidebar with vertical line (similar to Zola docs)
    * chunks: [Audio Definition Model](https://www.bbc.co.uk/rd/publications/audio-definition-model-software)
        * [EBU ADM Guidelines Introduction](https://adm.ebu.io/index.html)
    * add live fuzzy match filtering to the long WRID table
