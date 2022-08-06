.class public Lcom/agc/pref/ConfigLoader;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static blackListKey:[Ljava/lang/String;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "pref_aux_key"

    const-string v1, "pref_camera_id_list_key"

    const-string v2, "pref_all_camera_id_list_key"

    const-string v3, "pref_chameleon_control_key"

    const-string v4, "camera.chameleon.enabled"

    const-string v5, "pref_switch_front_restart_key"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/agc/pref/ConfigLoader;->blackListKey:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/agc/pref/ConfigLoader;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/pref/ConfigLoader;Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/agc/pref/ConfigLoader;->deleteConfig(Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/agc/pref/ConfigLoader;Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/agc/pref/ConfigLoader;->importConfig(Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x400

    new-array p0, p0, [B

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private deleteConfig(Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p3

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/pref/ConfigLoader;->deleteConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method private deleteConfig(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static final getFileSharedPreferences(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "files/"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/AGC;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "shared_prefs"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".xml"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    return-object v2
.end method

.method public static importConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/agc/pref/ConfigLoader;->getFileSharedPreferences(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/agc/pref/ConfigLoader;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/agc/pref/ConfigLoader;->blackListKey:[Ljava/lang/String;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-static {}, Lcom/Fix/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/AGC;->onRestart()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p1, "Permission is required to access the memory!"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private importConfig(Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    iget-object p4, p0, Lcom/agc/pref/ConfigLoader;->context:Landroid/content/Context;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p3

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/agc/pref/ConfigLoader;->importConfig(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method private show()V
    .locals 8

    const-string v0, "pref_xml_path_key"

    invoke-static {v0}, Lcom/Fix/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "select_config"

    if-eqz v2, :cond_1

    array-length v5, v2

    if-lez v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/agc/pref/ConfigLoader;->context:Landroid/content/Context;

    const v6, 0x1090008

    invoke-direct {v0, v5, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v5, 0x7f0e00e0

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v5, Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/agc/pref/ConfigLoader;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    const v6, 0x7f060662

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    iget-object v6, p0, Lcom/agc/pref/ConfigLoader;->context:Landroid/content/Context;

    const/high16 v7, -0x3e800000    # -16.0f

    invoke-static {v6, v7}, Lcom/agc/util/AgcUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v0, 0x0

    const/16 v6, 0x10

    invoke-static {v5, v6, v6, v6, v0}, Lcom/agc/util/AgcUtil;->viewWithMargin(Landroid/view/View;IIII)Landroid/view/View;

    move-result-object v0

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/agc/pref/ConfigLoader;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/agc/Res;->getStringID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v4, "load"

    invoke-static {v4}, Lcom/agc/Res;->getStringID(Ljava/lang/String;)I

    move-result v4

    new-instance v6, Lcom/agc/pref/ConfigLoader$2;

    invoke-direct {v6, p0, v1, v2, v5}, Lcom/agc/pref/ConfigLoader$2;-><init>(Lcom/agc/pref/ConfigLoader;Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v4, "quit"

    invoke-static {v4}, Lcom/agc/Res;->getStringID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "delete"

    invoke-static {v3}, Lcom/agc/Res;->getStringID(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/agc/pref/ConfigLoader$1;

    invoke-direct {v4, p0, v1, v2, v5}, Lcom/agc/pref/ConfigLoader$1;-><init>(Lcom/agc/pref/ConfigLoader;Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-void

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You don\'t have any configs in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/agc/pref/ConfigLoader;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/agc/Res;->getStringID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final apply(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_config_show"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/pref/ConfigLoader;->show()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/agc/pref/ConfigLoader;->show()V

    const/4 p1, 0x1

    return p1
.end method
