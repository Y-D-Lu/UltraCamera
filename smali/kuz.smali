.class public final Lkuz;
.super Ljava/lang/Object;

# interfaces
.implements Lkvl;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lkvq;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lkvq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkuz;->a:Ljava/lang/Object;

    iput-object p1, p0, Lkuz;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lkuz;->b:Lkvq;

    return-void
.end method


# virtual methods
.method public final a(Lkvk;)V
    .locals 1

    check-cast p1, Lkvp;

    iget-boolean p1, p1, Lkvp;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lkuz;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lkuz;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Lkuy;

    invoke-direct {v0, p0}, Lkuy;-><init>(Lkuz;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method
