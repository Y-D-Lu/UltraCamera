.class public Lcom/Fix/IsoTime;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static SensorSensitivity:F

.field public static iso100:F

.field public static iso150:F

.field public static iso200:F

.field public static iso300:F

.field public static iso400:F

.field public static iso500:F

.field public static iso800:F

.field public static sGetDesired_analog_gain:F

.field public static sGetDesired_analog_gain_after:F

.field public static sGetDesired_analog_gain_before:F

.field public static sGetDesired_digital_gain:F

.field public static sGetDesired_digital_gain_after:F

.field public static sGetDesired_digital_gain_before:F

.field public static sGetDesired_exposure_time_ms:F

.field public static sGetDesired_exposure_time_ms_after:F

.field public static sGetDesired_exposure_time_ms_before:F

.field public static shotMaxISO:F

.field public static shotMaxTime:F

.field public static shotMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AstroTime()F
    .locals 1

    const-string v0, "pref_aemode_astro_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/high16 v0, 0x46fa0000    # 32000.0f

    return v0

    :pswitch_0
    const v0, 0x466a6000    # 15000.0f

    return v0

    :pswitch_1
    const v0, 0x461c4000    # 10000.0f

    return v0

    :pswitch_2
    const v0, 0x45dac000    # 7000.0f

    return v0

    :pswitch_3
    const/high16 v0, 0x457a0000    # 4000.0f

    return v0

    :pswitch_4
    const/high16 v0, 0x44fa0000    # 2000.0f

    return v0

    :pswitch_5
    const/high16 v0, 0x447a0000    # 1000.0f

    return v0

    :pswitch_6
    const/high16 v0, 0x43fa0000    # 500.0f

    return v0

    :pswitch_7
    const/high16 v0, 0x43480000    # 200.0f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ExpParamLogs(F)V
    .locals 8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/FixBSG;->sFront:I

    if-eqz v0, :cond_0

    const-string v0, "Front.  Aux "

    goto :goto_0

    :cond_0
    const-string v0, "Back.  Aux "

    :goto_0
    const-string v1, "pref_aux_key"

    invoke-static {v1}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v1, "5"

    goto :goto_2

    :pswitch_1
    const-string v1, "4"

    goto :goto_2

    :pswitch_2
    const-string v1, "3"

    goto :goto_2

    :pswitch_3
    const-string v1, "2"

    goto :goto_2

    :goto_1
    :pswitch_4
    const-string v1, "Main"

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/Fix/IsoTime;->shotMode:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/Fix/IsoTime;->shotMaxTime:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shotMaxTime - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/Fix/IsoTime;->shotMaxISO:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shotMaxISO - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms_before:F

    sget v2, Lcom/Fix/IsoTime;->sGetDesired_analog_gain_before:F

    sget v3, Lcom/Fix/IsoTime;->sGetDesired_digital_gain_before:F

    const-string v4, "Before"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Expo time - "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Analog gain - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Digital gain - "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms_after:F

    sget v5, Lcom/Fix/IsoTime;->sGetDesired_analog_gain_after:F

    sget v6, Lcom/Fix/IsoTime;->sGetDesired_digital_gain_after:F

    const-string v7, "After"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/Fix/IsoTime;->SensorSensitivity:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SensorSensitivity - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_ExpParamLogs.log"

    invoke-static {v0, p0}, Lcom/agc/CrashHandler;->logWriteToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static OneShotTime()F
    .locals 1

    const-string v0, "pref_aemode_oneshot_key"

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/high16 v0, 0x46fa0000    # 32000.0f

    return v0

    :pswitch_0
    const v0, 0x46ea6000    # 30000.0f

    return v0

    :pswitch_1
    const v0, 0x461c4000    # 10000.0f

    return v0

    :pswitch_2
    const v0, 0x459c4000    # 5000.0f

    return v0

    :pswitch_3
    const/high16 v0, 0x447a0000    # 1000.0f

    return v0

    :pswitch_4
    const v0, 0x43a68000    # 333.0f

    return v0

    :pswitch_5
    const/high16 v0, 0x42c80000    # 100.0f

    return v0

    :pswitch_6
    const/high16 v0, 0x42200000    # 40.0f

    return v0

    :pswitch_7
    const/high16 v0, 0x41a00000    # 20.0f

    return v0

    :pswitch_8
    const/high16 v0, 0x41200000    # 10.0f

    return v0

    :pswitch_9
    const/high16 v0, 0x40000000    # 2.0f

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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
.end method

.method public static aeAutoMax()F
    .locals 1

    const-string v0, "pref_aeautomax_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/high16 v0, 0x447a0000    # 1000.0f

    return v0

    :pswitch_0
    const/high16 v0, 0x41a00000    # 20.0f

    return v0

    :pswitch_1
    const/high16 v0, 0x41f00000    # 30.0f

    return v0

    :pswitch_2
    const/high16 v0, 0x42480000    # 50.0f

    return v0

    :pswitch_3
    const v0, 0x426b4ac1

    return v0

    :pswitch_4
    const v0, 0x428554fe    # 66.666f

    return v0

    :pswitch_5
    const v0, 0x42a6aa7f    # 83.333f

    return v0

    :pswitch_6
    const/high16 v0, 0x42c80000    # 100.0f

    return v0

    :pswitch_7
    const v0, 0x42de38e4

    return v0

    :pswitch_8
    const/high16 v0, 0x42fa0000    # 125.0f

    return v0

    :pswitch_9
    const v0, 0x430edb64

    return v0

    :pswitch_a
    const v0, 0x4326aaab

    return v0

    :pswitch_b
    const/high16 v0, 0x43480000    # 200.0f

    return v0

    :pswitch_c
    const/high16 v0, 0x437a0000    # 250.0f

    return v0

    :pswitch_d
    const v0, 0x43a6aaa0

    return v0

    :pswitch_e
    const/high16 v0, 0x43fa0000    # 500.0f

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.end method

.method public static getAutoExpCoeff()F
    .locals 1

    sget v0, Lcom/FixBSG;->sFront:I

    if-eqz v0, :cond_0

    const-string v0, "pref_auto_expo_time_modif_front_key"

    goto :goto_1

    :cond_0
    sget v0, Lcom/FixBSG;->sModeNS:I

    if-nez v0, :cond_1

    const-string v0, "pref_aux_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "pref_auto_expo_time_modif_5_key"

    goto :goto_1

    :pswitch_1
    const-string v0, "pref_auto_expo_time_modif_4_key"

    goto :goto_1

    :pswitch_2
    const-string v0, "pref_auto_expo_time_modif_3_key"

    goto :goto_1

    :pswitch_3
    const-string v0, "pref_auto_expo_time_modif_2_key"

    goto :goto_1

    :goto_0
    :pswitch_4
    const-string v0, "pref_auto_expo_time_modif_main_key"

    :goto_1
    invoke-static {v0}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_1
    const-string v0, "pref_auto_expo_time_modif_night_key"

    invoke-static {v0}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;)F

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBitrate()I
    .locals 1

    const-string v0, "pref_bitrate_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const v0, 0x2faf0800

    return v0

    :pswitch_1
    const v0, 0x2aea5400

    return v0

    :pswitch_2
    const v0, 0x2625a000

    return v0

    :pswitch_3
    const v0, 0x2160ec00

    return v0

    :pswitch_4
    const v0, 0x1c9c3800

    return v0

    :pswitch_5
    const v0, 0x17d78400

    return v0

    :pswitch_6
    const v0, 0x1312d000

    return v0

    :pswitch_7
    const v0, 0xe4e1c00

    return v0

    :pswitch_8
    const v0, 0x9896800

    return v0

    :pswitch_9
    const v0, 0x7270e00

    return v0

    :pswitch_a
    const v0, 0x5b8d800

    return v0

    :pswitch_b
    const v0, 0x4c4b400

    return v0

    :pswitch_c
    const v0, 0x44aa200

    return v0

    :pswitch_d
    const v0, 0x3d09000

    return v0

    :pswitch_e
    const v0, 0x3567e00

    return v0

    :pswitch_f
    const v0, 0x2dc6c00

    return v0

    :pswitch_10
    const v0, 0x2625a00

    return v0

    :pswitch_11
    const v0, 0x2255100

    return v0

    :pswitch_12
    const v0, 0x1e84800

    return v0

    :pswitch_13
    const v0, 0x1ab3f00

    return v0

    :pswitch_14
    const v0, 0x16e3600

    return v0

    :pswitch_15
    const v0, 0x1312d00

    return v0

    :pswitch_16
    const v0, 0xf42400

    return v0

    :pswitch_17
    const v0, 0xb71b00

    return v0

    :pswitch_18
    const v0, 0x7a1200

    return v0

    :pswitch_19
    const v0, 0x3d0900

    return v0

    :pswitch_1a
    const v0, 0xc3500

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.end method

.method public static getLimitMaxTime()F
    .locals 2

    sget v0, Lcom/FixBSG;->sFront:I

    if-eqz v0, :cond_0

    const-string v0, "pref_exposure_max_front_key"

    goto :goto_0

    :cond_0
    const-string v0, "pref_exposure_max_back_key"

    :goto_0
    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x43960000    # 300.0f

    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/high16 v0, 0x43fa0000    # 500.0f

    return v0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/high16 v0, 0x447a0000    # 1000.0f

    return v0

    :cond_3
    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    sget v0, Lcom/Fix/IsoTime;->shotMaxTime:F

    goto :goto_1

    :cond_4
    sget v0, Lcom/Fix/IsoTime;->shotMaxTime:F

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    :goto_1
    return v0

    :cond_5
    const v0, 0x453b8000    # 3000.0f

    return v0
.end method

.method public static isoTimeAstroParametrs(I)V
    .locals 4

    packed-switch p0, :pswitch_data_0

    const/high16 p0, 0x46fa0000    # 32000.0f

    goto :goto_0

    :pswitch_0
    const p0, 0x466a6000    # 15000.0f

    goto :goto_0

    :pswitch_1
    const p0, 0x461c4000    # 10000.0f

    goto :goto_0

    :pswitch_2
    const p0, 0x45dac000    # 7000.0f

    goto :goto_0

    :pswitch_3
    const/high16 p0, 0x457a0000    # 4000.0f

    goto :goto_0

    :pswitch_4
    const/high16 p0, 0x44fa0000    # 2000.0f

    goto :goto_0

    :pswitch_5
    const/high16 p0, 0x447a0000    # 1000.0f

    goto :goto_0

    :pswitch_6
    const/high16 p0, 0x43fa0000    # 500.0f

    goto :goto_0

    :pswitch_7
    const/high16 p0, 0x43480000    # 200.0f

    :goto_0
    sget v0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr v0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v2, v0, v1

    sub-float v3, v2, p0

    float-to-int v3, v3

    if-lez v3, :cond_1

    div-float/2addr v0, p0

    sget v2, Lcom/Fix/IsoTime;->shotMaxISO:F

    sub-float v3, v0, v2

    float-to-int v3, v3

    if-lez v3, :cond_0

    div-float/2addr v0, v2

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    sput v2, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    return-void

    :cond_0
    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    return-void

    :cond_1
    sput v2, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isoTimeFParametrs(I)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_1
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_2
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_3
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_4
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_5
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_6
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_7
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_8
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_9
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_a
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_b
    sget p0, Lcom/Fix/IsoTime;->shotMaxTime:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v2, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr v1, v2

    sget v2, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v0

    sub-float v2, v1, p0

    float-to-int v2, v2

    if-lez v2, :cond_1

    mul-float/2addr v1, v0

    div-float/2addr v1, p0

    sget v2, Lcom/Fix/IsoTime;->shotMaxISO:F

    sub-float v3, v1, v2

    float-to-int v3, v3

    if-lez v3, :cond_0

    div-float/2addr v1, v2

    sput v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    sput v2, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    return-void

    :cond_0
    sput v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    return-void

    :cond_1
    sput v1, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_c
    invoke-static {}, Lcom/Fix/IsoTime;->getLimitMaxTime()F

    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_d
    invoke-static {}, Lcom/Fix/IsoTime;->getLimitMaxTime()F

    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_e
    invoke-static {}, Lcom/Fix/IsoTime;->getLimitMaxTime()F

    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_f
    sget p0, Lcom/Fix/IsoTime;->iso500:F

    invoke-static {}, Lcom/Fix/IsoTime;->getLimitMaxTime()F

    move-result v1

    sget v2, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v3, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr v2, v3

    sget v3, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v0

    const/high16 v3, 0x41200000    # 10.0f

    sub-float v4, v2, v3

    float-to-int v4, v4

    if-lez v4, :cond_5

    mul-float/2addr v2, v0

    div-float v4, v2, v3

    sub-float v5, v4, p0

    float-to-int v5, v5

    if-lez v5, :cond_3

    div-float v3, v2, p0

    sub-float v4, v3, v1

    float-to-int v4, v4

    if-lez v4, :cond_2

    div-float p0, v2, v1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v3

    move p0, v4

    :goto_0
    sput v1, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->shotMaxISO:F

    sub-float v2, p0, v1

    float-to-int v2, v2

    if-lez v2, :cond_4

    div-float/2addr p0, v1

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    sput v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    return-void

    :cond_4
    sput p0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :cond_5
    sput v2, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.end method

.method public static isoTimeOneShotParametrs(I)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p0, :pswitch_data_0

    const/high16 p0, 0x46fa0000    # 32000.0f

    goto/16 :goto_0

    :pswitch_0
    move p0, v0

    goto/16 :goto_0

    :pswitch_1
    const/high16 p0, 0x40000000    # 2.0f

    goto/16 :goto_0

    :pswitch_2
    const p0, 0x40554fdf    # 3.333f

    goto/16 :goto_0

    :pswitch_3
    const/high16 p0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    :pswitch_4
    const/high16 p0, 0x41200000    # 10.0f

    goto/16 :goto_0

    :pswitch_5
    const/high16 p0, 0x41700000    # 15.0f

    goto :goto_0

    :pswitch_6
    const/high16 p0, 0x41a00000    # 20.0f

    goto :goto_0

    :pswitch_7
    const/high16 p0, 0x41f00000    # 30.0f

    goto :goto_0

    :pswitch_8
    const/high16 p0, 0x42480000    # 50.0f

    goto :goto_0

    :pswitch_9
    const p0, 0x428554fe    # 66.666f

    goto :goto_0

    :pswitch_a
    const p0, 0x42a6aa7f    # 83.333f

    goto :goto_0

    :pswitch_b
    const/high16 p0, 0x42c80000    # 100.0f

    goto :goto_0

    :pswitch_c
    const p0, 0x42de38e4

    goto :goto_0

    :pswitch_d
    const/high16 p0, 0x42fa0000    # 125.0f

    goto :goto_0

    :pswitch_e
    const p0, 0x430edb64

    goto :goto_0

    :pswitch_f
    const p0, 0x4326aaab

    goto :goto_0

    :pswitch_10
    const/high16 p0, 0x43480000    # 200.0f

    goto :goto_0

    :pswitch_11
    const/high16 p0, 0x437a0000    # 250.0f

    goto :goto_0

    :pswitch_12
    const p0, 0x43a6aaa0

    goto :goto_0

    :pswitch_13
    const/high16 p0, 0x43fa0000    # 500.0f

    goto :goto_0

    :pswitch_14
    const/high16 p0, 0x447a0000    # 1000.0f

    goto :goto_0

    :pswitch_15
    const/high16 p0, 0x44fa0000    # 2000.0f

    goto :goto_0

    :pswitch_16
    const p0, 0x453b8000    # 3000.0f

    goto :goto_0

    :pswitch_17
    const/high16 p0, 0x457a0000    # 4000.0f

    goto :goto_0

    :pswitch_18
    const p0, 0x459c4000    # 5000.0f

    goto :goto_0

    :pswitch_19
    const p0, 0x45dac000    # 7000.0f

    goto :goto_0

    :pswitch_1a
    const p0, 0x461c4000    # 10000.0f

    goto :goto_0

    :pswitch_1b
    const p0, 0x466a6000    # 15000.0f

    goto :goto_0

    :pswitch_1c
    return-void

    :goto_0
    sget v1, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v2, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr v1, v2

    sget v2, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr v1, v2

    div-float v2, v1, v0

    sub-float v3, v2, p0

    float-to-int v3, v3

    if-lez v3, :cond_1

    div-float/2addr v1, p0

    sget v2, Lcom/Fix/IsoTime;->shotMaxISO:F

    sub-float v3, v1, v2

    float-to-int v3, v3

    if-lez v3, :cond_0

    div-float/2addr v1, v2

    sput v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    sput v2, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    return-void

    :cond_0
    sput v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    return-void

    :cond_1
    sput v2, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.end method

.method public static isoTimeParametrs(I)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_1
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_2
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_3
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_4
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_5
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_6
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_7
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_8
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_9
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_a
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_b
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_c
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_d
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_e
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_f
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_10
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_11
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_12
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_13
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_14
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_15
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_16
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_17
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_18
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_19
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_1a
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_1b
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_1c
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_1d
    invoke-static {}, Lcom/Fix/IsoTime;->getLimitMaxTime()F

    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_1e
    invoke-static {}, Lcom/Fix/IsoTime;->getLimitMaxTime()F

    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_1f
    invoke-static {}, Lcom/Fix/IsoTime;->getLimitMaxTime()F

    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_20
    invoke-static {}, Lcom/Fix/IsoTime;->getLimitMaxTime()F

    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_21
    invoke-static {}, Lcom/Fix/IsoTime;->getLimitMaxTime()F

    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_22
    invoke-static {}, Lcom/Fix/IsoTime;->getLimitMaxTime()F

    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_23
    sget p0, Lcom/Fix/IsoTime;->iso800:F

    invoke-static {}, Lcom/Fix/IsoTime;->getLimitMaxTime()F

    move-result v1

    sget v2, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v3, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr v2, v3

    sget v3, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v0

    sub-float v3, v2, v0

    float-to-int v3, v3

    if-lez v3, :cond_3

    mul-float/2addr v2, v0

    div-float v3, v2, v0

    sub-float v4, v3, p0

    float-to-int v4, v4

    if-lez v4, :cond_1

    div-float v3, v2, p0

    sub-float v4, v3, v1

    float-to-int v4, v4

    if-lez v4, :cond_0

    div-float p0, v2, v1

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    move p0, v3

    :goto_0
    sput v1, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v1, Lcom/Fix/IsoTime;->shotMaxISO:F

    sub-float v2, p0, v1

    float-to-int v2, v2

    if-lez v2, :cond_2

    div-float/2addr p0, v1

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    sput v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    return-void

    :cond_2
    sput p0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :cond_3
    sput v2, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    :pswitch_24
    sget p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    invoke-static {}, Lcom/Fix/IsoTime;->getAutoExpCoeff()F

    move-result v1

    mul-float/2addr p0, v1

    sget v1, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sget v2, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    mul-float/2addr v1, v2

    sget v2, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v0

    sub-float v2, v1, p0

    float-to-int v2, v2

    if-lez v2, :cond_5

    mul-float/2addr v1, v0

    div-float/2addr v1, p0

    sget v2, Lcom/Fix/IsoTime;->shotMaxISO:F

    sub-float v3, v1, v2

    float-to-int v3, v3

    if-lez v3, :cond_4

    div-float/2addr v1, v2

    sput v1, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    sput v2, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    return-void

    :cond_4
    sput v1, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    sput p0, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    return-void

    :cond_5
    sput v1, Lcom/Fix/IsoTime;->sGetDesired_exposure_time_ms:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_analog_gain:F

    sput v0, Lcom/Fix/IsoTime;->sGetDesired_digital_gain:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.end method
