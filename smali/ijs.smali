.class public Lijs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/camera/stats/timing/TimingSession;


# static fields
.field public static final j:Lijr;

.field public static final k:Lijr;


# instance fields
.field private final a:[J

.field private b:Ljava/lang/Runnable;

.field public final l:Lmcx;

.field public m:J

.field public final n:[Ljava/lang/Enum;

.field public final o:Lmip;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lijr;->a()Lijq;

    move-result-object v0

    invoke-virtual {v0}, Lijq;->a()Lijr;

    move-result-object v0

    sput-object v0, Lijs;->j:Lijr;

    invoke-static {}, Lijr;->a()Lijq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lijq;->c(Z)V

    invoke-virtual {v0, v1}, Lijq;->b(Z)V

    invoke-virtual {v0}, Lijq;->a()Lijr;

    move-result-object v0

    sput-object v0, Lijs;->k:Lijr;

    return-void
.end method

.method protected constructor <init>(Lmcx;J[Ljava/lang/Enum;)V
    .locals 11

    new-instance v2, Lmip;

    invoke-direct {v2}, Lmip;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v10}, Lijs;-><init>(Lmcx;Lmip;J[Ljava/lang/Enum;[B[B[B[B[B)V

    return-void
.end method

.method protected constructor <init>(Lmcx;Lmip;J[Ljava/lang/Enum;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lijs;->l:Lmcx;

    iput-object p2, p0, Lijs;->o:Lmip;

    iput-wide p3, p0, Lijs;->m:J

    iput-object p5, p0, Lijs;->n:[Ljava/lang/Enum;

    array-length p1, p5

    new-array p1, p1, [J

    iput-object p1, p0, Lijs;->a:[J

    const-wide/16 p2, -0x1

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method protected constructor <init>(Lmcx;[Ljava/lang/Enum;)V
    .locals 11

    new-instance v2, Lmip;

    invoke-direct {v2}, Lmip;-><init>()V

    invoke-interface {p1}, Lmcx;->a()J

    move-result-wide v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v10}, Lijs;-><init>(Lmcx;Lmip;J[Ljava/lang/Enum;[B[B[B[B[B)V

    return-void
.end method

.method public static h(Ljava/lang/Class;)Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    invoke-static {p0}, Lobr;->ao(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    array-length v0, p0

    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "TIMING_CREATION"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected a()V
    .locals 3

    iget-object v0, p0, Lijs;->a:[J

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lijs;->l:Lmcx;

    invoke-interface {v0}, Lmcx;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lijs;->m:J

    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lijs;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lijs;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Enum;)J
    .locals 3

    iget-object v0, p0, Lijs;->a:[J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final i(Ljava/lang/Enum;)V
    .locals 3

    iget-object v0, p0, Lijs;->l:Lmcx;

    invoke-interface {v0}, Lmcx;->a()J

    move-result-wide v0

    sget-object v2, Lijs;->j:Lijr;

    invoke-virtual {p0, p1, v0, v1, v2}, Lijs;->k(Ljava/lang/Enum;JLijr;)V

    return-void
.end method

.method public final j(Ljava/lang/Enum;Lijr;)V
    .locals 2

    iget-object v0, p0, Lijs;->l:Lmcx;

    invoke-interface {v0}, Lmcx;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lijs;->k(Ljava/lang/Enum;JLijr;)V

    return-void
.end method

.method public final k(Ljava/lang/Enum;JLijr;)V
    .locals 5

    invoke-virtual {p0, p1}, Lijs;->l(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lijs;->n:[Ljava/lang/Enum;

    aput-object p1, v1, v0

    iget-object v2, p0, Lijs;->a:[J

    aput-wide p2, v2, v0

    if-lez v0, :cond_1

    add-int/lit8 p2, v0, -0x1

    aget-wide p2, v2, p2

    goto :goto_0

    :cond_1
    const-wide/16 p2, -0x1

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-ltz v4, :cond_3

    iget-boolean p2, p4, Lijr;->b:Z

    if-eqz p2, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    :goto_2
    iget-boolean p2, p4, Lijr;->a:Z

    if-eqz v3, :cond_5

    if-eqz p2, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    return-void

    :cond_5
    if-eqz v3, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    return-void

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public final l(Ljava/lang/Enum;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lijs;->n:[Ljava/lang/Enum;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lobr;->aF(Z)V

    iget-object p1, p0, Lijs;->a:[J

    aget-wide v0, p1, v0

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lijs;->a:[J

    array-length v6, v5

    const-wide/16 v7, 0x0

    if-ge v4, v6, :cond_1

    aget-wide v9, v5, v4

    cmp-long v5, v9, v7

    if-ltz v5, :cond_0

    cmp-long v5, v9, v2

    if-gez v5, :cond_0

    move-wide v2, v9

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v4, p0, Lijs;->a:[J

    array-length v4, v4

    if-ge v1, v4, :cond_3

    const-string v4, "\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lijs;->n:[Ljava/lang/Enum;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lijs;->a:[J

    aget-wide v5, v4, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lijs;->a:[J

    aget-wide v5, v4, v1

    cmp-long v4, v5, v7

    if-ltz v4, :cond_2

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lijs;->a:[J

    aget-wide v5, v4, v1

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Lmip;->eb(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
