.class public final Lgcd;
.super Ljava/lang/Object;

# interfaces
.implements Lpys;


# instance fields
.field private final a:Lqkg;


# direct methods
.method public constructor <init>(Lqkg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgcd;->a:Lqkg;

    return-void
.end method

.method public static a(Lqkg;)Lgcd;
    .locals 1

    new-instance v0, Lgcd;

    invoke-direct {v0, p0}, Lgcd;-><init>(Lqkg;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lgff;
    .locals 1

    iget-object v0, p0, Lgcd;->a:Lqkg;

    invoke-interface {v0}, Lqkg;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgff;

    invoke-static {v0}, Lqmd;->ae(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgcd;->b()Lgff;

    move-result-object v0

    return-object v0
.end method
