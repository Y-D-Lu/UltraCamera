.class public final Lptn;
.super Lppd;

# interfaces
.implements Lpqn;


# static fields
.field public static final e:Lptn;

.field private static volatile f:Lpqs;


# instance fields
.field public a:I

.field public b:Lpto;

.field public c:Lpto;

.field public d:Lpto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lptn;

    invoke-direct {v0}, Lptn;-><init>()V

    sput-object v0, Lptn;->e:Lptn;

    const-class v1, Lptn;

    invoke-static {v1, v0}, Lppd;->F(Ljava/lang/Class;Lppd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lppd;-><init>()V

    sget-object v0, Lpoc;->b:Lpoc;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    sget-object p1, Lptn;->f:Lpqs;

    if-nez p1, :cond_1

    const-class p2, Lptn;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lptn;->f:Lpqs;

    if-nez p1, :cond_0

    new-instance p1, Lpoz;

    sget-object v0, Lptn;->e:Lptn;

    invoke-direct {p1, v0}, Lpoz;-><init>(Lppd;)V

    sput-object p1, Lptn;->f:Lpqs;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_2
    sget-object p1, Lptn;->e:Lptn;

    return-object p1

    :pswitch_3
    new-instance p1, Lpoy;

    sget-object p2, Lptn;->e:Lptn;

    invoke-direct {p1, p2}, Lpoy;-><init>(Lppd;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lptn;

    invoke-direct {p1}, Lptn;-><init>()V

    return-object p1

    :pswitch_5
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "d"

    aput-object v0, p1, p2

    sget-object p2, Lptn;->e:Lptn;

    const-string v0, "\u0001\u0003\u0000\u0001\t\u000b\u0003\u0000\u0000\u0000\t\u1009\u0002\n\u1009\u0005\u000b\u1009\u0008"

    invoke-static {p2, v0, p1}, Lptn;->E(Lpqm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
