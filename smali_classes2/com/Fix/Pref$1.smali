.class public Lcom/Fix/Pref$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Fix/Pref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/Fix/Pref;->access$000(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/Fix/Pref;->access$100(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/Fix/Pref;->access$200(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/Fix/Pref;->access$300(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/Fix/Pref;->access$400(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
