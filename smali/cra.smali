.class public final Lcra;
.super Lcro;

# interfaces
.implements Lihv;


# instance fields
.field public final a:Lihu;

.field public final b:Lihw;

.field public final c:Lihw;

.field public final d:Lihw;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Lddf;Ljlb;Ljfn;Ljjp;Lcsb;Lojc;Lgtg;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcro;-><init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Lddf;Ljlb;Ljfn;Ljjp;Lcsb;Lojc;Lgtg;)V

    new-instance p1, Lcqx;

    invoke-direct {p1, p0}, Lcqx;-><init>(Lcra;)V

    new-instance p2, Lihw;

    const/4 p3, 0x0

    new-array p4, p3, [Lihs;

    invoke-direct {p2, p1, p4}, Lihw;-><init>(Lihs;[Lihs;)V

    iput-object p2, p0, Lcra;->b:Lihw;

    new-instance p1, Lcqy;

    invoke-direct {p1, p0}, Lcqy;-><init>(Lcra;)V

    new-instance p2, Lihw;

    new-array p4, p3, [Lihs;

    invoke-direct {p2, p1, p4}, Lihw;-><init>(Lihs;[Lihs;)V

    iput-object p2, p0, Lcra;->c:Lihw;

    new-instance p1, Lcqz;

    invoke-direct {p1, p0}, Lcqz;-><init>(Lcra;)V

    new-instance p4, Lihw;

    new-array p5, p3, [Lihs;

    invoke-direct {p4, p1, p5}, Lihw;-><init>(Lihs;[Lihs;)V

    iput-object p4, p0, Lcra;->d:Lihw;

    new-instance p1, Lihu;

    invoke-direct {p1, p2, p3}, Lihu;-><init>(Lihw;Z)V

    iput-object p1, p0, Lcra;->a:Lihu;

    invoke-virtual {p1}, Lihu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcra;->a:Lihu;

    invoke-virtual {v0}, Lihu;->a()Lihw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcra;->a:Lihu;

    invoke-virtual {v0}, Lihu;->a()Lihw;

    move-result-object v0

    iget-object v0, v0, Lihw;->a:Lihs;

    check-cast v0, Lcsa;

    invoke-virtual {v0}, Lcsa;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcra;->a:Lihu;

    invoke-virtual {v0}, Lihu;->a()Lihw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcra;->a:Lihu;

    invoke-virtual {v0}, Lihu;->a()Lihw;

    move-result-object v0

    iget-object v0, v0, Lihw;->a:Lihs;

    check-cast v0, Lcsa;

    invoke-virtual {v0}, Lcsa;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcra;->a:Lihu;

    invoke-virtual {v0}, Lihu;->a()Lihw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcra;->a:Lihu;

    invoke-virtual {v0}, Lihu;->a()Lihw;

    move-result-object v0

    iget-object v0, v0, Lihw;->a:Lihs;

    check-cast v0, Lcsa;

    invoke-virtual {v0}, Lcsa;->c()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcra;->a:Lihu;

    invoke-virtual {v0}, Lihu;->a()Lihw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcra;->a:Lihu;

    invoke-virtual {v0}, Lihu;->a()Lihw;

    move-result-object v0

    iget-object v0, v0, Lihw;->a:Lihs;

    check-cast v0, Lcsa;

    invoke-virtual {v0}, Lcsa;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcra;->a:Lihu;

    invoke-virtual {v0}, Lihu;->b()V

    iget-object v0, p0, Lcra;->b:Lihw;

    invoke-virtual {v0}, Lihw;->e()V

    iget-object v0, p0, Lcra;->c:Lihw;

    invoke-virtual {v0}, Lihw;->e()V

    iget-object v0, p0, Lcra;->d:Lihw;

    invoke-virtual {v0}, Lihw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcra;->a:Lihu;

    invoke-virtual {v0}, Lihu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcra;->a:Lihu;

    invoke-virtual {v0}, Lihu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Lmip;->eQ(Lihv;)V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcra;->a:Lihu;

    invoke-virtual {v0}, Lihu;->a()Lihw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcra;->a:Lihu;

    invoke-virtual {v0}, Lihu;->a()Lihw;

    move-result-object v0

    iget-object v0, v0, Lihw;->a:Lihs;

    check-cast v0, Lcsa;

    invoke-virtual {v0}, Lcsa;->i()V

    return-void
.end method
