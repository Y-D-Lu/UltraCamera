.class public final Lcom/google/android/libraries/lens/lenslite/api/LinkImage;
.super Ljava/lang/Object;


# instance fields
.field private bitmap:Lojc;

.field private final height:Lojc;

.field private image:Lojc;

.field private imageProxy:Lojc;

.field private final linkImageType:I

.field private final rotation:Lojc;

.field private final width:Lojc;


# direct methods
.method private constructor <init>(Lojc;Lojc;Lojc;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Loih;->a:Loih;

    iput-object v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->bitmap:Lojc;

    sget-object v0, Loih;->a:Loih;

    iput-object v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->image:Lojc;

    sget-object v0, Loih;->a:Loih;

    iput-object v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->imageProxy:Lojc;

    iput-object p1, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->width:Lojc;

    iput-object p2, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->height:Lojc;

    iput-object p3, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->rotation:Lojc;

    iput p4, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->linkImageType:I

    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;I)Lcom/google/android/libraries/lens/lenslite/api/LinkImage;
    .locals 4

    new-instance v0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lojc;->i(Ljava/lang/Object;)Lojc;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lojc;->i(Ljava/lang/Object;)Lojc;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lojc;->i(Ljava/lang/Object;)Lojc;

    move-result-object p1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;-><init>(Lojc;Lojc;Lojc;I)V

    invoke-static {p0}, Lojc;->i(Ljava/lang/Object;)Lojc;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->bitmap:Lojc;

    return-object v0
.end method

.method public static create(Landroid/media/Image;I)Lcom/google/android/libraries/lens/lenslite/api/LinkImage;
    .locals 4

    new-instance v0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lojc;->i(Ljava/lang/Object;)Lojc;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lojc;->i(Ljava/lang/Object;)Lojc;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lojc;->i(Ljava/lang/Object;)Lojc;

    move-result-object p1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;-><init>(Lojc;Lojc;Lojc;I)V

    invoke-static {p0}, Lojc;->i(Ljava/lang/Object;)Lojc;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->image:Lojc;

    return-object v0
.end method

.method public static create(Lcom/google/android/libraries/lens/lenslite/api/ImageProxy;I)Lcom/google/android/libraries/lens/lenslite/api/LinkImage;
    .locals 4

    new-instance v0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;

    invoke-interface {p0}, Lcom/google/android/libraries/lens/lenslite/api/ImageProxy;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lojc;->i(Ljava/lang/Object;)Lojc;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/libraries/lens/lenslite/api/ImageProxy;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lojc;->i(Ljava/lang/Object;)Lojc;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lojc;->i(Ljava/lang/Object;)Lojc;

    move-result-object p1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;-><init>(Lojc;Lojc;Lojc;I)V

    invoke-static {p0}, Lojc;->i(Ljava/lang/Object;)Lojc;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->imageProxy:Lojc;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->image:Lojc;

    invoke-virtual {v0}, Lojc;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->image:Lojc;

    invoke-virtual {v0}, Lojc;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->imageProxy:Lojc;

    invoke-virtual {v0}, Lojc;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->imageProxy:Lojc;

    invoke-virtual {v0}, Lojc;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/lens/lenslite/api/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/libraries/lens/lenslite/api/ImageProxy;->close()V

    :cond_1
    return-void
.end method

.method public getBitmap()Lojc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->bitmap:Lojc;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->height:Lojc;

    invoke-virtual {v0}, Lojc;->g()Z

    move-result v0

    invoke-static {v0}, Lobr;->aQ(Z)V

    iget-object v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->height:Lojc;

    invoke-virtual {v0}, Lojc;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getImage()Lojc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->image:Lojc;

    return-object v0
.end method

.method public getImageProxy()Lojc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->imageProxy:Lojc;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->height:Lojc;

    invoke-virtual {v0}, Lojc;->g()Z

    move-result v0

    invoke-static {v0}, Lobr;->aQ(Z)V

    iget-object v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->rotation:Lojc;

    invoke-virtual {v0}, Lojc;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->linkImageType:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->width:Lojc;

    invoke-virtual {v0}, Lojc;->g()Z

    move-result v0

    invoke-static {v0}, Lobr;->aQ(Z)V

    iget-object v0, p0, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->width:Lojc;

    invoke-virtual {v0}, Lojc;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
