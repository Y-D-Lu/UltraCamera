.class public final synthetic Lhzw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lhzz;

.field public final synthetic b:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lhzz;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhzw;->a:Lhzz;

    iput-object p2, p0, Lhzw;->b:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lhzw;->a:Lhzz;

    iget-object v1, p0, Lhzw;->b:Landroid/graphics/Point;

    iget-object v0, v0, Lhzz;->b:Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;

    invoke-static {}, Llar;->a()V

    invoke-static {v0}, Lmip;->ek(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v0, Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;->b:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Point;->y:I

    iget v6, v0, Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;->b:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v0, Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;->b:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v7, v0, Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;->b:I

    add-int/2addr v1, v7

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setBounds(IIII)V

    iget-object v1, v0, Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    iget-object v1, v0, Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;->setVisibility(I)V

    return-void
.end method
