+++
title = "CSET"
weight = 52
description = "Character set information. Code page, language, etc. Very Rare."

[taxonomies]
spec=["RIFF1991", "RIFF1994"]

[extra]
status = "REF"
+++

# WRID>RIFF-WAVE>CSET

> DRAFT!

TODO: overview

> The CSET chunk defines the code page and country, language, and dialect codes for the file
>
> {{ spec(ref="RIFF1991") }}

## Usage

While this chunk is defined in {{ spec(ref="RIFF1991") }}, it seems to be *extremely* rarely included in WAVE files. I haven't been able to find a single example in my collection of files. 


The CSET specified countries and languages are also intended to be used in other chunks, however: 

> FADGI recognizes that the values for country codes, languages and dialects
defined in the CSET chunk are outdated because the RIFF specification in which
they are defined was last updated in 1991.
To ensure maximum compatibility, use the CSET codes if the appropriate values
are defined in the CSET chunk, otherwise use ISO standard code lists: ISO 3166-
1 code for Country or ISO 639-1 for Language 
>
> [FADGI Guidelines for Embedding Metadata in Broadcast WAVE Files](https://www.digitizationguidelines.gov/audio-visual/documents/BWF_Embed_Guideline_v3_2021.pdf)

It's not clear how to extend the CSET defined countries because both of those ISO standards map to 2-3 letter codes, while CSET specifies an integer mapping. 


## Spec

{{ wrid_table(prefix="WRID>RIFF-WAVE>CSET") }}

## Country Codes

| Country Code | Country                    |
|-             |-                           |
| 000          | None (assume 001 = USA)    | 
| 001          | USA                        |
| 002          | Canada                     |
| 003          | Latin America              |
| 030          | Greece                     |
| 031          | Netherlands                |
| 032          | Belgium                    |
| 033          | France                     |
| 034          | Spain                      |
| 039          | Italy                      |
| 041          | Switzerland                |
| 043          | Austria                    |
| 044          | United Kingdom             |
| 045          | Denmark                    |
| 046          | Sweden                     |
| 047          | Norway                     |
| 049          | West Germany               |
| 052          | Mexico                     |
| 055          | Brazil                     |
| 061          | Australia                  |
| 064          | New Zealand                |
| 081          | Japan                      |
| 082          | Korea                      |
| 086          | People’s Republic of China |
| 088          | Taiwan                     |
| 090          | Turkey                     |
| 351          | Portugal                   |
| 352          | Luxembourg                 |
| 354          | Iceland                    |
| 358          | Finland                    |

## Language and Dialect Codes

| Language Code | Dialect Code | Language                         | Specification |
|-              |-             |-                                 |-              |
|	0	            |	0	           |	None (assume 9,1 = US English)	| RIFF1991      |
|	1	            |	1	           |	Arabic	                        | RIFF1991      |
|	2	            |	1	           |	Bulgarian	                      | RIFF1991      |
|	3	            |	1	           |	Catalan	                        | RIFF1991      |
|	4	            |	1	           |	Traditional Chinese	            | RIFF1991      |
|	4	            |	2	           |	Simplified Chinese	            | RIFF1991      |
|	5	            |	1	           |	Czech	                          | RIFF1991      |
|	6	            |	1	           |	Danish	                        | RIFF1991      |
|	7	            |	1	           |	German	                        | RIFF1991      |
|	7	            |	2	           |	Swiss German	                  | RIFF1991      |
|	8	            |	1	           |	Greek	                          | RIFF1991      |
|	9	            |	1	           |	US English	                    | RIFF1991      |
|	9	            |	2	           |	UK English	                    | RIFF1991      |
|	10	          |	1	           |	Spanish	                        | RIFF1991      |
|	10	          |	2	           |	Spanish Mexican	                | RIFF1991      |
|	11	          |	1	           |	Finnish	                        | RIFF1991      |
|	12	          |	1	           |	French	                        | RIFF1991      |
|	12	          |	2	           |	Belgian French	                | RIFF1991      |
|	12	          |	3	           |	Canadian French	                | RIFF1991      |
|	12	          |	4	           |	Swiss French	                  | RIFF1991      |
|	13	          |	1	           |	Hebrew	                        | RIFF1991      |
| 14            | 1            |  Hungarian                       | RIFF1994      |
| 15            | 1            |  Icelandic                       | RIFF1994      | 
| 16            | 1            |  Italian                         | RIFF1994      | 
| 16            | 2            |  Swiss Italian                   | RIFF1994      | 
| 17            | 1            |  Japanese                        | RIFF1994      | 
| 18            | 1            |  Korean                          | RIFF1994      | 
| 19            | 1            |  Dutch                           | RIFF1994      | 
| 19            | 2            |  Belgian Dutch                   | RIFF1994      | 
| 20            | 1            |  Norwegian - Bokmal              | RIFF1994      | 
| 20            | 2            |  Norwegian - Nynorsk             | RIFF1994      | 
| 21            | 1            |  Polish                          | RIFF1994      | 
| 22            | 1            |  Brazilian Portuguese            | RIFF1994      | 
| 22            | 2            |  Portuguese                      | RIFF1994      | 
| 23            | 1            |  Rhaeto-Romanic                  | RIFF1994      | 
| 24            | 1            |  Romanian                        | RIFF1994      | 
| 25            | 1            |  Russian                         | RIFF1994      | 
| 26            | 1            |  Serbo-Croatian (Latin)          | RIFF1994      | 
| 26            | 2            |  Serbo-Croatian (Cyrillic)       | RIFF1994      | 
| 27            | 1            |  Slovak                          | RIFF1994      | 
| 28            | 1            |  Albanian                        | RIFF1994      | 
| 29            | 1            |  Swedish                         | RIFF1994      | 
| 30            | 1            |  Thai                            | RIFF1994      | 
| 31            | 1            |  Turkish                         | RIFF1994      | 
| 32            | 1            |  Urdu                            | RIFF1994      | 
| 33            | 1            |  Bahasa                          | RIFF1994      | 


## Learning References

## Specification

{{ chunk_specs() }}

