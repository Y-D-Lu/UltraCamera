.class public final synthetic Liwc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liwc;->a:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Liwc;->a:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->b:Liwg;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Liwg;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method
