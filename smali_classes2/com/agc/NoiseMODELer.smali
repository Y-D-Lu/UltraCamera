.class public Lcom/agc/NoiseMODELer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ISO_RESULT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NR_Offset(I)F
    .locals 0

    invoke-static {p0}, Lagc/Agc;->computeNoiseModelEntryO(I)F

    move-result p0

    return p0
.end method

.method public static NR_Scale(I)F
    .locals 0

    invoke-static {p0}, Lagc/Agc;->computeNoiseModelEntryS(I)F

    move-result p0

    return p0
.end method

.method public static NoiseModelSelector([Landroid/util/Pair;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lagc/Agc;->getGcamAuxKey()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "pref_noise_model_key"

    const-string v3, "pref_tune_coeff_key"

    const-string v4, "pref_tune_model_key"

    const-string v5, ""

    if-ltz v0, :cond_0

    invoke-static {v4, v0, v1}, Lcom/AGC;->getAuxPrefIntValueByAuxKey(Ljava/lang/String;II)I

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v0, v6}, Lcom/AGC;->getAuxPrefFloatValueByAuxKey(Ljava/lang/String;IF)F

    move-result v3

    invoke-static {v0}, Lcom/Fix/Lens;->getCameraID(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v0, v5}, Lcom/AGC;->getAuxPrefStringValueByAuxKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3}, Lcom/AGC;->getAuxPrefFloatValue(Ljava/lang/String;)F

    move-result v3

    invoke-static {}, Lcom/Fix/Lens;->getAuxKey()I

    move-result v0

    invoke-static {v0}, Lcom/Fix/Lens;->getCameraID(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/AGC;->getAuxPrefStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v10, v3

    move v9, v4

    move-object v12, v6

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const-string v2, "0"

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/AGC;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "noise_model"

    invoke-static {v3, v4}, Lcom/agc/pref/NoiseModelLoader;->getDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, -0x1

    :goto_2
    move v6, v0

    move-object v7, v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    :goto_3
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    const-string p0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    sget v11, Lcom/agc/NoiseMODELer;->ISO_RESULT:I

    invoke-static/range {v6 .. v12}, Lagc/Agc;->newNoiseModel(ILjava/lang/String;Ljava/lang/String;IFILjava/lang/String;)V

    return-void
.end method
