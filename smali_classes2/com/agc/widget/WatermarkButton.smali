.class public Lcom/agc/widget/WatermarkButton;
.super Lcom/agc/widget/OptionButton;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/WatermarkButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/WatermarkButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/WatermarkButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/WatermarkButton;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/agc/widget/OptionButton$OptionButtonItem;

    new-instance v2, Lcom/agc/widget/OptionButton$OptionButtonItem;

    const-string v3, "agc_watermark"

    const-string v4, "Disable"

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/agc/widget/OptionButton$OptionButtonItem;

    const-string v8, "agc_watermark"

    const-string v9, "Watermark"

    const/4 v10, 0x1

    const v11, -0x103a92

    move-object v6, v2

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    const-string v0, "pref_photo_watermark_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    if-lez v0, :cond_0

    move v5, v3

    :cond_0
    invoke-virtual {p0, v5}, Lcom/agc/widget/OptionButton;->setChecked(Z)V

    invoke-super {p0, p1}, Lcom/agc/widget/OptionButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/agc/widget/OptionButton;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    iget p1, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/agc/widget/OptionButton;->setChecked(Z)V

    return-void
.end method

.method public onClickPopItem(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/agc/widget/OptionButton;->onClickPopItem(I)V

    const-string v0, "pref_photo_watermark_key"

    invoke-static {v0, p1}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    return-void
.end method
