.class final Lmno;
.super Ljava/lang/Object;

# interfaces
.implements Lmnf;


# instance fields
.field final synthetic a:Lmoa;

.field final synthetic b:Lmtw;


# direct methods
.method public constructor <init>(Lmoa;Lmtw;)V
    .locals 0

    iput-object p1, p0, Lmno;->a:Lmoa;

    iput-object p2, p0, Lmno;->b:Lmtw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lmnb;
    .locals 2

    check-cast p1, Lmnc;

    iget-object v0, p0, Lmno;->b:Lmtw;

    invoke-virtual {v0}, Lmtw;->a()Lmne;

    move-result-object v0

    invoke-static {p1}, Lmip;->ah(Ljava/lang/Throwable;)Lmlu;

    move-result-object p1

    invoke-static {}, Lmip;->aj()Lmlu;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lmne;->c(Ljava/util/concurrent/Executor;Lmlu;Lmlu;)Lmnb;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lmno;->a:Lmoa;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmno;->b:Lmtw;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0xc

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "thenAlways["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
