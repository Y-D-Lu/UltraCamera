.class public final Lmef;
.super Ljava/lang/Object;

# interfaces
.implements Lpys;


# instance fields
.field private final a:Lqkg;


# direct methods
.method public constructor <init>(Lqkg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmef;->a:Lqkg;

    return-void
.end method


# virtual methods
.method public final a()Lkhx;
    .locals 3

    iget-object v0, p0, Lmef;->a:Lqkg;

    check-cast v0, Lpyt;

    iget-object v0, v0, Lpyt;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lkhx;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lkhx;-><init>(Landroid/content/Context;[C)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmef;->a()Lkhx;

    move-result-object v0

    return-object v0
.end method
