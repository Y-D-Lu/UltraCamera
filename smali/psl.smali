.class public final Lpsl;
.super Lppd;

# interfaces
.implements Lpqn;


# static fields
.field public static final m:Lpsl;

.field private static volatile n:Lpqs;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Lpsj;

.field public k:Lppl;

.field public l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lpsl;

    invoke-direct {v0}, Lpsl;-><init>()V

    sput-object v0, Lpsl;->m:Lpsl;

    const-class v1, Lpsl;

    invoke-static {v1, v0}, Lppd;->F(Ljava/lang/Class;Lppd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lppd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lpsl;->b:Ljava/lang/String;

    iput-object v0, p0, Lpsl;->g:Ljava/lang/String;

    sget-object v1, Lpqb;->b:Lpqb;

    iput-object v1, p0, Lpsl;->k:Lppl;

    iput-object v0, p0, Lpsl;->l:Ljava/lang/String;

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
    sget-object p1, Lpsl;->n:Lpqs;

    if-nez p1, :cond_1

    const-class p2, Lpsl;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lpsl;->n:Lpqs;

    if-nez p1, :cond_0

    new-instance p1, Lpoz;

    sget-object v0, Lpsl;->m:Lpsl;

    invoke-direct {p1, v0}, Lpoz;-><init>(Lppd;)V

    sput-object p1, Lpsl;->n:Lpqs;

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
    sget-object p1, Lpsl;->m:Lpsl;

    return-object p1

    :pswitch_3
    new-instance p1, Lpoy;

    sget-object p2, Lpsl;->m:Lpsl;

    invoke-direct {p1, p2}, Lpoy;-><init>(Lppd;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lpsl;

    invoke-direct {p1}, Lpsl;-><init>()V

    return-object p1

    :pswitch_5
    const/16 p1, 0xe

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

    const-string v0, "e"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "f"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "g"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "h"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    sget-object v0, Lper;->j:Lppi;

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    sget-object v0, Lper;->i:Lppi;

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "c"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "j"

    aput-object v0, p1, p2

    sget-object p2, Lpsl;->m:Lpsl;

    const-string v0, "\u0001\u000b\u0000\u0001\u0001\r\u000b\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1002\u0002\u0003\u1002\u0003\u0004\u1002\u0004\u0005\u1008\u0005\u0006\u100c\u0006\u0007\u100c\u0007\t\u0014\u000b\u1008\u000b\u000c\u1004\u0001\r\u1009\t"

    invoke-static {p2, v0, p1}, Lpsl;->E(Lpqm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

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

.method public final i()V
    .locals 2

    iget-object v0, p0, Lpsl;->k:Lppl;

    invoke-interface {v0}, Lppl;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lppd;->z(Lppl;)Lppl;

    move-result-object v0

    iput-object v0, p0, Lpsl;->k:Lppl;

    :cond_0
    return-void
.end method
