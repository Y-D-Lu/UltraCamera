.class public final Lmud;
.super Ljava/lang/Object;

# interfaces
.implements Lpys;


# instance fields
.field private final a:Lqkg;


# direct methods
.method public constructor <init>(Lqkg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmud;->a:Lqkg;

    return-void
.end method


# virtual methods
.method public final a()Lmwo;
    .locals 2

    iget-object v0, p0, Lmud;->a:Lqkg;

    check-cast v0, Levv;

    invoke-virtual {v0}, Levv;->a()Lojc;

    move-result-object v0

    sget-object v1, Llyh;->f:Llyh;

    invoke-virtual {v0, v1}, Lojc;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqkg;

    invoke-interface {v0}, Lqkg;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmwo;

    invoke-static {v0}, Lqmd;->ae(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmud;->a()Lmwo;

    move-result-object v0

    return-object v0
.end method
