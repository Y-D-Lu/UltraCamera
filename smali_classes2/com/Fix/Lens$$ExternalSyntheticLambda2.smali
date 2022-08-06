.class public final synthetic Lcom/Fix/Lens$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/Fix/Lens$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/Fix/Lens$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/Fix/Lens$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/Fix/Lens$$ExternalSyntheticLambda2;->INSTANCE:Lcom/Fix/Lens$$ExternalSyntheticLambda2;

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

    invoke-static {p1}, Lcom/Fix/Lens;->$r8$lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
