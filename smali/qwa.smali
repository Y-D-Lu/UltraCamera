.class public final Lqwa;
.super Ljava/lang/Thread;


# instance fields
.field public final a:Lqwk;

.field public final b:Lqpc;

.field public c:Z

.field final synthetic d:Lqwb;

.field public e:I

.field private f:J

.field private g:J

.field private h:I

.field public volatile indexInArray:I

.field public volatile nextParkedWorker:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lqwb;I)V
    .locals 0

    iput-object p1, p0, Lqwa;->d:Lqwb;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lqwa;->setDaemon(Z)V

    new-instance p1, Lqwk;

    invoke-direct {p1}, Lqwk;-><init>()V

    iput-object p1, p0, Lqwa;->a:Lqwk;

    const/4 p1, 0x4

    iput p1, p0, Lqwa;->e:I

    const/4 p1, 0x0

    invoke-static {p1}, Lqnt;->g(I)Lqpc;

    move-result-object p1

    iput-object p1, p0, Lqwa;->b:Lqpc;

    sget-object p1, Lqwb;->a:Lqvr;

    iput-object p1, p0, Lqwa;->nextParkedWorker:Ljava/lang/Object;

    sget-object p1, Lqny;->b:Lqny;

    sget-object p1, Lqny;->b:Lqny;

    check-cast p1, Lqnu;

    iget-object p1, p1, Lqnu;->a:Lqnv;

    invoke-virtual {p1}, Lqnv;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    iput p1, p0, Lqwa;->h:I

    invoke-virtual {p0, p2}, Lqwa;->c(I)V

    return-void
.end method

.method private final e()Lqwg;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lqwa;->a(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lqwa;->d:Lqwb;

    iget-object v0, v0, Lqwb;->i:Lqvi;

    invoke-virtual {v0}, Lqvi;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqwg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqwa;->d:Lqwb;

    iget-object v0, v0, Lqwb;->j:Lqvi;

    invoke-virtual {v0}, Lqvi;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqwg;

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lqwa;->d:Lqwb;

    iget-object v0, v0, Lqwb;->j:Lqvi;

    invoke-virtual {v0}, Lqvi;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqwg;

    if-nez v0, :cond_2

    iget-object v0, p0, Lqwa;->d:Lqwb;

    iget-object v0, v0, Lqwb;->i:Lqvi;

    invoke-virtual {v0}, Lqvi;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqwg;

    :cond_2
    return-object v0
.end method

.method private final f(Z)Lqwg;
    .locals 16

    move-object/from16 v0, p0

    sget-boolean v1, Lqql;->a:Z

    iget-object v1, v0, Lqwa;->d:Lqwb;

    iget-object v1, v1, Lqwb;->h:Lqpd;

    iget-wide v1, v1, Lqpd;->b:J

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, v2}, Lqwa;->a(I)I

    move-result v3

    iget-object v4, v0, Lqwa;->d:Lqwb;

    const/4 v8, 0x0

    const-wide v9, 0x7fffffffffffffffL

    :goto_0
    if-ge v8, v2, :cond_a

    const/4 v13, 0x1

    add-int/2addr v3, v13

    if-le v3, v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    iget-object v14, v4, Lqwb;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v14, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lqwa;

    if-eqz v14, :cond_9

    if-eq v14, v0, :cond_9

    if-eqz p1, :cond_5

    iget-object v5, v0, Lqwa;->a:Lqwk;

    iget-object v6, v14, Lqwa;->a:Lqwk;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v6, Lqwk;->d:Lqpc;

    iget v14, v14, Lqpc;->b:I

    iget-object v11, v6, Lqwk;->c:Lqpc;

    iget v11, v11, Lqpc;->b:I

    iget-object v12, v6, Lqwk;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    :goto_1
    if-eq v14, v11, :cond_4

    and-int/lit8 v15, v14, 0x7f

    iget-object v7, v6, Lqwk;->e:Lqpc;

    iget v7, v7, Lqpc;->b:I

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v12, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lqwg;

    if-eqz v7, :cond_3

    iget-object v1, v7, Lqwg;->h:Lqwh;

    invoke-interface {v1}, Lqwh;->f()I

    move-result v1

    if-ne v1, v13, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v12, v15, v7, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    iget-object v1, v6, Lqwk;->e:Lqpc;

    invoke-virtual {v1}, Lqpc;->a()I

    invoke-static {v5, v7}, Lqwk;->f(Lqwk;Lqwg;)V

    const-wide/16 v5, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v5, v6, v13}, Lqwk;->b(Lqwk;Z)J

    move-result-wide v5

    :goto_3
    move-wide v11, v5

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    iget-object v1, v0, Lqwa;->a:Lqwk;

    iget-object v5, v14, Lqwa;->a:Lqwk;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lqwk;->e()Lqwg;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {v1, v6}, Lqwk;->f(Lqwk;Lqwg;)V

    const/4 v6, 0x0

    const-wide/16 v11, -0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lqwk;->b(Lqwk;Z)J

    move-result-wide v11

    :goto_4
    const-wide/16 v13, -0x1

    cmp-long v1, v11, v13

    if-nez v1, :cond_7

    iget-object v1, v0, Lqwa;->a:Lqwk;

    invoke-virtual {v1}, Lqwk;->d()Lqwg;

    move-result-object v1

    return-object v1

    :cond_7
    const-wide/16 v13, 0x0

    cmp-long v1, v11, v13

    if-lez v1, :cond_8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    goto :goto_5

    :cond_8
    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_a
    const-wide/16 v13, 0x0

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v3, v9, v1

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    move-wide v9, v13

    :goto_6
    iput-wide v9, v0, Lqwa;->g:J

    const/4 v1, 0x0

    return-object v1
.end method

.method private final g()Z
    .locals 2

    iget-object v0, p0, Lqwa;->nextParkedWorker:Ljava/lang/Object;

    sget-object v1, Lqwb;->a:Lqvr;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    iget v0, p0, Lqwa;->h:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lqwa;->h:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    return p1

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p1

    return v0
.end method

.method public final b(Z)Lqwg;
    .locals 8

    iget v0, p0, Lqwa;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lqwa;->d:Lqwb;

    iget-object v2, v0, Lqwb;->h:Lqpd;

    :cond_1
    iget-wide v3, v2, Lqpd;->b:J

    const-wide v5, 0x7ffffc0000000000L

    and-long/2addr v5, v3

    const/16 v7, 0x2a

    shr-long/2addr v5, v7

    long-to-int v6, v5

    if-nez v6, :cond_5

    if-eqz p1, :cond_2

    iget-object p1, p0, Lqwa;->a:Lqwk;

    invoke-virtual {p1}, Lqwk;->d()Lqwg;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lqwa;->d:Lqwb;

    iget-object p1, p1, Lqwb;->j:Lqvi;

    invoke-virtual {p1}, Lqvi;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqwg;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lqwa;->d:Lqwb;

    iget-object p1, p1, Lqwb;->j:Lqvi;

    invoke-virtual {p1}, Lqvi;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqwg;

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    invoke-direct {p0, v1}, Lqwa;->f(Z)Lqwg;

    move-result-object p1

    :cond_4
    return-object p1

    :cond_5
    iget-object v5, v0, Lqwb;->h:Lqpd;

    const-wide v6, -0x40000000000L

    add-long/2addr v6, v3

    invoke-virtual {v5, v3, v4, v6, v7}, Lqpd;->c(JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v1, p0, Lqwa;->e:I

    :goto_1
    if-eqz p1, :cond_8

    iget-object p1, p0, Lqwa;->d:Lqwb;

    iget p1, p1, Lqwb;->b:I

    add-int/2addr p1, p1

    invoke-virtual {p0, p1}, Lqwa;->a(I)I

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lqwa;->e()Lqwg;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lqwa;->a:Lqwk;

    invoke-virtual {v0}, Lqwk;->d()Lqwg;

    move-result-object v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lqwa;->e()Lqwg;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_7
    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lqwa;->e()Lqwg;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_2
    return-object v0

    :cond_9
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lqwa;->f(Z)Lqwg;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lqwa;->d:Lqwb;

    iget-object v1, v1, Lqwb;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqwa;->setName(Ljava/lang/String;)V

    iput p1, p0, Lqwa;->indexInArray:I

    return-void
.end method

.method public final d(I)Z
    .locals 5

    iget v0, p0, Lqwa;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lqwa;->d:Lqwb;

    iget-object v2, v2, Lqwb;->h:Lqpd;

    const-wide v3, 0x40000000000L

    invoke-virtual {v2, v3, v4}, Lqpd;->a(J)J

    :cond_1
    if-eq v0, p1, :cond_2

    iput p1, p0, Lqwa;->e:I

    :cond_2
    return v1
.end method

.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v1, Lqwa;->d:Lqwb;

    invoke-virtual {v4}, Lqwb;->d()Z

    move-result v4

    const/4 v5, 0x5

    if-nez v4, :cond_13

    iget v4, v1, Lqwa;->e:I

    if-eq v4, v5, :cond_13

    iget-boolean v4, v1, Lqwa;->c:Z

    invoke-virtual {v1, v4}, Lqwa;->b(Z)Lqwg;

    move-result-object v4

    const-wide/32 v6, -0x200000

    const/4 v8, 0x3

    const-wide/16 v9, 0x0

    if-eqz v4, :cond_5

    iput-wide v9, v1, Lqwa;->g:J

    iget-object v3, v4, Lqwg;->h:Lqwh;

    invoke-interface {v3}, Lqwh;->f()I

    move-result v3

    iput-wide v9, v1, Lqwa;->f:J

    iget v9, v1, Lqwa;->e:I

    const/4 v10, 0x2

    if-ne v9, v8, :cond_0

    sget-boolean v8, Lqql;->a:Z

    iput v10, v1, Lqwa;->e:I

    :cond_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v10}, Lqwa;->d(I)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v1, Lqwa;->d:Lqwb;

    invoke-virtual {v8}, Lqwb;->c()V

    :cond_2
    :goto_1
    invoke-static {v4}, Lqwb;->f(Lqwg;)V

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, v1, Lqwa;->d:Lqwb;

    iget-object v3, v3, Lqwb;->h:Lqpd;

    invoke-virtual {v3, v6, v7}, Lqpd;->a(J)J

    iget v3, v1, Lqwa;->e:I

    if-eq v3, v5, :cond_4

    sget-boolean v3, Lqql;->a:Z

    const/4 v3, 0x4

    iput v3, v1, Lqwa;->e:I

    goto :goto_2

    :cond_4
    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    iput-boolean v2, v1, Lqwa;->c:Z

    iget-wide v11, v1, Lqwa;->g:J

    cmp-long v4, v11, v9

    if-eqz v4, :cond_7

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v8}, Lqwa;->d(I)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v3, v1, Lqwa;->g:J

    invoke-static {v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v9, v1, Lqwa;->g:J

    const/4 v3, 0x0

    goto :goto_0

    :cond_7
    invoke-direct/range {p0 .. p0}, Lqwa;->g()Z

    move-result v4

    const-wide/32 v11, 0x1fffff

    if-nez v4, :cond_a

    iget-object v4, v1, Lqwa;->d:Lqwb;

    iget-object v5, v1, Lqwa;->nextParkedWorker:Ljava/lang/Object;

    sget-object v8, Lqwb;->a:Lqvr;

    if-ne v5, v8, :cond_9

    iget-object v5, v4, Lqwb;->f:Lqpd;

    :goto_3
    iget-wide v8, v5, Lqpd;->b:J

    iget v10, v1, Lqwa;->indexInArray:I

    sget-boolean v13, Lqql;->a:Z

    iget-object v13, v4, Lqwb;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-long v14, v8, v11

    long-to-int v15, v14

    invoke-virtual {v13, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lqwa;->nextParkedWorker:Ljava/lang/Object;

    iget-object v13, v4, Lqwb;->f:Lqpd;

    const-wide/32 v14, 0x200000

    add-long/2addr v14, v8

    and-long/2addr v14, v6

    int-to-long v6, v10

    or-long/2addr v6, v14

    invoke-virtual {v13, v8, v9, v6, v7}, Lqpd;->c(JJ)Z

    move-result v6

    if-eqz v6, :cond_8

    move v15, v3

    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_8
    const-wide/32 v6, -0x200000

    goto :goto_3

    :cond_9
    move v15, v3

    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_a
    sget-boolean v4, Lqql;->a:Z

    iget-object v4, v1, Lqwa;->b:Lqpc;

    sget v6, Lqpf;->a:I

    const/4 v6, -0x1

    iput v6, v4, Lqpc;->b:I

    :goto_4
    invoke-direct/range {p0 .. p0}, Lqwa;->g()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v1, Lqwa;->b:Lqpc;

    iget v4, v4, Lqpc;->b:I

    if-ne v4, v6, :cond_12

    iget-object v4, v1, Lqwa;->d:Lqwb;

    invoke-virtual {v4}, Lqwb;->d()Z

    move-result v4

    if-nez v4, :cond_11

    iget v4, v1, Lqwa;->e:I

    if-eq v4, v5, :cond_11

    invoke-virtual {v1, v8}, Lqwa;->d(I)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v13, v1, Lqwa;->f:J

    cmp-long v4, v13, v9

    if-nez v4, :cond_b

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    iget-object v4, v1, Lqwa;->d:Lqwb;

    move v15, v3

    iget-wide v2, v4, Lqwb;->d:J

    add-long/2addr v13, v2

    iput-wide v13, v1, Lqwa;->f:J

    goto :goto_5

    :cond_b
    move v15, v3

    :goto_5
    iget-object v2, v1, Lqwa;->d:Lqwb;

    iget-wide v2, v2, Lqwb;->d:J

    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v13, v1, Lqwa;->f:J

    sub-long/2addr v2, v13

    cmp-long v4, v2, v9

    if-ltz v4, :cond_10

    iput-wide v9, v1, Lqwa;->f:J

    iget-object v2, v1, Lqwa;->d:Lqwb;

    iget-object v3, v2, Lqwb;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v2}, Lqwb;->d()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_c

    monitor-exit v3

    move v3, v15

    const/4 v2, 0x0

    goto :goto_4

    :cond_c
    :try_start_1
    iget-object v4, v2, Lqwb;->h:Lqpd;

    iget-wide v13, v4, Lqpd;->b:J

    and-long/2addr v13, v11

    long-to-int v4, v13

    iget v13, v2, Lqwb;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v4, v13, :cond_d

    monitor-exit v3

    move v3, v15

    const/4 v2, 0x0

    goto :goto_4

    :cond_d
    :try_start_2
    iget-object v4, v1, Lqwa;->b:Lqpc;

    invoke-virtual {v4, v6, v0}, Lqpc;->d(II)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_e

    monitor-exit v3

    move v3, v15

    const/4 v2, 0x0

    goto :goto_4

    :cond_e
    :try_start_3
    iget v4, v1, Lqwa;->indexInArray:I

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lqwa;->c(I)V

    invoke-virtual {v2, v1, v4, v7}, Lqwb;->b(Lqwa;II)V

    iget-object v13, v2, Lqwb;->h:Lqpd;

    sget-object v14, Lqpd;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v13

    and-long/2addr v13, v11

    long-to-int v14, v13

    if-eq v14, v4, :cond_f

    iget-object v13, v2, Lqwb;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v13, Lqwa;

    iget-object v0, v2, Lqwb;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v4, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    invoke-virtual {v13, v4}, Lqwa;->c(I)V

    invoke-virtual {v2, v13, v14, v4}, Lqwb;->b(Lqwa;II)V

    :cond_f
    iget-object v0, v2, Lqwb;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v14, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    iput v5, v1, Lqwa;->e:I

    move v3, v15

    const/4 v0, 0x1

    const/4 v2, 0x0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_10
    const/4 v7, 0x0

    move v3, v15

    const/4 v0, 0x1

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_11
    move v15, v3

    const/4 v7, 0x0

    goto :goto_6

    :cond_12
    move v15, v3

    const/4 v7, 0x0

    :goto_6
    move v3, v15

    const/4 v0, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v1, v5}, Lqwa;->d(I)Z

    return-void
.end method
