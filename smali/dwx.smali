.class public final Ldwx;
.super Ljava/lang/Object;

# interfaces
.implements Ldwz;


# instance fields
.field private final a:Landroid/content/UriMatcher;

.field private final b:Ldxp;

.field private final c:Ldwu;


# direct methods
.method public constructor <init>(Ldwu;Landroid/content/UriMatcher;Ldxp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwx;->c:Ldwu;

    iput-object p2, p0, Ldwx;->a:Landroid/content/UriMatcher;

    iput-object p3, p0, Ldwx;->b:Ldxp;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, [Ljava/lang/String;

    iget-object v0, p0, Ldwx;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x12

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unrecognized uri: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    invoke-static {p1}, Lenl;->A(Landroid/net/Uri;)J

    move-result-wide v0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Ldwx;->c:Ldwu;

    invoke-virtual {v2, v0, v1}, Ldwu;->a(J)Lojc;

    move-result-object v0

    invoke-virtual {v0}, Lojc;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lojc;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldws;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Ldwx;->c:Ldwu;

    invoke-virtual {p1}, Ldwu;->c()Ljava/util/List;

    move-result-object p1

    :cond_0
    :goto_0
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldws;

    array-length v2, p2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    array-length v6, p2

    if-ge v5, v6, :cond_4

    aget-object v7, p2, v5

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_1
    goto :goto_3

    :sswitch_0
    const-string v8, "media_store_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    goto :goto_4

    :sswitch_1
    const-string v8, "progress_percentage"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x2

    goto :goto_4

    :sswitch_2
    const-string v8, "special_type_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x3

    goto :goto_4

    :sswitch_3
    const-string v8, "progress_status"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_4

    :goto_3
    const/4 v8, -0x1

    :goto_4
    packed-switch v8, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "invalid projection: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :pswitch_2
    iget-object v8, p0, Ldwx;->b:Ldxp;

    iget-object v9, v1, Ldws;->a:Lhsj;

    iget-wide v9, v9, Lhsj;->a:J

    invoke-interface {v8, v9, v10}, Ldxp;->a(J)Lojc;

    move-result-object v8

    invoke-virtual {v8}, Lojc;->g()Z

    move-result v9

    const-string v10, "media store id is not found in locating its special type."

    invoke-static {v9, v10}, Lobr;->aG(ZLjava/lang/Object;)V

    invoke-virtual {v8}, Lojc;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldxh;

    invoke-virtual {v8}, Ldxh;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    goto :goto_5

    :pswitch_3
    invoke-virtual {v1}, Ldws;->b()Llif;

    move-result-object v8

    aput-object v8, v2, v5

    goto :goto_5

    :pswitch_4
    invoke-virtual {v1}, Ldws;->f()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v5

    goto :goto_5

    :pswitch_5
    iget-object v8, v1, Ldws;->a:Lhsj;

    iget-wide v8, v8, Lhsj;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v2, v5

    :goto_5
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v1, "}"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x380051bc -> :sswitch_3
        -0x35cc0146 -> :sswitch_2
        0x2a457ec -> :sswitch_1
        0x53e52334 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
