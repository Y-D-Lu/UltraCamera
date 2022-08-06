.class public abstract Lagc/Agc;
.super Ljava/lang/Object;
.source "Agc.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lgo/Seq;->touch()V

    invoke-static {}, Lagc/Agc;->_init()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _init()V
.end method

.method public static native computeAWBEntryBG(I)F
.end method

.method public static native computeAWBEntryRG(I)F
.end method

.method public static native computeColorTransformEntryVal(I)F
.end method

.method public static native computeNoiseModelEntryO(I)F
.end method

.method public static native computeNoiseModelEntryS(I)F
.end method

.method public static native configDatabasePath(Ljava/lang/String;)V
.end method

.method public static native configLogPath(Ljava/lang/String;)V
.end method

.method public static native devSetting(Ljava/lang/String;)Z
.end method

.method public static native drawTimeWaterMark(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native drawWaterMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native experimentalKeys(I)V
.end method

.method public static native forceGetFocal()Z
.end method

.method public static native getAWBEntryLen()I
.end method

.method public static native getCameraId()I
.end method

.method public static native getDefaultDevice()I
.end method

.method public static native getDefaultFilteredLens()Ljava/lang/String;
.end method

.method public static native getDefaultModel()I
.end method

.method public static native getDevice(II)Ljava/lang/String;
.end method

.method public static native getDeviceId()Ljava/lang/String;
.end method

.method public static native getDeviceInfo()Ljava/lang/String;
.end method

.method public static native getDeviceName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getEqualFocalLength(DDD)D
.end method

.method public static native getFixResolution(I)I
.end method

.method public static native getGcamAuxKey()I
.end method

.method public static native getGcamSensorID(IFFZZZZZZZZI)I
.end method

.method public static native getHardwareLevel(II)I
.end method

.method public static native getMainLensId()I
.end method

.method public static native getNoiseModelID()I
.end method

.method public static native getSMode()I
.end method

.method public static native getSensorExposureTime(IF)F
.end method

.method public static native getSensorId()I
.end method

.method public static native getShutterSpeed(D)Ljava/lang/String;
.end method

.method public static native getStream(I)I
.end method

.method public static native getStreamOpMode(I)I
.end method

.method public static native getViewfinderFormat(I)I
.end method

.method public static native imageProcessing(Ljava/lang/String;)V
.end method

.method public static native isDefaultOpenHdrNet()Z
.end method

.method public static native isFilterRawCheck()Z
.end method

.method public static native isGoogleDevice()Z
.end method

.method public static native isHuaweiDevice()Z
.end method

.method public static native isMTKDevice()Z
.end method

.method public static native isOnePlusDevice()Z
.end method

.method public static native isRedmiNote9()Z
.end method

.method public static native isSamsDevice()Z
.end method

.method public static native isSamsExynosDevice()Z
.end method

.method public static native isSamsungS21UltraExynos()Z
.end method

.method public static native isSamsungS22Ultra()Z
.end method

.method public static native isSamsungS22UltraExynos()Z
.end method

.method public static native isSamsungS22UltraSnapdragon()Z
.end method

.method public static native isSupportRAW10()Z
.end method

.method public static native isSupportRAW16()Z
.end method

.method public static native isXiaomi12SUltra()Z
.end method

.method public static native logToFile(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public static native medianFilter(Ljava/lang/String;IZIII)V
.end method

.method public static native mergeMethod(ZZZZI)I
.end method

.method public static native needChangeTrackingFocus()Z
.end method

.method public static native newAwb(ILjava/lang/String;FFLjava/lang/String;)V
.end method

.method public static native newColorTransform(ILjava/lang/String;Ljava/lang/String;FFFILjava/lang/String;)V
.end method

.method public static native newDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native newNoiseModel(ILjava/lang/String;Ljava/lang/String;IFILjava/lang/String;)V
.end method

.method public static native noNeedChangeLens()Z
.end method

.method public static native noNeedFilterLogicLens()Z
.end method

.method public static native noNeedFixLens()Z
.end method

.method public static native noNeedFixPortrait()Z
.end method

.method public static native onPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native patch(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native patchProfile(I)V
.end method

.method public static native ramPatcher(Ljava/lang/String;)V
.end method

.method public static native setCameraID(Ljava/lang/String;)V
.end method

.method public static native setCameraId(I)V
.end method

.method public static native setDeviceId(Ljava/lang/String;)V
.end method

.method public static native setSMode(Ljava/lang/String;)V
.end method

.method public static native setSensorId(I)V
.end method

.method public static native setTimeZoneOffset(I)V
.end method

.method public static native testJNI([B)[B
.end method

.method public static touch()V
    .locals 0

    return-void
.end method

.method public static native updateLens(FFILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native useOriginalSwitch()Z
.end method
