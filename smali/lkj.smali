.class public final Llkj;
.super Ljava/lang/Object;

# interfaces
.implements Llke;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/hardware/camera2/CameraManager;

.field public final c:Llkm;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Landroid/os/Handler;

.field public final f:Lljf;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Llky;

.field public final j:Ljava/util/concurrent/CountDownLatch;

.field public k:Z

.field public l:Z

.field private m:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager;Llkm;Lljf;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Llkj;->k:Z

    iput-boolean v0, p0, Llkj;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Llkj;->m:Ljava/lang/Throwable;

    iput-object p6, p0, Llkj;->a:Ljava/lang/String;

    iput-object p3, p0, Llkj;->b:Landroid/hardware/camera2/CameraManager;

    iput-object p5, p0, Llkj;->f:Lljf;

    iput-object p4, p0, Llkj;->c:Llkm;

    iput-object p1, p0, Llkj;->e:Landroid/os/Handler;

    iput-object p2, p0, Llkj;->d:Ljava/util/concurrent/Executor;

    new-instance p1, Llky;

    invoke-direct {p1}, Llky;-><init>()V

    iput-object p1, p0, Llkj;->i:Llky;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llkj;->g:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llkj;->h:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Llkj;->j:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private final c(Ljava/lang/String;Ljava/lang/Exception;ZLlju;Ljava/lang/String;)V
    .locals 1

    const-string v0, "CAM_CameraDeviceOpener"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Llkj;->g:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p3, :cond_0

    :try_start_0
    iget-object p2, p0, Llkj;->c:Llkm;

    const/4 p3, 0x3

    invoke-interface {p2, p3, p4, p5, p3}, Llkm;->az(ILlju;Ljava/lang/String;I)V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method


# virtual methods
.method public final a(Llky;ZJJ)Llkh;
    .locals 11

    move-object v7, p0

    move-object v8, p1

    new-instance v0, Llki;

    iget-object v1, v7, Llkj;->f:Lljf;

    invoke-direct {v0, v1}, Llki;-><init>(Lljf;)V

    invoke-virtual {p1, v0}, Llky;->e(Llkc;)V

    iget-object v1, v7, Llkj;->f:Lljf;

    const-string v2, "CameraDeviceOpenerImpl#open"

    invoke-interface {v1, v2}, Lljf;->e(Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v9, 0x4

    const/4 v2, 0x2

    :try_start_0
    iget-object v3, v7, Llkj;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    iget-object v3, v7, Llkj;->b:Landroid/hardware/camera2/CameraManager;

    iget-object v4, v7, Llkj;->a:Ljava/lang/String;

    new-instance v5, Lljo;

    invoke-direct {v5, p1, v4}, Lljo;-><init>(Llkc;Ljava/lang/String;)V

    iget-object v6, v7, Llkj;->e:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    const-wide/16 v3, 0x1388

    add-long/2addr v3, p3

    sub-long v3, v3, p5

    invoke-virtual {v0, v3, v4}, Llki;->e(J)Llkh;

    move-result-object v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v7, Llkj;->f:Lljf;

    :goto_0
    invoke-interface {v1}, Lljf;->f()V

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Llkh;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Llkh;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v7, Llkj;->f:Lljf;

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    iget-object v2, v7, Llkj;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-object v0, v7, Llkj;->m:Ljava/lang/Throwable;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p2, :cond_0

    :try_start_4
    new-instance v2, Llkh;

    sget-object v3, Llju;->c:Llju;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v3, v0}, Llkh;-><init>(ILlju;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v7, Llkj;->f:Lljf;

    :goto_1
    invoke-interface {v0}, Lljf;->f()V

    return-object v2

    :cond_0
    :try_start_5
    iget-object v1, v7, Llkj;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x62

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to open camera device "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". A SecurityException was thrown while attempting to open the camera."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    sget-object v5, Llju;->c:Llju;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Llkj;->c(Ljava/lang/String;Ljava/lang/Exception;ZLlju;Ljava/lang/String;)V

    sget-object v1, Llju;->c:Llju;

    invoke-virtual {p1, v1}, Llky;->c(Llju;)V

    new-instance v1, Llkh;

    sget-object v2, Llju;->c:Llju;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v9, v2, v0}, Llkh;-><init>(ILlju;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, v7, Llkj;->f:Lljf;

    :goto_2
    invoke-interface {v0}, Lljf;->f()V

    return-object v1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :catch_2
    move-exception v0

    iget-object v1, v7, Llkj;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iput-object v0, v7, Llkj;->m:Ljava/lang/Throwable;

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    new-instance v1, Llkh;

    sget-object v3, Llju;->d:Llju;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Llkh;-><init>(ILlju;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, v7, Llkj;->f:Lljf;

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v3

    invoke-static {v3}, Llju;->a(I)Llju;

    move-result-object v10

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    iget-object v1, v7, Llkj;->a:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_0
    iget-object v1, v7, Llkj;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to open camera device "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". The maximum number of cameras are already open."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v3, v0

    move v4, p2

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Llkj;->c(Ljava/lang/String;Ljava/lang/Exception;ZLlju;Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Llky;->c(Llju;)V

    new-instance v1, Llkh;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v9, v10, v0}, Llkh;-><init>(ILlju;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    iget-object v0, v7, Llkj;->f:Lljf;

    goto :goto_2

    :pswitch_1
    :try_start_c
    iget-object v1, v7, Llkj;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to open camera device "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " The camera device in use due to a higher priority process. Retrying ..."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object p1, p0

    move-object p2, v1

    move-object p3, v0

    move p4, v3

    move-object/from16 p5, v10

    move-object/from16 p6, v4

    invoke-direct/range {p1 .. p6}, Llkj;->c(Ljava/lang/String;Ljava/lang/Exception;ZLlju;Ljava/lang/String;)V

    new-instance v1, Llkh;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v10, v0}, Llkh;-><init>(ILlju;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    iget-object v0, v7, Llkj;->f:Lljf;

    goto/16 :goto_2

    :pswitch_2
    :try_start_d
    new-instance v1, Llkh;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v10, v0}, Llkh;-><init>(ILlju;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    iget-object v0, v7, Llkj;->f:Lljf;

    goto/16 :goto_2

    :pswitch_3
    :try_start_e
    new-instance v1, Llkh;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v10, v0}, Llkh;-><init>(ILlju;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    iget-object v0, v7, Llkj;->f:Lljf;

    goto/16 :goto_2

    :pswitch_4
    if-nez p2, :cond_1

    :try_start_f
    new-instance v2, Llkh;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v10, v0}, Llkh;-><init>(ILlju;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    iget-object v0, v7, Llkj;->f:Lljf;

    goto/16 :goto_1

    :cond_1
    :try_start_10
    iget-object v1, v7, Llkj;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to open camera device "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " after retry. The camera device is disabled."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v3, v0

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Llkj;->c(Ljava/lang/String;Ljava/lang/Exception;ZLlju;Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Llky;->c(Llju;)V

    new-instance v1, Llkh;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v9, v10, v0}, Llkh;-><init>(ILlju;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    iget-object v0, v7, Llkj;->f:Lljf;

    goto/16 :goto_2

    :goto_3
    :try_start_11
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to open camera device "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". An unknown exception was thrown with error code "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v3, v0

    move v4, p2

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Llkj;->c(Ljava/lang/String;Ljava/lang/Exception;ZLlju;Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Llky;->c(Llju;)V

    new-instance v1, Llkh;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v9, v10, v0}, Llkh;-><init>(ILlju;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    iget-object v0, v7, Llkj;->f:Lljf;

    goto/16 :goto_2

    :goto_4
    iget-object v1, v7, Llkj;->f:Lljf;

    invoke-interface {v1}, Lljf;->f()V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(ZLlju;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Llkj;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llkj;->m:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const-string v1, "CAM_CameraDeviceOpener"

    iget-object v2, p0, Llkj;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to open Camera device "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " after timeout."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Llkj;->m:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string v1, "CAM_CameraDeviceOpener"

    iget-object v2, p0, Llkj;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to open Camera device "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " after timeout."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Llkj;->c:Llkm;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-interface {p1, v1, p2, p3, v2}, Llkm;->az(ILlju;Ljava/lang/String;I)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Llkj;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Llkj;->l:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Llkj;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Llkj;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
