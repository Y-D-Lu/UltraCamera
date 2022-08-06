.class public Lcom/agc/ResolutionSetting;
.super Lhvg;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhvg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Llvs;Llwd;)Llig;
    .locals 8

    sget-object v0, Llwd;->b:Llwd;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lhvg;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Llwd;->a:Llwd;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lhvg;->e:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    iget-object v0, p0, Lhvg;->b:Lhub;

    const-string v1, "pref_camera_resolution"

    invoke-virtual {v0, v1}, Lhub;->n(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    iget-object v4, p0, Lhvg;->b:Lhub;

    invoke-virtual {v4, v1}, Lhub;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmip;->br(Ljava/lang/String;)Llig;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/util/HashSet;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v2

    invoke-static {v7}, Lobr;->aj([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v4, v6}, Lmip;->eV(Llig;Ljava/util/Set;)Z

    :cond_3
    :goto_1
    move v5, v3

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    move v5, v2

    :goto_2
    iget-object v6, p0, Lhvg;->f:Llwf;

    iget-object v7, p0, Lhvg;->c:Lddf;

    invoke-static {p1, v6, v7}, Lfvq;->A(Llvs;Llvq;Lddf;)Lghx;

    move-result-object p1

    const/16 v6, 0x100

    invoke-virtual {p1, v6}, Lghx;->x(I)Ljava/util/List;

    move-result-object p1

    if-eqz v4, :cond_6

    iget v6, v4, Llig;->a:I

    if-lez v6, :cond_6

    iget v6, v4, Llig;->b:I

    if-lez v6, :cond_6

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    if-nez v5, :cond_7

    if-nez v2, :cond_8

    :cond_7
    invoke-static {p1, p2}, Lmip;->eU(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lmip;->bs(Ljava/util/List;)Llig;

    move-result-object v4

    iget-object p1, p0, Lhvg;->b:Lhub;

    invoke-static {v4}, Lmip;->bt(Llig;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lhub;->k(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lhvg;->a:Louj;

    invoke-virtual {p1}, Louj;->c()Lova;

    move-result-object p1

    const-string p2, "Picture size setting is not set. Selecting fallback: %s"

    invoke-static {p2}, Lcom/agc/Log;->w(Ljava/lang/Object;)I

    check-cast p1, Loug;

    const/16 v0, 0xa5e

    invoke-interface {p1, v0}, Loug;->G(I)Lova;

    move-result-object p1

    invoke-interface {p1, p2, v4}, Lova;->r(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v4
.end method
