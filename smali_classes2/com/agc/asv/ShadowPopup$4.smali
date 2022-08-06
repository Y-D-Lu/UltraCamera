.class public Lcom/agc/asv/ShadowPopup$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/agc/asv/ShadowPopup$4;->this$0:Lcom/agc/asv/ShadowPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/asv/ShadowPopup$4;->this$0:Lcom/agc/asv/ShadowPopup;

    invoke-virtual {p1}, Lcom/agc/asv/ShadowPopup;->dismiss()V

    return-void
.end method
