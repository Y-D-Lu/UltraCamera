.class final Lhhc;
.super Ljava/lang/Object;

# interfaces
.implements Llht;


# instance fields
.field final synthetic a:Lhhe;


# direct methods
.method public constructor <init>(Lhhe;)V
    .locals 0

    iput-object p1, p0, Lhhc;->a:Lhhe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lhhn;

    iget-object v0, p0, Lhhc;->a:Lhhe;

    iget-object v1, v0, Lhhe;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lhhe;->e:Z

    iget-object v2, v0, Lhhe;->a:Llce;

    iget-object v3, v2, Llce;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v0, Lhhe;->b:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Llce;->fB(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lhhe;->c()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, p0}, Lhhn;->e(Llht;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
