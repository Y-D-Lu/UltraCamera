.class public final Lqfn;
.super Lqbm;


# instance fields
.field final a:Lqbw;

.field final b:Lqco;


# direct methods
.method public constructor <init>(Lqbw;Lqco;)V
    .locals 0

    invoke-direct {p0}, Lqbm;-><init>()V

    iput-object p1, p0, Lqfn;->a:Lqbw;

    iput-object p2, p0, Lqfn;->b:Lqco;

    return-void
.end method


# virtual methods
.method protected final g(Lqbq;)V
    .locals 2

    new-instance v0, Lqfm;

    iget-object v1, p0, Lqfn;->b:Lqco;

    invoke-direct {v0, p1, v1}, Lqfm;-><init>(Lqbq;Lqco;)V

    invoke-interface {p1, v0}, Lqbq;->gR(Lqbz;)V

    iget-object p1, p0, Lqfn;->a:Lqbw;

    invoke-interface {p1, v0}, Lqbw;->n(Lqbv;)V

    return-void
.end method
