+++
title = "Change Log"
weight = 90
+++

# Current Status

This is a very early draft, many of the core chunks have technical documentation, but most are missing explanatory text.  Each [chunk](@/chunk/_index.md) also has its own status. 

# Change Log

If you find an error or would like additional information added, please check the [issue tracker](https://github.com/briandorsey/wavref/issues) and comment on an existing issue or add a new one. Thank you in advance! 

# Release template

* [version] - [release_date] - [summary]
	* [things that were done]

Annotations: NEW, IMProved, FIX, DEPrecated, REMoved, SECurity

# Releases

* Upcoming - release_date - 
    * [NEW] add BEXT1996:bext 
    * [FIX] correct md5 chunk name in reference data
    * [NEW] add IXML:iXML inital spec info from 1.0
* 0.2.0 - 2024-06-10 - Add RIFF1994 chunks.
    * [IMP] update `fmt ` to document WAVEFORMATEX tags: WAVE_FORMAT_UNKNOWN, WAVE_FORMAT_ADPCM, and WAVE_FORMAT_DVI_ADPCM.
    * [IMP] add language and dialect codes from RIFF1994
    * [IMP] compare wFormatTags table on RIFF1994 pg20 to current list
    * [NEW] add RIFF1994:smpl
    * [IMP] add table of fields defined by each specifcation on its spec page.
    * [IMP] refactor source spec data to reduce duplication (combining WRID mapped name & type with orginal spec name & type). Show both names and types in full WRID list. 
    * [IMP] documentation of repeated sub-structs: ex: plst, cue, smpl
    * [NEW] add RIFF1994:inst
    * [NEW] 2 new INFO chunks from RIFF1994: ISMP, IDIT
    * [FIX] PAD is actually from RIFF1994
* 0.1.4 - 2024-03-29 - Finish RIFF1991 chunks
    * show more of the WRID prefix on subchunks
    * add RIFF1991:LIST-wavl
    * add RIFF1991:slnt
    * add MediaArea:MD5
    * add RIFF1991:LIST-adtl
    * add RIFF1991:JUNK (also, PAD, FLLR)
    * add RIFF1991:plst
    * add RIFF1991:cue
    * add chunk RIFF1991:fact
    * add chunk RIFF1991:CSET
    * add RIFF1991: country codes
    * add RIFF1991: language and dialect codes
    * add /glossary --> /g redirect?
    * add more WAV Formats from MS web page and mmreg.h
    * move introduction.md content back to root index and create manual link to it as "Introduction" in sidebar. 
    * fix broken tables in Safari. 
* 0.1.0 - 2013-01-14 - Initial release, base structure and TODOs
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
    * try out newish Zola support for definition lists
      * https://github.com/pulldown-cmark/pulldown-cmark/pull/915/files#diff-312ca12521ecd11839cb8eba24de011c463162e4c7f63ac34b2978c68a701f61
      * https://github.com/getzola/zola/pull/2763
    * SOON: convert spec pages to an aggregate page for all versions of a spec, removing dates from spec IDs. See IXML as an example. 
    * all specs: add links to loc.gov information. Super useful for reference. ex: https://www.loc.gov/preservation/digital/formats/fdd/fdd000001.shtml
    * categorize chunks by rarity. and/or tag with usage categories?
    * fix sidebar (cut off at bottom)
    * fix wide right margin on mobile (narrow viewport)
    * "Chunk reference" page should show LIST subchunks as well. 
    * implement spec details widget (shortcodes/spec_detail.html)
    * convert chunk reference page to a table
    * write chunk reference info
        * id, size data
        * uppercase RIFF, lowercase forms (in *theory*, but not in practice)
        * etc
    * figure out wavref types (things like fourcc)
    * create a system for noting that a field overlaps or duplicates data in another field, hopefully automatically create crosslinks between them.
    * WRID "sentinel" value mapping, special ints/strings for each field
    * create references page, similar setup to glossary page
    * add section of useful references? or just generalize specifications --> references? 
    * add reference link to FADI BWF guidelines: https://www.digitizationguidelines.gov/audio-visual/documents/BWF_Embed_Guideline_v3_2021.pdf
    * update site colors: https://iamkate.com/data/12-bit-rainbow/ (see how those look... if not, maybe solarized?)
    * wav files: both simple and complex, depending on what you want to do with them. 
    * wav files: better intro to riff (maybe with a visual?)
    * archeology
        * try to find additional docs listed in RIFF1994 Overview
    * write intro to what a chunk is on Chunk reference page
    * metadata: why do people care about metadata?
    * create list of WRID normalized data types and shortcode to link to them
    * CSS: scroll wide tables horizontally without affecting overall page
    * CSS: fix HTML layout on narrow windows - what to do about TOC? 
    * question... how deep to dig into fmt: WAV Format Tag inconsistencies between different docs & applications? 
    * go through each chunk and pull a few spec quotes
    * write WAV overview - wav_general.md
    * write initial glossary
    * write initial doc about metadata
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
    * article / essay on common parsing errors ("header", fixed position parsing, etc)
        * references
            * https://www.appletonaudio.com/blog/2012/wave-file-format-implementation-errors/
    * --- initial release once above complete ---
    * article / essay on which chunks actually matter for different use cases
    * add footer note to all pages: link to file an issue for any innacuracies
    * research: AIFF file type... how similar to WAVE? 
    * make example WAV file with specific values mapping to WRIDs (or specific ints, etc) to double-check/validate field locations from other software
        * add page describing how to use this to learn what metadata different apps support and specifically where they read/write it.
    * create an "SDK" of WRID and descriptive information for embedding in other applications.
    * create reference/example WAV files and WRID based metadata dumps
    * reference: [FADGI Guidelines for Embedding Metadata in
Broadcast WAVE Files](https://www.digitizationguidelines.gov/audio-visual/documents/BWF_Embed_Guideline_v3_2021.pdf)
    * add reference to archive.org verson of sonicspot WAVE overview because it's referenced so often: [sonicspot wavefiles](https://web.archive.org/web/20141226210234/http://www.sonicspot.com/guide/wavefiles.html)
    * reference: a nice WAVE overview with formulas for calculating `fmt` chunk values: [The Dr. Agon WAV File Format Page](http://www.dragonwins.com/domains/getteched/wav/index.htm)
    * chunk XMP: [XMP specification](https://www.adobe.com/devnet/xmp.html)
    * chunk UMID: [UMID](https://en.wikipedia.org/wiki/Unique_Material_Identifier)
    * chunk CART: [CART website](http://www.cartchunk.org/) "The Radio Industry's Traffic Data WAVE File Standard. Now formally ratified as AES46-2002!"
    * chunk PEAK: local copy of https://web.archive.org/web/20081201144551/http://music.calarts.edu/~tre/PeakChunk.html
        * See also: https://music-dsp.music.columbia.narkive.com/eDOqPIml/the-peak-chunk-in-aiff-and-wav-files/
    * chunk levl: [EBU 3285 supplement 3](https://tech.ebu.ch/docs/tech/tech3285s3.pdf)
    * look through docs of uttori and document any chunks we're missing. https://github.com/uttori/uttori-audio-wave?tab=readme-ov-file
    * chunk ID3: ID3.org seems to be offline. Alternate spec locations: [Mutagen Spec collection](https://mutagen-specs.readthedocs.io/en/latest/), [fdd useful references](https://www.loc.gov/preservation/digital/formats/fdd/fdd000106.shtml#useful)
    * update sidebar with vertical line (similar to Zola docs)
    * chunks: [Audio Definition Model](https://www.bbc.co.uk/rd/publications/audio-definition-model-software)
        * [EBU ADM Guidelines Introduction](https://adm.ebu.io/index.html)
    * ambisonic b-format WAVFORMATEX: http://dream.cs.bath.ac.uk/researchdev/wave-ex/bformat.html
    * add live fuzzy match filtering to the long WRID table
    * chunk atem: appears to contain sampler related JSON
