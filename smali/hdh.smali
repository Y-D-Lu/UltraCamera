.class final Lhdh;
.super Lldl;


# direct methods
.method public constructor <init>(Llco;)V
    .locals 0

    invoke-direct {p0, p1}, Lldl;-><init>(Llco;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lgjk;

    sget-object v0, Lgjk;->b:Lgjk;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    sget-object v0, Lgjk;->d:Lgjk;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
