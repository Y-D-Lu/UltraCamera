.class public Lcom/AGC$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AGC$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/AGC$2;


# direct methods
.method public constructor <init>(Lcom/AGC$2;)V
    .locals 0

    iput-object p1, p0, Lcom/AGC$2$1;->this$0:Lcom/AGC$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/AGC$2$1;->this$0:Lcom/AGC$2;

    iget-object v1, v1, Lcom/AGC$2;->val$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "FocalLengthIn35mmFilm"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FNumber"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ISOSpeedRatings"

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v8}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "ExposureTime"

    const-wide/16 v9, 0x0

    invoke-virtual {v2, v6, v9, v10}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mm f/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6, v7}, Lagc/Agc;->getShutterSpeed(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ISO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, Lcom/AGC$2$1;->this$0:Lcom/AGC$2;

    iget v3, v2, Lcom/AGC$2;->val$value:I

    iget-boolean v4, v2, Lcom/AGC$2;->val$isFront:Z

    iget v5, v2, Lcom/AGC$2;->val$vesperLevel:I

    iget v6, v2, Lcom/AGC$2;->val$beautyMicrodermabrasion:I

    iget v7, v2, Lcom/AGC$2;->val$beautyDetail:I

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lagc/Agc;->medianFilter(Ljava/lang/String;IZIII)V

    const-string v2, "pref_photo_watermark_key"

    invoke-static {v2}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    const-string v2, "pref_watermark_title_key"

    invoke-static {v2, v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lagc/Agc;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "pref_watermark_type_key"

    invoke-static {v2, v8}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/AGC;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "fonts/Roboto-Bold.ttf"

    invoke-static {v2, v4}, Lcom/agc/util/AssetsUtil;->getAssetsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/AGC;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "fonts/Roboto-Regular.ttf"

    invoke-static {v2, v4}, Lcom/agc/util/AssetsUtil;->getAssetsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v2, "pref_watermark_logo_key"

    invoke-static {v2, v8}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_2

    const-string v2, "logo/leica.png"

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-string v2, "logo/mi.png"

    goto :goto_2

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const-string v2, "logo/huawei.png"

    goto :goto_2

    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    const-string v2, "logo/oneplus.png"

    goto :goto_2

    :cond_5
    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    const-string v2, "logo/oppo.png"

    goto :goto_2

    :cond_6
    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    const-string v2, "logo/vivo.png"

    goto :goto_2

    :cond_7
    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    const-string v2, "logo/samsung.png"

    goto :goto_2

    :cond_8
    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    const-string v2, "logo/sony.png"

    goto :goto_2

    :cond_9
    const/16 v3, 0x9

    if-ne v2, v3, :cond_a

    const-string v2, "logo/google.png"

    goto :goto_2

    :cond_a
    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    const-string v2, "logo/lenovo.png"

    goto :goto_2

    :cond_b
    const/16 v3, 0xb

    if-ne v2, v3, :cond_c

    const-string v2, "logo/moto.png"

    goto :goto_2

    :cond_c
    const/16 v3, 0xc

    if-ne v2, v3, :cond_d

    const-string v2, "logo/realme.png"

    goto :goto_2

    :cond_d
    const-string v2, "logo/agc.png"

    :goto_2
    :try_start_1
    invoke-static {}, Lcom/AGC;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/agc/util/AssetsUtil;->getAssetsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object v2, v1

    move-object v3, v0

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Lagc/Agc;->drawWaterMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    invoke-static {}, Lcom/AGC;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "fonts/DS-Digital-Bold.ttf"

    invoke-static {v0, v2}, Lcom/agc/util/AssetsUtil;->getAssetsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lagc/Agc;->drawTimeWaterMark(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_3
    invoke-static {v1}, Lagc/Agc;->imageProcessing(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExifInterface Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    :goto_4
    return-void
.end method
