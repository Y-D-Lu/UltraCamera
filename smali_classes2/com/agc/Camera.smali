.class public Lcom/agc/Camera;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aeModes:[I

.field private final angleOfView:Ljava/lang/Double;

.field private final aperture:F

.field private capabilities:Ljava/lang/String;

.field private final flashSupported:Z

.field private final focalLength:F

.field private formats:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final isFront:Z

.field private name:Ljava/lang/String;

.field private final physicalIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rawSizes:[Landroid/util/Size;

.field private final sensorSize:Landroid/util/SizeF;

.field private final supportedHardwareLevel:I

.field private type:Ljava/lang/String;

.field private zoomScale:F


# direct methods
.method public constructor <init>(Ljava/lang/String;ZFFLandroid/util/SizeF;D[IZ[Landroid/util/Size;ILjava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZFF",
            "Landroid/util/SizeF;",
            "D[IZ[",
            "Landroid/util/Size;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lcom/agc/Camera;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/agc/Camera;->type:Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/agc/Camera;->zoomScale:F

    iput-object v1, v0, Lcom/agc/Camera;->capabilities:Ljava/lang/String;

    iput-object v1, v0, Lcom/agc/Camera;->formats:Ljava/lang/String;

    move-object v1, p1

    iput-object v1, v0, Lcom/agc/Camera;->id:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Lcom/agc/Camera;->focalLength:F

    move v1, p4

    iput v1, v0, Lcom/agc/Camera;->aperture:F

    move-object v1, p5

    iput-object v1, v0, Lcom/agc/Camera;->sensorSize:Landroid/util/SizeF;

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/agc/Camera;->angleOfView:Ljava/lang/Double;

    move-object v1, p8

    iput-object v1, v0, Lcom/agc/Camera;->aeModes:[I

    move v1, p9

    iput-boolean v1, v0, Lcom/agc/Camera;->flashSupported:Z

    move-object v1, p10

    iput-object v1, v0, Lcom/agc/Camera;->rawSizes:[Landroid/util/Size;

    move v1, p11

    iput v1, v0, Lcom/agc/Camera;->supportedHardwareLevel:I

    move v1, p2

    iput-boolean v1, v0, Lcom/agc/Camera;->isFront:Z

    move-object v1, p12

    iput-object v1, v0, Lcom/agc/Camera;->physicalIds:Ljava/util/Set;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/agc/Camera;->capabilities:Ljava/lang/String;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/agc/Camera;->formats:Ljava/lang/String;

    invoke-interface {p12}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(Logical)"

    iput-object v1, v0, Lcom/agc/Camera;->type:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private hwLevelName(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "LIMITED"

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "FULL"

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string p1, "LEGACY"

    return-object p1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const-string p1, "3"

    return-object p1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const-string p1, "EXTERNAL"

    return-object p1

    :cond_4
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/agc/Camera;

    invoke-virtual {p0}, Lcom/agc/Camera;->isFront()Z

    move-result v2

    invoke-virtual {p1}, Lcom/agc/Camera;->isFront()Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/agc/Camera;->getFocalLength()F

    move-result v2

    invoke-virtual {p0}, Lcom/agc/Camera;->getFocalLength()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/agc/Camera;->getAperture()F

    move-result v2

    invoke-virtual {p0}, Lcom/agc/Camera;->getAperture()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/agc/Camera;->isFlashSupported()Z

    move-result v2

    invoke-virtual {p1}, Lcom/agc/Camera;->isFlashSupported()Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/agc/Camera;->getAeModes()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/agc/Camera;->getAeModes()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/agc/Camera;->getSensorSize()Landroid/util/SizeF;

    move-result-object v2

    invoke-virtual {p1}, Lcom/agc/Camera;->getSensorSize()Landroid/util/SizeF;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/util/SizeF;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getAeModes()[I
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->aeModes:[I

    return-object v0
.end method

.method public getAngleOfView()D
    .locals 2

    iget-object v0, p0, Lcom/agc/Camera;->angleOfView:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAperture()F
    .locals 1

    iget v0, p0, Lcom/agc/Camera;->aperture:F

    return v0
.end method

.method public getCapabilities()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->capabilities:Ljava/lang/String;

    return-object v0
.end method

.method public getFocalLength()F
    .locals 1

    iget v0, p0, Lcom/agc/Camera;->focalLength:F

    return v0
.end method

.method public getFormats()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->formats:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhysicalIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/Camera;->physicalIds:Ljava/util/Set;

    return-object v0
.end method

.method public getRawSizes()[Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->rawSizes:[Landroid/util/Size;

    return-object v0
.end method

.method public getSensorSize()Landroid/util/SizeF;
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->sensorSize:Landroid/util/SizeF;

    return-object v0
.end method

.method public getSupportedHardwareLevel()I
    .locals 1

    iget v0, p0, Lcom/agc/Camera;->supportedHardwareLevel:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomScale()F
    .locals 1

    iget v0, p0, Lcom/agc/Camera;->zoomScale:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/agc/Camera;->isFront()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/agc/Camera;->getFocalLength()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/agc/Camera;->getAperture()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/agc/Camera;->getSensorSize()Landroid/util/SizeF;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/agc/Camera;->isFlashSupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/agc/Camera;->getAeModes()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/Camera;->flashSupported:Z

    return v0
.end method

.method public isFront()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/Camera;->isFront:Z

    return v0
.end method

.method public isNameNotSet()Z
    .locals 2

    iget-object v0, p0, Lcom/agc/Camera;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTypeNotSet()Z
    .locals 2

    iget-object v0, p0, Lcom/agc/Camera;->type:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/Camera;->name:Ljava/lang/String;

    const-string p1, "\u2713"

    invoke-virtual {p0, p1}, Lcom/agc/Camera;->setType(Ljava/lang/String;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/Camera;->type:Ljava/lang/String;

    return-void
.end method

.method public setZoomScale(F)V
    .locals 0

    iput p1, p0, Lcom/agc/Camera;->zoomScale:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/agc/Camera;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/agc/Camera;->isFront:Z

    if-eqz v2, :cond_0

    const-string v2, "FRONT"

    goto :goto_0

    :cond_0
    const-string v2, "BACK"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  ID"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/agc/Camera;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/agc/Camera;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/agc/Camera;->physicalIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " = ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/Camera;->physicalIds:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    const-string v4, " + "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tFocalLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/agc/Camera;->focalLength:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tAperture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/agc/Camera;->aperture:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tSensorSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/agc/Camera;->sensorSize:Landroid/util/SizeF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tAngleOfView(Diagonal) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/agc/Camera;->angleOfView:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u00b0\n\t\t\tAEModes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/agc/Camera;->aeModes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tFlashSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/agc/Camera;->flashSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tRAW_SENSOR sizes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/agc/Camera;->rawSizes:[Landroid/util/Size;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tSupportedHardwareLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/agc/Camera;->supportedHardwareLevel:I

    invoke-direct {p0, v1}, Lcom/agc/Camera;->hwLevelName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tCapabilities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/agc/Camera;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tformats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/agc/Camera;->formats:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
