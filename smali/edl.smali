.class public final enum Ledl;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ledl;

.field public static final enum b:Ledl;

.field public static final enum c:Ledl;

.field private static final synthetic d:[Ledl;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ledl;

    const-string v1, "ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ledl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ledl;->a:Ledl;

    new-instance v1, Ledl;

    const-string v3, "OFF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ledl;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ledl;->b:Ledl;

    new-instance v3, Ledl;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ledl;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ledl;->c:Ledl;

    const/4 v5, 0x3

    new-array v5, v5, [Ledl;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ledl;->d:[Ledl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ledl;
    .locals 1

    sget-object v0, Ledl;->d:[Ledl;

    invoke-virtual {v0}, [Ledl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ledl;

    return-object v0
.end method
