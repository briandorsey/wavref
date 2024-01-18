+++
title = "fmt"
weight = 11
description = "TODO: description of fmt"

[taxonomies]
spec=["RIFF1991", "RIFF1994"]

[extra]
status = "DRAFT"
+++

# WRID>RIFF-WAVE>fmt >

> DRAFT!

TODO: overview

{{ wrid_table(prefix="WRID>RIFF-WAVE>fmt ", spec="WAVRef") }}

## WAVE Format Categories

From {{ spec(ref="RIFF1991") }}: 

| format_tag | Value (u16) | Format Category | Note | 
| - | - | - | - | 
| WAVE_FORMAT_PCM | (0x0001) | Microsoft Pulse Code Modulation (PCM) format | |
| IBM_FORMAT_MULAW | (0x0101) | IBM mu-law format | 0x0101 overlaps with table below. :/  |
| IBM_FORMAT_ALAW | (0x0102) | IBM a-law format | |
| IBM_FORMAT_ADPCM | (0x0103) | IBM AVC Adaptive Differential Pulse Code Modulation format | |


From [Registered FOURCC Codes and WAVE Formats](https://learn.microsoft.com/en-us/previous-versions/aa904731(v=vs.80)): 

|	WAVE Format #	|	WAVE Format Name	|	Company Name	|	Description	|
| - | - | - | - |
|	0x0000	|	WAVE_FORMAT_UNKNOWN	|	Microsoft Corporation	|	Unknown or unspecified format	|
|	0x0001	|	WAVE_FORMAT_PCM	|	Microsoft Corporation	|	PCM audio in integer format	|
|	0x0002	|	WAVE_FORMAT_ADPCM	|	Microsoft Corporation	|	Microsoft adaptive PCM	|
|	0x0003	|	WAVE_FORMAT_IEEE_FLOAT	|	Microsoft Corporation	|	PCM audio in IEEE floating-point format	|
|	0x0004	|	WAVE_FORMAT_VSELP	|	Compaq Computer Corporation	|	VSELP codec for Windows CE 2.0 device	|
|	0x0005	|	WAVE_FORMAT_IBM_CVSD	|	IBM Corporation	|	Not specified	|
|	0x0006	|	WAVE_FORMAT_ALAW	|	Microsoft Corporation	|	Not specified	|
|	0x0007	|	WAVE_FORMAT_MULAW	|	Microsoft Corporation	|	Not specified	|
|	0x0008	|	WAVE_FORMAT_DTS	|	Microsoft Corporation	|	DTS	|
|	0x0009	|	WAVE_FORMAT_DRM	|	Microsoft Corporation	|	Microsoft Digital Rights Managed encrypted audio	|
|	0x000A	|	WAVE_FORMAT_WMSP1	|	Microsoft Corporation	|	Speech audio codec	|
|	0x0010	|	WAVE_FORMAT_OKI_ADPCM	|	OKI	|	Not specified	|
|	0x0011	|	WAVE_FORMAT_DVI_ADPCM	|	Intel Corporation	|	Not specified	|
|	0x0012	|	WAVE_FORMAT_MEDIASPACE_ADPCM	|	VideoLogic Systems	|	Not specified	|
|	0x0013	|	WAVE_FORMAT_SIERRA_ADPCM	|	Sierra Semiconductor Corporation	|	Not specified	|
|	0x0014	|	WAVE_FORMAT_G723_ADPCM	|	Antex Electronics Corporation	|	Not specified	|
|	0x0015	|	WAVE_FORMAT_DIGISTD	|	DSP Solutions, Inc.	|	Not specified	|
|	0x0016	|	WAVE_FORMAT_DIGIFIX	|	DSP Solutions, Inc.	|	Not specified	|
|	0x0017	|	WAVE_FORMAT_DIALOGIC_OKI_ADPCM	|	Dialogic Corporation	|	OKI ADPCM chips or firmware	|
|	0x0018	|	WAVE_FORMAT_MEDIAVISION_ADPCM	|	Media Vision, Inc.	|	ADPCM for Jazz 16 chip set	|
|	0x0019	|	WAVE_FORMAT_CU_CODEC	|	Hewlett-Packard Company	|	Not specified	|
|	0x001A	|	WAVE_FORMAT_HP_DYNAMIC_VOICE	|	Hewlett-Packard Company	|	Not specified	|
|	0x0020	|	WAVE_FORMAT_YAMAHA_ADPCM	|	Yamaha Corporation of America	|	Not specified	|
|	0x0021	|	WAVE_FORMAT_SONARC	|	Speech Compression	|	Not specified	|
|	0x0022	|	WAVE_FORMAT_DSPGROUP_TRUESPEECH	|	DSP Group, Inc.	|	Not specified	|
|	0x0023	|	WAVE_FORMAT_ECHOSC1	|	Echo Speech Corporation	|	Not specified	|
|	0x0024	|	WAVE_FORMAT_AUDIOFILE_AF36	|	Ahead, Inc.	|	Not specified	|
|	0x0025	|	WAVE_FORMAT_APTX	|	Audio Processing Technology	|	Not specified	|
|	0x0026	|	WAVE_FORMAT_AUDIOFILE_AF10	|	Ahead, Inc.	|	Not specified	|
|	0x0027	|	WAVE_FORMAT_PROSODY_1612	|	Aculab plc	|	Prosody CTI speech card	|
|	0x0028	|	WAVE_FORMAT_LRC	|	Merging Technologies S.A.	|	Not specified	|
|	0x0030	|	WAVE_FORMAT_DOLBY_AC2	|	Dolby Laboratories, Inc.	|	Not specified	|
|	0x0031	|	WAVE_FORMAT_GSM610	|	Microsoft Corporation	|	Not specified	|
|	0x0032	|	WAVE_FORMAT_MSNAUDIO	|	Microsoft Corporation	|	Microsoft MSN audio codec	|
|	0x0033	|	WAVE_FORMAT_ANTEX_ADPCME	|	Antex Electronics Corporation	|	Not specified	|
|	0x0034	|	WAVE_FORMAT_CONTROL_RES_VQLPC	|	Control Resources Ltd.	|	Not specified.	|
|	0x0035	|	WAVE_FORMAT_DIGIREAL	|	DSP Solutions, Inc.	|	Not specified	|
|	0x0036	|	WAVE_FORMAT_DIGIADPCM	|	DSP Solutions, Inc.	|	Not specified.	|
|	0x0037	|	WAVE_FORMAT_CONTROL_RES_CR10	|	Control Resources Ltd.	|	Not specified	|
|	0x0038	|	WAVE_FORMAT_NMS_VBXADPCM	|	Natural MicroSystems Corporation	|	Not specified	|
|	0x0039	|	WAVE_FORMAT_ROLAND_RDAC	|	Roland Corporation	|	Roland RDAC proprietary format	|
|	0x003A	|	WAVE_FORMAT_ECHOSC3	|	Echo Speech Corporation	|	Proprietary compression format	|
|	0x003B	|	WAVE_FORMAT_ROCKWELL_ADPCM	|	Rockwell International Corporation	|	Rockwell ADPCM	|
|	0x003C	|	WAVE_FORMAT_ROCKWELL_DIGITALK	|	Rockwell International Corporation	|	Rockwell DIGITALK	|
|	0x003D	|	WAVE_FORMAT_XEBEC	|	Xebec Multimedia Solutions Ltd.	|	Proprietary compression format	|
|	0x0040	|	WAVE_FORMAT_G721_ADPCM	|	Antex Electronics Corporation	|	Not specified	|
|	0x0041	|	WAVE_FORMAT_G728_CELP	|	Antex Electronics Corporation	|	Not specified	|
|	0x0042	|	WAVE_FORMAT_MSG723	|	Microsoft Corporation	|	Not specified	|
|	0x0043	|	WAVE_FORMAT_MSG723_1	|	Microsoft Corporation	|	Not specified	|
|	0x0044	|	WAVE_FORMAT_MSG729	|	Microsoft Corporation	|	Not specified	|
|	0x0045	|	WAVE_FORMAT_SPG726	|	Microsoft Corporation	|	Not specified	|
|	0x0050	|	WAVE_FORMAT_MPEG	|	Microsoft Corporation	|	Not specified	|
|	0x0052	|	WAVE_FORMAT_RT24	|	InSoft, Inc.	|	Not specified	|
|	0x0053	|	WAVE_FORMAT_PAC	|	InSoft, Inc.	|	Not specified	|
|	0x0055	|	WAVE_FORMAT_MPEGLAYER3	|	Not specified.	|	ISO/MPEG Layer 3 format tag	|
|	0x0059	|	WAVE_FORMAT_LUCENT_G723	|	Lucent Technologies	|	Not specified	|
|	0x0060	|	WAVE_FORMAT_CIRRUS	|	Cirrus Logic, Inc.	|	Not specified	|
|	0x0061	|	WAVE_FORMAT_ESPCM	|	ESS Technology, Inc.	|	Not specified	|
|	0x0062	|	WAVE_FORMAT_VOXWARE	|	Voxware, Inc.	|	Not specified	|
|	0x0063	|	WAVE_FORMAT_CANOPUS_ATRAC	|	Canopus, Co., Ltd.	|	ATRACWAVEFORMAT	|
|	0x0064	|	WAVE_FORMAT_G726_ADPCM	|	APICOM	|	Not specified	|
|	0x0065	|	WAVE_FORMAT_G722_ADPCM	|	APICOM	|	Not specified	|
|	0x0067	|	WAVE_FORMAT_DSAT_DISPLAY	|	Microsoft Corporation	|	Not specified	|
|	0x0069	|	WAVE_FORMAT_VOXWARE_BYTE_ALIGNED	|	Voxware, Inc.	|	Not specified	|
|	0x0070	|	WAVE_FORMAT_VOXWARE_AC8	|	Voxware, Inc.	|	Not specified	|
|	0x0071	|	WAVE_FORMAT_VOXWARE_AC10	|	Voxware, Inc.	|	Not specified	|
|	0x0072	|	WAVE_FORMAT_VOXWARE_AC16	|	Voxware, Inc.	|	Not specified	|
|	0x0073	|	WAVE_FORMAT_VOXWARE_AC20	|	Voxware, Inc.	|	Not specified	|
|	0x0074	|	WAVE_FORMAT_VOXWARE_RT24	|	Voxware, Inc.	|	Not specified	|
|	0x0075	|	WAVE_FORMAT_VOXWARE_RT29	|	Voxware, Inc.	|	Not specified	|
|	0x0076	|	WAVE_FORMAT_VOXWARE_RT29HW	|	Voxware, Inc.	|	Not specified	|
|	0x0077	|	WAVE_FORMAT_VOXWARE_VR12	|	Voxware, Inc.	|	Not specified	|
|	0x0078	|	WAVE_FORMAT_VOXWARE_VR18	|	Voxware, Inc.	|	Not specified	|
|	0x0079	|	WAVE_FORMAT_VOXWARE_TQ40	|	Voxware, Inc.	|	Not specified	|
|	0x007A	|	WAVE_FORMAT_VOXWARE_SC3	|	Voxware, Inc.	|	Not specified	|
|	0x007B	|	WAVE_FORMAT_VOXWARE_SC3	|	Voxware, Inc.	|	Not specified	|
|	0x0080	|	WAVE_FORMAT_SOFTSOUND	|	SoftSound Ltd.	|	Not specified	|
|	0x0081	|	WAVE_FORMAT_VOXWARE_TQ60	|	Voxware, Inc.	|	Not specified	|
|	0x0082	|	WAVE_FORMAT_MSRT24	|	Microsoft Corporation	|	Not specified	|
|	0x0083	|	WAVE_FORMAT_G729A	|	AT&T	|	Not specified	|
|	0x0084	|	WAVE_FORMAT_MVI_MVI2	|	Motion Pixels Ltd.	|	Not specified	|
|	0x0085	|	WAVE_FORMAT_DF_G726	|	Datafusion Systems (Pty) Ltd.	|	Not specified	|
|	0x0086	|	WAVE_FORMAT_DF_GSM610	|	Datafusion Systems (Pty) Ltd.	|	Not specified	|
|	0x0088	|	WAVE_FORMAT_ISIAUDIO	|	Iterated Systems, Inc.	|	Not specified	|
|	0x0089	|	WAVE_FORMAT_ONLIVE	|	OnLive! Technologies, Inc.	|	Not specified	|
|	0x008A	|	WAVE_FORMAT_MULTITUDE_FT_SX20	|	Multitude, Inc.	|	Not specified	|
|	0x008B	|	WAVE_FORMAT_MM_INFOCOM_ITS_ACM_G721	|	Infocom ITS A/S	|	G.721 ADPCM	|
|	0x008C	|	WAVE_FORMAT_CONVEDIA_G729	|	Convedia Corporation	|	Not specified	|
|	0x008D	|	WAVEFORMAT_CONGRUENCY_AUDIO_CODEC	|	congruency, Inc.	|	Not specified	|
|	0x0091	|	WAVE_FORMAT_SBC24	|	Siemens Business Communications Systems	|	Not specified	|
|	0x0092	|	WAVE_FORMAT_DOLBY_AC3_SPDIF	|	Sonic Foundry	|	Not specified	|
|	0x0093	|	WAVE_FORMAT_MEDIASONIC_G723	|	MediaSonic Ltd.	|	Not specified	|
|	0x0094	|	WAVE_FORMAT_PROSODY_8KBPS	|	Aculab plc	|	Prosody CTI speech card	|
|	0x0097	|	WAVE_FORMAT_ZYXEL_ADPCM	|	ZyXEL Communications Corporation	|	ZyXEL ADPCM	|
|	0x0098	|	WAVE_FORMAT_PHILIPS_LPCBB	|	Philips Speech Processing	|	Not specified	|
|	0x0099	|	WAVE_FORMAT_PACKED	|	Studer Professional Audio AG	|	Not specified	|
|	0x00A0	|	WAVE_FORMAT_MALDEN_PHONYTALK	|	Malden Electronics Ltd.	|	Phony Talk	|
|	0x00A1	|	WAVE_FORMAT_RRLGSM	|	Racal Recorders	|	Racal Recorder GSM	|
|	0x00A2	|	WAVE_FORMAT_RRLG729A	|	Racal Recorders	|	Racal Recorder G720.a	|
|	0x00A3	|	WAVE_FORMAT_RRLG7231	|	Racal Recorders	|	Racal G723.1	|
|	0x00A4	|	WAVE_FORMAT_RRLTETRA_ACLEP	|	Racal Recorders	|	Racal Tetra ACELP	|
|	0x00B0	|	WAVE_FORMAT_NEC_AAC	|	NEC Corporation	|	NEC AAC	|
|	0x0100	|	WAVE_FORMAT_RHETOREX_ADPCM	|	Rhetorex, Inc.	|	Rhetorex ADPCM wave format type	|
|	0x0101	|	WAVE_FORMAT_IRAT	|	BeCubed Software, Inc.	|	Not specified	|
|	0x0111	|	WAVE_FORMAT_VIVO_G723	|	Vivo Software, Inc.	|	Not specified	|
|	0x0112	|	WAVE_FORMAT_VIVO_SIREN	|	Vivo Software, Inc.	|	Not specified	|
|	0x0120	|	WAVE_FORMAT_PHILIPS_CELP	|	Philips Speech Processing	|	Not specified	|
|	0x0121	|	WAVE_FORMAT_PHILIPS_GRUNDIG	|	Philips Speech Processing	|	Not specified	|
|	0x0123	|	WAVE_FORMAT_DIGITAL_G723	|	Digital Equipment Corporation	|	Not specified	|
|	0x0125	|	WAVE_FORMAT_SANYO_LD_ADPCM	|	SANYO Electric Co., Ltd.	|	SANYO LD-ADPCM wave type	|
|	0x0130	|	WAVE_FORMAT_SIPROLAB_ACELPNET	|	Sipro Lab Telecom Inc.	|	Not specified	|
|	0x0131	|	WAVE_FORMAT_SIPROLAB_ACELP4800	|	Sipro Lab Telecom Inc.	|	Not specified	|
|	0x0132	|	WAVE_FORMAT_SIPROLAB_ACELP8V3	|	Sipro Lab Telecom Inc.	|	Not specified	|
|	0x0133	|	WAVE_FORMAT_SIPROLAB_G729	|	Sipro Lab Telecom Inc.	|	Not specified	|
|	0x0134	|	WAVE_FORMAT_SIPROLAB_G729A	|	Sipro Lab Telecom Inc.	|	Not specified	|
|	0x0135	|	WAVE_FORMAT_SIPROLAB_KELVIN	|	Sipro Lab Telecom Inc.	|	Not specified	|
|	0x0136	|	WAVE_FORMAT_VOICEAGE_AMR	|	VoiceAge Corporation	|	Not specified	|
|	0x0140	|	WAVE_FORMAT_G726ADPCM	|	Dictaphone Corporation	|	Not specified	|
|	0x0141	|	WAVE_FORMAT_CELP68	|	Dictaphone Corporation	|	Not specified	|
|	0x0142	|	WAVE_FORMAT_CELP54	|	Dictaphone Corporation	|	Not specified	|
|	0x0150	|	WAVE_FORMAT_QUALCOMM_PUREVOICE	|	QUALCOMM, Inc.	|	Not specified	|
|	0x0151	|	WAVE_FORMAT_QUALCOMM_HALFRATE	|	QUALCOMM, Inc.	|	Not specified	|
|	0x0155	|	WAVE_FORMAT_TUBGSM	|	Ring Zero Systems, Inc.	|	Related to GSM 6.10	|
|	0x0160	|	WAVE_FORMAT_MSAUDIO1	|	Microsoft Corporation	|	Not specified	|
|	0x0161	|	WAVE_FORMAT_MSAUDIO2	|	Microsoft Corporation	|	Not specified	|
|	0x0162	|	WAVE_FORMAT_MSAUDIO3	|	Microsoft Corporation	|	Multichannel WMA	|
|	0x0170	|	WAVE_FORMAT_UNISYS_NAP_ADPCM	|	Unisys Corporation	|	Not specified	|
|	0x0171	|	WAVE_FORMAT_UNISYS_NAP_ULAW	|	Unisys Corporation	|	Not specified	|
|	0x0172	|	WAVE_FORMAT_UNISYS_NAP_ALAW	|	Unisys Corporation	|	Not specified	|
|	0x0173	|	WAVE_FORMAT_UNISYS_NAP_16K	|	Unisys Corporation	|	Not specified	|
|	0X0174	|	WAVE_FORMAT_MM_SYCOM_ACM_SYC008	|	SyCom Technologies	|	Not specified	|
|	0x0175	|	WAVE_FORMAT_MM_SYCOM_ACM_SYC701_G726L	|	SyCom Technologies	|	Not specified	|
|	0x0176	|	WAVE_FORMAT_MM_SYCOM_ACM_SYC701_CELP54	|	SyCom Technologies	|	Not specified	|
|	0x0177	|	WAVE_FORMAT_MM_SYCOM_ACM_SYC701_CELP68	|	SyCom Technologies	|	Not specified	|
|	0x0178	|	WAVE_FORMAT_KNOWLEDGE_ADVENTURE_ADPCM	|	Knowledge Adventure, Inc.	|	Not specified	|
|	0x0180	|	WAVE_FORMAT_MPEG2AAC	|	Fraunhofer IIS	|	Not specified	|
|	0x0190	|	WAVE_FORMAT_DTS_DS	|	Digital Theater Systems, Inc.	|	Not specified	|
|	0x01979	|	WAVE_FORMAT_INNINGS_ADPCM	|	Innings Telecom Inc.	|	Not specified	|
|	0x0200	|	WAVE_FORMAT_CREATIVE_ADPCM	|	Creative Labs, Inc.	|	Not specified	|
|	0x0202	|	WAVE_FORMAT_CREATIVE_FASTSPEECH8	|	Creative Labs, Inc.	|	Fast Speech 8	|
|	0x0203	|	WAVE_FORMAT_CREATIVE_FASTSPEECH10	|	Creative Labs, Inc.	|	Fast Speech 10	|
|	0x0210	|	WAVE_FORMAT_UHER_ADPCM	|	UHER informatik GmbH	|	Not specified	|
|	0x0220	|	WAVE_FORMAT_QUARTERDECK	|	Quarterdeck Corporation	|	Not specified	|
|	0x0230	|	WAVE_FORMAT_ILINK_VC	|	I-Link Worldwide	|	Not specified	|
|	0x0240	|	WAVE_FORMAT_RAW_SPORT	|	Aureal Semiconductor Inc.	|	Not specified	|
|	0x0250	|	WAVE_FORMAT_IPI_HSX	|	Interactive Products, Inc.	|	Not specified	|
|	0x0251	|	WAVE_FORMAT_IPI_RPELP	|	Interactive Products, Inc.	|	Not specified	|
|	0x0260	|	WAVE_FORMAT_CS2	|	Consistent Software	|	Cs2	|
|	0x0270	|	WAVE_FORMAT_SONY_SCX	|	Sony Corporation	|	Not specified	|
|	0x0271	|	WAVE_FORMAT_SONY_SCY	|	Sony Corporation	|	Not specified	|
|	0x0272	|	WAVE_FORMAT_SONY_ATRAC3	|	Sony Corporation	|	Not specified	|
|	0x0273	|	WAVE_FORMAT_SONY_SPC	|	Sony Corporation	|	Not specified	|
|	0x0280	|	WAVE_FORMAT_TELUM	|	Telum Inc.	|	Not specified	|
|	0x0281	|	WAVE_FORMAT_TELUMIA	|	Telum Inc.	|	Not specified	|
|	0x0285	|	WAVE_FORMAT_NCVS_ADPCM	|	Norcom Electronics Corporation	|	Norcom Voice Systems ADPCM	|
|	0x0300	|	WAVE_FORMAT_FM_TOWNS_SND	|	Fujitsu Corporation	|	Not specified	|
|	0x0301	|	Reserved	|	Fujitsu Corporation	|	Not specified	|
|	0x0302	|	Reserved	|	Fujitsu Corporation	|	Not specified	|
|	0x0303	|	Reserved	|	Fujitsu Corporation	|	Not specified	|
|	0x0304	|	Reserved	|	Fujitsu Corporation	|	Not specified	|
|	0x0305	|	Reserved	|	Fujitsu Corporation	|	Not specified	|
|	0x0306	|	Reserved	|	Fujitsu Corporation	|	Not specified	|
|	0x0307	|	Reserved	|	Fujitsu Corporation	|	Not specified	|
|	0x0308	|	Reserved	|	Fujitsu Corporation	|	Not specified	|
|	0x0350	|	WAVE_FORMAT_DEVELOPMENT	|	Micronas Semiconductors, Inc.	|	Not specified	|
|	0x0351	|	WAVE_FORMAT_CELP833	|	Micronas Semiconductors, Inc.	|	Not specified	|
|	0x0400	|	WAVE_FORMAT_BTV_DIGITAL	|	Brooktree Corporation	|	Brooktree digital audio format	|
|	0x0450	|	WAVE_FORMAT_QDESIGN_MUSIC	|	QDesign Corporation	|	Not specified	|
|	0x0680	|	WAVE_FORMAT_VME_VMPCM	|	AT&T	|	Not specified	|
|	0x0681	|	WAVE_FORMAT_TPC	|	AT&T	|	Not specified	|
|	0x1000	|	WAVE_FORMAT_OLIGSM	|	Ing. C. Olivetti & C., S.p.A.	|	Not specified	|
|	0x1001	|	WAVE_FORMAT_OLIADPCM	|	Ing. C. Olivetti & C., S.p.A.	|	Not specified	|
|	0x1002	|	WAVE_FORMAT_OLICELP	|	Ing. C. Olivetti & C., S.p.A.	|	Not specified	|
|	0x1003	|	WAVE_FORMAT_OLISBC	|	Ing. C. Olivetti & C., S.p.A.	|	Not specified	|
|	0x1004	|	WAVE_FORMAT_OLIOPR	|	Ing. C. Olivetti & C., S.p.A.	|	Not specified	|
|	0x1100	|	WAVE_FORMAT_LH_CODEC	|	Lernout & Hauspie	|	Not specified	|
|	0X1101	|	WAVE_FORMAT_LH_CELP	|	Lernout & Hauspie	|	Not specified	|
|	0X1102	|	WAVE_FORMAT_LH_SB8	|	Lernout & Hauspie	|	Not specified	|
|	0X1103	|	WAVE_FORMAT_LH_SB12	|	Lernout & Hauspie	|	Not specified	|
|	0X1104	|	WAVE_FORMAT_LH_SB16	|	Lernout & Hauspie	|	Not specified	|
|	0x1400	|	WAVE_FORMAT_NORRIS	|	Norris Communications, Inc.	|	Not specified	|
|	0x1500	|	WAVE_FORMAT_SOUNDSPACE_MUSICOMPRESS	|	AT&T	|	Not specified	|
|	0x163	|	WAVE_FORMAT_WMAUDIO_LOSSLESS	|	Microsoft Corporation	|	WMA lossless	|
|	0x164	|	WAVE_FORMAT_WMASPDIF	|	Microsoft Corporation	|	WMA Pro over S/PDIF	|
|	0x1971	|	WAVE_FORMAT_SONICFOUNDRY_LOSSLESS	|	Sonic Foundry	|	Not specified	|
|	0x2000	|	WAVE_FORMAT_DVM	|	FAST Multimedia AG	|	Not specified	|
|	0x2500	|	WAVE_FORMAT_MSCE	|	Microsoft Corporation	|	Reserved rangle to 0x2600	|
|	0x4143	|	WAVE_FORMAT_DIVIO_AAC	|	Divio, Inc.	|	Divio's AAC	|
|	0x4201	|	WAVE_FORMAT_NOKIA_AMR	|	Nokia Mobile Phones	|	Nokia adaptive multirate	|
|	0x4243	|	WAVE_FORMAT_DIVIO_G726	|	Divio, Inc.	|	Divio's G726	|
|	0x7000	|	WAVE_FORMAT_3COM_NBX	|	3Com Corporation	|	Not specified	|
|	0x7A21	|	WAVE_FORMAT_NTT_DOCOMO_AMR_NO_SID	|	Microsoft Corporation	|	Adaptive multirate	|
|	0x7A22	|	WAVE_FORMAT_NTT_DOCOMO_AMR_WITH_SID	|	Microsoft Corporation	|	AMR with silence detection	|
|	0xA100	|	WAVE_FORMAT_COMVERSEINFOSYS_G723_1	|	Comverse Infosys Ltd.	|	Not specified	|
|	0xA101	|	WAVE_FORMAT_COMVERSEINFOSYS_AVQSBC	|	Comverse Infosys Ltd.	|	Not specified	|
|	0xA102	|	WAVE_FORMAT_COMVERSEINFOSYS_OLDSBC	|	Comverse Infosys Ltd.	|	Not specified	|
|	0xA103	|	WAVE_FORMAT_SYMBOLTECH_G729A	|	Symbol Technologies Canada	|	Symbol Technology's G729A	|
|	0xA104	|	WAVE_FORMAT_VOICEAGE_AMR_WB	|	VoiceAge Corporation	|	Not specified	|
|	0xA105	|	WAVE_FORMAT_ITI_G726	|	Ingenient Technologies, Inc.	|	Ingenient's G726	|
|	0xA106	|	WAVE_FORMAT_AAC	|	Not specified.	|	ISO/MPEG-4 advanced audio Coding	|
|	0xA107	|	WAVE_FORMAT_ESLG726	|	Encore Software Ltd.	|	Encore Software Ltd's G726	|
|	0xb	|	WAVE_FORMAT_WMSP2	|	Microsoft Corporation	|	Windows Media RT Voice	|


## Learning References


## Specification

### RIFF1991 original notation

{{ wrid_table(prefix="WRID>RIFF-WAVE>fmt ", spec="RIFF1991", col_wrid=false) }}

TODO: use references ... same as RIFF-WAVE

* [WAVE and AVI Codec Registries](https://www.iana.org/assignments/wave-avi-codec-registry/wave-avi-codec-registry.xhtml) RFC2361. This is historical, after not updated after WavFormatEx was introduced in 1994 



