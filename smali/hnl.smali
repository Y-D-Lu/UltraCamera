.class public final Lhnl;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/util/Range;

.field private final b:Lj$/time/Duration;

.field private final c:Lj$/time/Duration;

.field private d:J

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>(Landroid/util/Range;Lj$/time/Duration;Lj$/time/Duration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lhnl;->d:J

    iput-wide v0, p0, Lhnl;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lhnl;->f:I

    iput-object p1, p0, Lhnl;->a:Landroid/util/Range;

    iput-object p2, p0, Lhnl;->b:Lj$/time/Duration;

    iput-object p3, p0, Lhnl;->c:Lj$/time/Duration;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(FJ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lhnl;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-object v0, p0, Lhnl;->a:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lhnl;->f:I

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lhnl;->f:I

    iput-wide p2, p0, Lhnl;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iput-wide p2, p0, Lhnl;->d:J

    const/4 p1, 0x0

    iput p1, p0, Lhnl;->f:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lhnl;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(FJLgzy;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p4, Lgzy;->g:Leam;

    iget v0, v0, Leam;->s:I

    if-gez v0, :cond_0

    iput-wide p2, p0, Lhnl;->e:J

    const/4 v0, 0x5

    iput v0, p0, Lhnl;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lhnl;->a(FJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lhnl;->f:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lhnl;->d:J

    iput-wide v0, p0, Lhnl;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(J)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lhnl;->f:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-wide v0, p0, Lhnl;->d:J

    sub-long v0, p1, v0

    iget-object v2, p0, Lhnl;->b:Lj$/time/Duration;

    invoke-virtual {v2}, Lj$/time/Duration;->toNanos()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p0, Lhnl;->e:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sub-long/2addr p1, v0

    iget-object v0, p0, Lhnl;->c:Lj$/time/Duration;

    invoke-virtual {v0}, Lj$/time/Duration;->toNanos()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
