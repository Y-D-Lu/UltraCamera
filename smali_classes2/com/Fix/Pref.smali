.class public Lcom/Fix/Pref;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lcom/Fix/Pref;

.field private static appSharedPreferences:Landroid/content/SharedPreferences;

.field public static isProcessingProfile:Z

.field private static listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static noRestartKey:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sResources:Landroid/content/res/Resources;

.field private static shadowKeys:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/Fix/Pref$1;

    invoke-direct {v0}, Lcom/Fix/Pref$1;-><init>()V

    sput-object v0, Lcom/Fix/Pref;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    const-string v0, "pref_camera_recordlocation_key"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/Fix/Pref;->noRestartKey:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/Fix/Pref;->isProcessingProfile:Z

    const-string v0, "pref_camera_grid_lines_mode"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/Fix/Pref;->shadowKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/Fix/Pref;->initListener()V

    invoke-static {}, Lcom/Fix/Pref;->syncShadowKeys()V

    return-void
.end method

.method public static MenuValue(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static MenuValue(Ljava/lang/String;I)I
    .locals 2

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return p1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method public static synthetic access$000(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/Fix/Pref;->handlePrefSync(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/Fix/Pref;->handleCustomLogical(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/Fix/Pref;->handlePatch(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/Fix/Pref;->handleRestart(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/Fix/Pref;->handleShadowPref(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private static getAppContext()Landroid/content/Context;
    .locals 3

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAppSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/Fix/Pref;->appSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/Fix/Pref;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/Fix/Pref;->appSharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcom/Fix/Pref;->appSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getArrayResource(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/Fix/Pref;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/Fix/Pref;->sResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/Fix/Pref;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "array"

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getArrayResourceValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/Fix/Pref;->getArrayResource(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-eq v0, v2, :cond_2

    invoke-static {p0}, Lcom/Fix/Pref;->getArrayResource(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    if-ge v0, p1, :cond_2

    aget-object p0, p0, v0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static getBoolValue(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/Fix/Pref;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBoolValue(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDoubleValue(Ljava/lang/String;)D
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/Fix/Pref;->getDoubleValue(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDoubleValue(Ljava/lang/String;D)D
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public static getFloatValue(Ljava/lang/String;)F
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/Fix/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getFloatValue(Ljava/lang/String;F)F
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    :cond_0
    return p1
.end method

.method public static getHexIntValue(Ljava/lang/String;)I
    .locals 1

    const-string v0, "0"

    invoke-static {p0, v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getHexLongValue(Ljava/lang/String;)J
    .locals 2

    const-string v0, "0"

    invoke-static {p0, v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/Fix/Pref;
    .locals 1

    sget-object v0, Lcom/Fix/Pref;->INSTANCE:Lcom/Fix/Pref;

    if-nez v0, :cond_0

    new-instance v0, Lcom/Fix/Pref;

    invoke-direct {v0}, Lcom/Fix/Pref;-><init>()V

    sput-object v0, Lcom/Fix/Pref;->INSTANCE:Lcom/Fix/Pref;

    :cond_0
    sget-object v0, Lcom/Fix/Pref;->INSTANCE:Lcom/Fix/Pref;

    return-object v0
.end method

.method public static getLongValue(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/Fix/Pref;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongValue(Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lcom/Fix/Pref;->sResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/Fix/Pref;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/Fix/Pref;->sResources:Landroid/content/res/Resources;

    :cond_0
    sget-object v0, Lcom/Fix/Pref;->sResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static getStringResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/Fix/Pref;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/Fix/Pref;->sResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/Fix/Pref;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringSetValue(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception v2

    const/4 v2, 0x0

    :try_start_2
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object p0

    :catchall_2
    move-exception v2

    :try_start_3
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-object p0

    :catchall_3
    move-exception v1

    const-wide/16 v1, 0x0

    :try_start_4
    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-object p0

    :catchall_4
    move-exception v1

    :try_start_5
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    return-object p0

    :catchall_5
    move-exception p0

    return-object v0
.end method

.method private static handleCameraLog(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, ".*_\\d+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    invoke-static {p1, p0}, Lcom/agc/LogData$Lens;->log(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    :cond_0
    return-void
.end method

.method private static handleCustomLogical(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v0, "pref_hdrnet_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object p1, Lddm;->X:Lddg;

    iget-object p1, p1, Lddg;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lcom/AGC;->dep:Ldep;

    sget-object p1, Lddm;->X:Lddg;

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_0
    const-string v0, "pref_chameleon_control_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object p1, Ldeh;->a:Lddg;

    iget-object p1, p1, Lddg;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lcom/AGC;->dep:Ldep;

    sget-object p1, Ldeh;->a:Lddg;

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, p1, v2}, Ldep;->s(Lddg;Z)V

    :cond_2
    return-void
.end method

.method private static handleLog(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_social_app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_dirty_lens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/Fix/Pref;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static handlePatch(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    sget-boolean p0, Lcom/Fix/Pref;->isProcessingProfile:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "lib_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "patch_profile_key_"

    if-eqz p0, :cond_2

    const-string p0, ".*_key_\\d+$"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v2, v1

    invoke-static {v1, v0, v2}, Lcom/Fix/Pref;->insert([Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/Fix/Lens;->isCurrentCameraSuffix(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method private static handlePrefSync(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/Fix/Pref;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lagc/Agc;->onPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static handleRestart(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/Fix/Pref;->noRestartKey:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "pref_social_app_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/AGC;->needsRestart:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static handleShadowPref(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/Fix/Pref;->shadowKeys:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_new"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0, p1, v3}, Lcom/Fix/Pref;->syncShadowPref(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static initListener()V
    .locals 2

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/Fix/Pref;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private static insert([Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, p2, -0x1

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    aput-object v3, v1, v2

    goto :goto_1

    :cond_0
    if-ne v2, v3, :cond_1

    aput-object p1, v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, -0x1

    aget-object v3, p0, v3

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static setBooleanValue(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDefaultBooleanValue(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setMenuValue(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMenuValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMenuValue(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMenuValue(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static syncShadowKeys()V
    .locals 7

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/Fix/Pref;->shadowKeys:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_new"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lcom/Fix/Pref;->syncShadowPref(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static syncShadowPref(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    const/4 v2, 0x0

    :try_start_2
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_3
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v1

    const-wide/16 v1, 0x0

    :try_start_4
    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_0

    :catchall_4
    move-exception v1

    :try_start_5
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_0

    :catchall_5
    move-exception p0

    :goto_0
    return-void
.end method
