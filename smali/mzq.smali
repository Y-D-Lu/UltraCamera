.class final Lmzq;
.super Ljava/lang/Object;

# interfaces
.implements Lmwa;


# instance fields
.field final synthetic a:Lphw;

.field final synthetic b:Lmzu;


# direct methods
.method public constructor <init>(Lmzu;Lphw;)V
    .locals 0

    iput-object p1, p0, Lmzq;->b:Lmzu;

    iput-object p2, p0, Lmzq;->a:Lphw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/app/Activity;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lmzq;->b:Lmzu;

    iget-object v0, v0, Lmzu;->a:Lmzt;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lmzt;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lmzq;->b:Lmzu;

    invoke-virtual {v0}, Lmzu;->a()V

    iget-object v0, p0, Lmzq;->b:Lmzu;

    iget-object v1, p0, Lmzq;->a:Lphw;

    new-instance v2, Lmzp;

    invoke-direct {v2, p0, p1}, Lmzp;-><init>(Lmzq;Ljava/lang/String;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-interface {v1, v2, v3, v4, p1}, Lphw;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lpia;

    move-result-object p1

    iput-object p1, v0, Lmzu;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
