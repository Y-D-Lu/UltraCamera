.class public Lcom/agc/menu/SectorMenuButton$4;
.super Lcom/agc/menu/SectorMenuButton$SimpleAnimatorListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/menu/SectorMenuButton;->initAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/agc/menu/SectorMenuButton;


# direct methods
.method public constructor <init>(Lcom/agc/menu/SectorMenuButton;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton$4;->this$0:Lcom/agc/menu/SectorMenuButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/agc/menu/SectorMenuButton$SimpleAnimatorListener;-><init>(Lcom/agc/menu/SectorMenuButton$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$4;->this$0:Lcom/agc/menu/SectorMenuButton;

    invoke-static {p1}, Lcom/agc/menu/SectorMenuButton;->access$600(Lcom/agc/menu/SectorMenuButton;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$4;->this$0:Lcom/agc/menu/SectorMenuButton;

    invoke-static {p1}, Lcom/agc/menu/SectorMenuButton;->access$1200(Lcom/agc/menu/SectorMenuButton;)I

    move-result p1

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton$4;->this$0:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v0}, Lcom/agc/menu/SectorMenuButton;->access$1300(Lcom/agc/menu/SectorMenuButton;)I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$4;->this$0:Lcom/agc/menu/SectorMenuButton;

    invoke-static {p1}, Lcom/agc/menu/SectorMenuButton;->access$1100(Lcom/agc/menu/SectorMenuButton;)V

    :cond_0
    return-void
.end method
