.class public Lcom/agc/widget/OptionButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/agc/widget/OptionWindow$OnPopItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/OptionButton$OptionButtonItem;
    }
.end annotation


# instance fields
.field public iconPadding:I

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/widget/OptionButton$OptionButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field public selectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/agc/widget/OptionButton;->iconPadding:I

    invoke-virtual {p0, p1}, Lcom/agc/widget/OptionButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    const/4 p2, 0x0

    iput p2, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    const/16 p2, 0xc

    iput p2, p0, Lcom/agc/widget/OptionButton;->iconPadding:I

    invoke-virtual {p0, p1}, Lcom/agc/widget/OptionButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    const/4 p2, 0x0

    iput p2, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    const/16 p2, 0xc

    iput p2, p0, Lcom/agc/widget/OptionButton;->iconPadding:I

    invoke-virtual {p0, p1}, Lcom/agc/widget/OptionButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    const/4 p2, 0x0

    iput p2, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    const/16 p2, 0xc

    iput p2, p0, Lcom/agc/widget/OptionButton;->iconPadding:I

    invoke-virtual {p0, p1}, Lcom/agc/widget/OptionButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private updateIcon()V
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/OptionButton$OptionButtonItem;

    iget v3, v1, Lcom/agc/widget/OptionButton$OptionButtonItem;->value:I

    iget v4, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    iget v0, v1, Lcom/agc/widget/OptionButton$OptionButtonItem;->color:I

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, v1, Lcom/agc/widget/OptionButton$OptionButtonItem;->icon:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/agc/widget/OptionButton;->updateIcon()V

    iget v0, p0, Lcom/agc/widget/OptionButton;->iconPadding:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/agc/util/AgcUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setAdjustViewBounds(Z)V

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "agc_option_background"

    const-string v2, "drawable"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    iget p2, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    invoke-static {p0, p1, p2, p0}, Lcom/agc/widget/OptionWindow;->showUp(Landroid/view/View;Ljava/util/List;ILcom/agc/widget/OptionWindow$OnPopItemClickListener;)V

    return-void
.end method

.method public onClickAccessoryButton()V
    .locals 0

    invoke-static {}, Lcom/agc/widget/OptionWindow;->hide()V

    return-void
.end method

.method public onClickPopItem(I)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    invoke-direct {p0}, Lcom/agc/widget/OptionButton;->updateIcon()V

    return-void
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public performClick()Z
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    iget v1, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    invoke-static {p0, v0, v1, p0}, Lcom/agc/widget/OptionWindow;->showUp(Landroid/view/View;Ljava/util/List;ILcom/agc/widget/OptionWindow$OnPopItemClickListener;)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/agc/widget/OptionButton;->onClickPopItem(I)V

    :goto_1
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    return-void
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Lcom/agc/widget/OptionButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/agc/widget/OptionButton;->setChecked(Z)V

    return-void
.end method
