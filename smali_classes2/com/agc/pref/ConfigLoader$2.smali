.class public Lcom/agc/pref/ConfigLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/pref/ConfigLoader;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/agc/pref/ConfigLoader;

.field public final synthetic val$file:Ljava/io/File;

.field public final synthetic val$list:[Ljava/lang/String;

.field public final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Lcom/agc/pref/ConfigLoader;Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/pref/ConfigLoader$2;->this$0:Lcom/agc/pref/ConfigLoader;

    iput-object p2, p0, Lcom/agc/pref/ConfigLoader$2;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/agc/pref/ConfigLoader$2;->val$list:[Ljava/lang/String;

    iput-object p4, p0, Lcom/agc/pref/ConfigLoader$2;->val$spinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/agc/pref/ConfigLoader$2;->this$0:Lcom/agc/pref/ConfigLoader;

    iget-object v1, p0, Lcom/agc/pref/ConfigLoader$2;->val$file:Ljava/io/File;

    iget-object v2, p0, Lcom/agc/pref/ConfigLoader$2;->val$list:[Ljava/lang/String;

    iget-object v3, p0, Lcom/agc/pref/ConfigLoader$2;->val$spinner:Landroid/widget/Spinner;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/agc/pref/ConfigLoader;->access$100(Lcom/agc/pref/ConfigLoader;Ljava/io/File;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V

    return-void
.end method
