.class public final synthetic Lcom/Fix/-$$Lambda$Lens$wddj3-hVVrg0MkscpMtYt3BzY8Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/Fix/-$$Lambda$Lens$wddj3-hVVrg0MkscpMtYt3BzY8Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/Fix/-$$Lambda$Lens$wddj3-hVVrg0MkscpMtYt3BzY8Y;

    invoke-direct {v0}, Lcom/Fix/-$$Lambda$Lens$wddj3-hVVrg0MkscpMtYt3BzY8Y;-><init>()V

    sput-object v0, Lcom/Fix/-$$Lambda$Lens$wddj3-hVVrg0MkscpMtYt3BzY8Y;->INSTANCE:Lcom/Fix/-$$Lambda$Lens$wddj3-hVVrg0MkscpMtYt3BzY8Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/Fix/Lens;->lambda$wddj3-hVVrg0MkscpMtYt3BzY8Y(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
