.class public final Lqye;
.super Lppd;

# interfaces
.implements Lpqn;


# static fields
.field public static final f:Lqye;

.field private static volatile g:Lpqs;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lppl;

.field public d:J

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lqye;

    invoke-direct {v0}, Lqye;-><init>()V

    sput-object v0, Lqye;->f:Lqye;

    const-class v1, Lqye;

    invoke-static {v1, v0}, Lppd;->F(Ljava/lang/Class;Lppd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lppd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lqye;->b:Ljava/lang/String;

    sget-object v0, Lpqb;->b:Lpqb;

    iput-object v0, p0, Lqye;->c:Lppl;

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
    sget-object p1, Lqye;->g:Lpqs;

    if-nez p1, :cond_1

    const-class p2, Lqye;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lqye;->g:Lpqs;

    if-nez p1, :cond_0

    new-instance p1, Lpoz;

    sget-object v0, Lqye;->f:Lqye;

    invoke-direct {p1, v0}, Lpoz;-><init>(Lppd;)V

    sput-object p1, Lqye;->g:Lpqs;

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
    sget-object p1, Lqye;->f:Lqye;

    return-object p1

    :pswitch_3
    new-instance p1, Lpoy;

    sget-object p2, Lqye;->f:Lqye;

    invoke-direct {p1, p2}, Lpoy;-><init>(Lppd;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lqye;

    invoke-direct {p1}, Lqye;-><init>()V

    return-object p1

    :pswitch_5
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "d"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "e"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    invoke-static {}, Lqyd;->c()Lppi;

    move-result-object v0

    aput-object v0, p1, p2

    sget-object p2, Lqye;->f:Lqye;

    const-string v0, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003(\u0004\u100c\u0002"

    invoke-static {p2, v0, p1}, Lqye;->E(Lpqm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
