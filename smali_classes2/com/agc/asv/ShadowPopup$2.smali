.class public Lcom/agc/asv/ShadowPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field public final synthetic val$shadowRulerView:Lcom/agc/asv/ShadowRulerView;


# direct methods
.method public constructor <init>(Lcom/agc/asv/ShadowPopup;Lcom/agc/asv/ShadowRulerView;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/ShadowPopup$2;->this$0:Lcom/agc/asv/ShadowPopup;

    iput-object p2, p0, Lcom/agc/asv/ShadowPopup$2;->val$shadowRulerView:Lcom/agc/asv/ShadowRulerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/agc/asv/ShadowPopup$2;->this$0:Lcom/agc/asv/ShadowPopup;

    invoke-static {p1}, Lcom/agc/asv/ShadowPopup;->access$100(Lcom/agc/asv/ShadowPopup;)Lcom/agc/asv/ShadowAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/agc/asv/ShadowAdapter;->onItemCLick(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/asv/ShadowPopup$2;->val$shadowRulerView:Lcom/agc/asv/ShadowRulerView;

    iget-object p4, p0, Lcom/agc/asv/ShadowPopup$2;->this$0:Lcom/agc/asv/ShadowPopup;

    invoke-static {p4}, Lcom/agc/asv/ShadowPopup;->access$100(Lcom/agc/asv/ShadowPopup;)Lcom/agc/asv/ShadowAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/agc/asv/CommonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/agc/asv/ShadowModel;

    invoke-virtual {p1, p3}, Lcom/agc/asv/ShadowRulerView;->setValue(Lcom/agc/asv/ShadowModel;)V

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/agc/asv/ShadowPopup$2;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object p3, p2, Lcom/agc/asv/ShadowPopup;->listview:Lcom/agc/asv/HorizontalListView;

    invoke-static {p2}, Lcom/agc/asv/ShadowPopup;->access$000(Lcom/agc/asv/ShadowPopup;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/widget/AdapterView;->scrollTo(II)V

    :cond_0
    return-void
.end method
