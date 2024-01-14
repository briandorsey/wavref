+++
title = "Change Log"
weight = 90
+++

# Change Log

If you find an error or would like additional information added, please check the [issue tracker](https://github.com/briandorsey/wavref/issues) and comment on an existing issue or add a new one. Thank you in advance! 

## Releases

* Current - 0.1
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
* [release_date] - [version] - [summary]
	* [things that were done]
* Future maybe
    * introduction: add text and pointer to gh issue tracker for corrections/additions
    * go through full RIFF1991 spec and add data to wrid_data.csv
    * chunk: cue - see how it fits into WRID model 
        * anything with more than one parent? 
        * what to do about sequence numbers? ignore? we're just trying to get to specific fields in the general sense, not specific data
    * go through each chunk and pull a few spec quotes
    * write WAV overview - wav_general.md
    * write initial glossary
    * write initial doc about metadata
    * create list of wrid normalized data types and shortcode to link to them
    * fmt chunk: download and include table of audio types: 
        * [WAVE and AVI Codec Registries](https://www.iana.org/assignments/wave-avi-codec-registry/wave-avi-codec-registry.xhtml) RFC2361. 
    * chunk: add one XML based chunk, probably iXML. Needed before release to verify WRID data model. 
    * write WRID spec and overview
        * current WRID assumes chunks can only ever have one kind of parent... is this true?
        * how to refer to the chunk itself? Include trailing `>` to make ids with spaces clearer? 
        * XML chunks? Use simplified XPath? `/Path/To/Node[idx]`
        * fix table scrolling under nav bar
        * ok for chunks to repeat for WRID, since the goal is to reliably map field names to which chunk they're stored in. 
            * question: if this is true... do we actually need the full chunk path? Or can we assume chunk ids are unique? Would shorten WRIDs a lot if we go with that.
    * update `spec/_index` to show more info
    * add license info 
    * setup build and deployment
    * fix HTML layout on narrow windows - what to do about TOC? 
    * --- initial release ---
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
