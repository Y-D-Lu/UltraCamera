.class public final Lexn;
.super Ljava/lang/Object;

# interfaces
.implements Lpys;


# instance fields
.field private final a:Lqkg;

.field private final b:Lqkg;

.field private final c:Lqkg;

.field private final d:Lqkg;

.field private final e:Lqkg;


# direct methods
.method public constructor <init>(Lqkg;Lqkg;Lqkg;Lqkg;Lqkg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexn;->a:Lqkg;

    iput-object p2, p0, Lexn;->b:Lqkg;

    iput-object p3, p0, Lexn;->c:Lqkg;

    iput-object p4, p0, Lexn;->d:Lqkg;

    iput-object p5, p0, Lexn;->e:Lqkg;

    return-void
.end method


# virtual methods
.method public final a()Lexm;
    .locals 7

    iget-object v0, p0, Lexn;->a:Lqkg;

    invoke-interface {v0}, Lqkg;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lfnv;

    iget-object v0, p0, Lexn;->b:Lqkg;

    invoke-static {v0}, Lpyr;->a(Lqkg;)Lpyn;

    move-result-object v3

    iget-object v0, p0, Lexn;->c:Lqkg;

    invoke-static {v0}, Lpyr;->a(Lqkg;)Lpyn;

    move-result-object v4

    iget-object v0, p0, Lexn;->d:Lqkg;

    invoke-interface {v0}, Lqkg;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Livj;

    iget-object v0, p0, Lexn;->e:Lqkg;

    check-cast v0, Lemf;

    invoke-virtual {v0}, Lemf;->a()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v0, Lexm;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lexm;-><init>(Lfnv;Lpyn;Lpyn;Livj;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lexn;->a()Lexm;

    move-result-object v0

    return-object v0
.end method
