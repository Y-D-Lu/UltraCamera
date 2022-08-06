.class public Lcom/agc/DefaultErrorActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final EXTRA_STACK_TRACE:Ljava/lang/String; = "EXTRA_STACK_TRACE"

.field public static uploadLogsLink:Ljava/lang/String; = ""


# instance fields
.field public logs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/agc/DefaultErrorActivity;->logs:Ljava/lang/String;

    return-void
.end method

.method private uploadLogs(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/DefaultErrorActivity;->logs:Ljava/lang/String;

    invoke-static {p1}, Lcom/agc/net/NetworkUtil;->uploadLogs(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public appInfo(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public closeApp(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public copyText(Landroid/view/View;)V
    .locals 3

    sget-object p1, Lcom/agc/DefaultErrorActivity;->uploadLogsLink:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "\u8bf7\u4e0a\u4f20\u5b8c\u65e5\u5fd7\u540e\u518d\u64cd\u4f5c\u3002"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-string p1, "clipboard"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    sget-object v1, Lcom/agc/DefaultErrorActivity;->uploadLogsLink:Ljava/lang/String;

    const-string v2, "Label"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u590d\u5236\u6210\u529f\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Lcom/agc/DefaultErrorActivity;->uploadLogsLink:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, ""

    sput-object p1, Lcom/agc/DefaultErrorActivity;->uploadLogsLink:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_STACK_TRACE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/DefaultErrorActivity;->logs:Ljava/lang/String;

    sget p1, Lcom/agc/R$layout;->agc_activity_default_error:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/agc/DefaultErrorActivity;->uploadLogs(Landroid/view/View;)V

    return-void
.end method
