.class final Ldnf;
.super Ldmx;


# instance fields
.field final synthetic b:Ldni;


# direct methods
.method public constructor <init>(Ldni;)V
    .locals 0

    iput-object p1, p0, Ldnf;->b:Ldni;

    invoke-direct {p0, p1}, Ldmx;-><init>(Ldna;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Ldnf;->b:Ldni;

    iget-object v0, v0, Ldni;->o:Lihu;

    invoke-virtual {v0}, Lihu;->e()V

    iget-object v0, p0, Ldnf;->b:Ldni;

    iget-object v1, v0, Ldni;->o:Lihu;

    iget-object v0, v0, Ldni;->q:Lihw;

    invoke-virtual {v1, v0}, Lihu;->g(Lihw;)V

    return-void
.end method

.method public final d(FLdmg;)V
    .locals 1

    iget-object v0, p0, Ldnf;->b:Ldni;

    iget-object v0, v0, Ldni;->o:Lihu;

    invoke-virtual {v0}, Lihu;->e()V

    invoke-super {p0, p1, p2}, Ldmx;->d(FLdmg;)V

    iget-object p1, p0, Ldnf;->b:Ldni;

    iget-object p2, p1, Ldni;->o:Lihu;

    iget-object p1, p1, Ldni;->r:Lihw;

    invoke-virtual {p2, p1}, Lihu;->g(Lihw;)V

    return-void
.end method
