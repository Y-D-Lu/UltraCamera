.class public Lorg/opencv/core/MatOfDouble;
.super Lorg/opencv/core/Mat;
.source "MatOfDouble.java"


# static fields
.field private static final _channels:I = 0x1

.field private static final _depth:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    .line 13
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 2
    .param p1, "addr"    # J

    .line 16
    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 17
    invoke-virtual {p0}, Lorg/opencv/core/MatOfDouble;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfDouble;->checkVector(II)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible Mat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Mat;)V
    .locals 2
    .param p1, "m"    # Lorg/opencv/core/Mat;

    .line 27
    invoke-static {}, Lorg/opencv/core/Range;->all()Lorg/opencv/core/Range;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/opencv/core/Mat;-><init>(Lorg/opencv/core/Mat;Lorg/opencv/core/Range;)V

    .line 28
    invoke-virtual {p0}, Lorg/opencv/core/MatOfDouble;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfDouble;->checkVector(II)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible Mat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public varargs constructor <init>([D)V
    .locals 0
    .param p1, "a"    # [D

    .line 34
    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lorg/opencv/core/MatOfDouble;->fromArray([D)V

    .line 36
    return-void
.end method

.method public static fromNativeAddr(J)Lorg/opencv/core/MatOfDouble;
    .locals 1
    .param p0, "addr"    # J

    .line 23
    new-instance v0, Lorg/opencv/core/MatOfDouble;

    invoke-direct {v0, p0, p1}, Lorg/opencv/core/MatOfDouble;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public alloc(I)V
    .locals 2
    .param p1, "elemNumber"    # I

    .line 39
    if-lez p1, :cond_0

    .line 40
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/opencv/core/CvType;->makeType(II)I

    move-result v0

    invoke-super {p0, p1, v1, v0}, Lorg/opencv/core/Mat;->create(III)V

    .line 41
    :cond_0
    return-void
.end method

.method public varargs fromArray([D)V
    .locals 2
    .param p1, "a"    # [D

    .line 44
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    array-length v0, p1

    div-int/lit8 v0, v0, 0x1

    .line 47
    .local v0, "num":I
    invoke-virtual {p0, v0}, Lorg/opencv/core/MatOfDouble;->alloc(I)V

    .line 48
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1}, Lorg/opencv/core/MatOfDouble;->put(II[D)I

    .line 49
    return-void

    .line 45
    .end local v0    # "num":I
    :cond_1
    :goto_0
    return-void
.end method

.method public fromList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "lb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Double;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    .line 66
    .local v0, "ab":[Ljava/lang/Double;
    array-length v1, v0

    new-array v1, v1, [D

    .line 67
    .local v1, "a":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 68
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Lorg/opencv/core/MatOfDouble;->fromArray([D)V

    .line 70
    return-void

    .line 64
    .end local v0    # "ab":[Ljava/lang/Double;
    .end local v1    # "a":[D
    :cond_2
    :goto_1
    return-void
.end method

.method public toArray()[D
    .locals 4

    .line 52
    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfDouble;->checkVector(II)I

    move-result v0

    .line 53
    .local v0, "num":I
    if-ltz v0, :cond_1

    .line 55
    mul-int/lit8 v1, v0, 0x1

    new-array v1, v1, [D

    .line 56
    .local v1, "a":[D
    if-nez v0, :cond_0

    .line 57
    return-object v1

    .line 58
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1}, Lorg/opencv/core/MatOfDouble;->get(II[D)I

    .line 59
    return-object v1

    .line 54
    .end local v1    # "a":[D
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Native Mat has unexpected type or size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/opencv/core/MatOfDouble;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/opencv/core/MatOfDouble;->toArray()[D

    move-result-object v0

    .line 74
    .local v0, "a":[D
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Double;

    .line 75
    .local v1, "ab":[Ljava/lang/Double;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 76
    aget-wide v3, v0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "i":I
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
