.class public Lcom/agc/ColorTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ColorTransformSelector([FLlzv;)V
    .locals 9

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Llzv;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lcom/agc/NoiseMODELer;->ISO_RESULT:I

    const/16 p1, 0x9

    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/agc/ColorTransform;->ManualColorTransform()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lagc/Agc;->getGcamAuxKey()I

    move-result p1

    const-string v0, "pref_blue_coeff_key"

    const-string v3, "pref_green_coeff_key"

    const-string v4, "pref_red_coeff_key"

    const-string v5, "pref_color_transform_key"

    const/high16 v7, 0x3f800000    # 1.0f

    if-ltz p1, :cond_1

    invoke-static {v5, p1, v1}, Lcom/AGC;->getAuxPrefIntValueByAuxKey(Ljava/lang/String;II)I

    move-result v1

    invoke-static {v4, p1, v7}, Lcom/AGC;->getAuxPrefFloatValueByAuxKey(Ljava/lang/String;IF)F

    move-result v4

    invoke-static {v3, p1, v7}, Lcom/AGC;->getAuxPrefFloatValueByAuxKey(Ljava/lang/String;IF)F

    move-result v3

    invoke-static {v0, p1, v7}, Lcom/AGC;->getAuxPrefFloatValueByAuxKey(Ljava/lang/String;IF)F

    move-result v0

    invoke-static {p1}, Lcom/Fix/Lens;->getCameraID(I)Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    move v5, v0

    move v0, v1

    move v8, v4

    move v4, v3

    move v3, v8

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result p1

    invoke-static {v4, v7}, Lcom/AGC;->getAuxPrefFloatValue(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v3, v7}, Lcom/AGC;->getAuxPrefFloatValue(Ljava/lang/String;F)F

    move-result v3

    invoke-static {v0, v7}, Lcom/AGC;->getAuxPrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKey()I

    move-result v4

    invoke-static {v4}, Lcom/Fix/Lens;->getCameraID(I)Ljava/lang/String;

    move-result-object v4

    move v5, v0

    move-object v7, v4

    move v0, p1

    move v4, v3

    move v3, v1

    :goto_1
    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lagc/Agc;->newColorTransform(ILjava/lang/String;Ljava/lang/String;FFFILjava/lang/String;)V

    return-void
.end method

.method public static ComputeColorTransformEntryVal(I)F
    .locals 0

    invoke-static {p0}, Lagc/Agc;->computeColorTransformEntryVal(I)F

    move-result p0

    return p0
.end method

.method public static ManualColorTransform()[Ljava/lang/String;
    .locals 18

    invoke-static {}, Lagc/Agc;->getGcamAuxKey()I

    move-result v0

    const-string v2, "0.093"

    const-string v3, "br_key"

    const-string v5, "0.085"

    const-string v6, "gb_key"

    const-string v8, "1.062"

    const-string v9, "gg_key"

    const-string v11, "-0.148"

    const-string v12, "gr_key"

    const-string v14, "0.257"

    const-string v15, "rb_key"

    const/16 v16, 0x1

    const-string v1, "-0.937"

    const-string v4, "rg_key"

    const/16 v17, 0x0

    const-string v7, "1.679"

    const-string v10, "rr_key"

    const/16 v13, 0x9

    if-ltz v0, :cond_0

    new-array v13, v13, [Ljava/lang/String;

    invoke-static {v10, v0, v7}, Lcom/AGC;->getAuxPrefStringValueByAuxKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v13, v17

    invoke-static {v4, v0, v1}, Lcom/AGC;->getAuxPrefStringValueByAuxKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v16

    invoke-static {v15, v0, v14}, Lcom/AGC;->getAuxPrefStringValueByAuxKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v13, v4

    invoke-static {v12, v0, v11}, Lcom/AGC;->getAuxPrefStringValueByAuxKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v13, v4

    invoke-static {v9, v0, v8}, Lcom/AGC;->getAuxPrefStringValueByAuxKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v13, v4

    invoke-static {v6, v0, v5}, Lcom/AGC;->getAuxPrefStringValueByAuxKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v13, v4

    invoke-static {v3, v0, v2}, Lcom/AGC;->getAuxPrefStringValueByAuxKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v13, v2

    const-string v1, "bg_key"

    const-string v2, "-0.914"

    invoke-static {v1, v0, v2}, Lcom/AGC;->getAuxPrefStringValueByAuxKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v13, v2

    const-string v1, "bb_key"

    const-string v2, "1.828"

    invoke-static {v1, v0, v2}, Lcom/AGC;->getAuxPrefStringValueByAuxKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, v13, v1

    return-object v13

    :cond_0
    new-array v0, v13, [Ljava/lang/String;

    invoke-static {v10, v7}, Lcom/AGC;->getAuxPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v17

    invoke-static {v4, v1}, Lcom/AGC;->getAuxPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v16

    invoke-static {v15, v14}, Lcom/AGC;->getAuxPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-static {v12, v11}, Lcom/AGC;->getAuxPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    invoke-static {v9, v8}, Lcom/AGC;->getAuxPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    invoke-static {v6, v5}, Lcom/AGC;->getAuxPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    invoke-static {v3, v2}, Lcom/AGC;->getAuxPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "bg_key"

    const-string v2, "-0.914"

    invoke-static {v1, v2}, Lcom/AGC;->getAuxPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "bb_key"

    const-string v2, "1.828"

    invoke-static {v1, v2}, Lcom/AGC;->getAuxPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method
