.class public Lcom/CameraAPI2Keys;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTROL_LIVE_HDR_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_OPTICAL_STABILIZATION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHASE_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "samsung.android.control.meteringMode"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/CameraAPI2Keys;->METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "samsung.android.control.pafMode"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/CameraAPI2Keys;->PHASE_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v3, "android.lens.aperture"

    invoke-direct {v0, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/CameraAPI2Keys;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "samsung.android.control.liveHdrLevel"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/CameraAPI2Keys;->CONTROL_LIVE_HDR_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "samsung.android.control.liveHdrMode"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/CameraAPI2Keys;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "samsung.android.lens.opticalStabilizationOperationMode"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/CameraAPI2Keys;->LENS_OPTICAL_STABILIZATION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLibraryVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
