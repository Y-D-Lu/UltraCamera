.class public final synthetic Ljym;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljyq;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Ljyq;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljym;->a:Ljyq;

    iput-object p2, p0, Ljym;->b:Ljava/lang/String;

    iput-wide p3, p0, Ljym;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Ljym;->a:Ljyq;

    iget-object v1, p0, Ljym;->b:Ljava/lang/String;

    iget-wide v2, p0, Ljym;->c:J

    iget-object v0, v0, Ljyq;->j:Ljxz;

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    sget-object v4, Ljxq;->b:Ljxq;

    invoke-virtual {v4}, Lppd;->m()Lpoy;

    move-result-object v4

    iget-boolean v5, v4, Lpoy;->c:Z

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lpoy;->m()V

    const/4 v5, 0x0

    iput-boolean v5, v4, Lpoy;->c:Z

    :cond_0
    iget-object v5, v4, Lpoy;->b:Lppd;

    check-cast v5, Ljxq;

    iput-wide v2, v5, Ljxq;->a:J

    invoke-virtual {v4}, Lpoy;->h()Lppd;

    move-result-object v2

    check-cast v2, Ljxq;

    invoke-virtual {v2}, Lpnm;->g()[B

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljxz;->d(Ljava/lang/String;[B)V

    return-void
.end method
