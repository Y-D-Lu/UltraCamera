.class final Lbwg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lbwh;


# direct methods
.method public constructor <init>(Lbwh;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lbwg;->b:Lbwh;

    iput-object p2, p0, Lbwg;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbwg;->b:Lbwh;

    iget-object v0, v0, Lbwh;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lbwg;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
