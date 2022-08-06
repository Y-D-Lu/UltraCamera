.class public Lcom/agc/asv/MultiplePopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# static fields
.field private static mWindow:Lcom/agc/asv/MultiplePopupWindow;


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/agc/asv/CameraMultipleModel;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2c

    add-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/agc/util/AgcUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/agc/asv/MultiplePopupWindow;->height:I

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p1, v0}, Lcom/agc/util/AgcUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/agc/asv/MultiplePopupWindow;->width:I

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/agc/R$layout;->agc_mutiple_window:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "agc_multiple_list_view"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v2, Lcom/agc/asv/CameraMultipleAdapter;

    invoke-direct {v2, p2, p1}, Lcom/agc/asv/CameraMultipleAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lcom/agc/asv/MultiplePopupWindow$1;

    invoke-direct {p1, p0, v2, p3}, Lcom/agc/asv/MultiplePopupWindow$1;-><init>(Lcom/agc/asv/MultiplePopupWindow;Lcom/agc/asv/CameraMultipleAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static showUp(Landroid/view/View;Ljava/util/ArrayList;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/agc/asv/CameraMultipleModel;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/agc/asv/MultiplePopupWindow;->mWindow:Lcom/agc/asv/MultiplePopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/asv/MultiplePopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/agc/asv/MultiplePopupWindow;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/AdapterView$OnItemClickListener;)V

    sput-object v0, Lcom/agc/asv/MultiplePopupWindow;->mWindow:Lcom/agc/asv/MultiplePopupWindow;

    :cond_0
    sget-object p1, Lcom/agc/asv/MultiplePopupWindow;->mWindow:Lcom/agc/asv/MultiplePopupWindow;

    invoke-virtual {p1, p0}, Lcom/agc/asv/MultiplePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public show(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v2, Lcom/agc/asv/MultiplePopupWindow;->mWindow:Lcom/agc/asv/MultiplePopupWindow;

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v4, v5

    iget v5, p0, Lcom/agc/asv/MultiplePopupWindow;->width:I

    div-int/2addr v5, v0

    sub-int/2addr v4, v5

    const/4 v0, 0x1

    aget v0, v1, v0

    iget v1, p0, Lcom/agc/asv/MultiplePopupWindow;->height:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v1, v5}, Lcom/agc/util/AgcUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v2, p1, v3, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
