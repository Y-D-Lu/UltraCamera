.class public final synthetic Lcom/Fix/Lens$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/Fix/Lens$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/Fix/Lens$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/Fix/Lens$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/Fix/Lens$$ExternalSyntheticLambda1;->INSTANCE:Lcom/Fix/Lens$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/Fix/Lens;->lambda$getAllCameras$0(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
