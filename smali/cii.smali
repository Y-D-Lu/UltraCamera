.class final enum Lcii;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcii;

.field public static final enum b:Lcii;

.field public static final enum c:Lcii;

.field public static final enum d:Lcii;

.field private static final synthetic e:[Lcii;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcii;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcii;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcii;->a:Lcii;

    new-instance v1, Lcii;

    const-string v3, "INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcii;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcii;->b:Lcii;

    new-instance v3, Lcii;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcii;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcii;->c:Lcii;

    new-instance v5, Lcii;

    const-string v7, "STOPPED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcii;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcii;->d:Lcii;

    const/4 v7, 0x4

    new-array v7, v7, [Lcii;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcii;->e:[Lcii;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcii;
    .locals 1

    sget-object v0, Lcii;->e:[Lcii;

    invoke-virtual {v0}, [Lcii;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcii;

    return-object v0
.end method
