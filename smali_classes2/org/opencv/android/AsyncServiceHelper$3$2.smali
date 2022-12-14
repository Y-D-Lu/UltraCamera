.class Lorg/opencv/android/AsyncServiceHelper$3$2;
.super Ljava/lang/Object;
.source "AsyncServiceHelper.java"

# interfaces
.implements Lorg/opencv/android/InstallCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/opencv/android/AsyncServiceHelper$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/opencv/android/AsyncServiceHelper$3;


# direct methods
.method constructor <init>(Lorg/opencv/android/AsyncServiceHelper$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/opencv/android/AsyncServiceHelper$3;

    .line 239
    iput-object p1, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 250
    const-string v0, "OpenCVManager/Helper"

    const-string v1, "OpenCV library installation was canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v1, 0x0

    sput-boolean v1, Lorg/opencv/android/AsyncServiceHelper;->mLibraryInstallationProgress:Z

    .line 252
    const-string v1, "Init finished with status 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v1, "Unbind from service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v1, v1, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v1, v1, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v2, v2, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v2, v2, Lorg/opencv/android/AsyncServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 255
    const-string v1, "Calling using callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v0, v0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v0, v0, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    .line 257
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 242
    const-string v0, "OpenCV library"

    return-object v0
.end method

.method public install()V
    .locals 2

    .line 246
    const-string v0, "OpenCVManager/Helper"

    const-string v1, "Nothing to install we just wait current installation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method public wait_install()V
    .locals 5

    .line 259
    const-string v0, "Calling using callback"

    const-string v1, "Unbind from service"

    const-string v2, "OpenCVManager/Helper"

    const-string v3, "Waiting for current installation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :try_start_0
    iget-object v3, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v3, v3, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v3, v3, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/OpenCVEngineInterface;

    iget-object v4, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v4, v4, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v4, v4, Lorg/opencv/android/AsyncServiceHelper;->mOpenCVersion:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/opencv/engine/OpenCVEngineInterface;->installVersion(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    const-string v3, "OpenCV package was not installed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v3, "Init finished with status 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v3, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v3, v3, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v3, v3, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    goto :goto_0

    .line 271
    :cond_0
    const-string v3, "Waiting for package installation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_0
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v3, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v3, v3, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v3, v3, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v4, v4, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v4, v4, Lorg/opencv/android/AsyncServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_1

    .line 277
    :catch_0
    move-exception v3

    .line 278
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 279
    const-string v4, "Init finished with status 255"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v1, v1, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v1, v1, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v4, v4, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v4, v4, Lorg/opencv/android/AsyncServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 282
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v0, v0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v0, v0, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    const/16 v1, 0xff

    invoke-interface {v0, v1}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    .line 285
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
