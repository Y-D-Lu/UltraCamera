.class final Ldjr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldjs;


# direct methods
.method public constructor <init>(Ldjs;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldjr;->b:Ldjs;

    iput-object p2, p0, Ldjr;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ldjr;->b:Ldjs;

    iget-object v0, v0, Ldjs;->a:Landroid/content/Context;

    iget-object v1, p0, Ldjr;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
