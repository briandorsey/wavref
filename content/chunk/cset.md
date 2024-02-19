+++
title = "CSET"
weight = 22
description = "TODO: description of CSET"

[taxonomies]
spec=["RIFF1991", "RIFF1994"]

[extra]
status = "DRAFT"
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

{{ wrid_table(prefix="WRID>RIFF-WAVE>CSET", spec="WAVRef") }}

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

| Language Code | Dialect Code | Language                         |
|-              |-             |-                                 |
|	0	            |	0	           |	None (assume 9,1 = US English)	|
|	1	            |	1	           |	Arabic	                        |
|	2	            |	1	           |	Bulgarian	                      |
|	3	            |	1	           |	Catalan	                        |
|	4	            |	1	           |	Traditional Chinese	            |
|	4	            |	2	           |	Simplified Chinese	            |
|	5	            |	1	           |	Czech	                          |
|	6	            |	1	           |	Danish	                        |
|	7	            |	1	           |	German	                        |
|	7	            |	2	           |	Swiss German	                  |
|	8	            |	1	           |	Greek	                          |
|	9	            |	1	           |	US English	                    |
|	9	            |	2	           |	UK English	                    |
|	10	          |	1	           |	Spanish	                        |
|	10	          |	2	           |	Spanish Mexican	                |
|	11	          |	1	           |	Finnish	                        |
|	12	          |	1	           |	French	                        |
|	12	          |	2	           |	Belgian French	                |
|	12	          |	3	           |	Canadian French	                |
|	12	          |	4	           |	Swiss French	                  |
|	13	          |	1	           |	Hebrew	                        |

## Learning References

## Specification

{{ chunk_specs() }}

