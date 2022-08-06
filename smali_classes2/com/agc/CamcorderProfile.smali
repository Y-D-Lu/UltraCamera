.class public final Lcom/agc/CamcorderProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProfile(I)Ller;
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/agc/CamcorderProfile;->getProfile480()Ller;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/agc/CamcorderProfile;->getProfile4k()Ller;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/agc/CamcorderProfile;->getProfile1080()Ller;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/agc/CamcorderProfile;->getProfile720()Ller;

    move-result-object p0

    return-object p0
.end method

.method public static getProfile1080()Ller;
    .locals 3

    new-instance v0, Ller;

    invoke-direct {v0}, Ller;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ller;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ller;->c(I)V

    invoke-virtual {v0, v1}, Ller;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ller;->e(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ller;->f(I)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ller;->g(I)V

    const v2, 0x6422c40

    invoke-virtual {v0, v2}, Ller;->h(I)V

    invoke-virtual {v0, v1}, Ller;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ller;->k(I)V

    invoke-virtual {v0, v1}, Ller;->j(I)V

    const/16 v1, 0x438

    invoke-virtual {v0, v1}, Ller;->l(I)V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ller;->m(I)V

    const/16 v1, 0x780

    invoke-virtual {v0, v1}, Ller;->n(I)V

    return-object v0
.end method

.method public static getProfile480()Ller;
    .locals 3

    new-instance v0, Ller;

    invoke-direct {v0}, Ller;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ller;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ller;->c(I)V

    invoke-virtual {v0, v1}, Ller;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ller;->e(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ller;->f(I)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ller;->g(I)V

    const v2, 0x6422c40

    invoke-virtual {v0, v2}, Ller;->h(I)V

    invoke-virtual {v0, v1}, Ller;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ller;->k(I)V

    invoke-virtual {v0, v1}, Ller;->j(I)V

    const/16 v1, 0x1e0

    invoke-virtual {v0, v1}, Ller;->l(I)V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ller;->m(I)V

    const/16 v1, 0x2d0

    invoke-virtual {v0, v1}, Ller;->n(I)V

    return-object v0
.end method

.method public static getProfile4k()Ller;
    .locals 3

    new-instance v0, Ller;

    invoke-direct {v0}, Ller;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ller;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ller;->c(I)V

    invoke-virtual {v0, v1}, Ller;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ller;->e(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ller;->f(I)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ller;->g(I)V

    const v2, 0x6422c40

    invoke-virtual {v0, v2}, Ller;->h(I)V

    invoke-virtual {v0, v1}, Ller;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ller;->j(I)V

    invoke-virtual {v0, v1}, Ller;->k(I)V

    const/16 v1, 0x870

    invoke-virtual {v0, v1}, Ller;->l(I)V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ller;->m(I)V

    const/16 v1, 0xf00

    invoke-virtual {v0, v1}, Ller;->n(I)V

    return-object v0
.end method

.method public static getProfile720()Ller;
    .locals 3

    new-instance v0, Ller;

    invoke-direct {v0}, Ller;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ller;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ller;->c(I)V

    invoke-virtual {v0, v1}, Ller;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ller;->e(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ller;->f(I)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ller;->g(I)V

    const v2, 0x6422c40

    invoke-virtual {v0, v2}, Ller;->h(I)V

    invoke-virtual {v0, v1}, Ller;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ller;->j(I)V

    invoke-virtual {v0, v1}, Ller;->k(I)V

    const/16 v1, 0x2d0

    invoke-virtual {v0, v1}, Ller;->l(I)V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ller;->m(I)V

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Ller;->n(I)V

    return-object v0
.end method

.method public static getProfileHfr(I)Ller;
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/agc/CamcorderProfile;->getProfileHfr480()Ller;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/agc/CamcorderProfile;->getProfileHfr4k()Ller;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/agc/CamcorderProfile;->getProfileHfr1080()Ller;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/agc/CamcorderProfile;->getProfileHfr720()Ller;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/agc/CamcorderProfile;->getProfileHfr480()Ller;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7d2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getProfileHfr1080()Ller;
    .locals 3

    new-instance v0, Ller;

    invoke-direct {v0}, Ller;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ller;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ller;->c(I)V

    invoke-virtual {v0, v1}, Ller;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ller;->e(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ller;->f(I)V

    const/16 v2, 0x7d4

    invoke-virtual {v0, v2}, Ller;->g(I)V

    const v2, 0x6422c40

    invoke-virtual {v0, v2}, Ller;->h(I)V

    invoke-virtual {v0, v1}, Ller;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ller;->j(I)V

    invoke-virtual {v0, v1}, Ller;->k(I)V

    const/16 v1, 0x438

    invoke-virtual {v0, v1}, Ller;->l(I)V

    const/16 v1, 0xf0

    invoke-virtual {v0, v1}, Ller;->m(I)V

    const/16 v1, 0x780

    invoke-virtual {v0, v1}, Ller;->n(I)V

    return-object v0
.end method

.method public static getProfileHfr480()Ller;
    .locals 3

    new-instance v0, Ller;

    invoke-direct {v0}, Ller;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ller;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ller;->c(I)V

    invoke-virtual {v0, v1}, Ller;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ller;->e(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ller;->f(I)V

    const/16 v2, 0x7d2

    invoke-virtual {v0, v2}, Ller;->g(I)V

    const v2, 0x6422c40

    invoke-virtual {v0, v2}, Ller;->h(I)V

    invoke-virtual {v0, v1}, Ller;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ller;->j(I)V

    invoke-virtual {v0, v1}, Ller;->k(I)V

    const/16 v1, 0x1e0

    invoke-virtual {v0, v1}, Ller;->l(I)V

    invoke-virtual {v0, v1}, Ller;->m(I)V

    const/16 v1, 0x2d0

    invoke-virtual {v0, v1}, Ller;->n(I)V

    return-object v0
.end method

.method public static getProfileHfr4k()Ller;
    .locals 3

    new-instance v0, Ller;

    invoke-direct {v0}, Ller;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ller;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ller;->c(I)V

    invoke-virtual {v0, v1}, Ller;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ller;->e(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ller;->f(I)V

    const/16 v2, 0x7d5

    invoke-virtual {v0, v2}, Ller;->g(I)V

    const v2, 0x6422c40

    invoke-virtual {v0, v2}, Ller;->h(I)V

    invoke-virtual {v0, v1}, Ller;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ller;->j(I)V

    invoke-virtual {v0, v1}, Ller;->k(I)V

    const/16 v1, 0x870

    invoke-virtual {v0, v1}, Ller;->l(I)V

    const/16 v1, 0xf0

    invoke-virtual {v0, v1}, Ller;->m(I)V

    const/16 v1, 0xf00

    invoke-virtual {v0, v1}, Ller;->n(I)V

    return-object v0
.end method

.method public static getProfileHfr720()Ller;
    .locals 3

    new-instance v0, Ller;

    invoke-direct {v0}, Ller;-><init>()V

    const v1, 0x17700

    invoke-virtual {v0, v1}, Ller;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ller;->c(I)V

    invoke-virtual {v0, v1}, Ller;->d(I)V

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Ller;->e(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ller;->f(I)V

    const/16 v2, 0x7d3

    invoke-virtual {v0, v2}, Ller;->g(I)V

    const v2, 0x6422c40

    invoke-virtual {v0, v2}, Ller;->h(I)V

    invoke-virtual {v0, v1}, Ller;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ller;->j(I)V

    invoke-virtual {v0, v1}, Ller;->k(I)V

    const/16 v1, 0x2d0

    invoke-virtual {v0, v1}, Ller;->l(I)V

    const/16 v1, 0xf0

    invoke-virtual {v0, v1}, Ller;->m(I)V

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Ller;->n(I)V

    return-object v0
.end method

.method public static getProfilehas(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getProfilehasHfr(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7d2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
