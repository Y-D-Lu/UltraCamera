.class public Lcom/agc/asv/ShadowPopup$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/asv/ShadowRulerView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/asv/ShadowPopup;->setContentView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/agc/asv/ShadowPopup;


# direct methods
.method public constructor <init>(Lcom/agc/asv/ShadowPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/ShadowPopup$3;->this$0:Lcom/agc/asv/ShadowPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(F)V
    .locals 1

    iget-object v0, p0, Lcom/agc/asv/ShadowPopup$3;->this$0:Lcom/agc/asv/ShadowPopup;

    invoke-static {v0}, Lcom/agc/asv/ShadowPopup;->access$100(Lcom/agc/asv/ShadowPopup;)Lcom/agc/asv/ShadowAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/asv/ShadowPopup$3;->this$0:Lcom/agc/asv/ShadowPopup;

    invoke-static {v0}, Lcom/agc/asv/ShadowPopup;->access$100(Lcom/agc/asv/ShadowPopup;)Lcom/agc/asv/ShadowAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/asv/ShadowAdapter;->onValueChange(F)V

    :cond_0
    return-void
.end method
