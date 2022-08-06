.class public Lcom/agc/pref/LibraryLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final fragment:Landroid/preference/PreferenceFragment;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/pref/LibraryLoader;->fragment:Landroid/preference/PreferenceFragment;

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/pref/LibraryLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/pref/LibraryLoader;->processFile(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/agc/pref/LibraryLoader;)Landroid/preference/PreferenceFragment;
    .locals 0

    iget-object p0, p0, Lcom/agc/pref/LibraryLoader;->fragment:Landroid/preference/PreferenceFragment;

    return-object p0
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 4

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_0
    const-string p1, "copy to"

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-static {v0, v1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    iget-object p1, p0, Lcom/agc/pref/LibraryLoader;->fragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "The lib is imported."

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p1
.end method

.method public static customLibs()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/AGC;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/pref/LibraryLoader;->getLibDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLibDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "gcastartup_libs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method private processFile(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/agc/pref/LibraryLoader;->getExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "so"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/agc/pref/LibraryLoader;->fragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/pref/LibraryLoader;->getLibDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/agc/pref/LibraryLoader;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance p1, Lcom/gcam/simple/filechooser/ChooserDialog;

    invoke-direct {p1}, Lcom/gcam/simple/filechooser/ChooserDialog;-><init>()V

    iget-object v0, p0, Lcom/agc/pref/LibraryLoader;->fragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gcam/simple/filechooser/ChooserDialog;->with(Landroid/content/Context;)Lcom/gcam/simple/filechooser/ChooserDialog;

    move-result-object p1

    const-string v0, "Import Lib"

    invoke-virtual {p1, v0}, Lcom/gcam/simple/filechooser/ChooserDialog;->withTitle(Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ".*\\.(so)"

    invoke-virtual {p1, v0, v0, v1}, Lcom/gcam/simple/filechooser/ChooserDialog;->withFilterRegex(ZZLjava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gcam/simple/filechooser/ChooserDialog;->withStartFile(Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;

    move-result-object p1

    new-instance v0, Lcom/agc/pref/LibraryLoader$1;

    invoke-direct {v0, p0}, Lcom/agc/pref/LibraryLoader$1;-><init>(Lcom/agc/pref/LibraryLoader;)V

    invoke-virtual {p1, v0}, Lcom/gcam/simple/filechooser/ChooserDialog;->withChosenListener(Lcom/gcam/simple/filechooser/ChooserDialog$Result;)Lcom/gcam/simple/filechooser/ChooserDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gcam/simple/filechooser/ChooserDialog;->build()Lcom/gcam/simple/filechooser/ChooserDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gcam/simple/filechooser/ChooserDialog;->show()Lcom/gcam/simple/filechooser/ChooserDialog;

    const/4 p1, 0x1

    return p1
.end method
