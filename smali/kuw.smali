.class final Lkuw;
.super Ljava/lang/Object;

# interfaces
.implements Lkvl;


# instance fields
.field public final a:Lkuu;

.field public final b:Lkvp;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lkuu;Lkvp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkuw;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lkuw;->a:Lkuu;

    iput-object p3, p0, Lkuw;->b:Lkvp;

    return-void
.end method


# virtual methods
.method public final a(Lkvk;)V
    .locals 2

    iget-object v0, p0, Lkuw;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lkuv;

    invoke-direct {v1, p0, p1}, Lkuv;-><init>(Lkuw;Lkvk;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
