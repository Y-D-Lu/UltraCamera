.class final Lkaa;
.super Lkca;


# instance fields
.field final synthetic a:Lkab;


# direct methods
.method public constructor <init>(Lkab;)V
    .locals 0

    iput-object p1, p0, Lkaa;->a:Lkab;

    invoke-direct {p0, p1}, Lkca;-><init>(Lkcb;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lkaa;->a:Lkab;

    iget-object v0, v0, Lkab;->a:Lihu;

    invoke-virtual {v0}, Lihu;->e()V

    iget-object v0, p0, Lkaa;->a:Lkab;

    iget-object v1, v0, Lkab;->a:Lihu;

    iget-object v0, v0, Lkab;->b:Lihw;

    invoke-virtual {v1, v0}, Lihu;->g(Lihw;)V

    return-void
.end method
