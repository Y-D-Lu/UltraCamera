.class public final Lfbg;
.super Ljava/lang/Object;

# interfaces
.implements Lpys;


# instance fields
.field private final a:Lqkg;

.field private final b:Lqkg;


# direct methods
.method public constructor <init>(Lqkg;Lqkg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfbg;->a:Lqkg;

    iput-object p2, p0, Lfbg;->b:Lqkg;

    return-void
.end method


# virtual methods
.method public final a()Lfbf;
    .locals 3

    iget-object v0, p0, Lfbg;->a:Lqkg;

    check-cast v0, Lpyt;

    iget-object v0, v0, Lpyt;->a:Ljava/lang/Object;

    check-cast v0, Lfbe;

    iget-object v1, p0, Lfbg;->b:Lqkg;

    invoke-interface {v1}, Lqkg;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lljf;

    new-instance v2, Lfbf;

    invoke-direct {v2, v0, v1}, Lfbf;-><init>(Lfbe;Lljf;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfbg;->a()Lfbf;

    move-result-object v0

    return-object v0
.end method
