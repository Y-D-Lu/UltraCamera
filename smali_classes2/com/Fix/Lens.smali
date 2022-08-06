.class public Lcom/Fix/Lens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static allAvailableLens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private static allLens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/Camera;",
            ">;"
        }
    .end annotation
.end field

.field public static shotIsFront:Z


# direct methods
.method public static synthetic $r8$lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$m2ZXP_32Bkx8yK_dgJd4_yUQt8M(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/Fix/Lens;->allLens:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/Fix/Lens;->allAvailableLens:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/Fix/Lens;->getFilteredCameras()Ljava/util/List;

    return-void
.end method

.method private static getAllCameras()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/agc/Camera;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/Fix/Lens;->allLens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pref_all_camera_id_list_key"

    invoke-static {v0}, Lcom/Fix/Pref;->getStringSetValue(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/Fix/Lens$$ExternalSyntheticLambda2;->INSTANCE:Lcom/Fix/Lens$$ExternalSyntheticLambda2;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->sorted()Ljava/util/stream/IntStream;

    move-result-object v1

    sget-object v2, Lcom/Fix/Lens$$ExternalSyntheticLambda0;->INSTANCE:Lcom/Fix/Lens$$ExternalSyntheticLambda0;

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/Fix/Lens$$ExternalSyntheticLambda1;->INSTANCE:Lcom/Fix/Lens$$ExternalSyntheticLambda1;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v2, Lcom/agc/CamerasFinder;

    invoke-static {}, Lcom/AGC;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "camera"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager;

    invoke-direct {v2, v3}, Lcom/agc/CamerasFinder;-><init>(Landroid/hardware/camera2/CameraManager;)V

    invoke-virtual {v2, v1}, Lcom/agc/CamerasFinder;->getResult([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/util/Set;)V

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/Fix/Lens$$ExternalSyntheticLambda2;->INSTANCE:Lcom/Fix/Lens$$ExternalSyntheticLambda2;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sorted()Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v2, Lcom/Fix/Lens$$ExternalSyntheticLambda0;->INSTANCE:Lcom/Fix/Lens$$ExternalSyntheticLambda0;

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v2, "All Lens"

    invoke-static {v2, v0}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/Camera;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sput-object v2, Lcom/Fix/Lens;->allLens:Ljava/util/List;

    :cond_1
    sget-object v0, Lcom/Fix/Lens;->allLens:Ljava/util/List;

    return-object v0
.end method

.method public static getAuxKey()I
    .locals 6

    const-string v0, "pref_aux_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/Fix/Lens;->getCamera(I)Lcom/agc/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/agc/Camera;->getAperture()F

    move-result v2

    invoke-virtual {v1}, Lcom/agc/Camera;->getFocalLength()F

    move-result v3

    invoke-virtual {v1}, Lcom/agc/Camera;->getSupportedHardwareLevel()I

    move-result v4

    invoke-virtual {v1}, Lcom/agc/Camera;->getCapabilities()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/agc/Camera;->getFormats()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v5, v1}, Lagc/Agc;->updateLens(FFILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getAuxKey(Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Lcom/Fix/Lens;->getFilteredCameras()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/Camera;

    invoke-virtual {v3}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getAuxKeySuffix()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/Fix/Lens;->getAuxKey()I

    move-result v0

    invoke-static {v0}, Lcom/Fix/Lens;->getAuxKeySuffix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAuxKeySuffix(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAvailableLens()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/agc/Camera;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/Fix/Lens;->getAllCameras()Ljava/util/List;

    sget-object v0, Lcom/Fix/Lens;->allAvailableLens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/Fix/Lens;->allLens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/Camera;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sput-object v0, Lcom/Fix/Lens;->allAvailableLens:Ljava/util/List;

    :cond_1
    sget-object v0, Lcom/Fix/Lens;->allAvailableLens:Ljava/util/List;

    return-object v0
.end method

.method public static getBackCameraID()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/Fix/Lens;->getAuxKey()I

    move-result v0

    invoke-static {v0}, Lcom/Fix/Lens;->getCamera(I)Lcom/agc/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/Camera;->isFront()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/Fix/Lens;->mainCamera(Z)Lcom/agc/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCamera(I)Lcom/agc/Camera;
    .locals 2

    invoke-static {}, Lcom/Fix/Lens;->getFilteredCameras()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/agc/Camera;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getCameraID(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/Fix/Lens;->getCamera(I)Lcom/agc/Camera;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getCameraIdList()[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/AGC;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentCamera()Lcom/agc/Camera;
    .locals 1

    invoke-static {}, Lcom/Fix/Lens;->getAuxKey()I

    move-result v0

    invoke-static {v0}, Lcom/Fix/Lens;->getCamera(I)Lcom/agc/Camera;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentCameraID()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/Fix/Lens;->getAuxKey()I

    move-result v0

    invoke-static {v0}, Lcom/Fix/Lens;->getCameraID(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-static {v1}, Lagc/Agc;->setCameraID(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCurrentCameraIDs()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/Fix/Lens;->getBackCameraID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lcom/Fix/Lens;->getFrontCameraID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getFilteredCameraIDs()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/Fix/Lens;->getAllCameras()Ljava/util/List;

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_id_list_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ","

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lagc/Agc;->getDefaultFilteredLens()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/Fix/Lens;->allLens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v5

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/agc/Camera;

    invoke-virtual {v6}, Lcom/agc/Camera;->getType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u2713"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lagc/Agc;->noNeedFilterLogicLens()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_2
    invoke-virtual {v6}, Lcom/agc/Camera;->isFront()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v4, :cond_1

    invoke-virtual {v6}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/util/Set;)V

    invoke-static {v5}, Lcom/Fix/Lens;->mainCamera(Z)Lcom/agc/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/Fix/Lens;->getAuxKey(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/Fix/Lens;->setAuxKey(I)V

    :cond_5
    :try_start_0
    invoke-static {v1}, Lcom/Fix/Pref;->getStringSetValue(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v0, Ljava/util/HashSet;

    invoke-static {v1}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getFilteredCameras()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/agc/Camera;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/Fix/Lens;->getFilteredCameraIDs()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/Fix/Lens;->getAllCameras()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/agc/Camera;

    invoke-virtual {v4}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/agc/Camera;->isFront()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static getFilteredIndex(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/Fix/Lens;->getFilteredCameras()Ljava/util/List;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/Camera;

    invoke-virtual {v3}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static getFrontCameraID()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/Fix/Lens;->mainCamera(Z)Lcom/agc/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getKeyByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;TE;>;TE;)TT;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static handleIntent(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pref_switch_front_restart_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    const-string v1, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/Fix/Lens;->getAuxKey()I

    move-result p0

    invoke-static {p0}, Lcom/Fix/Lens;->getCamera(I)Lcom/agc/Camera;

    move-result-object p0

    const-string v0, "\u91cd\u7f6e\u5f53\u524d\u955c\u5934 camera ="

    invoke-static {v0, p0}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/agc/Camera;->isFront()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/Fix/Lens;->getBackCameraID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/Fix/Lens;->getAuxKey(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/Fix/Lens;->setAuxKey(I)V

    invoke-static {}, Lcom/AGC;->onRestart()V

    const-string v0, "\u91cd\u7f6e\u5f53\u524d\u955c\u5934 aux ="

    invoke-static {v0, p0}, Lcom/agc/Log;->d(Ljava/lang/Object;I)I

    :cond_3
    return-void
.end method

.method public static isCurrentCameraSuffix(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKey()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isFront()Z
    .locals 1

    const-string v0, "pref_aux_front_key"

    invoke-static {v0}, Lcom/Fix/Pref;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getAllCameras$0(I)[Ljava/lang/String;
    .locals 0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static mainCamera(Z)Lcom/agc/Camera;
    .locals 4

    invoke-static {}, Lcom/Fix/Lens;->getFilteredCameras()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lagc/Agc;->isSamsungS22Ultra()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    const-string p0, "56"

    :goto_0
    invoke-static {p0}, Lcom/Fix/Lens;->getAuxKey(Ljava/lang/String;)I

    move-result p0

    :goto_1
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/agc/Camera;

    return-object p0

    :cond_0
    invoke-static {}, Lagc/Agc;->isXiaomi12SUltra()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p0, :cond_1

    const-string p0, "8"

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/Camera;

    invoke-virtual {v2}, Lcom/agc/Camera;->isFront()Z

    move-result v3

    if-ne v3, p0, :cond_2

    return-object v2

    :cond_3
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    const/4 p0, 0x1

    goto :goto_1
.end method

.method public static setAuxKey(I)V
    .locals 5

    const-string v0, "pref_aux_key"

    invoke-static {v0, p0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/Fix/Lens;->getCamera(I)Lcom/agc/Camera;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/agc/Camera;->isFront()Z

    move-result v0

    const-string v1, "pref_aux_front_key"

    invoke-static {v1, v0}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/agc/Camera;->getAperture()F

    move-result v0

    invoke-virtual {p0}, Lcom/agc/Camera;->getFocalLength()F

    move-result v1

    invoke-virtual {p0}, Lcom/agc/Camera;->getSupportedHardwareLevel()I

    move-result v2

    invoke-virtual {p0}, Lcom/agc/Camera;->getCapabilities()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/agc/Camera;->getFormats()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lagc/Agc;->updateLens(FFILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "setAuxKey "

    invoke-static {v0, p0}, Lcom/agc/Log;->i(Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    const-string p0, "setAuxKey failed"

    invoke-static {p0}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static setIsFront(Z)V
    .locals 0

    sput-boolean p0, Lcom/Fix/Lens;->shotIsFront:Z

    return-void
.end method
