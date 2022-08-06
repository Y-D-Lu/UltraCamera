.class public Lcom/agc/asv/CameraSwitchButton$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/asv/CameraSwitchButton$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/agc/asv/CameraSwitchButton$1;


# direct methods
.method public constructor <init>(Lcom/agc/asv/CameraSwitchButton$1;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/CameraSwitchButton$1$1;->this$1:Lcom/agc/asv/CameraSwitchButton$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/asv/CameraMultipleModel;

    iget p4, p1, Lcom/agc/asv/CameraMultipleModel;->type:I

    const/4 p5, 0x1

    if-ne p4, p5, :cond_0

    iget-object p4, p0, Lcom/agc/asv/CameraSwitchButton$1$1;->this$1:Lcom/agc/asv/CameraSwitchButton$1;

    iget-object p4, p4, Lcom/agc/asv/CameraSwitchButton$1;->this$0:Lcom/agc/asv/CameraSwitchButton;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p1, Lcom/agc/asv/CameraMultipleModel;->drawableRes:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, p2, v0}, Lcom/agc/asv/CameraSwitchButton;->access$300(Lcom/agc/asv/CameraSwitchButton;Landroid/content/Context;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/agc/asv/CameraSwitchButton$1$1;->this$1:Lcom/agc/asv/CameraSwitchButton$1;

    iget-object p2, p2, Lcom/agc/asv/CameraSwitchButton$1;->this$0:Lcom/agc/asv/CameraSwitchButton;

    const-string p4, ""

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/agc/asv/CameraSwitchButton$1$1;->this$1:Lcom/agc/asv/CameraSwitchButton$1;

    iget-object p2, p2, Lcom/agc/asv/CameraSwitchButton$1;->this$0:Lcom/agc/asv/CameraSwitchButton;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/agc/asv/CameraSwitchButton$1$1;->this$1:Lcom/agc/asv/CameraSwitchButton$1;

    iget-object p2, p2, Lcom/agc/asv/CameraSwitchButton$1;->this$0:Lcom/agc/asv/CameraSwitchButton;

    iget-object p4, p1, Lcom/agc/asv/CameraMultipleModel;->text:Ljava/lang/String;

    :goto_0
    invoke-static {p2, p4}, Lcom/agc/asv/CameraSwitchButton;->access$402(Lcom/agc/asv/CameraSwitchButton;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/agc/asv/CameraSwitchButton$1$1;->this$1:Lcom/agc/asv/CameraSwitchButton$1;

    iget-object p2, p2, Lcom/agc/asv/CameraSwitchButton$1;->this$0:Lcom/agc/asv/CameraSwitchButton;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->invalidate()V

    iget-object p1, p1, Lcom/agc/asv/CameraMultipleModel;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/Fix/Lens;->getAuxKey(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/Fix/Lens;->setAuxKey(I)V

    iget-object p1, p0, Lcom/agc/asv/CameraSwitchButton$1$1;->this$1:Lcom/agc/asv/CameraSwitchButton$1;

    iget-object p1, p1, Lcom/agc/asv/CameraSwitchButton$1;->this$0:Lcom/agc/asv/CameraSwitchButton;

    invoke-static {p1}, Lcom/agc/asv/CameraSwitchButton;->access$200(Lcom/agc/asv/CameraSwitchButton;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p5

    if-ge p3, p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/AGC;->onRestart(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/agc/asv/CameraSwitchButton$1$1;->this$1:Lcom/agc/asv/CameraSwitchButton$1;

    iget-object p1, p1, Lcom/agc/asv/CameraSwitchButton$1;->this$0:Lcom/agc/asv/CameraSwitchButton;

    invoke-static {p1}, Lcom/agc/asv/CameraSwitchButton;->access$100(Lcom/agc/asv/CameraSwitchButton;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/agc/asv/CameraSwitchButton$1$1;->this$1:Lcom/agc/asv/CameraSwitchButton$1;

    iget-object p1, p1, Lcom/agc/asv/CameraSwitchButton$1;->this$0:Lcom/agc/asv/CameraSwitchButton;

    invoke-static {p1}, Lcom/agc/asv/CameraSwitchButton;->access$100(Lcom/agc/asv/CameraSwitchButton;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object p2, p0, Lcom/agc/asv/CameraSwitchButton$1$1;->this$1:Lcom/agc/asv/CameraSwitchButton$1;

    iget-object p2, p2, Lcom/agc/asv/CameraSwitchButton$1;->this$0:Lcom/agc/asv/CameraSwitchButton;

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const-string p1, "pref_switch_front_restart_key"

    invoke-static {p1}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p5, :cond_2

    invoke-static {p5}, Lcom/AGC;->onRestart(Z)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/AGC;->patchAll()V

    :cond_3
    :goto_1
    return-void
.end method
