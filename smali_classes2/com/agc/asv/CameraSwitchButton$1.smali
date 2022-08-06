.class public Lcom/agc/asv/CameraSwitchButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/asv/CameraSwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/agc/asv/CameraSwitchButton;


# direct methods
.method public constructor <init>(Lcom/agc/asv/CameraSwitchButton;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/CameraSwitchButton$1;->this$0:Lcom/agc/asv/CameraSwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/agc/asv/CameraSwitchButton$1;->this$0:Lcom/agc/asv/CameraSwitchButton;

    invoke-static {p1}, Lcom/agc/asv/CameraSwitchButton;->access$000(Lcom/agc/asv/CameraSwitchButton;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/agc/asv/CameraSwitchButton$1;->this$0:Lcom/agc/asv/CameraSwitchButton;

    invoke-static {p1}, Lcom/agc/asv/CameraSwitchButton;->access$100(Lcom/agc/asv/CameraSwitchButton;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/asv/CameraSwitchButton$1;->this$0:Lcom/agc/asv/CameraSwitchButton;

    invoke-static {p1}, Lcom/agc/asv/CameraSwitchButton;->access$100(Lcom/agc/asv/CameraSwitchButton;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/asv/CameraSwitchButton$1;->this$0:Lcom/agc/asv/CameraSwitchButton;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    invoke-static {}, Lcom/Fix/Lens;->getAuxKey()I

    move-result p1

    invoke-static {p1}, Lcom/Fix/Lens;->getCamera(I)Lcom/agc/Camera;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/agc/Camera;->isFront()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/Fix/Lens;->getBackCameraID()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/Fix/Lens;->getFrontCameraID()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/Fix/Lens;->getAuxKey(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/Fix/Lens;->setAuxKey(I)V

    const-string p1, "Pixel\u624b\u673a\u5207\u6362\u6444\u50cf\u5934\u6210\u529f"

    invoke-static {p1}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    goto :goto_1

    :cond_2
    const-string p1, "Pixel\u624b\u673a\u5207\u6362\u6444\u50cf\u5934\u5931\u8d25"

    invoke-static {p1}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    :goto_1
    return-void

    :cond_3
    iget-object p1, p0, Lcom/agc/asv/CameraSwitchButton$1;->this$0:Lcom/agc/asv/CameraSwitchButton;

    invoke-static {p1}, Lcom/agc/asv/CameraSwitchButton;->access$200(Lcom/agc/asv/CameraSwitchButton;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/agc/asv/CameraSwitchButton$1$1;

    invoke-direct {v1, p0}, Lcom/agc/asv/CameraSwitchButton$1$1;-><init>(Lcom/agc/asv/CameraSwitchButton$1;)V

    invoke-static {p1, v0, v1}, Lcom/agc/asv/MultiplePopupWindow;->showUp(Landroid/view/View;Ljava/util/ArrayList;Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
