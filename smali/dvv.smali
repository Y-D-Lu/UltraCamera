.class public final Ldvv;
.super Ljava/lang/Object;


# static fields
.field public static final a:Llig;

.field public static final b:Llig;

.field public static final c:Llig;

.field public static final d:Llig;

.field public static final e:Llig;

.field public static final f:Llig;

.field public static final g:J

.field public static final h:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lcom/AGC;->getMicroVideo()I

    move-result v5

    const v6, 0x0

    if-eq v5, v6, :cond_0

    const v6, 0x1

    if-eq v5, v6, :cond_1

    const v6, 0x2

    if-eq v5, v6, :cond_2

    const v6, 0x3

    if-eq v5, v6, :cond_3

    :cond_0
    const/16 v0, 0x280

    const/16 v1, 0x1e0

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x500

    const/16 v1, 0x2d0

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x780

    const/16 v1, 0x438

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xf00

    const/16 v1, 0x870

    :goto_0
    invoke-static {v0, v1}, Llig;->h(II)Llig;

    move-result-object v0

    sput-object v0, Ldvv;->a:Llig;

    const/16 v0, 0x500

    const/16 v1, 0x2d0

    invoke-static {v0, v1}, Llig;->h(II)Llig;

    move-result-object v0

    sput-object v0, Ldvv;->b:Llig;

    const/16 v0, 0x800

    const/16 v1, 0x600

    invoke-static {v0, v1}, Llig;->h(II)Llig;

    move-result-object v0

    sput-object v0, Ldvv;->c:Llig;

    const/16 v0, 0x780

    const/16 v1, 0x438

    invoke-static {v0, v1}, Llig;->h(II)Llig;

    move-result-object v0

    sput-object v0, Ldvv;->d:Llig;

    const/16 v0, 0xfc0

    const/16 v1, 0xbd0

    invoke-static {v0, v1}, Llig;->h(II)Llig;

    const/16 v1, 0x8dc

    invoke-static {v0, v1}, Llig;->h(II)Llig;

    const/16 v0, 0xb40

    const/16 v1, 0x870

    invoke-static {v0, v1}, Llig;->h(II)Llig;

    move-result-object v0

    sput-object v0, Ldvv;->e:Llig;

    const/16 v0, 0xf00

    invoke-static {v0, v1}, Llig;->h(II)Llig;

    move-result-object v0

    sput-object v0, Ldvv;->f:Llig;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v4, 0x1e

    div-long/2addr v0, v4

    sput-wide v0, Ldvv;->g:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    div-long/2addr v0, v4

    sput-wide v0, Ldvv;->h:J

    const/high16 v0, 0x40000000    # 2.0f

    const v1, 0x3e6eeeef

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    return-void
.end method

.method public static a(Landroid/media/MediaFormat;)I
    .locals 2

    const-string v0, "width"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    mul-int v0, v0, p0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    return v0
.end method
