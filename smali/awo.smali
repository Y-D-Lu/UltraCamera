.class public final Lawo;
.super Ljava/lang/Object;

# interfaces
.implements Lawm;


# instance fields
.field public final a:Lawm;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lawm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lawo;->b:Landroid/os/Handler;

    iput-object p2, p0, Lawo;->a:Lawm;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lawo;->b:Landroid/os/Handler;

    new-instance v1, Lawn;

    invoke-direct {v1, p0}, Lawn;-><init>(Lawo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
