.class final Ljso;
.super Ljava/lang/Object;

# interfaces
.implements Lphh;


# instance fields
.field final synthetic a:Ljsi;


# direct methods
.method public constructor <init>(Ljsi;)V
    .locals 0

    iput-object p1, p0, Ljso;->a:Ljsi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Ljso;->a:Ljsi;

    invoke-static {p1}, Lojc;->i(Ljava/lang/Object;)Lojc;

    invoke-interface {v0}, Ljsi;->a()V

    return-void
.end method
