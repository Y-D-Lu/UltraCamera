.class public final Lbfe;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lbmb;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbfe;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lbfc;

    invoke-direct {p1}, Lbfc;-><init>()V

    iput-object p1, p0, Lbfe;->a:Lbmb;

    return-void
.end method
