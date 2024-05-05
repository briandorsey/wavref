+++
title = "fmt"
weight = 11
description = "Format of audio samples in data chunk."

[taxonomies]
spec=["RIFF1991", "RIFF1994"]

[extra]
status = "REF"
+++

# WRID>RIFF-WAVE>fmt >

> Note: all chunks are four bytes. `fmt` is `"fmt "`. The last character is a space (ASCII 32).

TODO: overview

This chunk is fiddly. The interpretation of data in this chunk depends on the value of the first 2 bytes, the `format_tag`: 

> A number indicating the WAVE format category of the file. The content of the
> `format-specific-fields` \[ed: everything after `block_align`\] portion of the `fmt` chunk, and the interpretation of
> the waveform data, depend on this value. 
> 
> {{ spec(ref="RIFF1991") }}

The first several fields are consistent, followed by format specific fields. The default and most basic layout is called `WAVE_FORMAT_PCM` with a `format_tag` = `0x0001`. 


## WAVE_FORMAT_PCM

{{ wrid_table(prefix="WRID>RIFF-WAVE>fmt ", group="W_F_PCM") }}

## WAVE_FORMAT_UNKNOWN

All other `format_tags` should follow the following structure (known as `WAVEFORMATEX`), which is also the structure for the `WAVE_FORMAT_UNKNOWN` `format_tag`.

{{ wrid_table(prefix="WRID>RIFF-WAVE>fmt ", group="W_F_UNKNOWN") }}

## WAVE_FORMAT_ADPCM

[ADPCM](https://en.wikipedia.org/wiki/Adaptive_differential_pulse-code_modulation) is a lossy audio compression format which compresses to approximately 1/4 the size of raw PCM data. It was used in telephony and early consumer multimedia systems, and some more recent embedded devices because very little CPU time is needed to decode (compared to other lossy formats).

The {{ spec(ref="RIFF1994") }} specification includes an algorithm for encoding and decoding ADPCM data.

{{ wrid_table(prefix="WRID>RIFF-WAVE>fmt ", group="W_F_ADPCM") }}

## WAVE Format Tags (Categories)

Most of the `fmt ` chunk definitions are for proprietary compressed formats from the early 90s. With a few exceptions (see above) I haven't documented them here, because I *think* they're extremely rare. If you're aware usage of a particlar `format_tag` that isn't already documented please let me know, and I'll add it to the book.


From {{ spec(ref="RIFF1991") }}, [Registered FOURCC Codes and WAVE Formats][msfourcc] and [mmreg.h][mmreg_tags]: 

<div class="md_table">

|	format_tag |	WAVE Format Name	|	Company	|	Description	|
| - | - | - | - |
|	0x0000	|	WAVE_FORMAT_UNKNOWN	|	Microsoft Corporation	|	Unknown or unspecified format	|
|	0x0001	|	WAVE_FORMAT_PCM	|	Microsoft Corporation	|	PCM audio in integer format	|
|	0x0002	|	WAVE_FORMAT_ADPCM	|	Microsoft Corporation	|	Microsoft adaptive PCM	|
|	0x0003	|	WAVE_FORMAT_IEEE_FLOAT	|	Microsoft Corporation	|	PCM audio in IEEE floating-point format	|
|	0x0004	|	WAVE_FORMAT_VSELP	|	Compaq Computer Corp.	|	VSELP codec for Windows CE 2.0 device	|
|	0x0005	|	WAVE_FORMAT_IBM_CVSD	|	IBM Corporation	|		|
|	0x0006	|	WAVE_FORMAT_ALAW	|	Microsoft Corporation	|		|
|	0x0007	|	WAVE_FORMAT_MULAW	|	Microsoft Corporation	|		|
|	0x0008	|	WAVE_FORMAT_DTS	|	Microsoft Corporation	|	DTS	|
|	0x0009	|	WAVE_FORMAT_DRM	|	Microsoft Corporation	|	Microsoft Digital Rights Managed encrypted audio	|
|	0x000A	|	WAVE_FORMAT_WMAVOICE9	|	Microsoft Corporation	|	Speech audio codec	|
|	0x000B	|	WAVE_FORMAT_WMAVOICE10	|	Microsoft Corporation	|		|
|	0x0010	|	WAVE_FORMAT_OKI_ADPCM	|	OKI	|		|
|	0x0011	|	WAVE_FORMAT_DVI_ADPCM	|	Intel Corporation	|		|
|	0x0012	|	WAVE_FORMAT_MEDIASPACE_ADPCM	|	Videologic	|		|
|	0x0013	|	WAVE_FORMAT_SIERRA_ADPCM	|	Sierra Semiconductor Corp	|		|
|	0x0014	|	WAVE_FORMAT_G723_ADPCM	|	Antex Electronics Corporation	|		|
|	0x0015	|	WAVE_FORMAT_DIGISTD	|	DSP Solutions, Inc.	|		|
|	0x0016	|	WAVE_FORMAT_DIGIFIX	|	DSP Solutions, Inc.	|		|
|	0x0017	|	WAVE_FORMAT_DIALOGIC_OKI_ADPCM	|	Dialogic Corporation	|	OKI ADPCM chips or firmware	|
|	0x0018	|	WAVE_FORMAT_MEDIAVISION_ADPCM	|	Media Vision, Inc.	|	ADPCM for Jazz 16 chip set	|
|	0x0019	|	WAVE_FORMAT_CU_CODEC	|	Hewlett-Packard Company	|		|
|	0x001A	|	WAVE_FORMAT_HP_DYN_VOICE	|	Hewlett-Packard Company	|		|
|	0x0020	|	WAVE_FORMAT_YAMAHA_ADPCM	|	Yamaha Corporation of America	|		|
|	0x0021	|	WAVE_FORMAT_SONARC	|	Speech Compression	|		|
|	0x0022	|	WAVE_FORMAT_DSPGROUP_TRUESPEECH	|	DSP Group, Inc	|		|
|	0x0023	|	WAVE_FORMAT_ECHOSC1	|	Echo Speech Corporation	|		|
|	0x0024	|	WAVE_FORMAT_AUDIOFILE_AF36	| Audiofile, Inc. |		|
|	0x0025	|	WAVE_FORMAT_APTX	|	Audio Processing Technology	|		|
|	0x0026	|	WAVE_FORMAT_AUDIOFILE_AF10	| Audiofile, Inc. |		|
|	0x0027	|	WAVE_FORMAT_PROSODY_1612	|	Aculab plc	|	Prosody CTI speech card	|
|	0x0028	|	WAVE_FORMAT_LRC	|	Merging Technologies S.A.	|		|
|	0x0030	|	WAVE_FORMAT_DOLBY_AC2	|	Dolby Laboratories	|		|
|	0x0031	|	WAVE_FORMAT_GSM610	|	Microsoft Corporation	|		|
|	0x0032	|	WAVE_FORMAT_MSNAUDIO	|	Microsoft Corporation	|	Microsoft MSN audio codec	|
|	0x0033	|	WAVE_FORMAT_ANTEX_ADPCME	|	Antex Electronics Corporation	|		|
|	0x0034	|	WAVE_FORMAT_CONTROL_RES_VQLPC	|	Control Resources Limited	|	.	|
|	0x0035	|	WAVE_FORMAT_DIGIREAL	|	DSP Solutions, Inc.	|		|
|	0x0036	|	WAVE_FORMAT_DIGIADPCM	|	DSP Solutions, Inc.	|	.	|
|	0x0037	|	WAVE_FORMAT_CONTROL_RES_CR10	|	Control Resources Limited	|		|
|	0x0038	|	WAVE_FORMAT_NMS_VBXADPCM	|	Natural MicroSystems	|		|
|	0x0039	|	WAVE_FORMAT_CS_IMAADPCM	|	Crystal Semiconductor IMA ADPCM	|	Roland RDAC proprietary format	|
|	0x003A	|	WAVE_FORMAT_ECHOSC3	|	Echo Speech Corporation	|	Proprietary compression format	|
|	0x003B	|	WAVE_FORMAT_ROCKWELL_ADPCM	|	Rockwell International	|	Rockwell ADPCM	|
|	0x003C	|	WAVE_FORMAT_ROCKWELL_DIGITALK	|	Rockwell International	|	Rockwell DIGITALK	|
|	0x003D	|	WAVE_FORMAT_XEBEC	|	Xebec Multimedia Solutions Limited	|	Proprietary compression format	|
|	0x0040	|	WAVE_FORMAT_G721_ADPCM	|	Antex Electronics Corporation	|		|
|	0x0041	|	WAVE_FORMAT_G728_CELP	|	Antex Electronics Corporation	|		|
|	0x0042	|	WAVE_FORMAT_MSG723	|	Microsoft Corporation	|		|
|	0x0043	|	WAVE_FORMAT_INTEL_G723_1	|	Intel Corp.	|		|
|	0x0044	|	WAVE_FORMAT_INTEL_G729	|	Intel Corp.	|		|
|	0x0045	|	WAVE_FORMAT_SHARP_G726	|	Sharp	|		|
|	0x0050	|	WAVE_FORMAT_MPEG	|	Microsoft Corporation	|		|
|	0x0052	|	WAVE_FORMAT_RT24	|	InSoft, Inc.	|		|
|	0x0053	|	WAVE_FORMAT_PAC	|	InSoft, Inc.	|		|
|	0x0055	|	WAVE_FORMAT_MPEGLAYER3	|	ISO/MPEG Layer3 Format Tag	|	ISO/MPEG Layer 3 format tag	|
|	0x0059	|	WAVE_FORMAT_LUCENT_G723	|	Lucent Technologies	|		|
|	0x0060	|	WAVE_FORMAT_CIRRUS	|	Cirrus Logic	|		|
|	0x0061	|	WAVE_FORMAT_ESPCM	|	ESS Technology	|		|
|	0x0062	|	WAVE_FORMAT_VOXWARE	|	Voxware Inc	|		|
|	0x0063	|	WAVE_FORMAT_CANOPUS_ATRAC	|	Canopus, co., Ltd.	|	ATRACWAVEFORMAT	|
|	0x0064	|	WAVE_FORMAT_G726_ADPCM	|	APICOM	|		|
|	0x0065	|	WAVE_FORMAT_G722_ADPCM	|	APICOM	|		|
|	0x0066	|	WAVE_FORMAT_DSAT	|	Microsoft Corporation	|		|
|	0x0067	|	WAVE_FORMAT_DSAT_DISPLAY	|	Microsoft Corporation	|		|
|	0x0069	|	WAVE_FORMAT_VOXWARE_BYTE_ALIGNED	|	Voxware Inc	|		|
|	0x0070	|	WAVE_FORMAT_VOXWARE_AC8	|	Voxware Inc	|		|
|	0x0071	|	WAVE_FORMAT_VOXWARE_AC10	|	Voxware Inc	|		|
|	0x0072	|	WAVE_FORMAT_VOXWARE_AC16	|	Voxware Inc	|		|
|	0x0073	|	WAVE_FORMAT_VOXWARE_AC20	|	Voxware Inc	|		|
|	0x0074	|	WAVE_FORMAT_VOXWARE_RT24	|	Voxware Inc	|		|
|	0x0075	|	WAVE_FORMAT_VOXWARE_RT29	|	Voxware Inc	|		|
|	0x0076	|	WAVE_FORMAT_VOXWARE_RT29HW	|	Voxware Inc	|		|
|	0x0077	|	WAVE_FORMAT_VOXWARE_VR12	|	Voxware Inc	|		|
|	0x0078	|	WAVE_FORMAT_VOXWARE_VR18	|	Voxware Inc	|		|
|	0x0079	|	WAVE_FORMAT_VOXWARE_TQ40	|	Voxware Inc	|		|
|	0x007A	|	WAVE_FORMAT_VOXWARE_SC3	|	Voxware Inc	|		|
|	0x007B	|	WAVE_FORMAT_VOXWARE_SC3_1	|	Voxware Inc	|		|
|	0x0080	|	WAVE_FORMAT_SOFTSOUND	|	Softsound, Ltd.	|		|
|	0x0081	|	WAVE_FORMAT_VOXWARE_TQ60	|	Voxware Inc	|		|
|	0x0082	|	WAVE_FORMAT_MSRT24	|	Microsoft Corporation	|		|
|	0x0083	|	WAVE_FORMAT_G729A	|	AT&T Labs, Inc.	|		|
|	0x0084	|	WAVE_FORMAT_MVI_MVI2	|	Motion Pixels	|		|
|	0x0085	|	WAVE_FORMAT_DF_G726	|	DataFusion Systems (Pty) (Ltd)	|		|
|	0x0086	|	WAVE_FORMAT_DF_GSM610	|	DataFusion Systems (Pty) (Ltd)	|		|
|	0x0088	|	WAVE_FORMAT_ISIAUDIO	|	Iterated Systems, Inc.	|		|
|	0x0089	|	WAVE_FORMAT_ONLIVE	|	OnLive! Technologies, Inc.	|		|
|	0x008A	|	WAVE_FORMAT_MULTITUDE_FT_SX20	|	Multitude Inc.	|		|
|	0x008B	|	WAVE_FORMAT_INFOCOM_ITS_G721_ADPCM	|	Infocom	|	G.721 ADPCM	|
|	0x008C	|	WAVE_FORMAT_CONVEDIA_G729	|	Convedia Corp.	|		|
|	0x008D	|	WAVE_FORMAT_CONGRUENCY	|	Congruency Inc.	|		|
|	0x0091	|	WAVE_FORMAT_SBC24	|	Siemens Business Communications Sys	|		|
|	0x0092	|	WAVE_FORMAT_DOLBY_AC3_SPDIF	|	Sonic Foundry	|		|
|	0x0093	|	WAVE_FORMAT_MEDIASONIC_G723	|	MediaSonic	|		|
|	0x0094	|	WAVE_FORMAT_PROSODY_8KBPS	|	Aculab plc	|	Prosody CTI speech card	|
|	0x0097	|	WAVE_FORMAT_ZYXEL_ADPCM	|	ZyXEL Communications, Inc.	|	ZyXEL ADPCM	|
|	0x0098	|	WAVE_FORMAT_PHILIPS_LPCBB	|	Philips Speech Processing	|		|
|	0x0099	|	WAVE_FORMAT_PACKED	|	Studer Professional Audio AG	|		|
|	0x00A0	|	WAVE_FORMAT_MALDEN_PHONYTALK	|	Malden Electronics Ltd.	|	Phony Talk	|
|	0x00A1	|	WAVE_FORMAT_RACAL_RECORDER_GSM	|	Racal recorders	|	Racal Recorder GSM	|
|	0x00A2	|	WAVE_FORMAT_RACAL_RECORDER_G720_A	|	Racal recorders	|	Racal Recorder G720.a	|
|	0x00A3	|	WAVE_FORMAT_RACAL_RECORDER_G723_1	|	Racal recorders	|	Racal G723.1	|
|	0x00A4	|	WAVE_FORMAT_RACAL_RECORDER_TETRA_ACELP	|	Racal recorders	|	Racal Tetra ACELP	|
|	0x00B0	|	WAVE_FORMAT_NEC_AAC	|	NEC Corp.	|	NEC AAC	|
|	0x00FF	|	WAVE_FORMAT_RAW_AAC1	| | 	For Raw AAC, with format block AudioSpecificConfig() (as defined by MPEG-4), that follows WAVEFORMATEX	|		|
|	0x0100	|	WAVE_FORMAT_RHETOREX_ADPCM	|	Rhetorex Inc.	|	Rhetorex ADPCM wave format type	|
|	0x0101	|	WAVE_FORMAT_IRAT	|	BeCubed Software Inc.	|		|
|	0x0111	|	WAVE_FORMAT_VIVO_G723	|	Vivo Software	|		|
|	0x0112	|	WAVE_FORMAT_VIVO_SIREN	|	Vivo Software	|		|
|	0x0120	|	WAVE_FORMAT_PHILIPS_CELP	|	Philips Speech Processing	|		|
|	0x0121	|	WAVE_FORMAT_PHILIPS_GRUNDIG	|	Philips Speech Processing	|		|
|	0x0123	|	WAVE_FORMAT_DIGITAL_G723	|	Digital Equipment Corporation	|		|
|	0x0125	|	WAVE_FORMAT_SANYO_LD_ADPCM	|	Sanyo Electric Co., Ltd.	|	SANYO LD-ADPCM wave type	|
|	0x0130	|	WAVE_FORMAT_SIPROLAB_ACEPLNET	|	Sipro Lab Telecom Inc.	|		|
|	0x0131	|	WAVE_FORMAT_SIPROLAB_ACELP4800	|	Sipro Lab Telecom Inc.	|		|
|	0x0132	|	WAVE_FORMAT_SIPROLAB_ACELP8V3	|	Sipro Lab Telecom Inc.	|		|
|	0x0133	|	WAVE_FORMAT_SIPROLAB_G729	|	Sipro Lab Telecom Inc.	|		|
|	0x0134	|	WAVE_FORMAT_SIPROLAB_G729A	|	Sipro Lab Telecom Inc.	|		|
|	0x0135	|	WAVE_FORMAT_SIPROLAB_KELVIN	|	Sipro Lab Telecom Inc.	|		|
|	0x0136	|	WAVE_FORMAT_VOICEAGE_AMR	|	VoiceAge Corp.	|		|
|	0x0140	|	WAVE_FORMAT_G726ADPCM	|	Dictaphone Corporation	|		|
|	0x0141	|	WAVE_FORMAT_DICTAPHONE_CELP68	|	Dictaphone Corporation	|		|
|	0x0142	|	WAVE_FORMAT_DICTAPHONE_CELP54	|	Dictaphone Corporation	|		|
|	0x0150	|	WAVE_FORMAT_QUALCOMM_PUREVOICE	|	Qualcomm, Inc.	|		|
|	0x0151	|	WAVE_FORMAT_QUALCOMM_HALFRATE	|	Qualcomm, Inc.	|		|
|	0x0155	|	WAVE_FORMAT_TUBGSM	|	Ring Zero Systems, Inc.	|	Related to GSM 6.10	|
|	0x0160	|	WAVE_FORMAT_MSAUDIO1	|	Microsoft Corporation	|		|
|	0x0161	|	WAVE_FORMAT_WMAUDIO2	|	Microsoft Corporation	|		|
|	0x0162	|	WAVE_FORMAT_WMAUDIO3	|	Microsoft Corporation	|	Multichannel WMA	|
|	0x0163	|	WAVE_FORMAT_WMAUDIO_LOSSLESS	|	Microsoft Corporation	|	WMA lossless	|
|	0x0164	|	WAVE_FORMAT_WMASPDIF	|	Microsoft Corporation	|	WMA Pro over S/PDIF	|
|	0x0170	|	WAVE_FORMAT_UNISYS_NAP_ADPCM	|	Unisys Corp.	|		|
|	0x0171	|	WAVE_FORMAT_UNISYS_NAP_ULAW	|	Unisys Corp.	|		|
|	0x0172	|	WAVE_FORMAT_UNISYS_NAP_ALAW	|	Unisys Corp.	|		|
|	0x0173	|	WAVE_FORMAT_UNISYS_NAP_16K	|	Unisys Corp.	|		|
|	0x0174	|	WAVE_FORMAT_SYCOM_ACM_SYC008	|	SyCom Technologies	|		|
|	0x0175	|	WAVE_FORMAT_SYCOM_ACM_SYC701_G726L	|	SyCom Technologies	|		|
|	0x0176	|	WAVE_FORMAT_SYCOM_ACM_SYC701_CELP54	|	SyCom Technologies	|		|
|	0x0177	|	WAVE_FORMAT_SYCOM_ACM_SYC701_CELP68	|	SyCom Technologies	|		|
|	0x0178	|	WAVE_FORMAT_KNOWLEDGE_ADVENTURE_ADPCM	|	Knowledge Adventure, Inc.	|		|
|	0x0180	|	WAVE_FORMAT_FRAUNHOFER_IIS_MPEG2_AAC	|	Fraunhofer IIS	|		|
|	0x0190	|	WAVE_FORMAT_DTS_DS	|	Digital Theatre Systems, Inc.	|		|
|	0x0200	|	WAVE_FORMAT_CREATIVE_ADPCM	|	Creative Labs, Inc	|		|
|	0x0202	|	WAVE_FORMAT_CREATIVE_FASTSPEECH8	|	Creative Labs, Inc	|	Fast Speech 8	|
|	0x0203	|	WAVE_FORMAT_CREATIVE_FASTSPEECH10	|	Creative Labs, Inc	|	Fast Speech 10	|
|	0x0210	|	WAVE_FORMAT_UHER_ADPCM	|	UHER informatic GmbH	|		|
|	0x0215	|	WAVE_FORMAT_ULEAD_DV_AUDIO	|	Ulead Systems, Inc.	|		|
|	0x0216	|	WAVE_FORMAT_ULEAD_DV_AUDIO_1	|	Ulead Systems, Inc.	|		|
|	0x0220	|	WAVE_FORMAT_QUARTERDECK	|	Quarterdeck Corporation	|		|
|	0x0230	|	WAVE_FORMAT_ILINK_VC	|	I-link Worldwide	|		|
|	0x0240	|	WAVE_FORMAT_RAW_SPORT	|	Aureal Semiconductor	|		|
|	0x0241	|	WAVE_FORMAT_ESST_AC3	|	ESS Technology, Inc.	|		|
|	0x0249	|	WAVE_FORMAT_GENERIC_PASSTHRU	|		|		|
|	0x0250	|	WAVE_FORMAT_IPI_HSX	|	Interactive Products, Inc.	|		|
|	0x0251	|	WAVE_FORMAT_IPI_RPELP	|	Interactive Products, Inc.	|		|
|	0x0260	|	WAVE_FORMAT_CS2	|	Consistent Software	|	Cs2	|
|	0x0270	|	WAVE_FORMAT_SONY_SCX	|	Sony Corp.	|		|
|	0x0271	|	WAVE_FORMAT_SONY_SCY	|	Sony Corp.	|		|
|	0x0272	|	WAVE_FORMAT_SONY_ATRAC3	|	Sony Corp.	|		|
|	0x0273	|	WAVE_FORMAT_SONY_SPC	|	Sony Corp.	|		|
|	0x0280	|	WAVE_FORMAT_TELUM_AUDIO	|	Telum Inc.	|		|
|	0x0281	|	WAVE_FORMAT_TELUM_IA_AUDIO	|	Telum Inc.	|		|
|	0x0285	|	WAVE_FORMAT_NORCOM_VOICE_SYSTEMS_ADPCM	|	Norcom Electronics Corp.	|	Norcom Voice Systems ADPCM	|
|	0x0300	|	WAVE_FORMAT_FM_TOWNS_SND	|	Fujitsu Corp.	|		|
|	0x0350	|	WAVE_FORMAT_MICRONAS	|	Micronas Semiconductors, Inc.	|		|
|	0x0351	|	WAVE_FORMAT_MICRONAS_CELP833	|	Micronas Semiconductors, Inc.	|		|
|	0x0400	|	WAVE_FORMAT_BTV_DIGITAL	|	Brooktree Corporation	|	Brooktree digital audio format	|
|	0x0401	|	WAVE_FORMAT_INTEL_MUSIC_CODER	|	Intel Corp.	|		|
|	0x0402	|	WAVE_FORMAT_INDEO_AUDIO	|	Ligos	|		|
|	0x0450	|	WAVE_FORMAT_QDESIGN_MUSIC	|	QDesign Corporation	|		|
|	0x0500	|	WAVE_FORMAT_ON2_VP7_AUDIO	|	On2 Technologies	|		|
|	0x0501	|	WAVE_FORMAT_ON2_VP6_AUDIO	|	On2 Technologies	|		|
|	0x0680	|	WAVE_FORMAT_VME_VMPCM	|	AT&T Labs, Inc.	|		|
|	0x0681	|	WAVE_FORMAT_TPC	|	AT&T Labs, Inc.	|		|
|	0x08AE	|	WAVE_FORMAT_LIGHTWAVE_LOSSLESS	|	Clearjump	|		|
|	0x1000	|	WAVE_FORMAT_OLIGSM	|	Ing C. Olivetti & C., S.p.A.	|		|
|	0x1001	|	WAVE_FORMAT_OLIADPCM	|	Ing C. Olivetti & C., S.p.A.	|		|
|	0x1002	|	WAVE_FORMAT_OLICELP	|	Ing C. Olivetti & C., S.p.A.	|		|
|	0x1003	|	WAVE_FORMAT_OLISBC	|	Ing C. Olivetti & C., S.p.A.	|		|
|	0x1004	|	WAVE_FORMAT_OLIOPR	|	Ing C. Olivetti & C., S.p.A.	|		|
|	0x1100	|	WAVE_FORMAT_LH_CODEC	|	Lernout & Hauspie	|		|
|	0x1101	|	WAVE_FORMAT_LH_CODEC_CELP	|	Lernout & Hauspie	|		|
|	0x1102	|	WAVE_FORMAT_LH_CODEC_SBC8	|	Lernout & Hauspie	|		|
|	0x1103	|	WAVE_FORMAT_LH_CODEC_SBC12	|	Lernout & Hauspie	|		|
|	0x1104	|	WAVE_FORMAT_LH_CODEC_SBC16	|	Lernout & Hauspie	|		|
|	0x1400	|	WAVE_FORMAT_NORRIS	|	Norris Communications, Inc.	|		|
|	0x1401	|	WAVE_FORMAT_ISIAUDIO_2	|	ISIAudio	|		|
|	0x1500	|	WAVE_FORMAT_SOUNDSPACE_MUSICOMPRESS	|	AT&T Labs, Inc.	|		|
|	0x1600	|	WAVE_FORMAT_MPEG_ADTS_AAC	|	Microsoft Corporation	|		|
|	0x1601	|	WAVE_FORMAT_MPEG_RAW_AAC	|	Microsoft Corporation	|		|
|	0x1602	|	WAVE_FORMAT_MPEG_LOAS	|	Microsoft Corporation | (MPEG-4 Audio Transport Streams (LOAS/LATM)	|		
|	0x1608	|	WAVE_FORMAT_NOKIA_MPEG_ADTS_AAC	|	Microsoft Corporation	|		|
|	0x1609	|	WAVE_FORMAT_NOKIA_MPEG_RAW_AAC	|	Microsoft Corporation	|		|
|	0x160A	|	WAVE_FORMAT_VODAFONE_MPEG_ADTS_AAC	|	Microsoft Corporation	|		|
|	0x160B	|	WAVE_FORMAT_VODAFONE_MPEG_RAW_AAC	|	Microsoft Corporation	|		|
|	0x1610	|	WAVE_FORMAT_MPEG_HEAAC |	|	Microsoft Corporation (MPEG-2 AAC or MPEG-4 HE-AAC v1/v2 streams with any payload	|		|
|	0x181C	|	WAVE_FORMAT_VOXWARE_RT24_SPEECH	|	Voxware Inc.	|		|
|	0x1971	|	WAVE_FORMAT_SONICFOUNDRY_LOSSLESS	|	Sonic Foundry	|		|
|	0x1979	|	WAVE_FORMAT_INNINGS_TELECOM_ADPCM	|	Innings Telecom Inc.	|		|
|	0x1C07	|	WAVE_FORMAT_LUCENT_SX8300P	|	Lucent Technologies	|		|
|	0x1C0C	|	WAVE_FORMAT_LUCENT_SX5363S	|	Lucent Technologies	|		|
|	0x1F03	|	WAVE_FORMAT_CUSEEME	|	CUSeeMe	|		|
|	0x1FC4	|	WAVE_FORMAT_NTCSOFT_ALF2CM_ACM	|	NTCSoft	|		|
|	0x2000	|	WAVE_FORMAT_DVM	|	FAST Multimedia AG	|		|
|	0x2001	|	WAVE_FORMAT_DTS2	|		|		|
|	0x3313	|	WAVE_FORMAT_MAKEAVIS	|		|		|
|	0x4143	|	WAVE_FORMAT_DIVIO_MPEG4_AAC	|	Divio, Inc.	|	Divio's AAC	|
|	0x4201	|	WAVE_FORMAT_NOKIA_ADAPTIVE_MULTIRATE	|	Nokia	|	Nokia adaptive multirate	|
|	0x4243	|	WAVE_FORMAT_DIVIO_G726	|	Divio, Inc.	|	Divio's G726	|
|	0x434C	|	WAVE_FORMAT_LEAD_SPEECH	|	LEAD Technologies	|		|
|	0x564C	|	WAVE_FORMAT_LEAD_VORBIS	|	LEAD Technologies	|		|
|	0x5756	|	WAVE_FORMAT_WAVPACK_AUDIO	|	xiph.org	|		|
|	0x6C61	|	WAVE_FORMAT_ALAC	|	Apple Lossless	|		|
|	0x674F	|	WAVE_FORMAT_OGG_VORBIS_MODE_1	|	Ogg Vorbis	|		|
|	0x6750	|	WAVE_FORMAT_OGG_VORBIS_MODE_2	|	Ogg Vorbis	|		|
|	0x6751	|	WAVE_FORMAT_OGG_VORBIS_MODE_3	|	Ogg Vorbis	|		|
|	0x676F	|	WAVE_FORMAT_OGG_VORBIS_MODE_1_PLUS	|	Ogg Vorbis	|		|
|	0x6770	|	WAVE_FORMAT_OGG_VORBIS_MODE_2_PLUS	|	Ogg Vorbis	|		|
|	0x6771	|	WAVE_FORMAT_OGG_VORBIS_MODE_3_PLUS	|	Ogg Vorbis	|		|
|	0x7000	|	WAVE_FORMAT_3COM_NBX	|	3COM Corp.	|		|
|	0x704F	|	WAVE_FORMAT_OPUS	|	Opus	|		|
|	0x706D	|	WAVE_FORMAT_FAAD_AAC	|		|		|
|	0x7361	|	WAVE_FORMAT_AMR_NB	|	AMR Narrowband	|		|
|	0x7362	|	WAVE_FORMAT_AMR_WB	|	AMR Wideband	|		|
|	0x7363	|	WAVE_FORMAT_AMR_WP	|	AMR Wideband Plus	|		|
|	0x7A21	|	WAVE_FORMAT_GSM_AMR_CBR	|	GSMA/3GPP	|	Adaptive multirate	|
|	0x7A22	|	WAVE_FORMAT_GSM_AMR_VBR_SID	|	GSMA/3GPP	|	AMR with silence detection	|
|	0xA100	|	WAVE_FORMAT_COMVERSE_INFOSYS_G723_1	|	Comverse Infosys	|		|
|	0xA101	|	WAVE_FORMAT_COMVERSE_INFOSYS_AVQSBC	|	Comverse Infosys	|		|
|	0xA102	|	WAVE_FORMAT_COMVERSE_INFOSYS_SBC	|	Comverse Infosys	|		|
|	0xA103	|	WAVE_FORMAT_SYMBOL_G729_A	|	Symbol Technologies	|	Symbol Technology's G729A	|
|	0xA104	|	WAVE_FORMAT_VOICEAGE_AMR_WB	|	VoiceAge Corp.	|		|
|	0xA105	|	WAVE_FORMAT_INGENIENT_G726	|	Ingenient Technologies, Inc.	|	Ingenient's G726	|
|	0xA106	|	WAVE_FORMAT_MPEG4_AAC	|	ISO/MPEG-4	|	ISO/MPEG-4 advanced audio Coding	|
|	0xA107	|	WAVE_FORMAT_ENCORE_G726	|	Encore Software	|	Encore Software Ltd's G726	|
|	0xA108	|	WAVE_FORMAT_ZOLL_ASAO	|	ZOLL Medical Corp.	|	Windows Media RT Voice	|
|	0xA109	|	WAVE_FORMAT_SPEEX_VOICE	|	xiph.org	|		|
|	0xA10A	|	WAVE_FORMAT_VIANIX_MASC	|	Vianix LLC	|		|
|	0xA10B	|	WAVE_FORMAT_WM9_SPECTRUM_ANALYZER	|	Microsoft	|		|
|	0xA10C	|	WAVE_FORMAT_WMF_SPECTRUM_ANAYZER	|	Microsoft	|		|
|	0xA10D	|	WAVE_FORMAT_GSM_610	|		|		|
|	0xA10E	|	WAVE_FORMAT_GSM_620	|		|		|
|	0xA10F	|	WAVE_FORMAT_GSM_660	|		|		|
|	0xA110	|	WAVE_FORMAT_GSM_690	|		|		|
|	0xA111	|	WAVE_FORMAT_GSM_ADAPTIVE_MULTIRATE_WB	|		|		|
|	0xA112	|	WAVE_FORMAT_POLYCOM_G722	|	Polycom	|		|
|	0xA113	|	WAVE_FORMAT_POLYCOM_G728	|	Polycom	|		|
|	0xA114	|	WAVE_FORMAT_POLYCOM_G729_A	|	Polycom	|		|
|	0xA115	|	WAVE_FORMAT_POLYCOM_SIREN	|	Polycom	|		|
|	0xA116	|	WAVE_FORMAT_GLOBAL_IP_ILBC	|	Global IP	|		|
|	0xA117	|	WAVE_FORMAT_RADIOTIME_TIME_SHIFT_RADIO	|	RadioTime	|		|
|	0xA118	|	WAVE_FORMAT_NICE_ACA	|	Nice Systems	|		|
|	0xA119	|	WAVE_FORMAT_NICE_ADPCM	|	Nice Systems	|		|
|	0xA11A	|	WAVE_FORMAT_VOCORD_G721	|	Vocord Telecom	|		|
|	0xA11B	|	WAVE_FORMAT_VOCORD_G726	|	Vocord Telecom	|		|
|	0xA11C	|	WAVE_FORMAT_VOCORD_G722_1	|	Vocord Telecom	|		|
|	0xA11D	|	WAVE_FORMAT_VOCORD_G728	|	Vocord Telecom	|		|
|	0xA11E	|	WAVE_FORMAT_VOCORD_G729	|	Vocord Telecom	|		|
|	0xA11F	|	WAVE_FORMAT_VOCORD_G729_A	|	Vocord Telecom	|		|
|	0xA120	|	WAVE_FORMAT_VOCORD_G723_1	|	Vocord Telecom	|		|
|	0xA121	|	WAVE_FORMAT_VOCORD_LBC	|	Vocord Telecom	|		|
|	0xA122	|	WAVE_FORMAT_NICE_G728	|	Nice Systems	|		|
|	0xA123	|	WAVE_FORMAT_FRACE_TELECOM_G729	|	France Telecom	|		|
|	0xA124	|	WAVE_FORMAT_CODIAN	|	CODIAN	|		|
|	0xAC40	|	WAVE_FORMAT_DOLBY_AC4	|	Dolby AC-4	|		|
|	0xF1AC	|	WAVE_FORMAT_FLAC	|	flac.sourceforge.net	|		|
|	0xFFFE	|	WAVE_FORMAT_EXTENSIBLE	|	Microsoft	|		|
|	0xFFFF	|	WAVE_FORMAT_DEVELOPMENT	|		|		|

</div>

## Learning References


## Specification

{{ chunk_specs() }}

* [WAVE and AVI Codec Registries](https://www.iana.org/assignments/wave-avi-codec-registry/wave-avi-codec-registry.xhtml) RFC2361. This is historical, not updated after WavFormatEx was introduced in 1994 
* [Registered FOURCC Codes and WAVE Formats][msfourcc] Similar to above, but from Microsoft docs. 
* [mmreg.h][mmreg_pcm] online version of MS SDK file which is referenced in the {{ spec(ref="RIFF1991") }} spec. 

[msfourcc]: https://learn.microsoft.com/en-us/previous-versions/aa904731(v=vs.80)
[mmreg_pcm]: https://github.com/hughbe/windows-sdk-headers/blob/main/Include/10.0.22621.0/shared/mmreg.h#L2418
[mmreg_tags]: https://github.com/hughbe/windows-sdk-headers/blob/main/Include/10.0.22621.0/shared/mmreg.h#L2108

