.class final Ljdn;
.super Ljed;


# instance fields
.field final synthetic a:Ljdq;


# direct methods
.method public constructor <init>(Ljdq;)V
    .locals 0

    iput-object p1, p0, Ljdn;->a:Ljdq;

    invoke-direct {p0, p1}, Ljed;-><init>(Ljeg;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ljdn;->a:Ljdq;

    iget-object v0, v0, Ljdq;->a:Lihu;

    invoke-virtual {v0}, Lihu;->e()V

    iget-object v0, p0, Ljdn;->a:Ljdq;

    iget-object v1, v0, Ljdq;->a:Lihu;

    iget-object v0, v0, Ljdq;->b:Lihw;

    invoke-virtual {v1, v0}, Lihu;->g(Lihw;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Ljdn;->a:Ljdq;

    iget-object v0, v0, Ljdq;->a:Lihu;

    invoke-virtual {v0}, Lihu;->e()V

    iget-object v0, p0, Ljdn;->a:Ljdq;

    iget-object v1, v0, Ljdq;->a:Lihu;

    iget-object v0, v0, Ljdq;->e:Lihw;

    invoke-virtual {v1, v0}, Lihu;->g(Lihw;)V

    return-void
.end method
