.class public Lcom/agc/pref/LibraryLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gcam/simple/filechooser/ChooserDialog$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/pref/LibraryLoader;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/agc/pref/LibraryLoader;


# direct methods
.method public constructor <init>(Lcom/agc/pref/LibraryLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/pref/LibraryLoader$1;->this$0:Lcom/agc/pref/LibraryLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChoosePath(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "choose file:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    :try_start_0
    iget-object p2, p0, Lcom/agc/pref/LibraryLoader$1;->this$0:Lcom/agc/pref/LibraryLoader;

    invoke-static {p2, p1}, Lcom/agc/pref/LibraryLoader;->access$000(Lcom/agc/pref/LibraryLoader;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/agc/pref/LibraryLoader$1;->this$0:Lcom/agc/pref/LibraryLoader;

    invoke-static {p1}, Lcom/agc/pref/LibraryLoader;->access$100(Lcom/agc/pref/LibraryLoader;)Landroid/preference/PreferenceFragment;

    move-result-object p1

    invoke-static {p1}, Lcom/AGC;->updateLibrary(Landroid/preference/PreferenceFragment;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
