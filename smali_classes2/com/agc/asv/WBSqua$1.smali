.class public synthetic Lcom/agc/asv/WBSqua$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/asv/WBSqua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$agc$asv$WB$WBType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/agc/asv/WB$WBType;->values()[Lcom/agc/asv/WB$WBType;

    const/4 v0, 0x4

    new-array v1, v0, [I

    sput-object v1, Lcom/agc/asv/WBSqua$1;->$SwitchMap$com$agc$asv$WB$WBType:[I

    :try_start_0
    sget-object v2, Lcom/agc/asv/WB$WBType;->AUTO:Lcom/agc/asv/WB$WBType;

    const/4 v2, 0x1

    aput v2, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/agc/asv/WBSqua$1;->$SwitchMap$com$agc$asv$WB$WBType:[I

    sget-object v3, Lcom/agc/asv/WB$WBType;->INITN:Lcom/agc/asv/WB$WBType;

    const/4 v3, 0x0

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/agc/asv/WBSqua$1;->$SwitchMap$com$agc$asv$WB$WBType:[I

    sget-object v4, Lcom/agc/asv/WB$WBType;->KAHUI:Lcom/agc/asv/WB$WBType;

    aput v2, v3, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/agc/asv/WBSqua$1;->$SwitchMap$com$agc$asv$WB$WBType:[I

    sget-object v3, Lcom/agc/asv/WB$WBType;->SHADOW:Lcom/agc/asv/WB$WBType;

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
