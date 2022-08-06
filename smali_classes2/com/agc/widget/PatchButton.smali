.class public Lcom/agc/widget/PatchButton;
.super Lcom/agc/widget/OptionButton;
.source "SourceFile"


# static fields
.field public static DEFAUT_PATCH_COUNT:I = 0x3


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/PatchButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/PatchButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/PatchButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/PatchButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getTitle(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib_profile_title_key_p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/AGC;->getAuxPrefStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "patch_profile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/Res;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/agc/widget/OptionButton$OptionButtonItem;

    new-instance v2, Lcom/agc/widget/OptionButton$OptionButtonItem;

    const-string v3, "disable"

    invoke-static {v3}, Lcom/agc/Res;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "agc_patch_disable"

    const/4 v5, 0x0

    invoke-direct {v2, p0, v4, v3, v5}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/agc/widget/OptionButton$OptionButtonItem;

    const-string v3, "agc_patch_ka"

    const-string v4, "Ka"

    const/4 v6, 0x1

    invoke-direct {v2, p0, v3, v4, v6}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/agc/widget/OptionButton$OptionButtonItem;

    const-string v3, "agc_patch_ka_day"

    const/4 v7, 0x2

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/agc/widget/PatchButton;->DEFAUT_PATCH_COUNT:I

    invoke-static {}, Lcom/Fix/Lens;->getAuxKey()I

    move v0, v5

    :goto_0
    const/16 v1, 0x9

    const-string v2, "lib_profile_show_key_p"

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    new-instance v2, Lcom/agc/widget/OptionButton$OptionButtonItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "agc_patch_profile_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/agc/widget/PatchButton;->getTitle(I)Ljava/lang/String;

    move-result-object v4

    sget v7, Lcom/agc/widget/PatchButton;->DEFAUT_PATCH_COUNT:I

    add-int/2addr v7, v0

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "lib_patch_profile_key"

    invoke-static {v0}, Lcom/Fix/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    sget v2, Lcom/agc/widget/PatchButton;->DEFAUT_PATCH_COUNT:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/AGC;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    iput v5, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    :cond_2
    iget v0, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    if-lez v0, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p0, v5}, Lcom/agc/widget/OptionButton;->setChecked(Z)V

    invoke-super {p0, p1}, Lcom/agc/widget/OptionButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/agc/widget/OptionButton;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    iget p1, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/agc/widget/OptionButton;->setChecked(Z)V

    return-void
.end method

.method public onClickAccessoryButton()V
    .locals 4

    iget v0, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    sget v1, Lcom/agc/widget/PatchButton;->DEFAUT_PATCH_COUNT:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    const-string v3, "pref_screen_is_first"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/agc/widget/PatchButton;->getTitle(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_screen_title"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pref_screen_extra"

    const-string v3, "lib_group_default_key"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/Fix/Lens;->getAuxKey()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_lens_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_profile_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-super {p0}, Lcom/agc/widget/OptionButton;->onClickAccessoryButton()V

    return-void
.end method

.method public onClickPopItem(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/agc/widget/OptionButton;->onClickPopItem(I)V

    sget v0, Lcom/AGC;->sHdr_process:I

    if-lez v0, :cond_0

    const-string p1, "hdr_processing"

    invoke-static {p1}, Lcom/agc/Res;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "d"

    invoke-static {v0, p1}, Lcom/agc/Toast;->show(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "lib_patch_profile_key"

    invoke-static {v0, p1}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    sget v0, Lcom/agc/widget/PatchButton;->DEFAUT_PATCH_COUNT:I

    if-lt p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "patch_profile_key_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/Fix/Lens;->getAuxKey()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/agc/widget/PatchButton;->DEFAUT_PATCH_COUNT:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/Fix/Pref;->setMenuValue(Ljava/lang/String;I)V

    :cond_1
    iget p1, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/agc/widget/OptionButton;->setChecked(Z)V

    invoke-static {}, Lcom/AGC;->onRestart()V

    return-void
.end method
