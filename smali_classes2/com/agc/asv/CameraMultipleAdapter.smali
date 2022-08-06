.class public Lcom/agc/asv/CameraMultipleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/asv/CameraMultipleAdapter$ViewHolerTwo;,
        Lcom/agc/asv/CameraMultipleAdapter$ViewHolderOne;
    }
.end annotation


# static fields
.field private static final CAMERA_INDEX:Ljava/lang/String; = "camera_index"

.field private static final TYPE_ONE:I = 0x0

.field private static final TYPE_TWO:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/agc/asv/CameraMultipleModel;",
            ">;"
        }
    .end annotation
.end field

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/agc/asv/CameraMultipleModel;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/agc/asv/CameraMultipleAdapter;->mList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/agc/asv/CameraMultipleAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/Fix/Lens;->getCurrentCameraID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/Fix/Lens;->getFilteredIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/agc/asv/CameraMultipleAdapter;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/agc/asv/CameraMultipleAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/agc/asv/CameraMultipleAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/agc/asv/CameraMultipleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/asv/CameraMultipleModel;

    iget p1, p1, Lcom/agc/asv/CameraMultipleModel;->type:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/agc/asv/CameraMultipleAdapter;->getItemViewType(I)I

    move-result v1

    if-nez p2, :cond_2

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/agc/asv/CameraMultipleAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/agc/R$layout;->agc_item_style_image:I

    invoke-virtual {p2, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/agc/asv/CameraMultipleAdapter$ViewHolerTwo;

    invoke-direct {v1, p2}, Lcom/agc/asv/CameraMultipleAdapter$ViewHolerTwo;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/agc/asv/CameraMultipleAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/agc/R$layout;->agc_item_style_text:I

    invoke-virtual {p2, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/agc/asv/CameraMultipleAdapter$ViewHolderOne;

    invoke-direct {v1, p2}, Lcom/agc/asv/CameraMultipleAdapter$ViewHolderOne;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_3

    :goto_0
    move-object v1, p3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/asv/CameraMultipleAdapter$ViewHolerTwo;

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/asv/CameraMultipleAdapter$ViewHolderOne;

    :goto_1
    move-object v4, v1

    move-object v1, p3

    move-object p3, v4

    :goto_2
    invoke-virtual {p0, p1}, Lcom/agc/asv/CameraMultipleAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    if-eq v2, v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object p3, v1, Lcom/agc/asv/CameraMultipleAdapter$ViewHolerTwo;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/agc/asv/CameraMultipleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/asv/CameraMultipleModel;

    iget v2, v2, Lcom/agc/asv/CameraMultipleModel;->drawableRes:I

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p3, v1, Lcom/agc/asv/CameraMultipleAdapter$ViewHolerTwo;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/agc/asv/CameraMultipleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/asv/CameraMultipleModel;

    iget p1, p1, Lcom/agc/asv/CameraMultipleModel;->index:I

    iget v1, p0, Lcom/agc/asv/CameraMultipleAdapter;->selectedIndex:I

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_3
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_5

    :cond_7
    iget-object v1, p3, Lcom/agc/asv/CameraMultipleAdapter$ViewHolderOne;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/agc/asv/CameraMultipleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/asv/CameraMultipleModel;

    iget-object v2, v2, Lcom/agc/asv/CameraMultipleModel;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p3, Lcom/agc/asv/CameraMultipleAdapter$ViewHolderOne;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/agc/asv/CameraMultipleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/asv/CameraMultipleModel;

    iget p1, p1, Lcom/agc/asv/CameraMultipleModel;->index:I

    iget v1, p0, Lcom/agc/asv/CameraMultipleAdapter;->selectedIndex:I

    if-ne p1, v1, :cond_8

    goto :goto_4

    :cond_8
    move v0, v3

    :goto_4
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_5
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setOnClickItem(I)Z
    .locals 2

    sget v0, Lcom/AGC;->sHdr_process:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const-string p1, "d"

    const-string v0, "HDR Processing"

    invoke-static {p1, v0}, Lcom/agc/Toast;->show(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Lcom/agc/asv/CameraMultipleAdapter;->selectedIndex:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/agc/asv/CameraMultipleAdapter;->selectedIndex:I

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
