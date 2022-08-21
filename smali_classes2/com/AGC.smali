.class public Lcom/AGC;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static GlolibFullname:Ljava/lang/String;

.field public static dep:Ldep;

.field private static focusDistance:F

.field public static hdrPlusSession:Lebe;

.field public static isAFModeChanged:Z

.field private static logFormat:Lcom/agc/LogData$Format;

.field public static luz:Lluz;

.field public static needsRestart:Z

.field public static patchKeys:[Ljava/lang/String;

.field private static sHdrProcessTime:J

.field public static sHdr_process:I

.field public static session:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/agc/LogData$Format;

    invoke-direct {v0}, Lcom/agc/LogData$Format;-><init>()V

    sput-object v0, Lcom/AGC;->logFormat:Lcom/agc/LogData$Format;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/AGC;->isAFModeChanged:Z

    const/16 v1, 0xf1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "lib_sharpness_a_key"

    aput-object v3, v1, v2

    const-string v2, "lib_sharpness_b_key"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "lib_chroma_a_key"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "lib_chroma_b_key"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "lib_denoise_key"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "lib_spatial_a_key"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "lib_spatial_b_key"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string v2, "lib_luma_a_key"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-string v2, "lib_luma_b_key"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "lib_temporal_a_key"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string v2, "lib_temporal_b_key"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string v2, "lib_luma_noise_key"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string v2, "lib_saturation_key"

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string v2, "lib_saturation_2_key"

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-string v2, "lib_saturation_3_key"

    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-string v2, "lib_iso_option_available_key"

    aput-object v2, v1, v0

    const/16 v0, 0x10

    const-string v2, "lib_sensorid_key"

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-string v2, "lib_init_params_key"

    aput-object v2, v1, v0

    const/16 v0, 0x12

    const-string v2, "lib_raw_compress_key"

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-string v2, "lib_hdrmodel_key"

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-string v2, "lib_blurpreview_key"

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-string v2, "lib_highlight_fix_key"

    aput-object v2, v1, v0

    const/16 v0, 0x16

    const-string v2, "lib_highlight_fix_2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x17

    const-string v2, "lib_highlight_fix_3_key"

    aput-object v2, v1, v0

    const/16 v0, 0x18

    const-string v2, "lib_skipmetadatacheck_key"

    aput-object v2, v1, v0

    const/16 v0, 0x19

    const-string v2, "lib_fixraw16merge_key"

    aput-object v2, v1, v0

    const/16 v0, 0x1a

    const-string v2, "lib_hardjpgquality_key"

    aput-object v2, v1, v0

    const/16 v0, 0x1b

    const-string v2, "lib_lutnoisefix_key"

    aput-object v2, v1, v0

    const/16 v0, 0x1c

    const-string v2, "lib_shastaforce_key"

    aput-object v2, v1, v0

    const/16 v0, 0x1d

    const-string v2, "lib_shastafactor_key"

    aput-object v2, v1, v0

    const/16 v0, 0x1e

    const-string v2, "lib_resamplmethod_key"

    aput-object v2, v1, v0

    const/16 v0, 0x1f

    const-string v2, "lib_appdigainset_key"

    aput-object v2, v1, v0

    const/16 v0, 0x20

    const-string v2, "lib_withtetmismatch_key"

    aput-object v2, v1, v0

    const/16 v0, 0x21

    const-string v2, "lib_maxrelativetetfactor"

    aput-object v2, v1, v0

    const/16 v0, 0x22

    const-string v2, "lib_sharp_shasta_motion_key"

    aput-object v2, v1, v0

    const/16 v0, 0x23

    const-string v2, "lib_hdr_plus_interface_key"

    aput-object v2, v1, v0

    const/16 v0, 0x24

    const-string v2, "lib_sharp_depth_1_key"

    aput-object v2, v1, v0

    const/16 v0, 0x25

    const-string v2, "lib_sharp_depth_2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x26

    const-string v2, "lib_sharp_mini_key"

    aput-object v2, v1, v0

    const/16 v0, 0x27

    const-string v2, "lib_sharp_macro_key"

    aput-object v2, v1, v0

    const/16 v0, 0x28

    const-string v2, "lib_sharpening_edge_key"

    aput-object v2, v1, v0

    const/16 v0, 0x29

    const-string v2, "lib_softsharpa_key"

    aput-object v2, v1, v0

    const/16 v0, 0x2a

    const-string v2, "lib_softsharpb_key"

    aput-object v2, v1, v0

    const/16 v0, 0x2b

    const-string v2, "lib_softsharpc_key"

    aput-object v2, v1, v0

    const/16 v0, 0x2c

    const-string v2, "lib_sharp_noise_model_key"

    aput-object v2, v1, v0

    const/16 v0, 0x2d

    const-string v2, "lib_Sharp_distrib_rad_1_key"

    aput-object v2, v1, v0

    const/16 v0, 0x2e

    aput-object v2, v1, v0

    const/16 v0, 0x2f

    const-string v2, "lib_raisr_zf_tuning_1_key"

    aput-object v2, v1, v0

    const/16 v0, 0x30

    const-string v2, "lib_raisr_zf_tuning_2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x31

    const-string v2, "lib_zipper_1_key"

    aput-object v2, v1, v0

    const/16 v0, 0x32

    const-string v2, "lib_zipper_2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x33

    const-string v2, "lib_zipper_3_key"

    aput-object v2, v1, v0

    const/16 v0, 0x34

    const-string v2, "lib_sabre_sharp_key"

    aput-object v2, v1, v0

    const/16 v0, 0x35

    const-string v2, "lib_sabre_sharp_2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x36

    const-string v2, "lib_sabre_sharp_3_key"

    aput-object v2, v1, v0

    const/16 v0, 0x37

    const-string v2, "lib_sabre_contrast_sharp_key"

    aput-object v2, v1, v0

    const/16 v0, 0x38

    const-string v2, "lib_exposition_key"

    aput-object v2, v1, v0

    const/16 v0, 0x39

    const-string v2, "lib_exposure_key"

    aput-object v2, v1, v0

    const/16 v0, 0x3a

    const-string v2, "lib_darken_light_key"

    aput-object v2, v1, v0

    const/16 v0, 0x3b

    const-string v2, "lib_expo_correction_key"

    aput-object v2, v1, v0

    const/16 v0, 0x3c

    const-string v2, "lib_iso_expo_tuning_key"

    aput-object v2, v1, v0

    const/16 v0, 0x3d

    const-string v2, "lib_expo_compensation_key"

    aput-object v2, v1, v0

    const/16 v0, 0x3e

    const-string v2, "lib_exposure_darker_key"

    aput-object v2, v1, v0

    const/16 v0, 0x3f

    const-string v2, "lib_exposure_darker_2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x40

    const-string v2, "lib_hardmerge_key"

    aput-object v2, v1, v0

    const/16 v0, 0x41

    const-string v2, "lib_sabre1_key"

    aput-object v2, v1, v0

    const/16 v0, 0x42

    const-string v2, "lib_sabre2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x43

    const-string v2, "lib_coefsabrtunoise_key"

    aput-object v2, v1, v0

    const/16 v0, 0x44

    const-string v2, "lib_sabre_burst_merge_1_key"

    aput-object v2, v1, v0

    const/16 v0, 0x45

    const-string v2, "lib_sabre_burst_merge_2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x46

    const-string v2, "lib_sabre_burst_merge_3_key"

    aput-object v2, v1, v0

    const/16 v0, 0x47

    const-string v2, "lib_smoothing_sabre_key"

    aput-object v2, v1, v0

    const/16 v0, 0x48

    const-string v2, "lib_noise_reduction_sabre_key"

    aput-object v2, v1, v0

    const/16 v0, 0x49

    const-string v2, "lib_sabre_denoise_control_key"

    aput-object v2, v1, v0

    const/16 v0, 0x4a

    const-string v2, "lib_better_color_wiener_sabre_key"

    aput-object v2, v1, v0

    const/16 v0, 0x4b

    const-string v2, "lib_savannah_merge_key"

    aput-object v2, v1, v0

    const/16 v0, 0x4c

    const-string v2, "lib_compress_merged_dng_key"

    aput-object v2, v1, v0

    const/16 v0, 0x4d

    const-string v2, "lib_fix_sabre_noise_key"

    aput-object v2, v1, v0

    const/16 v0, 0x4e

    const-string v2, "lib_color_processing_key"

    aput-object v2, v1, v0

    const/16 v0, 0x4f

    const-string v2, "lib_fix_shasta_merge_key"

    aput-object v2, v1, v0

    const/16 v0, 0x50

    const-string v2, "lib_volume_processing_key"

    aput-object v2, v1, v0

    const/16 v0, 0x51

    const-string v2, "lib_volume_processing_2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x52

    const-string v2, "lib_hot_pixel_suppression_key"

    aput-object v2, v1, v0

    const/16 v0, 0x53

    const-string v2, "lib_smoothness_key"

    aput-object v2, v1, v0

    const/16 v0, 0x54

    const-string v2, "lib_smoothing1_key"

    aput-object v2, v1, v0

    const/16 v0, 0x55

    const-string v2, "lib_smoothing2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x56

    const-string v2, "lib_smoothing_new_key"

    aput-object v2, v1, v0

    const/16 v0, 0x57

    const-string v2, "lib_noise_reduction_adjust_key"

    aput-object v2, v1, v0

    const/16 v0, 0x58

    const-string v2, "lib_noise_reduction_adjust_1_key"

    aput-object v2, v1, v0

    const/16 v0, 0x59

    const-string v2, "lib_noise_reduction_adjust_2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x5a

    const-string v2, "lib_temporal_binning_key"

    aput-object v2, v1, v0

    const/16 v0, 0x5b

    const-string v2, "lib_temporal_radius_key"

    aput-object v2, v1, v0

    const/16 v0, 0x5c

    const-string v2, "lib_noise_model_key"

    aput-object v2, v1, v0

    const/16 v0, 0x5d

    const-string v2, "lib_bayer_noise_model_halide_1_key"

    aput-object v2, v1, v0

    const/16 v0, 0x5e

    const-string v2, "lib_shot_noise_factor_key"

    aput-object v2, v1, v0

    const/16 v0, 0x5f

    const-string v2, "lib_noise_model_shot_var_key"

    aput-object v2, v1, v0

    const/16 v0, 0x60

    const-string v2, "lib_dehazed_expo_key"

    aput-object v2, v1, v0

    const/16 v0, 0x61

    const-string v2, "lib_clarity_key"

    aput-object v2, v1, v0

    const/16 v0, 0x62

    const-string v2, "lib_contrast_1_key"

    aput-object v2, v1, v0

    const/16 v0, 0x63

    const-string v2, "lib_contrast_2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x64

    const-string v2, "lib_contrast_3a_key"

    aput-object v2, v1, v0

    const/16 v0, 0x65

    const-string v2, "lib_contrast_3b_key"

    aput-object v2, v1, v0

    const/16 v0, 0x66

    const-string v2, "lib_highlight_key"

    aput-object v2, v1, v0

    const/16 v0, 0x67

    const-string v2, "lib_lighting_key"

    aput-object v2, v1, v0

    const/16 v0, 0x68

    const-string v2, "lib_hdr_range_minus_key"

    aput-object v2, v1, v0

    const/16 v0, 0x69

    const-string v2, "lib_hdr_range_plus_key"

    aput-object v2, v1, v0

    const/16 v0, 0x6a

    const-string v2, "lib_hdr_overall_lightness_key"

    aput-object v2, v1, v0

    const/16 v0, 0x6b

    const-string v2, "lib_hdr_effect_intensity_key"

    aput-object v2, v1, v0

    const/16 v0, 0x6c

    const-string v2, "lib_hdr_effect_key"

    aput-object v2, v1, v0

    const/16 v0, 0x6d

    const-string v2, "lib_contrast_black_key"

    aput-object v2, v1, v0

    const/16 v0, 0x6e

    const-string v2, "lib_sabre_contrast_key"

    aput-object v2, v1, v0

    const/16 v0, 0x6f

    const-string v2, "lib_white_level_key"

    aput-object v2, v1, v0

    const/16 v0, 0x70

    const-string v2, "lib_shadow_tuning_key"

    aput-object v2, v1, v0

    const/16 v0, 0x71

    const-string v2, "lib_soft_contrast_key"

    aput-object v2, v1, v0

    const/16 v0, 0x72

    const-string v2, "lib_shadow_compensation_key"

    aput-object v2, v1, v0

    const/16 v0, 0x73

    const-string v2, "lib_dehazed_regulator_2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x74

    const-string v2, "lib_brightness_intensity_key"

    aput-object v2, v1, v0

    const/16 v0, 0x75

    const-string v2, "lib_saturations_key"

    aput-object v2, v1, v0

    const/16 v0, 0x76

    const-string v2, "lib_tun_col_sat_par_1_key"

    aput-object v2, v1, v0

    const/16 v0, 0x77

    const-string v2, "lib_tun_col_sat_par_2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x78

    const-string v2, "lib_cg2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x79

    const-string v2, "lib_blue_key"

    aput-object v2, v1, v0

    const/16 v0, 0x7a

    const-string v2, "lib_cg4_key"

    aput-object v2, v1, v0

    const/16 v0, 0x7b

    const-string v2, "lib_cg5_key"

    aput-object v2, v1, v0

    const/16 v0, 0x7c

    const-string v2, "lib_cg6_key"

    aput-object v2, v1, v0

    const/16 v0, 0x7d

    const-string v2, "lib_cg9_key"

    aput-object v2, v1, v0

    const/16 v0, 0x7e

    const-string v2, "lib_cg10_key"

    aput-object v2, v1, v0

    const/16 v0, 0x7f

    const-string v2, "lib_green_key"

    aput-object v2, v1, v0

    const/16 v0, 0x80

    const-string v2, "lib_red_key"

    aput-object v2, v1, v0

    const/16 v0, 0x81

    const-string v2, "lib_by_key"

    aput-object v2, v1, v0

    const/16 v0, 0x82

    const-string v2, "lib_gro_key"

    aput-object v2, v1, v0

    const/16 v0, 0x83

    const-string v2, "lib_orgb_key"

    aput-object v2, v1, v0

    const/16 v0, 0x84

    const-string v2, "lib_vignette_key"

    aput-object v2, v1, v0

    const/16 v0, 0x85

    const-string v2, "lib_vignettec_key"

    aput-object v2, v1, v0

    const/16 v0, 0x86

    const-string v2, "lib_luma_dh_sabre_l1_key"

    aput-object v2, v1, v0

    const/16 v0, 0x87

    const-string v2, "lib_luma_dh_sabre_l1a_key"

    aput-object v2, v1, v0

    const/16 v0, 0x88

    const-string v2, "lib_luma_dh_sabre_l1b_key"

    aput-object v2, v1, v0

    const/16 v0, 0x89

    const-string v2, "lib_luma_dh_sabre_l2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x8a

    const-string v2, "lib_luma_dh_sabre_l2a_key"

    aput-object v2, v1, v0

    const/16 v0, 0x8b

    const-string v2, "lib_luma_dh_sabre_l2b_key"

    aput-object v2, v1, v0

    const/16 v0, 0x8c

    const-string v2, "lib_luma_dh_sabre_l3_key"

    aput-object v2, v1, v0

    const/16 v0, 0x8d

    const-string v2, "lib_luma_dh_sabre_l3a_key"

    aput-object v2, v1, v0

    const/16 v0, 0x8e

    const-string v2, "lib_luma_dh_sabre_l3b_key"

    aput-object v2, v1, v0

    const/16 v0, 0x8f

    const-string v2, "lib_luma_dh_sabre_l4_key"

    aput-object v2, v1, v0

    const/16 v0, 0x90

    const-string v2, "lib_luma_dh_sabre_l4a_key"

    aput-object v2, v1, v0

    const/16 v0, 0x91

    const-string v2, "lib_luma_dh_sabre_l4b_key"

    aput-object v2, v1, v0

    const/16 v0, 0x92

    const-string v2, "lib_luma_dh_sabre_l5_key"

    aput-object v2, v1, v0

    const/16 v0, 0x93

    const-string v2, "lib_luma_dh_sabre_l5a_key"

    aput-object v2, v1, v0

    const/16 v0, 0x94

    const-string v2, "lib_luma_dl_sabre_l1_key"

    aput-object v2, v1, v0

    const/16 v0, 0x95

    const-string v2, "lib_luma_dl_sabre_l1a_key"

    aput-object v2, v1, v0

    const/16 v0, 0x96

    const-string v2, "lib_luma_dl_sabre_l1b_key"

    aput-object v2, v1, v0

    const/16 v0, 0x97

    const-string v2, "lib_luma_dl_sabre_l2_key"

    aput-object v2, v1, v0

    const/16 v0, 0x98

    const-string v2, "lib_luma_dl_sabre_l2a_key"

    aput-object v2, v1, v0

    const/16 v0, 0x99

    const-string v2, "lib_luma_dl_sabre_l2b_key"

    aput-object v2, v1, v0

    const/16 v0, 0x9a

    const-string v2, "lib_luma_dl_sabre_l3_key"

    aput-object v2, v1, v0

    const/16 v0, 0x9b

    const-string v2, "lib_luma_dl_sabre_l3a_key"

    aput-object v2, v1, v0

    const/16 v0, 0x9c

    const-string v2, "lib_luma_dl_sabre_l3b_key"

    aput-object v2, v1, v0

    const/16 v0, 0x9d

    const-string v2, "lib_luma_dl_sabre_l4_key"

    aput-object v2, v1, v0

    const/16 v0, 0x9e

    const-string v2, "lib_luma_dl_sabre_l4a_key"

    aput-object v2, v1, v0

    const/16 v0, 0x9f

    const-string v2, "lib_luma_dl_sabre_l4b_key"

    aput-object v2, v1, v0

    const/16 v0, 0xa0

    const-string v2, "lib_luma_dl_sabre_l5_key"

    aput-object v2, v1, v0

    const/16 v0, 0xa1

    const-string v2, "lib_luma_dl_sabre_l5a_key"

    aput-object v2, v1, v0

    const/16 v0, 0xa2

    const-string v2, "lib_luma_dm_sabre_l1_key"

    aput-object v2, v1, v0

    const/16 v0, 0xa3

    const-string v2, "lib_luma_dm_sabre_l1a_key"

    aput-object v2, v1, v0

    const/16 v0, 0xa4

    const-string v2, "lib_luma_dm_sabre_l1b_key"

    aput-object v2, v1, v0

    const/16 v0, 0xa5

    const-string v2, "lib_luma_dm_sabre_l2_key"

    aput-object v2, v1, v0

    const/16 v0, 0xa6

    const-string v2, "lib_luma_dm_sabre_l2a_key"

    aput-object v2, v1, v0

    const/16 v0, 0xa7

    const-string v2, "lib_luma_dm_sabre_l2b_key"

    aput-object v2, v1, v0

    const/16 v0, 0xa8

    const-string v2, "lib_luma_dm_sabre_l3_key"

    aput-object v2, v1, v0

    const/16 v0, 0xa9

    const-string v2, "lib_luma_dm_sabre_l3a_key"

    aput-object v2, v1, v0

    const/16 v0, 0xaa

    const-string v2, "lib_luma_dm_sabre_l3b_key"

    aput-object v2, v1, v0

    const/16 v0, 0xab

    const-string v2, "lib_luma_dm_sabre_l4_key"

    aput-object v2, v1, v0

    const/16 v0, 0xac

    const-string v2, "lib_luma_dm_sabre_l4a_key"

    aput-object v2, v1, v0

    const/16 v0, 0xad

    const-string v2, "lib_luma_dm_sabre_l4b_key"

    aput-object v2, v1, v0

    const/16 v0, 0xae

    const-string v2, "lib_luma_dm_sabre_l5_key"

    aput-object v2, v1, v0

    const/16 v0, 0xaf

    const-string v2, "lib_luma_dm_sabre_l5a_key"

    aput-object v2, v1, v0

    const/16 v0, 0xb0

    const-string v2, "lib_spatial_denoise_micro_1_key"

    aput-object v2, v1, v0

    const/16 v0, 0xb1

    const-string v2, "lib_spatial_denoise_micro_2_key"

    aput-object v2, v1, v0

    const/16 v0, 0xb2

    const-string v2, "lib_spatial_denoise_micro_3_key"

    aput-object v2, v1, v0

    const/16 v0, 0xb3

    const-string v2, "lib_spatial_denoise_micro_4_key"

    aput-object v2, v1, v0

    const/16 v0, 0xb4

    const-string v2, "lib_luma_denoise_new_a_key"

    aput-object v2, v1, v0

    const/16 v0, 0xb5

    const-string v2, "lib_luma_denoise_new_b_key"

    aput-object v2, v1, v0

    const/16 v0, 0xb6

    const-string v2, "lib_luma_dh_l1_key"

    aput-object v2, v1, v0

    const/16 v0, 0xb7

    const-string v2, "lib_luma_dh_l2_key"

    aput-object v2, v1, v0

    const/16 v0, 0xb8

    const-string v2, "lib_luma_dh_l3_key"

    aput-object v2, v1, v0

    const/16 v0, 0xb9

    const-string v2, "lib_luma_dh_l4_key"

    aput-object v2, v1, v0

    const/16 v0, 0xba

    const-string v2, "lib_luma_dh_l5_key"

    aput-object v2, v1, v0

    const/16 v0, 0xbb

    const-string v2, "lib_luma_dl_l1_key"

    aput-object v2, v1, v0

    const/16 v0, 0xbc

    const-string v2, "lib_luma_dl_l2_key"

    aput-object v2, v1, v0

    const/16 v0, 0xbd

    const-string v2, "lib_luma_dl_l3_key"

    aput-object v2, v1, v0

    const/16 v0, 0xbe

    const-string v2, "lib_luma_dl_l4_key"

    aput-object v2, v1, v0

    const/16 v0, 0xbf

    const-string v2, "lib_luma_dl_l5_key"

    aput-object v2, v1, v0

    const/16 v0, 0xc0

    const-string v2, "lib_luma_dm_l1_key"

    aput-object v2, v1, v0

    const/16 v0, 0xc1

    const-string v2, "lib_luma_dm_l2_key"

    aput-object v2, v1, v0

    const/16 v0, 0xc2

    const-string v2, "lib_luma_dm_l3_key"

    aput-object v2, v1, v0

    const/16 v0, 0xc3

    const-string v2, "lib_luma_dm_l4_key"

    aput-object v2, v1, v0

    const/16 v0, 0xc4

    const-string v2, "lib_luma_dm_l5_key"

    aput-object v2, v1, v0

    const/16 v0, 0xc5

    const-string v2, "lib_luma_dhs_l1_key"

    aput-object v2, v1, v0

    const/16 v0, 0xc6

    const-string v2, "lib_luma_dhs_l2_key"

    aput-object v2, v1, v0

    const/16 v0, 0xc7

    const-string v2, "lib_luma_dhs_l3_key"

    aput-object v2, v1, v0

    const/16 v0, 0xc8

    const-string v2, "lib_luma_dhs_l4_key"

    aput-object v2, v1, v0

    const/16 v0, 0xc9

    const-string v2, "lib_luma_dhs_l5_key"

    aput-object v2, v1, v0

    const/16 v0, 0xca

    const-string v2, "lib_luma_dls_l1_key"

    aput-object v2, v1, v0

    const/16 v0, 0xcb

    const-string v2, "lib_luma_dls_l2_key"

    aput-object v2, v1, v0

    const/16 v0, 0xcc

    const-string v2, "lib_luma_dls_l3_key"

    aput-object v2, v1, v0

    const/16 v0, 0xcd

    const-string v2, "lib_luma_dls_l4_key"

    aput-object v2, v1, v0

    const/16 v0, 0xce

    const-string v2, "lib_luma_dls_l5_key"

    aput-object v2, v1, v0

    const/16 v0, 0xcf

    const-string v2, "lib_luma_dms_l1_key"

    aput-object v2, v1, v0

    const/16 v0, 0xd0

    const-string v2, "lib_luma_dms_l2_key"

    aput-object v2, v1, v0

    const/16 v0, 0xd1

    const-string v2, "lib_luma_dms_l3_key"

    aput-object v2, v1, v0

    const/16 v0, 0xd2

    const-string v2, "lib_luma_dms_l4_key"

    aput-object v2, v1, v0

    const/16 v0, 0xd3

    const-string v2, "lib_luma_dms_l5_key"

    aput-object v2, v1, v0

    const/16 v0, 0xd4

    const-string v2, "lib_sabre_level_new_l1_key"

    aput-object v2, v1, v0

    const/16 v0, 0xd5

    const-string v2, "lib_sabre_level_new_l2_key"

    aput-object v2, v1, v0

    const/16 v0, 0xd6

    const-string v2, "lib_sabre_level_new_l3_key"

    aput-object v2, v1, v0

    const/16 v0, 0xd7

    const-string v2, "lib_sabre_level_new_l4_key"

    aput-object v2, v1, v0

    const/16 v0, 0xd8

    const-string v2, "lib_sabre_level_new_l5_key"

    aput-object v2, v1, v0

    const/16 v0, 0xd9

    const-string v2, "lib_sabre_level_new_l6_key"

    aput-object v2, v1, v0

    const/16 v0, 0xda

    const-string v2, "lib_sabre_level_new_l7_key"

    aput-object v2, v1, v0

    const/16 v0, 0xdb

    const-string v2, "lib_sabre_level_new_l8_key"

    aput-object v2, v1, v0

    const/16 v0, 0xdc

    const-string v2, "lib_sabre_level_new_l9_key"

    aput-object v2, v1, v0

    const/16 v0, 0xdd

    const-string v2, "lib_sabre_level_newn_l1_key"

    aput-object v2, v1, v0

    const/16 v0, 0xde

    const-string v2, "lib_sabre_level_newn_l2_key"

    aput-object v2, v1, v0

    const/16 v0, 0xdf

    const-string v2, "lib_sabre_level_newn_l3_key"

    aput-object v2, v1, v0

    const/16 v0, 0xe0

    const-string v2, "lib_sabre_level_newn_l4_key"

    aput-object v2, v1, v0

    const/16 v0, 0xe1

    const-string v2, "lib_sabre_level_newn_l5_key"

    aput-object v2, v1, v0

    const/16 v0, 0xe2

    const-string v2, "lib_sabre_level_newn_l6_key"

    aput-object v2, v1, v0

    const/16 v0, 0xe3

    const-string v2, "lib_sabre_level_newn_l7_key"

    aput-object v2, v1, v0

    const/16 v0, 0xe4

    const-string v2, "lib_sabre_level_newn_l8_key"

    aput-object v2, v1, v0

    const/16 v0, 0xe5

    const-string v2, "lib_sabre_level_newn_l9_key"

    aput-object v2, v1, v0

    const/16 v0, 0xe6

    const-string v2, "lib_sharp_gain_key"

    aput-object v2, v1, v0

    const/16 v0, 0xe7

    const-string v2, "lib_sharp_gain_micro_key"

    aput-object v2, v1, v0

    const/16 v0, 0xe8

    const-string v2, "lib_sabre_raw2yuv_key"

    aput-object v2, v1, v0

    const/16 v0, 0xe9

    const-string v2, "lib_bayer_noise_model_halide_a_key"

    aput-object v2, v1, v0

    const/16 v0, 0xea

    const-string v2, "lib_bayer_noise_model_halide_b_key"

    aput-object v2, v1, v0

    const/16 v0, 0xeb

    const-string v2, "lib_bayer_noise_model_halide_c_key"

    aput-object v2, v1, v0

    const/16 v0, 0xec

    const-string v2, "lib_spatial_n1_key"

    aput-object v2, v1, v0

    const/16 v0, 0xed

    const-string v2, "lib_fine_spatial_max_1_key"

    aput-object v2, v1, v0

    const/16 v0, 0xee

    const-string v2, "lib_fine_spatial_min_1_key"

    aput-object v2, v1, v0

    const/16 v0, 0xef

    const-string v2, "lib_fine_spatial_max_2_key"

    aput-object v2, v1, v0

    const/16 v0, 0xf0

    const-string v2, "lib_fine_spatial_min_2_key"

    aput-object v2, v1, v0

    sput-object v1, Lcom/AGC;->patchKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AGC initialize"

    invoke-static {v0}, Lcom/agc/Log;->i(Ljava/lang/Object;)I

    new-instance v0, Lcom/Fix/Pref;

    invoke-direct {v0}, Lcom/Fix/Pref;-><init>()V

    new-instance v0, Lcom/Fix/Lens;

    invoke-direct {v0}, Lcom/Fix/Lens;-><init>()V

    new-instance v0, Lcom/FixBSG;

    invoke-direct {v0}, Lcom/FixBSG;-><init>()V

    invoke-static {}, Lcom/AGC;->initMenuValue()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lagc/Agc;->setTimeZoneOffset(I)V

    return-void
.end method

.method public static AwbSlider(Lhck;)Ljava/util/Set;
    .locals 2

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkdd;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lhck;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lmip;->be(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Llnq;

    move-result-object v0

    sget-object v1, Lkdd;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lhck;->b:Loom;

    invoke-static {p0}, Loxh;->L(Ljava/util/Collection;)[F

    move-result-object p0

    invoke-static {v1, p0}, Lmip;->be(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Llnq;

    move-result-object p0

    invoke-static {v0, p0}, Lope;->I(Ljava/lang/Object;Ljava/lang/Object;)Lope;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lhck;->b:Loom;

    invoke-virtual {p0}, Loom;->toArray()[Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    div-int/lit8 p0, p0, 0x2

    invoke-static {p0}, Lcom/AGC;->AwbSliderValue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lmip;->be(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Llnq;

    move-result-object p0

    invoke-static {p0}, Lope;->H(Ljava/lang/Object;)Lope;

    move-result-object p0

    return-object p0
.end method

.method public static AwbSliderValue(I)I
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x5

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :pswitch_4
    return v1

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    const/4 p0, 0x3

    return p0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static Forty8Strip(I)I
    .locals 0

    return p0
.end method

.method public static StreamConfiguration(I)I
    .locals 0

    invoke-static {p0}, Lcom/AGC;->Forty8Strip(I)I

    move-result p0

    return p0
.end method

.method public static StreamConfiguration2(I)I
    .locals 0

    invoke-static {p0}, Lcom/AGC;->Forty8Strip(I)I

    move-result p0

    return p0
.end method

.method public static Twelvy(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    const/16 v1, 0x1770

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/16 v1, 0xfa0

    const/16 v2, 0xbb8

    invoke-direct {p0, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p0}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static addLensPreferences(Landroid/preference/PreferenceFragment;[Landroid/preference/Preference;)V
    .locals 3

    const-string v0, "agc_lens_category_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Landroid/preference/PreferenceGroup;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I)Lluz;
    .locals 2

    :try_start_0
    new-instance v0, Lluz;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    invoke-direct {v0, p0}, Lluz;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const-string p0, "pref_ois_key"

    invoke-static {p0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lluz;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    const-string p0, "pref_hot_pixel_key"

    invoke-static {p0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lluz;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string p1, "pref_antibanding_key"

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lluz;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/AGC;->getShading()I

    move-result p0

    if-ltz p0, :cond_2

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lluz;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string p1, "samsung"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "pref_livehdr_key"

    invoke-static {p0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_3

    sget-object p0, Lcom/CameraAPI2Keys;->CONTROL_LIVE_HDR_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    if-ne p0, p1, :cond_4

    sget-object p0, Lcom/CameraAPI2Keys;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p0, p1}, Lluz;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_4
    sget-object p0, Lcom/CameraAPI2Keys;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/AGC;->getAperture()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lluz;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_2

    :catch_4
    move-exception p0

    :goto_2
    new-instance p1, Lllv;

    invoke-direct {p1, p0}, Lllv;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static debugLog(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKey()I

    move-result v1

    invoke-static {v1}, Lcom/Fix/Lens;->getCameraID(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    return-void
.end method

.method public static destoryDebugView(Landroid/content/Context;)V
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/agc/fw/FloatManager;->onDestroy(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_0
    return-void
.end method

.method public static get48m()I
    .locals 1

    const-string v0, "pref_48m_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static get4KTimelapse()I
    .locals 1

    const-string v0, "pref_4k_timelapse_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAperture()F
    .locals 1

    const-string v0, "pref_aperture"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x4019999a    # 2.4f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    return v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 3

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAstroExposureTimeMs(F)F
    .locals 1

    const-string v0, "getAstroExposureTimeMs"

    invoke-static {v0}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    sput p0, Lcom/agc/LogData$Device;->astroExposureTimeMs:F

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return p0
.end method

.method public static getAstroForceState()I
    .locals 1

    const-string v0, "pref_camera_astro_force"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAstroOneShotState()I
    .locals 1

    const-string v0, "pref_camera_astro_oneshot"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAstroState()I
    .locals 1

    const-string v0, "pref_camera_astro"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAuxPrefBooleanValue(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/AGC;->getAuxPrefBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getAuxPrefBooleanValue(Ljava/lang/String;Z)Z
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKeySuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getAuxPrefDoubleValue(Ljava/lang/String;)D
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKeySuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/Fix/Pref;->getDoubleValue(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getAuxPrefDoubleValue(Ljava/lang/String;D)D
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKeySuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/Fix/Pref;->getDoubleValue(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getAuxPrefFloatValue(Ljava/lang/String;)F
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKeySuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getAuxPrefFloatValue(Ljava/lang/String;F)F
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKeySuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getAuxPrefFloatValueByAuxKey(Ljava/lang/String;IF)F
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/Fix/Lens;->getAuxKeySuffix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getAuxPrefIntValue(Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKeySuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAuxPrefIntValue(Ljava/lang/String;I)I
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKeySuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getAuxPrefIntValueByAuxKey(Ljava/lang/String;II)I
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/Fix/Lens;->getAuxKeySuffix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getAuxPrefLongValue(Ljava/lang/String;)J
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKeySuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/Fix/Pref;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAuxPrefStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKeySuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAuxPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKeySuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAuxPrefStringValueByAuxKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/Fix/Lens;->getAuxKeySuffix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAuxProfileKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "lib_patch_profile_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/agc/widget/PatchButton;->DEFAUT_PATCH_COUNT:I

    sub-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "_p"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKeySuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAuxProfilePrefBooleanValue(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/AGC;->getAuxProfilePrefBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getAuxProfilePrefBooleanValue(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0}, Lcom/AGC;->getAuxProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getAuxProfilePrefDoubleValue(Ljava/lang/String;)D
    .locals 2

    invoke-static {p0}, Lcom/AGC;->getAuxProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/Fix/Pref;->getDoubleValue(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getAuxProfilePrefDoubleValue(Ljava/lang/String;D)D
    .locals 0

    invoke-static {p0}, Lcom/AGC;->getAuxProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/Fix/Pref;->getDoubleValue(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getAuxProfilePrefFloatValue(Ljava/lang/String;)F
    .locals 0

    invoke-static {p0}, Lcom/AGC;->getAuxProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getAuxProfilePrefFloatValue(Ljava/lang/String;F)F
    .locals 0

    invoke-static {p0}, Lcom/AGC;->getAuxProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getAuxProfilePrefFloatValueByAuxKey(Ljava/lang/String;IF)F
    .locals 0

    invoke-static {p0}, Lcom/AGC;->getAuxProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getAuxProfilePrefIntValue(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/AGC;->getAuxProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAuxProfilePrefIntValue(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0}, Lcom/AGC;->getAuxProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getAuxProfilePrefIntValueByAuxKey(Ljava/lang/String;II)I
    .locals 0

    invoke-static {p0}, Lcom/AGC;->getAuxProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getAuxProfilePrefLongValue(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/AGC;->getAuxProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/Fix/Pref;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAuxProfilePrefStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/AGC;->getAuxProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAuxProfilePrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/AGC;->getAuxProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAuxProfilePrefStringValueByAuxKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/AGC;->getAuxProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBlackLevel(Llzv;Llvp;Lcom/google/googlex/gcam/FrameMetadata;)V
    .locals 6

    const-string v0, "pref_black_level_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    new-array v2, v1, [F

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v2, v1, [F

    const-string p0, "black_level_0_key"

    invoke-static {p0}, Lcom/AGC;->getAuxPrefFloatValue(Ljava/lang/String;)F

    move-result p0

    aput p0, v2, v3

    const-string p0, "black_level_1_key"

    invoke-static {p0}, Lcom/AGC;->getAuxPrefFloatValue(Ljava/lang/String;)F

    move-result p0

    const/4 p1, 0x1

    aput p0, v2, p1

    const-string p0, "black_level_2_key"

    invoke-static {p0}, Lcom/AGC;->getAuxPrefFloatValue(Ljava/lang/String;)F

    move-result p0

    const/4 p1, 0x2

    aput p0, v2, p1

    const-string p0, "black_level_3_key"

    invoke-static {p0}, Lcom/AGC;->getAuxPrefFloatValue(Ljava/lang/String;)F

    move-result p0

    const/4 p1, 0x3

    aput p0, v2, p1

    goto :goto_2

    :pswitch_1
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    goto :goto_2

    :pswitch_2
    new-array v2, v1, [F

    fill-array-data v2, :array_1

    goto :goto_2

    :pswitch_3
    new-array v2, v1, [F

    fill-array-data v2, :array_2

    goto :goto_2

    :pswitch_4
    new-array v2, v1, [F

    fill-array-data v2, :array_3

    goto :goto_2

    :goto_0
    :pswitch_5
    new-array v2, v1, [F

    fill-array-data v2, :array_4

    goto :goto_2

    :pswitch_6
    new-array v2, v1, [F

    fill-array-data v2, :array_5

    goto :goto_2

    :pswitch_7
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SENSOR_DYNAMIC_BLACK_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, p1}, Llzv;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, [F

    goto :goto_2

    :pswitch_8
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_BLACK_LEVEL_PATTERN:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p1, p0}, Llvp;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/BlackLevelPattern;

    if-eqz p0, :cond_0

    move p1, v3

    :goto_1
    if-ge p1, v1, :cond_0

    rem-int/lit8 v0, p1, 0x2

    div-int/lit8 v4, p1, 0x2

    invoke-virtual {p0, v0, v4}, Landroid/hardware/camera2/params/BlackLevelPattern;->getOffsetForIndex(II)I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    :goto_2
    if-eqz v2, :cond_2

    new-instance p0, Lcom/google/googlex/gcam/FloatArray4;

    invoke-direct {p0}, Lcom/google/googlex/gcam/FloatArray4;-><init>()V

    :goto_3
    int-to-long v0, v3

    invoke-virtual {p0}, Lcom/google/googlex/gcam/FloatArray4;->b()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-gez p1, :cond_1

    aget p1, v2, v3

    invoke-virtual {p0, v3, p1}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    invoke-virtual {p2, p0}, Lcom/google/googlex/gcam/FrameMetadata;->i(Lcom/google/googlex/gcam/FloatArray4;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x42800000    # 64.0f
        0x42806666    # 64.2f
        0x42803333    # 64.1f
        0x42800000    # 64.0f
    .end array-data

    :array_1
    .array-data 4
        0x427f70a4    # 63.86f
        0x427fb852    # 63.93f
        0x427fb852    # 63.93f
        0x428047ae    # 64.14f
    .end array-data

    :array_2
    .array-data 4
        0x43800000    # 256.0f
        0x43800000    # 256.0f
        0x43800000    # 256.0f
        0x43800000    # 256.0f
    .end array-data

    :array_3
    .array-data 4
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_4
    .array-data 4
        0x42800000    # 64.0f
        0x42800000    # 64.0f
        0x42800000    # 64.0f
        0x42800000    # 64.0f
    .end array-data

    :array_5
    .array-data 4
        0x41800000    # 16.0f
        0x41800000    # 16.0f
        0x41800000    # 16.0f
        0x41800000    # 16.0f
    .end array-data
.end method

.method public static getCameraIdList()[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/Fix/Lens;->getFilteredCameraIDs()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getCaptureResult(Llzv;)Z
    .locals 2

    invoke-static {}, Lagc/Agc;->noNeedFixLens()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_SCENE_CHANGE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Llzv;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_1

    return v1

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Llzv;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getCaptureResultKey(Llzv;)Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lagc/Agc;->noNeedFixLens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_SCENE_CHANGE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    :goto_0
    invoke-interface {p0, v0}, Llzv;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static getCorrectionBlackLevelDynamic([F[F)[F
    .locals 6

    const-string v0, "pref_black_level_dynamic_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x4

    new-array v2, v1, [F

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    return-object v2

    :cond_1
    aget v3, p0, v1

    aget v4, p0, v1

    aget v5, p1, v1

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    aput v3, v2, v1

    goto :goto_0
.end method

.method public static getDevice(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lagc/Agc;->getDefaultDevice()I

    move-result p0

    const-string v0, "pref_device_key"

    invoke-static {v0, p0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lagc/Agc;->getDevice(II)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/agc/LogData$Device;->device:Ljava/lang/String;

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device Interface CameraID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKeySuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    return-object p0
.end method

.method public static getExpastro(F)F
    .locals 3

    invoke-static {}, Lagc/Agc;->getSMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const-string v0, "pref_expastro_key"

    goto :goto_0

    :cond_0
    const-string v0, "pref_expastro_oneshot_key"

    goto :goto_0

    :cond_1
    const-string v0, "pref_expastro_ns_key"

    :goto_0
    invoke-static {v0}, Lcom/AGC;->getAuxPrefFloatValue(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    move v1, p0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "=>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/agc/LogData$Device;->expastro:Ljava/lang/String;

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return v1
.end method

.method public static getExpcomp(I)I
    .locals 2

    invoke-static {}, Lagc/Agc;->getSMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "pref_expcomp_key"

    goto :goto_0

    :cond_0
    const-string v0, "pref_expcomp_ns_key"

    goto :goto_0

    :cond_1
    const-string v0, "pref_expcomp_portrait_key"

    :goto_0
    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    return p0
.end method

.method public static getExposureTimeMs(F)F
    .locals 0

    sput p0, Lcom/agc/LogData$Device;->exposureTimeMs:F

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return p0
.end method

.method public static getFixAWBGains()Z
    .locals 2

    invoke-static {}, Lagc/Agc;->isRedmiNote9()Z

    move-result v0

    const-string v1, "pref_fix_awbgains_key"

    invoke-static {v1, v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getFixResolution(I)I
    .locals 2

    const-string v0, "pref_fix_resolution_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lagc/Agc;->getFixResolution(I)I

    move-result v0

    :cond_0
    sget-object v1, Lcom/AGC;->logFormat:Lcom/agc/LogData$Format;

    iput p0, v1, Lcom/agc/LogData$Format;->defaultFixResolution:I

    iput v0, v1, Lcom/agc/LogData$Format;->fixResolution:I

    invoke-virtual {v1}, Lcom/agc/LogData$Format;->log()V

    return v0
.end method

.method public static getFixResolutionList([Landroid/util/Size;[Landroid/util/Size;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Size;",
            "[",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Loom;->l()Loom;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    new-array p1, v0, [Landroid/util/Size;

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v3, v1, [Landroid/util/Size;

    const v4, 0x5f5e100

    move v5, v0

    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_3

    aget-object v6, p1, v5

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v4

    aput-object v6, v3, v5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    array-length p1, p0

    if-ge v2, p1, :cond_5

    aget-object p1, p0, v2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_4

    aput-object p1, v3, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v0, v1, :cond_7

    aget-object p1, v3, v0

    if-eqz p1, :cond_6

    new-instance v2, Llig;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {v2, v4, p1}, Llig;-><init>(II)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-object p0
.end method

.method public static getFocusDistance(Lhte;)F
    .locals 1

    sget-object v0, Lhte;->c:Lhte;

    if-ne p0, v0, :cond_0

    const p0, 0x4164a3d7    # 14.29f

    const-string v0, "manual_focus_near_key"

    :goto_0
    invoke-static {v0, p0}, Lcom/AGC;->getAuxPrefFloatValue(Ljava/lang/String;F)F

    move-result p0

    goto :goto_1

    :cond_0
    sget-object v0, Lhte;->h:Lhte;

    if-ne p0, v0, :cond_1

    const p0, 0x3f553f7d    # 0.833f

    const-string v0, "manual_focus_median_key"

    goto :goto_0

    :cond_1
    sget-object v0, Lhte;->d:Lhte;

    if-ne p0, v0, :cond_2

    const p0, 0x3e570a3d    # 0.21f

    const-string v0, "manual_focus_far_key"

    goto :goto_0

    :cond_2
    const p0, 0x3df5c28f    # 0.12f

    const-string v0, "manual_focus_infinity_key"

    goto :goto_0

    :goto_1
    sput p0, Lcom/agc/LogData$Device;->focusDistance:F

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return p0
.end method

.method public static getFocusLockTime()I
    .locals 2

    const-string v0, "pref_focus_lock_time_key"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getFrameCount(I)I
    .locals 3

    invoke-static {}, Lagc/Agc;->getSMode()I

    move-result v0

    const-string v1, "getFrameCount"

    invoke-static {v1, p0}, Lcom/agc/Log;->e(Ljava/lang/Object;I)I

    packed-switch v0, :pswitch_data_0

    const-string v0, "pref_frame_count_key"

    const/16 v1, 0xf

    goto :goto_1

    :pswitch_0
    const-string v0, "pref_frame_count_oneshot_key"

    goto :goto_0

    :pswitch_1
    const-string v0, "pref_frame_count_astro_key"

    :goto_0
    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :pswitch_2
    const-string v0, "pref_frame_count_ns_key"

    const/16 v1, 0x14

    :goto_1
    invoke-static {v0, v1}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v1

    :goto_2
    if-nez v1, :cond_0

    move v1, p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "=>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/agc/LogData$Device;->frameCount:Ljava/lang/String;

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getGRGB()I
    .locals 1

    const-string v0, "pref_grgb_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getGallery()I
    .locals 1

    const-string v0, "pref_gallery_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getGcamCameraId(Lebi;I)I
    .locals 3

    iget-object v0, p0, Lebi;->P:Llzi;

    iget-boolean v0, v0, Llzi;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lebi;->k:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/Gcam;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lebi;->k:Lcom/google/googlex/gcam/Gcam;

    iget-wide v1, v0, Lcom/google/googlex/gcam/Gcam;->a:J

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_FindFirstCamera(JLcom/google/googlex/gcam/Gcam;I)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-static {p1}, Lagc/Agc;->setCameraId(I)V

    return p1

    :cond_1
    iget-object p0, p0, Lebi;->u:Llvp;

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, p1}, Llvp;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static getGcamSensorId(Llvp;Llvq;Llzv;)I
    .locals 23

    move-object/from16 v0, p2

    invoke-interface/range {p0 .. p0}, Llvp;->k()Llwd;

    move-result-object v1

    sget-object v2, Llwd;->b:Llwd;

    invoke-interface/range {p0 .. p0}, Llvp;->L()Z

    move-result v15

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v4, p0

    invoke-interface {v4, v3}, Llvp;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/16 v16, 0x5

    const/4 v3, 0x3

    if-eqz v15, :cond_1

    if-nez v0, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v16, v3

    :goto_0
    return v16

    :cond_1
    if-eqz v0, :cond_2

    invoke-static/range {p0 .. p2}, Lpkr;->y(Llvp;Llvq;Llzv;)Llvp;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Llvp;->t()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    const/4 v13, 0x0

    if-ne v6, v7, :cond_3

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    check-cast v5, Ljava/lang/Float;

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v5}, Llzv;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/16 v17, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move/from16 v18, v5

    goto :goto_3

    :cond_5
    move/from16 v18, v17

    :goto_3
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v4, v5}, Llvp;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SizeF;

    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v19

    sget-object v4, Lpkr;->d:Llzi;

    invoke-virtual {v4}, Llzi;->h()Z

    move-result v20

    invoke-virtual {v4}, Llzi;->d()Z

    move-result v6

    iget-boolean v12, v4, Llzi;->a:Z

    iget-boolean v9, v4, Llzi;->k:Z

    iget-boolean v11, v4, Llzi;->m:Z

    invoke-static/range {p2 .. p2}, Lpkr;->D(Llzr;)Z

    move-result v0

    const-string v4, "pref_gcam_lens_logic_key"

    invoke-static {v4}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v4

    const/high16 v21, 0x40a00000    # 5.0f

    if-ne v1, v2, :cond_12

    if-ne v1, v2, :cond_6

    move v1, v7

    goto :goto_4

    :cond_6
    move v1, v13

    :goto_4
    move v3, v4

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v7, v20

    move v8, v11

    move v10, v0

    move v2, v11

    move v11, v1

    move v1, v12

    move v12, v15

    move/from16 v22, v13

    move v13, v1

    invoke-static/range {v3 .. v14}, Lagc/Agc;->getGcamSensorID(IFFZZZZZZZZI)I

    move-result v1

    if-ltz v1, :cond_7

    invoke-static {v1}, Lagc/Agc;->setSensorId(I)V

    return v1

    :cond_7
    if-eqz v15, :cond_8

    cmpl-float v1, v18, v17

    if-nez v1, :cond_8

    return v16

    :cond_8
    cmpl-float v1, v18, v17

    if-eqz v1, :cond_e

    cmpl-float v3, v18, v21

    if-lez v3, :cond_e

    if-nez v20, :cond_9

    if-eqz v2, :cond_a

    :cond_9
    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, v18, v1

    if-ltz v1, :cond_c

    :cond_a
    if-eqz v0, :cond_b

    const/4 v0, 0x7

    return v0

    :cond_b
    const/4 v0, 0x4

    return v0

    :cond_c
    const/high16 v0, 0x40f00000    # 7.5f

    cmpl-float v0, v19, v0

    if-lez v0, :cond_d

    return v22

    :cond_d
    const/16 v0, 0xb

    return v0

    :cond_e
    if-eqz v1, :cond_11

    const/high16 v1, 0x40600000    # 3.5f

    cmpl-float v1, v18, v1

    if-ltz v1, :cond_f

    goto :goto_6

    :cond_f
    if-eqz v0, :cond_10

    const/16 v0, 0x9

    goto :goto_5

    :cond_10
    const/16 v0, 0x8

    :goto_5
    return v0

    :cond_11
    :goto_6
    return v22

    :cond_12
    move v1, v12

    if-eqz v15, :cond_13

    cmpl-float v0, v18, v17

    if-nez v0, :cond_13

    return v3

    :cond_13
    cmpl-float v0, v18, v17

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    if-eqz v6, :cond_14

    const v2, 0x40066666    # 2.1f

    cmpg-float v2, v18, v2

    if-gez v2, :cond_14

    return v0

    :cond_14
    if-eqz v1, :cond_15

    cmpg-float v1, v18, v21

    if-gez v1, :cond_15

    return v0

    :cond_15
    if-eqz v9, :cond_16

    const/high16 v1, 0x40900000    # 4.5f

    cmpl-float v1, v19, v1

    if-lez v1, :cond_16

    return v0

    :cond_16
    const/4 v0, 0x6

    if-ne v14, v0, :cond_17

    return v0

    :cond_17
    return v7
.end method

.method public static getHardwareLevel(I)I
    .locals 2

    const-string v0, "pref_c2a_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p0}, Lagc/Agc;->getHardwareLevel(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/agc/LogData$HardwareLevel;->format(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " => "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Lcom/agc/LogData$HardwareLevel;->format(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/agc/LogData$Device;->hardwareLevel:Ljava/lang/String;

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return v0
.end method

.method public static getHdrNet()I
    .locals 2

    const-string v0, "lib_pref_hdrnet_key"

    invoke-static {v0}, Lcom/AGC;->getAuxProfilePrefIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    const-string v0, "pref_hdrnet_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getHdrPlusOptionAvailable()I
    .locals 1

    const-string v0, "pref_camera_hdrplus_option_available_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getHexagonDSP()I
    .locals 2

    const-string v0, "pref_hexagon_key"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getHirizonLevel()I
    .locals 1

    const-string v0, "pref_hirizon_level_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs getImageReaderFormat(Llvp;[I)Llwp;
    .locals 5

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Llvp;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "pref_raw_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-array p1, v2, [I

    const/16 v0, 0x25

    aput v0, p1, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    new-array p1, v2, [I

    const/16 v0, 0x20

    aput v0, p1, v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/AGC;->logFormat:Lcom/agc/LogData$Format;

    iput-object p1, v0, Lcom/agc/LogData$Format;->formats:[I

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_3

    aget v2, p1, v1

    invoke-interface {p0, v2}, Llvp;->x(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object p0, Lcom/AGC;->logFormat:Lcom/agc/LogData$Format;

    iput v2, p0, Lcom/agc/LogData$Format;->current:I

    iput-object v3, p0, Lcom/agc/LogData$Format;->resolution:Ljava/util/List;

    invoke-virtual {p0}, Lcom/agc/LogData$Format;->log()V

    new-instance p0, Llwp;

    invoke-static {v3}, Lmip;->bs(Ljava/util/List;)Llig;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Llwp;-><init>(ILlig;)V

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/AGC;->logFormat:Lcom/agc/LogData$Format;

    invoke-virtual {p1}, Lcom/agc/LogData$Format;->log()V

    new-instance p1, Llwp;

    const/16 v0, 0x23

    invoke-interface {p0, v0}, Llvp;->x(I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lmip;->bs(Ljava/util/List;)Llig;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Llwp;-><init>(ILlig;)V

    return-object p1
.end method

.method public static getIsoTime(F)F
    .locals 0

    sput p0, Lcom/agc/LogData$Device;->isoTime:F

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return p0
.end method

.method public static getJPGQuality(Ljava/lang/String;)I
    .locals 0

    const-string p0, "pref_qjpg_key"

    invoke-static {p0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x61

    :cond_0
    return p0
.end method

.method public static getManufacturer(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "Google"

    return-object p0
.end method

.method public static getMicroVideo()I
    .locals 1

    const-string v0, "pref_micro_video_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getModel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lagc/Agc;->getDefaultModel()I

    move-result p0

    const-string v0, "pref_model_key"

    invoke-static {v0, p0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lagc/Agc;->getDevice(II)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/agc/LogData$Device;->model:Ljava/lang/String;

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDR+ Model CameraID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKeySuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    return-object p0
.end method

.method public static getMotion()I
    .locals 1

    const-string v0, "pref_motion_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNightMode()I
    .locals 1

    const-string v0, "pref_nightmode_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getOpMode()I
    .locals 2

    invoke-static {}, Lagc/Agc;->getSMode()I

    move-result v0

    const-string v1, "Stream Operation Mode"

    invoke-static {v1, v0}, Lcom/agc/Log;->d(Ljava/lang/Object;I)I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    const-string v0, "pref_opmode_photo_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :pswitch_0
    const-string v0, "pref_opmode_ns_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_5

    const-string v0, "pref_manual_opmode_ns_key"

    goto :goto_0

    :pswitch_1
    const-string v0, "pref_opmode_slowmo_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_5

    const-string v0, "pref_manual_opmode_slowmo_key"

    goto :goto_0

    :pswitch_2
    const-string v0, "pref_opmode_portrait_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_5

    const-string v0, "pref_manual_opmode_portrait_key"

    goto :goto_0

    :pswitch_3
    const-string v0, "pref_opmode_video_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_5

    const-string v0, "pref_manual_opmode_video_key"

    :goto_0
    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lagc/Agc;->getStream(I)I

    move-result v0

    goto :goto_2

    :cond_4
    if-ne v0, v1, :cond_5

    const-string v0, "pref_manual_opmode_photo_key"

    goto :goto_0

    :cond_5
    :goto_2
    sput v0, Lcom/agc/LogData$Device;->opMode:I

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getP3(Lcom/google/googlex/gcam/ShotParams;)I
    .locals 5

    const-string v0, "pref_p3_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/agc/LogData$Device;->dciP3:Z

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    iget-wide v3, p0, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v3, v4, p0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_icc_output_profile_override_set(JLcom/google/googlex/gcam/ShotParams;I)V

    :cond_1
    const-string v3, "pref_photo_grayscale_key"

    invoke-static {v3}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-wide v3, p0, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v3, v4, p0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_icc_output_profile_override_set(JLcom/google/googlex/gcam/ShotParams;I)V

    :cond_2
    return v0
.end method

.method public static getPhotoPrefix()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_prefix_key"

    const-string v1, "AGC_"

    invoke-static {v0, v1}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPseudoCT(Lcom/google/googlex/gcam/FloatArray9;Llzv;)Lcom/google/googlex/gcam/FloatArray9;
    .locals 6

    const/16 v0, 0x9

    new-array v1, v0, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/gcam/FloatArray9;->a:J

    invoke-static {v4, v5, p0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->FloatArray9_get(JLcom/google/googlex/gcam/FloatArray9;I)F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, Lcom/agc/ColorTransform;->ColorTransformSelector([FLlzv;)V

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-static {v2}, Lagc/Agc;->computeColorTransformEntryVal(I)F

    move-result p1

    aput p1, v1, v2

    aget p1, v1, v2

    invoke-virtual {p0, v2, p1}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public static getPzoomValue(F)F
    .locals 0

    const-string p0, "pref_pzoom_disable_key"

    invoke-static {p0}, Lcom/Fix/Pref;->getBoolValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3fc00000    # 1.5f

    :goto_0
    return p0
.end method

.method public static getReadoutTimeNs(Llvp;)J
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Llvp;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const-wide/32 v0, 0x2faf080

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x1fc9a30

    :goto_0
    return-wide v0
.end method

.method public static getShading()I
    .locals 3

    const-string v0, "pref_photo_grayscale_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/agc/LogData$Device;->leica:Z

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return v0
.end method

.method private static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    invoke-static {}, Lcom/AGC;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getStreamOpMode()I
    .locals 2

    const-string v0, "pref_stream_opmode_key"

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lagc/Agc;->getStreamOpMode(I)I

    move-result v0

    sput v0, Lcom/agc/LogData$Device;->streamOpMode:I

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return v0
.end method

.method public static getSupportedOutputSizes(ILandroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/AGC;->getFixResolution(I)I

    move-result v0

    invoke-static {}, Lcom/AGC;->get48m()I

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/AGC;->getFixResolutionList([Landroid/util/Size;[Landroid/util/Size;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lmip;->bu([Landroid/util/Size;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getTrackFocus(Z)Z
    .locals 3

    invoke-static {}, Lagc/Agc;->needChangeTrackingFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    const-string v0, "pref_track_focus_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Focus-Tracking in Photo/Video mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/agc/Log;->d(Ljava/lang/Object;Z)I

    return v1
.end method

.method public static getTrackingFocusTime()I
    .locals 1

    const-string v0, "pref_tracking_focus_time_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getVibro()I
    .locals 1

    const-string v0, "pref_vibro_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getViewfinderFormat()I
    .locals 4

    const-string v0, "pref_preview_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lagc/Agc;->getViewfinderFormat(I)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    if-ne v0, v3, :cond_2

    const/16 v0, 0x100

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    const/16 v0, 0x23

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    const/16 v0, 0x22

    :cond_4
    :goto_1
    sput v0, Lcom/agc/LogData$Device;->preview:I

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return v0
.end method

.method public static getWhiteLevel(I)I
    .locals 1

    const-string v0, "pref_white_level_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0
.end method

.method public static initDevice()V
    .locals 9

    const-string v0, "initDevice"

    invoke-static {v0}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v1 .. v8}, Lagc/Agc;->newDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static initInfoPage()V
    .locals 3

    const-string v0, "info_version_key"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/Version;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/Version;->buildVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/Version;->buildDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "info_manuf_key"

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "info_device_key"

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "info_model_key"

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "info_brand_key"

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "info_board_key"

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "info_hardware_key"

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "info_android_version_key"

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "info_sdk_key"

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "info_fingerprint_key"

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMenuValue()V
    .locals 4

    const-string v0, "initMenuValue"

    invoke-static {v0}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_menu_value_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    :cond_0
    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_xml_path_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/Download/UltraCamera/configs/"

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_hexagon_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1, v2}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    :cond_2
    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    invoke-static {v1, v3}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    :cond_3
    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_hirizon_level_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v1, v2}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    :cond_4
    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_selfie_mirror_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v1, v2}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    :cond_5
    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_hdr_plus_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "on"

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_chameleon_control_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    :cond_7
    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_switch_front_restart_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v1, v2}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    :cond_8
    const-string v0, "camera.pck_large_yuv"

    invoke-static {v0}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/Fix/Pref;->setDefaultBooleanValue(Ljava/lang/String;Z)V

    const-string v0, "camera.cuttle.glpreview"

    invoke-static {v0}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/Fix/Pref;->setDefaultBooleanValue(Ljava/lang/String;Z)V

    const-string v0, "camera.mts_gpu_yuv"

    invoke-static {v0}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/Fix/Pref;->setDefaultBooleanValue(Ljava/lang/String;Z)V

    :goto_0
    const/4 v0, 0x4

    if-gt v3, v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pref_model_key_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lagc/Agc;->getDefaultDevice()I

    move-result v1

    invoke-static {v0, v1}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pref_device_key_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lagc/Agc;->getDefaultDevice()I

    move-result v1

    invoke-static {v0, v1}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_b
    invoke-static {}, Lcom/AGC;->initInfoPage()V

    return-void
.end method

.method public static isC2ALevel3()I
    .locals 3

    const-string v0, "pref_c2a_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/AGC;->isSDMx()Z

    move-result v0

    xor-int/2addr v1, v0

    :goto_0
    sput-boolean v1, Lcom/agc/LogData$Device;->c2ALevel3:Z

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return v1
.end method

.method public static isOpenAWB()Z
    .locals 2

    const-string v0, "pref_awb_switch_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isSDMx()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDM850"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SDM845"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SDM710"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SDM712"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSM888()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SM8350"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SM8350-AC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isShowAFData()I
    .locals 1

    const-string v0, "pref_show_af_data_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static loadLensPreferences(Landroid/preference/PreferenceFragment;I)[Landroid/preference/Preference;
    .locals 9

    invoke-static {}, Lcom/AGC;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Landroid/preference/Preference;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v5, "agc_lens_root_key"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    const-string v6, "agc_lens_key"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Len "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v7, "lens_summary"

    invoke-static {v7}, Lcom/agc/Res;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {v6, v4}, Lcom/AGC;->updateKey(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    aput-object v6, v1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 5

    const-string v0, "gcastartup"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "loadLibrary"

    invoke-static {v0, p0}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    :cond_0
    sput-object p0, Lcom/AGC;->GlolibFullname:Ljava/lang/String;

    const-string p0, "libs_name_entryvalues"

    invoke-static {p0}, Lcom/Fix/Pref;->getArrayResource(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v0, 0x0

    aget-object v0, p0, v0

    :cond_1
    const-string p0, "custom_lib_open_key"

    invoke-static {p0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p0, v0

    :cond_2
    const-string v1, "load gcam library"

    invoke-static {v1, p0}, Lcom/agc/Log;->w(Ljava/lang/Object;Ljava/lang/Object;)I

    const-string v1, ".so"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "lib"

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/AGC;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/agc/pref/LibraryLoader;->getLibDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lagc/Agc;->ramPatcher(Ljava/lang/String;)V

    invoke-static {}, Lcom/AGC;->patchAll()V

    return-void
.end method

.method public static medianFilter(Ljava/io/File;)V
    .locals 10

    const-string v0, "pref_dotfix_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v4

    const-string v0, "pref_mode_vesper_level"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Lcom/Fix/Lens;->isFront()Z

    move-result v5

    const-string v0, "pref_beauty_microdermabrasion_key"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "pref_beauty_detail_key"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v8

    const-string v0, "Dot Fix"

    invoke-static {v0, v4}, Lcom/agc/Log;->d(Ljava/lang/Object;I)I

    const-string v0, "Mode Vesper Level"

    invoke-static {v0, v6}, Lcom/agc/Log;->d(Ljava/lang/Object;I)I

    const-string v0, "isFront"

    invoke-static {v0, v5}, Lcom/agc/Log;->d(Ljava/lang/Object;Z)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/AGC$2;

    move-object v1, v9

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, Lcom/AGC$2;-><init>(Landroid/os/Handler;Ljava/io/File;IZIII)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static mergeSetting(Lcom/google/googlex/gcam/ShotParams;Lddf;)V
    .locals 7

    const-string v0, "pref_merge_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/agc/LogData$Device;->merge:I

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    const-string v2, "lib_hardmerge_key"

    invoke-static {v2}, Lcom/AGC;->getAuxPrefStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const-string v3, "Off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_2

    const-string p0, "Use libpatch merge method"

    invoke-static {p0}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    return-void

    :cond_2
    invoke-static {}, Lagc/Agc;->getSMode()I

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lddm;->L:Lddg;

    :goto_2
    invoke-interface {p1, v2}, Lddf;->k(Lddg;)Z

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    sget-object v2, Lddx;->C:Lddg;

    goto :goto_2

    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    sget-object v2, Lddm;->K:Lddg;

    goto :goto_2

    :cond_5
    move v2, v4

    :goto_3
    sget-object v3, Lddm;->Q:Lddg;

    invoke-interface {p1, v3}, Lddf;->k(Lddg;)Z

    move-result v3

    sget-object v5, Lddm;->O:Lddg;

    invoke-interface {p1, v5}, Lddf;->k(Lddg;)Z

    move-result v5

    sget-object v6, Lddm;->Pa:Lddg;

    invoke-interface {p1, v6}, Lddf;->k(Lddg;)Z

    move-result p1

    const-string v6, "DevSettings -> (merge 0) -> wienerForce"

    invoke-static {v6, v3}, Lcom/agc/Log;->d(Ljava/lang/Object;Z)I

    const-string v6, "DevSettings -> (merge 1) -> sabreAllowed"

    invoke-static {v6, v5}, Lcom/agc/Log;->d(Ljava/lang/Object;Z)I

    const-string v6, "DevSettings -> (merge 2) -> Shasta"

    invoke-static {v6, v2}, Lcom/agc/Log;->d(Ljava/lang/Object;Z)I

    const-string v6, "DevSettings -> (merge 3) -> spatialRgbForce"

    invoke-static {v6, p1}, Lcom/agc/Log;->d(Ljava/lang/Object;Z)I

    invoke-static {v3, v5, v2, p1, v0}, Lagc/Agc;->mergeMethod(ZZZZI)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    iget-wide v2, p0, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v2, v3, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_merge_method_override_set(JLcom/google/googlex/gcam/ShotParams;I)V

    const-string v0, "Merge Method"

    invoke-static {v0, p1}, Lcom/agc/Log;->d(Ljava/lang/Object;I)I

    :cond_6
    const-string v0, "Allow Sabre"

    iget-wide v2, p0, Lcom/google/googlex/gcam/ShotParams;->a:J

    if-nez p1, :cond_7

    invoke-static {v2, v3, p0, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_sabre_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    invoke-static {v0, v4}, Lcom/agc/Log;->d(Ljava/lang/Object;Z)I

    goto :goto_4

    :cond_7
    invoke-static {v2, v3, p0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_sabre_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    invoke-static {v0, v1}, Lcom/agc/Log;->d(Ljava/lang/Object;Z)I

    :goto_4
    const/4 v0, 0x3

    const-string v2, "Spatial RGB"

    if-ne p1, v0, :cond_8

    iget-wide v3, p0, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v3, v4, p0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_spatial_rgb_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    invoke-static {v2, v1}, Lcom/agc/Log;->d(Ljava/lang/Object;Z)I

    goto :goto_5

    :cond_8
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v0, v1, p0, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_spatial_rgb_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    invoke-static {v2, v4}, Lcom/agc/Log;->d(Ljava/lang/Object;Z)I

    :goto_5
    return-void
.end method

.method public static onClickOptionsMenu(Lgtv;)Z
    .locals 3

    sget-object v0, Lgtv;->f:Lgtv;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_4

    sget-object v0, Lgtv;->g:Lgtv;

    if-eq p0, v0, :cond_4

    sget-object v0, Lgtv;->h:Lgtv;

    if-eq p0, v0, :cond_4

    sget-object v0, Lgtv;->i:Lgtv;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lgtv;->au:Lgtv;

    const/4 v2, 0x1

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/AGC;->getHdrNet()I

    move-result p0

    sub-int/2addr p0, v2

    mul-int/lit8 p0, p0, -0x1

    const-string v0, "pref_hdrnet_key"

    invoke-static {v0, p0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    invoke-static {}, Lcom/AGC;->onRestart()V

    return v1

    :cond_1
    sget-object v0, Lgtv;->ar:Lgtv;

    if-eq p0, v0, :cond_2

    sget-object v0, Lgtv;->as:Lgtv;

    if-ne p0, v0, :cond_7

    :cond_2
    sget-object v0, Lgtv;->ar:Lgtv;

    if-ne p0, v0, :cond_3

    move v1, v2

    :cond_3
    const-string p0, "pref_awb_switch_key"

    invoke-static {p0, v1}, Lcom/AGC;->setAuxPrefIntValue(Ljava/lang/String;I)V

    return v2

    :cond_4
    :goto_0
    sget-object v0, Lgtv;->f:Lgtv;

    if-ne p0, v0, :cond_5

    goto :goto_1

    :cond_5
    sget-object v0, Lgtv;->g:Lgtv;

    if-ne p0, v0, :cond_6

    goto :goto_1

    :cond_6
    sget-object p0, Lgtv;->h:Lgtv;

    :cond_7
    :goto_1
    return v1
.end method

.method public static onRestart()V
    .locals 1

    invoke-static {}, Lcom/Fix/Lens;->isFront()Z

    move-result v0

    invoke-static {v0}, Lcom/AGC;->onRestart(Z)V

    return-void
.end method

.method public static onRestart(Z)V
    .locals 4

    sget v0, Lcom/AGC;->sHdr_process:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/AGC;->needsRestart:Z

    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/AGC;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v3, 0x8000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p0, :cond_0

    const-string p0, "android.intent.extras.CAMERA_FACING"

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "android.intent.extras.LENS_FACING_FRONT"

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_1
    return-void
.end method

.method public static onSharedPreferenceChanged(Lfcb;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lfcb;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, "patch_profile_key_\\d+$"

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "lib_group_key_\\d+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const-string v2, "patch_profile_settings"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {p2}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lib_profile_title_key_p"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "patch_profile_entries"

    invoke-static {v5}, Lcom/Fix/Pref;->getArrayResource(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-ge v3, v6, :cond_2

    aget-object v4, v5, v3

    :cond_2
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib_profile_title_key_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {p1, p2}, Lcom/AGC;->updateLibPatchProfile(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "pref_camera_id_list_key"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/AGC;->updateLens(Landroid/preference/PreferenceFragment;)V

    :cond_5
    :goto_1
    invoke-virtual {p0, p2}, Lfcb;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    instance-of p1, p0, Landroid/preference/EditTextPreference;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "placeholder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "%s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p2}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method public static optionsMenuHandle(Lgtg;Ljrl;)V
    .locals 7

    sget-object v0, Ljrl;->b:Ljrl;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljrl;->g:Ljrl;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljrl;->m:Ljrl;

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object p1, p0, Lgtg;->aV:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->n()Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    sget-object p1, Lgtv;->as:Lgtv;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lgtv;->ar:Lgtv;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v0, v1, v3}, Loob;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Loob;

    move-result-object p1

    new-instance v0, Llce;

    invoke-static {}, Lcom/AGC;->isOpenAWB()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Llce;-><init>(Ljava/lang/Object;)V

    new-instance v1, Looh;

    invoke-direct {v1}, Looh;-><init>()V

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v3

    const v4, 0x7f1401de

    if-eqz v3, :cond_1

    new-instance v3, Lgtl;

    sget-object v5, Lgtv;->au:Lgtv;

    const v6, 0x7f080485

    invoke-direct {v3, v5, v6, v4, v4}, Lgtl;-><init>(Lgtv;III)V

    invoke-virtual {v1, v3}, Looh;->g(Ljava/lang/Object;)V

    :cond_1
    new-instance v3, Lgtl;

    sget-object v5, Lgtv;->as:Lgtv;

    const v6, 0x7f08040e

    invoke-direct {v3, v5, v6, v4, v4}, Lgtl;-><init>(Lgtv;III)V

    invoke-virtual {v1, v3}, Looh;->g(Ljava/lang/Object;)V

    new-instance v3, Lgtl;

    sget-object v4, Lgtv;->ar:Lgtv;

    const v5, 0x7f080441

    const v6, 0x7f1401e0

    invoke-direct {v3, v4, v5, v6, v6}, Lgtl;-><init>(Lgtv;III)V

    invoke-virtual {v1, v3}, Looh;->g(Ljava/lang/Object;)V

    sget-object v3, Lgtm;->AWB:Lgtm;

    invoke-virtual {v1}, Looh;->f()Loom;

    move-result-object v1

    const v4, 0x7f140001

    invoke-static {v3, v4, v4, v1}, Lgtk;->a(Lgtm;IILoom;)Lgtk;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lgtg;->K(Lolt;Llda;Lgtk;Z)V

    :cond_2
    return-void
.end method

.method public static patch(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/AGC;->getAuxPrefStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lagc/Agc;->patch(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static patchAll()V
    .locals 9

    const-string v0, "lib_patch_profile_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/agc/widget/PatchButton;->DEFAUT_PATCH_COUNT:I

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Lagc/Agc;->patchProfile(I)V

    return-void

    :cond_1
    sub-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/Fix/Lens;->getCurrentCameraID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/AGC;->patchKeys:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    invoke-static {v6, v0}, Lcom/AGC;->patch(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "Off (as in library)"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Patch_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/Fix/Lens;->getCurrentCameraID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/agc/CrashHandler;->logWriteToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static printStackTrace()V
    .locals 4

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogUtil ParentClass\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  --ParentMethod\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static restartIfNeeded()V
    .locals 1

    sget-boolean v0, Lcom/AGC;->needsRestart:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/AGC;->onRestart()V

    :cond_0
    return-void
.end method

.method public static sHdrProcessTime(I)V
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    sget-wide v2, Lcom/AGC;->sHdrProcessTime:J

    cmp-long p0, v2, v0

    if-nez p0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/AGC;->sHdrProcessTime:J

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    sput-wide v0, Lcom/AGC;->sHdrProcessTime:J

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/agc/widget/HDRProgress;->updateProgress(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setAstroForceState(I)V
    .locals 1

    const-string v0, "pref_camera_astro_force"

    invoke-static {v0, p0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    return-void
.end method

.method public static setAstroOneShotState(I)V
    .locals 1

    const-string v0, "pref_camera_astro_oneshot"

    invoke-static {v0, p0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    return-void
.end method

.method public static setAuxPrefIntValue(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKeySuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    return-void
.end method

.method public static setAuxProfilePrefIntValue(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0}, Lcom/AGC;->getAuxProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    return-void
.end method

.method public static setCameraCaptureSession(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetDeviceId:"

    invoke-static {v1, v0}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    sput-object p0, Lcom/AGC;->session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lagc/Agc;->setDeviceId(Ljava/lang/String;)V

    invoke-static {}, Lagc/Agc;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/agc/LogData$Device;->deviceId:Ljava/lang/String;

    invoke-static {}, Lagc/Agc;->getCameraId()I

    move-result p0

    sput p0, Lcom/agc/LogData$Device;->cameraId:I

    invoke-static {}, Lagc/Agc;->getSensorId()I

    move-result p0

    sput p0, Lcom/agc/LogData$Device;->sensorId:I

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return-void
.end method

.method public static setDeveloperSettings(Ldep;)V
    .locals 4

    sput-object p0, Lcom/AGC;->dep:Ldep;

    sget-object v0, Lddx;->r:Lddg;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddm;->Pa:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    const-string v0, "lib_hdrnet_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lddm;->X:Lddg;

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v2, v0}, Ldep;->s(Lddg;Z)V

    :cond_1
    invoke-static {}, Lagc/Agc;->isDefaultOpenHdrNet()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_hdrnet_key"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2, v3}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    :cond_2
    sget-object v0, Lddm;->X:Lddg;

    invoke-static {}, Lcom/AGC;->getHdrNet()I

    move-result v2

    if-ne v2, v3, :cond_3

    move v1, v3

    :cond_3
    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    return-void

    :cond_4
    sget-object v0, Lddm;->X:Lddg;

    invoke-static {}, Lcom/AGC;->getHdrNet()I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    invoke-virtual {p0, v0, v2}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldeh;->a:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddm;->A:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddm;->D:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddm;->P:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddm;->S:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddm;->am:Lddg;

    const-string v2, "camera.disable_hdrplus_postview"

    invoke-static {v2}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddm;->z:Lddg;

    const-string v2, "camera.cuttle.motion_metadata"

    invoke-static {v2}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddm;->O:Lddg;

    const-string v2, "SABRE_ALLOWED"

    invoke-static {v2}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddm;->W:Lddg;

    const-string v2, "gcam.zsl_ns"

    invoke-static {v2}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddm;->K:Lddg;

    const-string v2, "camera.shasta_psl"

    invoke-static {v2}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddm;->L:Lddg;

    const-string v2, "camera.shasta_zsl"

    invoke-static {v2}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddx;->C:Lddg;

    const-string v2, "camera.gouda.shasta_zsl"

    invoke-static {v2}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddq;->e:Lddg;

    const-string v2, "camera.cuttle.glpreview"

    invoke-static {v2}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddl;->aS:Lddg;

    const-string v2, "camera.pck_large_yuv"

    invoke-static {v2}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldcu;->u:Lddg;

    const-string v2, "camcorder.trk_yuv"

    invoke-static {v2}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldds;->S:Lddg;

    const-string v2, "camera.mts_gpu_yuv"

    invoke-static {v2}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddl;->T:Lddg;

    const-string v2, "camera.p20_lens_setup"

    invoke-static {v2}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldcu;->aa:Lddg;

    const-string v2, "camcorder.ts"

    invoke-static {v2}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddq;->h:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    const-string v0, "pref_enabled_catshark_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_6

    sget-object v0, Lddm;->aa:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddm;->ab:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    goto :goto_2

    :cond_6
    sget-object v0, Lddm;->aa:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddm;->ab:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    :goto_2
    sget-object v0, Ldcu;->L:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldcu;->U:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldcu;->V:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldcu;->T:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldcu;->W:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldcu;->X:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldcu;->p:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldcu;->o:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddl;->aG:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddl;->aR:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddl;->aB:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddl;->bn:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddl;->K:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddl;->L:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddx;->B:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldde;->d:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldeg;->c:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldeg;->d:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldda;->g:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldda;->i:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldda;->h:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldda;->e:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldda;->f:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldda;->c:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldda;->d:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddx;->q:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddx;->s:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddx;->j:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddt;->e:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddt;->f:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddt;->g:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddx;->o:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddx;->p:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldec;->b:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldde;->f:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Ldde;->c:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddr;->f:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddr;->j:Lddg;

    invoke-virtual {p0, v0, v1}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddr;->i:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    sget-object v0, Lddr;->h:Lddg;

    invoke-virtual {p0, v0, v3}, Ldep;->s(Lddg;Z)V

    return-void
.end method

.method public static setExposureTimeMs(Lcom/google/googlex/gcam/FrameMetadata;Llvp;Llzv;)V
    .locals 7

    invoke-static {p1, p2}, Lpkr;->s(Llvp;Llzv;)[F

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p2, v0}, Llzv;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p2, v2}, Llzv;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lpkr;->b(J)F

    move-result p2

    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v4, 0x1

    aget p1, p1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v3

    if-lez v6, :cond_1

    mul-float/2addr p2, v3

    move v3, v5

    :cond_1
    cmpl-float v6, v5, p1

    if-lez v6, :cond_2

    mul-float/2addr p2, p1

    move p1, v5

    :cond_2
    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_5

    cmpl-float v1, v5, v0

    if-lez v1, :cond_5

    mul-float/2addr p2, v0

    move v0, v5

    :cond_5
    iget-wide v4, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v4, v5, p0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_actual_analog_gain_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    iget-wide v3, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v3, v4, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_applied_digital_gain_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    if-eqz v2, :cond_6

    iget-wide v1, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v1, v2, p0, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_post_raw_digital_gain_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    :cond_6
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v0, v1, p0, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_actual_exposure_time_ms_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    return-void
.end method

.method public static setFocus(Lluz;)V
    .locals 0

    return-void
.end method

.method public static setFocusDistance(F)V
    .locals 0

    return-void
.end method

.method public static setSMode(Ljrl;)V
    .locals 2

    invoke-virtual {p0}, Ljrl;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lagc/Agc;->setSMode(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljrl;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Change Shot Mode"

    invoke-static {v1, v0}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-virtual {p0}, Ljrl;->name()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/agc/LogData$Device;->shotMode:Ljava/lang/String;

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return-void
.end method

.method public static setShasta(Lebi;Llzv;Lcom/google/googlex/gcam/ShotParams;Z)V
    .locals 3

    iget v0, p0, Lebi;->rawFormat:I

    invoke-static {v0}, Lcom/agc/LogData$Format;->format(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setShasta rawFormat ="

    invoke-static {v1, v0}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    const-string v0, "pref_shasta_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefFloatValue(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lebi;->rawFormat:I

    const/16 v2, 0x25

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_GREEN_SPLIT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v2}, Llzv;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-string v2, "setShasta sensorGreenSplit1 ="

    invoke-static {v2, p1}, Lcom/agc/Log;->d(Ljava/lang/Object;F)I

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lebi;->o:Lddf;

    sget-object v0, Lddm;->M:Lddg;

    invoke-interface {p0, v0}, Lddf;->g(Lddg;)Lojc;

    move-result-object p0

    invoke-virtual {p0}, Lojc;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lojc;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    mul-float/2addr p1, v0

    :cond_1
    :goto_0
    const-string p0, "setShasta sensorGreenSplit2 ="

    invoke-static {p0, p1}, Lcom/agc/Log;->d(Ljava/lang/Object;F)I

    iget-wide v0, p2, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v0, v1, p2, p3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shasta_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-wide v0, p2, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v0, v1, p2, p3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shasta_force_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-wide v0, p2, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v0, v1, p2, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shasta_factor_set(JLcom/google/googlex/gcam/ShotParams;F)V

    :cond_2
    return-void
.end method

.method public static showDebugView(Landroid/app/Activity;)V
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/agc/fw/FloatManager;->showFloat(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_0
    return-void
.end method

.method private static updateAWBLoaderPref(Landroid/preference/PreferenceFragment;)V
    .locals 9

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "pref_lens_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_awb_key_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "awb_data"

    invoke-static {v5}, Lcom/agc/pref/NoiseModelLoader;->customModels(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/AGC;->concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-static {v5, v4}, Lcom/AGC;->concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_awb_load_key_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/agc/pref/NoiseModelLoader;

    const-string v5, "Import AWB Data"

    const-string v6, "awb_data"

    const-string v8, "txt"

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/agc/pref/NoiseModelLoader;-><init>(Landroid/preference/PreferenceFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public static updateFromFrameRequest(Lpkr;Lcom/google/googlex/gcam/FrameRequest;Llzv;Lgzs;)V
    .locals 6

    invoke-virtual {p0, p2}, Lpkr;->g(Llzv;)Llvp;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/googlex/gcam/FrameRequest;->c()F

    move-result p2

    invoke-virtual {p1}, Lcom/google/googlex/gcam/FrameRequest;->a()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/googlex/gcam/FrameRequest;->b()F

    move-result v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lgzs;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v2, v4}, Lgzs;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    const v4, 0x49742400    # 1000000.0f

    mul-float/2addr p2, v4

    float-to-long v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p3, v2, p2}, Lgzs;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lgzs;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    mul-float/2addr v1, v0

    invoke-static {p0}, Lpkr;->E(Llvp;)[F

    move-result-object p0

    aget p0, p0, v3

    mul-float/2addr v1, p0

    float-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lgzs;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-wide v0, p1, Lcom/google/googlex/gcam/FrameRequest;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_try_to_lock_black_level_get(JLcom/google/googlex/gcam/FrameRequest;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Lgzs;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private static updateKey(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    :cond_1
    instance-of v0, p0, Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/preference/PreferenceGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/AGC;->updateKey(Landroid/preference/Preference;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static updateLens(Landroid/preference/PreferenceFragment;)V
    .locals 13

    invoke-static {}, Lcom/Fix/Lens;->getFilteredCameraIDs()Ljava/util/Set;

    move-result-object v0

    const-string v1, "agc_lens_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x14

    const-string v5, "x)"

    const-string v6, ""

    const-string v7, "Front"

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    if-ge v3, v4, :cond_4

    invoke-static {v3}, Lcom/Fix/Lens;->getAuxKeySuffix(I)Ljava/lang/String;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "agc_lens_key_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Lcom/Fix/Lens;->getCamera(I)Lcom/agc/Camera;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const v11, 0x7f0e00cb

    invoke-virtual {v4, v11}, Landroid/preference/Preference;->setLayoutResource(I)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pref_lens_title_key_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v10}, Lcom/agc/Camera;->isFront()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v10}, Lcom/agc/Camera;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v7

    :cond_1
    invoke-virtual {v10}, Lcom/agc/Camera;->isFront()Z

    invoke-virtual {v10}, Lcom/agc/Camera;->getZoomScale()F

    move-result v6

    float-to-double v6, v6

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v8

    double-to-float v6, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v5, "lens_summary"

    invoke-static {v5}, Lcom/agc/Res;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const v5, 0x7f0e0001

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    :goto_2
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "pref_screen_extra"

    const-string v7, "agc_lens_default_key"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "pref_screen_title"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pref_lens_id"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    invoke-static {}, Lcom/Fix/Lens;->getAvailableLens()Ljava/util/List;

    move-result-object v0

    const-string v1, "pref_camera_id_list_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Landroid/preference/MultiSelectListPreference;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/agc/Camera;

    invoke-virtual {v4}, Lcom/agc/Camera;->isFront()Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v7

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Lcom/agc/Camera;->getName()Ljava/lang/String;

    move-result-object v10

    :goto_4
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v4}, Lcom/agc/Camera;->getType()Ljava/lang/String;

    move-result-object v10

    :cond_6
    invoke-virtual {v4}, Lcom/agc/Camera;->getZoomScale()F

    move-result v11

    float-to-double v11, v11

    mul-double/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-double v11, v11

    div-double/2addr v11, v8

    double-to-float v11, v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " (ID = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ") ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v2

    invoke-virtual {v4}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v1}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static updateLensAndConfigKey(Lfcb;)V
    .locals 8

    invoke-virtual {p0}, Lfcb;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, ""

    const-string v2, "pref_profile_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_p"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "pref_lens_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lfcb;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v4, v3, Landroid/preference/PreferenceScreen;

    if-nez v4, :cond_4

    instance-of v4, v3, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_3

    check-cast v3, Landroid/preference/PreferenceGroup;

    move v4, v0

    :goto_1
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    instance-of v6, v5, Landroid/preference/PreferenceScreen;

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    instance-of v6, v5, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    if-nez v6, :cond_2

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    instance-of v4, v3, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    if-nez v4, :cond_4

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static updateLibPatchProfile(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    const-string p0, "_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p1, p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "patch_profile_key_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-boolean v1, Lcom/Fix/Pref;->isProcessingProfile:Z

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/AGC;->patchKeys:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_p"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    const-string v4, "lib_highlight_fix_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "lib_noisemodelunblock_key_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "lib_blurpreview_key_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "lib_skipmetadatacheck_key_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "lib_shastaforce_key_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "lib_appdigainset_key_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "Off (as in library)"

    goto :goto_2

    :cond_2
    :goto_1
    const-string v4, "0"

    :cond_3
    :goto_2
    invoke-static {v3, v4}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    sput-boolean v1, Lcom/Fix/Pref;->isProcessingProfile:Z

    return-void
.end method

.method public static updateLibrary(Landroid/preference/PreferenceFragment;)V
    .locals 4

    const-string v0, "custom_lib_open_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    const-string v1, "libs_entries"

    invoke-static {v1}, Lcom/Fix/Pref;->getArrayResource(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "libs_name_entryvalues"

    invoke-static {v2}, Lcom/Fix/Pref;->getArrayResource(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/agc/pref/LibraryLoader;->customLibs()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/AGC;->concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-static {v2, v3}, Lcom/AGC;->concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v0, "pref_custom_lib_load_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/agc/pref/LibraryLoader;

    invoke-direct {v1, p0}, Lcom/agc/pref/LibraryLoader;-><init>(Landroid/preference/PreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "custom_lib_delete_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/AGC$1;

    invoke-direct {v1, p0}, Lcom/AGC$1;-><init>(Landroid/preference/PreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private static updateNoiseModelPref(Landroid/preference/PreferenceFragment;)V
    .locals 9

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "pref_lens_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_noise_model_key_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "noise_model"

    invoke-static {v5}, Lcom/agc/pref/NoiseModelLoader;->customModels(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/AGC;->concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-static {v5, v4}, Lcom/AGC;->concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_noise_model_load_key_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/agc/pref/NoiseModelLoader;

    const-string v5, "Import Noise Model"

    const-string v6, "noise_model"

    const-string v8, "c"

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/agc/pref/NoiseModelLoader;-><init>(Landroid/preference/PreferenceFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public static updateParams()V
    .locals 0

    invoke-static {}, Lcom/FixBSG;->UpdateParam()V

    return-void
.end method

.method private static updatePatchConfigrPref(Landroid/preference/PreferenceFragment;)V
    .locals 10

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    const-string v4, "_"

    const/4 v5, 0x1

    if-ge v2, v3, :cond_4

    invoke-static {v2}, Lcom/Fix/Lens;->getAuxKeySuffix(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lib_group_key_p"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "pref_lens_id"

    if-eqz v6, :cond_0

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    const-string v6, "0"

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lib_profile_title_key_p"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "  "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v8, v4, v1

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    array-length v8, v4

    if-le v8, v5, :cond_2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "patch_profile_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/agc/Res;->getStringID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    :cond_2
    :goto_2
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v8, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "pref_screen_extra"

    const-string v8, "lib_group_default_key"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    const-string v8, "pref_screen_title"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_profile_id"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    const-string p0, "patch_profile_settings"

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, v5

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "patch_profile_key_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib_profile_title_key_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const-string v3, "patch_profile_entries"

    invoke-static {v3}, Lcom/Fix/Pref;->getArrayResource(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-ge v1, v4, :cond_6

    aget-object v2, v3, v1

    :cond_6
    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/AGC;->updateLibPatchProfile(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public static updatePreference(Lfcb;)V
    .locals 3

    invoke-virtual {p0}, Lfcb;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/AGC;->updateLensAndConfigKey(Lfcb;)V

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "agc_lens_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/AGC;->updateLens(Landroid/preference/PreferenceFragment;)V

    :cond_0
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "custom_lib_setting_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/AGC;->updateLibrary(Landroid/preference/PreferenceFragment;)V

    :cond_1
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "noise_model_screen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/AGC;->updateNoiseModelPref(Landroid/preference/PreferenceFragment;)V

    :cond_2
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "color_settings_screen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/AGC;->updateAWBLoaderPref(Landroid/preference/PreferenceFragment;)V

    :cond_3
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lib_group_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/AGC;->updatePatchConfigrPref(Landroid/preference/PreferenceFragment;)V

    :cond_4
    invoke-static {v0}, Lcom/AGC;->updatePreferenceSummary(Landroid/preference/PreferenceGroup;)V

    :cond_5
    const-string v0, "prefscreen_top"

    invoke-virtual {p0, v0}, Lfcb;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/AGC;->updatePreferenceScreen(Lfcb;Landroid/preference/Preference;)V

    return-void
.end method

.method private static updatePreferenceScreen(Lfcb;Landroid/preference/Preference;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/preference/PreferenceGroup;

    instance-of v0, p1, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lfcb;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_screen_extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "pref_screen_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {p0}, Lfcb;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "pref_lens_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v2, "pref_profile_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setIntent(Landroid/content/Intent;)V

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/AGC;->updatePreferenceScreen(Lfcb;Landroid/preference/Preference;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static updatePreferenceSummary(Landroid/preference/PreferenceGroup;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    instance-of v2, v1, Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "placeholder"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_\\d+$"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_p\\d+$"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    instance-of v2, v1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_2

    instance-of v2, v1, Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_2

    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-static {v1}, Lcom/AGC;->updatePreferenceSummary(Landroid/preference/PreferenceGroup;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
