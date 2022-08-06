.class public Lcom/agc/Awb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQcColorCalibration(Lcom/google/googlex/gcam/StaticMetadata;)V
    .locals 13

    invoke-static {}, Lagc/Agc;->getGcamAuxKey()I

    move-result v0

    const-string v1, "pref_awb_rg_coeff_key"

    const-string v2, "pref_awb_bg_coeff_key"

    const/high16 v3, 0x40000000    # 2.0f

    const-string v4, "pref_awbratio_key"

    const/high16 v5, 0x3f800000    # 1.0f

    if-ltz v0, :cond_0

    invoke-static {v4, v0, v3}, Lcom/AGC;->getAuxPrefFloatValueByAuxKey(Ljava/lang/String;IF)F

    move-result v3

    invoke-static {v2, v0, v5}, Lcom/AGC;->getAuxPrefFloatValueByAuxKey(Ljava/lang/String;IF)F

    move-result v2

    invoke-static {v1, v0, v5}, Lcom/AGC;->getAuxPrefFloatValueByAuxKey(Ljava/lang/String;IF)F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v4, v3}, Lcom/AGC;->getAuxPrefFloatValue(Ljava/lang/String;F)F

    move-result v3

    invoke-static {v2, v5}, Lcom/AGC;->getAuxPrefFloatValue(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v1, v5}, Lcom/AGC;->getAuxPrefFloatValue(Ljava/lang/String;F)F

    move-result v1

    invoke-static {}, Lcom/Fix/Lens;->getAuxKey()I

    move-result v0

    :goto_0
    invoke-static {v0}, Lcom/Fix/Lens;->getCameraID(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "pref_awb_key"

    const-string v5, "2"

    invoke-static {v4, v5}, Lcom/AGC;->getAuxPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    const-string v5, "0"

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, ""

    goto :goto_2

    :catch_0
    move-exception v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/AGC;->getAppContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "awb_data"

    invoke-static {v6, v7}, Lcom/agc/pref/NoiseModelLoader;->getDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AWB getQcColorCalibration cameraID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " awbID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/agc/Log;->d(Ljava/lang/Object;I)I

    invoke-static {v4, v5, v2, v1, v0}, Lagc/Agc;->newAwb(ILjava/lang/String;FFLjava/lang/String;)V

    new-instance v0, Lcom/google/googlex/gcam/QcColorCalibration;

    invoke-direct {v0}, Lcom/google/googlex/gcam/QcColorCalibration;-><init>()V

    :try_start_2
    invoke-static {}, Lagc/Agc;->getAWBEntryLen()I

    move-result v1

    int-to-long v1, v1

    new-instance v12, Lcom/google/googlex/gcam/QcIlluminantVector;

    invoke-direct {v12}, Lcom/google/googlex/gcam/QcIlluminantVector;-><init>()V

    const/4 v4, 0x0

    move v10, v4

    :goto_3
    int-to-long v4, v10

    cmp-long v4, v4, v1

    if-gez v4, :cond_2

    new-instance v9, Lcom/google/googlex/gcam/QcColorCalibration$IlluminantData;

    invoke-direct {v9}, Lcom/google/googlex/gcam/QcColorCalibration$IlluminantData;-><init>()V

    invoke-static {v10}, Lagc/Agc;->computeAWBEntryRG(I)F

    move-result v4

    iget-wide v5, v9, Lcom/google/googlex/gcam/QcColorCalibration$IlluminantData;->a:J

    invoke-static {v5, v6, v9, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->QcColorCalibration_IlluminantData_rg_ratio_set(JLcom/google/googlex/gcam/QcColorCalibration$IlluminantData;F)V

    invoke-static {v10}, Lagc/Agc;->computeAWBEntryBG(I)F

    move-result v4

    iget-wide v5, v9, Lcom/google/googlex/gcam/QcColorCalibration$IlluminantData;->a:J

    invoke-static {v5, v6, v9, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->QcColorCalibration_IlluminantData_bg_ratio_set(JLcom/google/googlex/gcam/QcColorCalibration$IlluminantData;F)V

    iget-wide v4, v12, Lcom/google/googlex/gcam/QcIlluminantVector;->a:J

    iget-wide v7, v9, Lcom/google/googlex/gcam/QcColorCalibration$IlluminantData;->a:J

    move-object v6, v12

    invoke-static/range {v4 .. v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->QcIlluminantVector_add(JLcom/google/googlex/gcam/QcIlluminantVector;JLcom/google/googlex/gcam/QcColorCalibration$IlluminantData;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_2
    iget-wide v7, v0, Lcom/google/googlex/gcam/QcColorCalibration;->a:J

    iget-wide v10, v12, Lcom/google/googlex/gcam/QcIlluminantVector;->a:J

    move-object v9, v0

    invoke-static/range {v7 .. v12}, Lcom/google/googlex/gcam/GcamModuleJNI;->QcColorCalibration_illuminant_data_set(JLcom/google/googlex/gcam/QcColorCalibration;JLcom/google/googlex/gcam/QcIlluminantVector;)V

    invoke-virtual {v0, v3}, Lcom/google/googlex/gcam/QcColorCalibration;->b(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    const-string v1, "AWB didn\'t work"

    invoke-static {v1}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    :goto_4
    iget-wide v7, p0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget-wide v10, v0, Lcom/google/googlex/gcam/QcColorCalibration;->a:J

    move-object v9, p0

    move-object v12, v0

    invoke-static/range {v7 .. v12}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_qc_color_calibration_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/QcColorCalibration;)V

    return-void
.end method
