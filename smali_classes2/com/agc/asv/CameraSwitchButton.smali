.class public Lcom/agc/asv/CameraSwitchButton;
.super Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;
.source "SourceFile"


# instance fields
.field private baseLineY:F

.field private isOriginalSwitch:Z

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/agc/asv/CameraMultipleModel;",
            ">;"
        }
    .end annotation
.end field

.field private onCheckedChange:Landroid/view/View$OnClickListener;

.field private outOnClickListener:Landroid/view/View$OnClickListener;

.field private paint:Landroid/graphics/Paint;

.field private size:F

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, ""

    iput-object p2, p0, Lcom/agc/asv/CameraSwitchButton;->text:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lcom/agc/asv/CameraSwitchButton;->size:F

    iput p2, p0, Lcom/agc/asv/CameraSwitchButton;->baseLineY:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/agc/asv/CameraSwitchButton;->isOriginalSwitch:Z

    new-instance p2, Lcom/agc/asv/CameraSwitchButton$1;

    invoke-direct {p2, p0}, Lcom/agc/asv/CameraSwitchButton$1;-><init>(Lcom/agc/asv/CameraSwitchButton;)V

    iput-object p2, p0, Lcom/agc/asv/CameraSwitchButton;->onCheckedChange:Landroid/view/View$OnClickListener;

    invoke-static {}, Lagc/Agc;->useOriginalSwitch()Z

    move-result p2

    iput-boolean p2, p0, Lcom/agc/asv/CameraSwitchButton;->isOriginalSwitch:Z

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/agc/asv/CameraSwitchButton;->init(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/agc/asv/CameraSwitchButton;->onCheckedChange:Landroid/view/View$OnClickListener;

    invoke-super {p0, p1}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/agc/asv/CameraSwitchButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/agc/asv/CameraSwitchButton;->isOriginalSwitch:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/agc/asv/CameraSwitchButton;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/agc/asv/CameraSwitchButton;->outOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/agc/asv/CameraSwitchButton;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/agc/asv/CameraSwitchButton;->list:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/agc/asv/CameraSwitchButton;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/asv/CameraSwitchButton;->setImageDrawable(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$402(Lcom/agc/asv/CameraSwitchButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/CameraSwitchButton;->text:Ljava/lang/String;

    return-object p1
.end method

.method private setBackground(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setImageDrawable(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {p1, v0}, Lcom/agc/util/AgcUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/agc/asv/CameraSwitchButton;->size:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/agc/asv/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/agc/asv/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/agc/asv/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p1, v2}, Lcom/agc/util/AgcUtil;->dp2sp(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/agc/asv/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, p0, Lcom/agc/asv/CameraSwitchButton;->size:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    div-float/2addr v0, v4

    sub-float/2addr v3, v0

    float-to-int v0, v3

    int-to-float v0, v0

    iput v0, p0, Lcom/agc/asv/CameraSwitchButton;->baseLineY:F

    const-string v0, "agc_multiple_button_bg"

    invoke-direct {p0, p1, v0}, Lcom/agc/asv/CameraSwitchButton;->setBackground(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/agc/asv/CameraSwitchButton;->onCheckedChange:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/asv/CameraSwitchButton;->list:Ljava/util/ArrayList;

    invoke-static {}, Lcom/Fix/Lens;->getFilteredCameras()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "agc_flip"

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/Camera;

    invoke-virtual {v3}, Lcom/agc/Camera;->isFront()Z

    move-result v5

    const-string v6, "drawable"

    const-string v7, "x"

    iget-object v9, p0, Lcom/agc/asv/CameraSwitchButton;->list:Ljava/util/ArrayList;

    new-instance v10, Lcom/agc/asv/CameraMultipleModel;

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/agc/Camera;->getZoomScale()F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    invoke-virtual {v3, v8, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v4, 0x0

    move-object v3, v10

    move-object v6, v7

    move v7, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/agc/asv/CameraMultipleModel;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/agc/Camera;->getZoomScale()F

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v6, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v4, 0x1

    move-object v3, v10

    move-object v6, v7

    move v7, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/agc/asv/CameraMultipleModel;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    :goto_1
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/Fix/Lens;->getCurrentCameraID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/Fix/Lens;->getFilteredIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lcom/agc/asv/CameraSwitchButton;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget-object p1, p0, Lcom/agc/asv/CameraSwitchButton;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/asv/CameraMultipleModel;

    iget-object p1, p1, Lcom/agc/asv/CameraMultipleModel;->text:Ljava/lang/String;

    iput-object p1, p0, Lcom/agc/asv/CameraSwitchButton;->text:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/agc/asv/CameraSwitchButton;->setImageDrawable(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/agc/asv/CameraSwitchButton;->isOriginalSwitch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/asv/CameraSwitchButton;->text:Ljava/lang/String;

    iget v1, p0, Lcom/agc/asv/CameraSwitchButton;->size:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/agc/asv/CameraSwitchButton;->baseLineY:F

    iget-object v3, p0, Lcom/agc/asv/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setFrontFacing(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->setFrontFacing(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/CameraSwitchButton;->outOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
