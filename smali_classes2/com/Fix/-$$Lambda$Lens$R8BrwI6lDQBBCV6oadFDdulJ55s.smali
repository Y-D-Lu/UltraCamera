.class public final synthetic Lcom/Fix/-$$Lambda$Lens$R8BrwI6lDQBBCV6oadFDdulJ55s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/Fix/-$$Lambda$Lens$R8BrwI6lDQBBCV6oadFDdulJ55s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/Fix/-$$Lambda$Lens$R8BrwI6lDQBBCV6oadFDdulJ55s;

    invoke-direct {v0}, Lcom/Fix/-$$Lambda$Lens$R8BrwI6lDQBBCV6oadFDdulJ55s;-><init>()V

    sput-object v0, Lcom/Fix/-$$Lambda$Lens$R8BrwI6lDQBBCV6oadFDdulJ55s;->INSTANCE:Lcom/Fix/-$$Lambda$Lens$R8BrwI6lDQBBCV6oadFDdulJ55s;

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

    invoke-static {p1}, Lcom/Fix/Lens;->lambda$R8BrwI6lDQBBCV6oadFDdulJ55s(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
