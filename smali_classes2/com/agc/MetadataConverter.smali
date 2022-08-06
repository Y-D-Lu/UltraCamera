.class public Lcom/agc/MetadataConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToGcamStaticMetadata(Llvp;)Lcom/google/googlex/gcam/StaticMetadata;
    .locals 13

    const-string v0, "convertToGcamStaticMetadata >= "

    invoke-static {v0}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    new-instance v0, Lcom/google/googlex/gcam/StaticMetadata;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_StaticMetadata__SWIG_0()J

    move-result-wide v1

    const/4 v7, 0x1

    invoke-direct {v0, v1, v2, v7}, Lcom/google/googlex/gcam/StaticMetadata;-><init>(JZ)V

    iget-wide v8, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    const-string v1, "Google"

    invoke-static {v8, v9, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_make_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v8, v9, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_model_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1}, Lcom/AGC;->getModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v9, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_device_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    sget-object v1, Llzj;->a:Llzk;

    const-string v2, "ro.revision"

    invoke-virtual {v1, v2}, Llzk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v8, v9, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_hardware_revision_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "HDR+ "

    if-eqz v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v8, v9, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_software_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v8, v9, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_device_os_version_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    sget-wide v1, Landroid/os/Build;->TIME:J

    invoke-static {v8, v9, v0, v1, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_device_os_unix_ms_set(JLcom/google/googlex/gcam/StaticMetadata;J)V

    invoke-static {p0}, Lpkr;->c(Llvp;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/StaticMetadata;->f(I)V

    invoke-interface {p0}, Llvp;->H()Z

    move-result v1

    invoke-static {v8, v9, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_has_flash_set(JLcom/google/googlex/gcam/StaticMetadata;Z)V

    invoke-interface {p0}, Llvp;->k()Llwd;

    move-result-object v1

    invoke-virtual {v1}, Llwd;->ordinal()I

    move-result v1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v10, :cond_2

    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    move v1, v10

    goto :goto_1

    :cond_3
    move v1, v7

    goto :goto_1

    :cond_4
    move v1, v11

    :goto_1
    invoke-static {v8, v9, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_lens_facing_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    invoke-interface {p0}, Llvp;->r()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v7

    const-string v3, "Cameras must have at least one focal length."

    invoke-static {v2, v3}, Lobr;->aG(ZLjava/lang/Object;)V

    new-instance v6, Lcom/google/googlex/gcam/FloatVector;

    invoke-direct {v6}, Lcom/google/googlex/gcam/FloatVector;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/googlex/gcam/FloatVector;->b(F)V

    goto :goto_2

    :cond_5
    iget-wide v4, v6, Lcom/google/googlex/gcam/FloatVector;->a:J

    move-wide v1, v8

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_available_focal_lengths_mm_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/FloatVector;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Llvp;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    array-length v2, v1

    if-lez v2, :cond_6

    move v2, v7

    goto :goto_3

    :cond_6
    move v2, v11

    :goto_3
    const-string v3, "Cameras must have at least one f-number (aperture size)."

    invoke-static {v2, v3}, Lobr;->aG(ZLjava/lang/Object;)V

    invoke-static {v1}, Lpkr;->A([F)Lcom/google/googlex/gcam/FloatVector;

    move-result-object v6

    iget-wide v4, v6, Lcom/google/googlex/gcam/FloatVector;->a:J

    move-wide v1, v8

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_available_f_numbers_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/FloatVector;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_WHITE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Llvp;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/AGC;->getWhiteLevel(I)I

    move-result v1

    invoke-static {v8, v9, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_white_level_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_OPTICAL_BLACK_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Llvp;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Rect;

    if-eqz v1, :cond_8

    new-instance v6, Lcom/google/googlex/gcam/PixelRectVector;

    invoke-direct {v6}, Lcom/google/googlex/gcam/PixelRectVector;-><init>()V

    array-length v2, v1

    move v3, v11

    :goto_4
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    new-instance v5, Lcom/google/googlex/gcam/PixelRect;

    invoke-direct {v5}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v12}, Lcom/google/googlex/gcam/PixelRect;->d(I)V

    iget v12, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v12}, Lcom/google/googlex/gcam/PixelRect;->e(I)V

    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v12}, Lcom/google/googlex/gcam/PixelRect;->f(I)V

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v4}, Lcom/google/googlex/gcam/PixelRect;->g(I)V

    invoke-virtual {v6, v5}, Lcom/google/googlex/gcam/PixelRectVector;->a(Lcom/google/googlex/gcam/PixelRect;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    iget-wide v4, v6, Lcom/google/googlex/gcam/PixelRectVector;->a:J

    move-wide v1, v8

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_optically_black_regions_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/PixelRectVector;)V

    :cond_8
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Llvp;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    packed-switch v1, :pswitch_data_0

    sget-object v3, Lpkr;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "convertToBayerPattern: unsupported color filter arrangement: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", returning kInvalid."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/agc/Log;->w(Ljava/lang/Object;Ljava/lang/Object;)I

    move v1, v11

    goto :goto_5

    :pswitch_0
    move v1, v10

    goto :goto_5

    :pswitch_1
    move v1, v2

    goto :goto_5

    :pswitch_2
    const/4 v1, 0x3

    goto :goto_5

    :pswitch_3
    move v1, v7

    :goto_5
    invoke-static {v8, v9, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_bayer_pattern_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    new-array v1, v10, [J

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v3}, Llvp;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v11

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v3}, Llvp;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v7

    new-array v3, v10, [F

    aget-wide v4, v1, v11

    invoke-static {v4, v5}, Lpkr;->b(J)F

    move-result v4

    aput v4, v3, v11

    aget-wide v4, v1, v7

    invoke-static {v4, v5}, Lpkr;->b(J)F

    move-result v1

    aput v1, v3, v7

    const/4 v1, 0x0

    invoke-interface {p0}, Llvp;->k()Llwd;

    move-result-object v4

    sget-object v5, Llwd;->b:Llwd;

    if-ne v4, v5, :cond_c

    sget-object v4, Lpkr;->d:Llzi;

    invoke-virtual {v4}, Llzi;->e()Z

    move-result v5

    if-nez v5, :cond_9

    iget-boolean v5, v4, Llzi;->f:Z

    if-nez v5, :cond_9

    invoke-virtual {v4}, Llzi;->g()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4}, Llzi;->h()Z

    move-result v5

    if-nez v5, :cond_9

    iget-boolean v5, v4, Llzi;->i:Z

    if-nez v5, :cond_9

    iget-boolean v4, v4, Llzi;->m:Z

    if-eqz v4, :cond_c

    :cond_9
    invoke-static {p0}, Lpkr;->c(Llvp;)I

    move-result v4

    if-nez v4, :cond_a

    const/high16 v1, 0x46fa0000    # 32000.0f

    :goto_6
    invoke-static {v1}, Lcom/AGC;->getExpastro(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_7

    :cond_a
    if-eq v4, v2, :cond_b

    const/4 v2, 0x5

    if-eq v4, v2, :cond_b

    const/16 v2, 0x8

    if-ne v4, v2, :cond_c

    :cond_b
    const v1, 0x46bb8000    # 24000.0f

    goto :goto_6

    :cond_c
    :goto_7
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aget v2, v3, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v3, v7

    :cond_d
    invoke-static {v8, v9, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_exposure_time_range_ms_set(JLcom/google/googlex/gcam/StaticMetadata;[F)V

    invoke-static {p0}, Lpkr;->E(Llvp;)[F

    move-result-object v1

    invoke-static {p0}, Lpkr;->x(Llvp;)F

    move-result v2

    invoke-static {v8, v9, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_iso_range_set(JLcom/google/googlex/gcam/StaticMetadata;[F)V

    invoke-static {v8, v9, v0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_max_analog_iso_set(JLcom/google/googlex/gcam/StaticMetadata;F)V

    new-instance v6, Lcom/google/googlex/gcam/DngColorCalibrationVector;

    invoke-direct {v6}, Lcom/google/googlex/gcam/DngColorCalibrationVector;-><init>()V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Llvp;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_e

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v2}, Llvp;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v2}, Lpkr;->z(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v3}, Llvp;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v3}, Lpkr;->z(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v3

    new-instance v4, Lcom/google/googlex/gcam/DngColorCalibration;

    invoke-direct {v4}, Lcom/google/googlex/gcam/DngColorCalibration;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/googlex/gcam/DngColorCalibration;->b(I)V

    invoke-virtual {v4, v2}, Lcom/google/googlex/gcam/DngColorCalibration;->d(Lcom/google/googlex/gcam/FloatArray9;)V

    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/DngColorCalibration;->c(Lcom/google/googlex/gcam/FloatArray9;)V

    invoke-virtual {v6, v4}, Lcom/google/googlex/gcam/DngColorCalibrationVector;->a(Lcom/google/googlex/gcam/DngColorCalibration;)V

    :cond_e
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Llvp;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    if-eqz v1, :cond_f

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v2}, Llvp;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v2}, Lpkr;->z(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v3}, Llvp;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v3}, Lpkr;->z(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v3

    new-instance v4, Lcom/google/googlex/gcam/DngColorCalibration;

    invoke-direct {v4}, Lcom/google/googlex/gcam/DngColorCalibration;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/googlex/gcam/DngColorCalibration;->b(I)V

    invoke-virtual {v4, v2}, Lcom/google/googlex/gcam/DngColorCalibration;->d(Lcom/google/googlex/gcam/FloatArray9;)V

    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/DngColorCalibration;->c(Lcom/google/googlex/gcam/FloatArray9;)V

    invoke-virtual {v6, v4}, Lcom/google/googlex/gcam/DngColorCalibrationVector;->a(Lcom/google/googlex/gcam/DngColorCalibration;)V

    :cond_f
    iget-wide v4, v6, Lcom/google/googlex/gcam/DngColorCalibrationVector;->a:J

    move-wide v1, v8

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_dng_color_calibration_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/DngColorCalibrationVector;)V

    invoke-static {v0}, Lcom/agc/Awb;->getQcColorCalibration(Lcom/google/googlex/gcam/StaticMetadata;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Llvp;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SizeF;

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-static {v8, v9, v0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_sensor_physical_width_mm_set(JLcom/google/googlex/gcam/StaticMetadata;F)V

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    invoke-static {v8, v9, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_sensor_physical_height_mm_set(JLcom/google/googlex/gcam/StaticMetadata;F)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Llvp;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Lcom/AGC;->Forty8Strip(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/AGC;->Forty8Strip(I)I

    move-result v1

    invoke-static {v8, v9, v0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_pixel_array_width_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    invoke-static {v8, v9, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_pixel_array_height_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Llvp;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    new-instance v6, Lcom/google/googlex/gcam/PixelRect;

    invoke-direct {v6}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Lcom/AGC;->Forty8Strip(I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/googlex/gcam/PixelRect;->d(I)V

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Lcom/AGC;->Forty8Strip(I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/googlex/gcam/PixelRect;->e(I)V

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Lcom/AGC;->Forty8Strip(I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/googlex/gcam/PixelRect;->f(I)V

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Lcom/AGC;->Forty8Strip(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/google/googlex/gcam/PixelRect;->g(I)V

    iget-wide v4, v6, Lcom/google/googlex/gcam/PixelRect;->a:J

    move-wide v1, v8

    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_active_area_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/PixelRect;)V

    invoke-static {p0}, Lpkr;->h(Llvp;)Llwp;

    move-result-object v1

    iget-object v2, v1, Llwp;->b:Llig;

    iget v2, v2, Llig;->a:I

    invoke-static {v2}, Lcom/AGC;->Forty8Strip(I)I

    move-result v2

    iget-object v3, v1, Llwp;->b:Llig;

    iget v3, v3, Llig;->b:I

    invoke-static {v3}, Lcom/AGC;->Forty8Strip(I)I

    move-result v3

    invoke-static {v8, v9, v0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_frame_raw_max_width_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    invoke-static {v8, v9, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_frame_raw_max_height_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    iget v1, v1, Llwp;->a:I

    invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    invoke-static {v8, v9, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_raw_bits_per_pixel_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    invoke-static {p0}, Lpkr;->e(Llvp;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lpkr;->b(J)F

    move-result v1

    invoke-static {v8, v9, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_frame_readout_time_ms_set(JLcom/google/googlex/gcam/StaticMetadata;F)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Llvp;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    array-length v1, p0

    :goto_8
    if-ge v11, v1, :cond_11

    aget v2, p0, v11

    if-ne v2, v7, :cond_10

    invoke-static {v8, v9, v0, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_has_ois_set(JLcom/google/googlex/gcam/StaticMetadata;Z)V

    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_11
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
