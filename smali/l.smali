.class public final Ll;
.super Ljava/text/Format;


# static fields
.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:Ljava/util/Locale;

.field static final serialVersionUID:J = 0x6308eb804ceb42dcL


# instance fields
.field public transient a:Ljava/util/Locale;

.field public transient b:Laa;

.field public transient c:Ljava/util/Map;

.field private transient h:Ljava/text/DateFormat;

.field private transient i:Ljava/text/NumberFormat;

.field private transient j:Lk;

.field private transient k:Lk;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "date"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "time"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "spellout"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "ordinal"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "duration"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sput-object v0, Ll;->d:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v8, "currency"

    aput-object v8, v0, v3

    const-string v8, "percent"

    aput-object v8, v0, v4

    const-string v8, "integer"

    aput-object v8, v0, v5

    sput-object v0, Ll;->e:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v2, "short"

    aput-object v2, v0, v3

    const-string v2, "medium"

    aput-object v2, v0, v4

    const-string v2, "long"

    aput-object v2, v0, v5

    const-string v2, "full"

    aput-object v2, v0, v6

    sput-object v0, Ll;->f:[Ljava/lang/String;

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Ll;->g:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 9

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    iput-object p2, p0, Ll;->a:Ljava/util/Locale;

    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Ll;->b:Laa;

    if-nez v0, :cond_0

    new-instance v0, Laa;

    invoke-direct {v0, p1}, Laa;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ll;->b:Laa;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Laa;->i(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Ll;->c:Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_1
    iget-object p1, p0, Ll;->b:Laa;

    invoke-virtual {p1}, Laa;->b()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_1
    if-ge v1, p1, :cond_6

    iget-object v2, p0, Ll;->b:Laa;

    invoke-virtual {v2, v1}, Laa;->d(I)Lz;

    move-result-object v2

    iget v3, v2, Lz;->e:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v2}, Lz;->b()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    add-int/lit8 v2, v1, 0x2

    iget-object v4, p0, Ll;->b:Laa;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v2}, Laa;->d(I)Lz;

    move-result-object v2

    invoke-virtual {v4, v2}, Laa;->f(Lz;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    iget-object v6, p0, Ll;->b:Laa;

    invoke-virtual {v6, v5}, Laa;->d(I)Lz;

    move-result-object v6

    iget v7, v6, Lz;->e:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_3

    iget-object v4, p0, Ll;->b:Laa;

    invoke-virtual {v4, v6}, Laa;->f(Lz;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_2
    sget-object v6, Ll;->d:[Ljava/lang/String;

    invoke-static {v2, v6}, Ll;->c(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    packed-switch v6, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_7

    :pswitch_0
    sget-object v2, Ll;->f:[Ljava/lang/String;

    invoke-static {v4, v2}, Ll;->c(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    new-instance v2, Ljava/text/SimpleDateFormat;

    goto :goto_3

    :pswitch_1
    iget-object v2, p0, Ll;->a:Ljava/util/Locale;

    invoke-static {p2, v2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    goto/16 :goto_6

    :pswitch_2
    iget-object v2, p0, Ll;->a:Ljava/util/Locale;

    invoke-static {v0, v2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    goto/16 :goto_6

    :pswitch_3
    iget-object v2, p0, Ll;->a:Ljava/util/Locale;

    invoke-static {v3, v2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    goto/16 :goto_6

    :pswitch_4
    iget-object v2, p0, Ll;->a:Ljava/util/Locale;

    invoke-static {v7, v2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    goto/16 :goto_6

    :pswitch_5
    iget-object v2, p0, Ll;->a:Ljava/util/Locale;

    invoke-static {v3, v2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    goto/16 :goto_6

    :goto_3
    iget-object v3, p0, Ll;->a:Ljava/util/Locale;

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/16 :goto_6

    :pswitch_6
    sget-object v2, Ll;->f:[Ljava/lang/String;

    invoke-static {v4, v2}, Ll;->c(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_2

    new-instance v2, Ljava/text/SimpleDateFormat;

    goto :goto_4

    :pswitch_7
    iget-object v2, p0, Ll;->a:Ljava/util/Locale;

    invoke-static {p2, v2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_6

    :pswitch_8
    iget-object v2, p0, Ll;->a:Ljava/util/Locale;

    invoke-static {v0, v2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_6

    :pswitch_9
    iget-object v2, p0, Ll;->a:Ljava/util/Locale;

    invoke-static {v3, v2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_6

    :pswitch_a
    iget-object v2, p0, Ll;->a:Ljava/util/Locale;

    invoke-static {v7, v2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_6

    :pswitch_b
    iget-object v2, p0, Ll;->a:Ljava/util/Locale;

    invoke-static {v3, v2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_6

    :goto_4
    iget-object v3, p0, Ll;->a:Ljava/util/Locale;

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_6

    :pswitch_c
    sget-object v2, Ll;->e:[Ljava/lang/String;

    invoke-static {v4, v2}, Ll;->c(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_3

    new-instance v2, Ljava/text/DecimalFormat;

    goto :goto_5

    :pswitch_d
    iget-object v2, p0, Ll;->a:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    goto :goto_6

    :pswitch_e
    iget-object v2, p0, Ll;->a:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    goto :goto_6

    :pswitch_f
    iget-object v2, p0, Ll;->a:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    goto :goto_6

    :pswitch_10
    iget-object v2, p0, Ll;->a:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    goto :goto_6

    :goto_5
    new-instance v3, Ljava/text/DecimalFormatSymbols;

    iget-object v6, p0, Ll;->a:Ljava/util/Locale;

    invoke-direct {v3, v6}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v2, v4, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    :goto_6
    iget-object v3, p0, Ll;->c:Ljava/util/Map;

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Ll;->c:Ljava/util/Map;

    :cond_4
    iget-object v3, p0, Ll;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    goto :goto_8

    :goto_7
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown format type \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_8
    add-int/2addr v1, v0

    goto/16 :goto_1

    :cond_6
    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Ll;->b:Laa;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    iput-object v1, v0, Laa;->a:Ljava/lang/String;

    iput-boolean p2, v0, Laa;->d:Z

    iget-object p2, v0, Laa;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, v0, Laa;->c:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :cond_7
    iget-object p2, p0, Ll;->c:Ljava/util/Map;

    if-nez p2, :cond_8

    goto :goto_9

    :cond_8
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    :goto_9
    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public static final varargs a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ll;

    invoke-direct {v2, p1, p0}, Ll;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Lg;

    invoke-direct {v8, v0}, Lg;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v7, p2

    invoke-direct/range {v2 .. v9}, Ll;->f(ILj;[Ljava/lang/Object;Ljava/util/Map;[Ljava/lang/Object;Lg;Ljava/text/FieldPosition;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    sget-object v0, Le;->a:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Le;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Le;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Le;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ge v3, v0, :cond_2

    :goto_1
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Le;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    sget-object v0, Ll;->g:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    array-length v0, p1

    if-ge v2, v0, :cond_5

    aget-object v0, p1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return v1
.end method

.method private final d(Ljava/lang/Object;Lg;Ljava/text/FieldPosition;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2, p3}, Ll;->e([Ljava/lang/Object;Ljava/util/Map;Lg;Ljava/text/FieldPosition;)V

    return-void

    :cond_1
    :goto_0
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2, p3}, Ll;->e([Ljava/lang/Object;Ljava/util/Map;Lg;Ljava/text/FieldPosition;)V

    return-void
.end method

.method private final e([Ljava/lang/Object;Ljava/util/Map;Lg;Ljava/text/FieldPosition;)V
    .locals 8

    if-eqz p1, :cond_1

    iget-object v0, p0, Ll;->b:Laa;

    iget-boolean v0, v0, Laa;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ll;->f(ILj;[Ljava/lang/Object;Ljava/util/Map;[Ljava/lang/Object;Lg;Ljava/text/FieldPosition;)V

    return-void
.end method

.method private final f(ILj;[Ljava/lang/Object;Ljava/util/Map;[Ljava/lang/Object;Lg;Ljava/text/FieldPosition;)V
    .locals 35

    move-object/from16 v8, p0

    move/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    iget-object v1, v8, Ll;->b:Laa;

    iget-object v13, v1, Laa;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Laa;->d(I)Lz;

    move-result-object v1

    invoke-virtual {v1}, Lz;->a()I

    move-result v1

    const/4 v14, 0x1

    add-int/2addr v0, v14

    move v2, v1

    move v1, v0

    move-object/from16 v0, p7

    :goto_0
    iget-object v3, v8, Ll;->b:Laa;

    invoke-virtual {v3, v1}, Laa;->d(I)Lz;

    move-result-object v3

    iget v4, v3, Lz;->e:I

    iget v5, v3, Lz;->a:I

    :try_start_0
    iget-object v6, v12, Lg;->a:Ljava/lang/Appendable;

    invoke-interface {v6, v13, v2, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    iget v6, v12, Lg;->b:I

    sub-int/2addr v5, v2

    add-int/2addr v6, v5

    iput v6, v12, Lg;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-ne v4, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Lz;->a()I

    move-result v5

    const/4 v6, 0x5

    if-ne v4, v6, :cond_2

    iget-boolean v2, v9, Lj;->h:Z

    if-eqz v2, :cond_1

    iget-object v2, v9, Lj;->f:Ljava/text/Format;

    iget-object v3, v9, Lj;->c:Ljava/lang/Number;

    iget-object v4, v9, Lj;->g:Ljava/lang/String;

    invoke-virtual {v12, v2, v3, v4}, Lg;->c(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ll;->b()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v3, v9, Lj;->c:Ljava/lang/Number;

    invoke-virtual {v12, v2, v3}, Lg;->b(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v7, 0x6

    if-eq v4, v7, :cond_3

    :goto_1
    move v3, v1

    move v2, v5

    move-object v1, v12

    move-object/from16 v20, v13

    goto/16 :goto_28

    :cond_3
    iget-object v4, v8, Ll;->b:Laa;

    invoke-virtual {v4, v1}, Laa;->c(I)I

    move-result v15

    invoke-virtual {v3}, Lz;->b()I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    iget-object v4, v8, Ll;->b:Laa;

    invoke-virtual {v4, v1}, Laa;->d(I)Lz;

    move-result-object v4

    iget-object v5, v8, Ll;->b:Laa;

    invoke-virtual {v5, v4}, Laa;->f(Lz;)Ljava/lang/String;

    move-result-object v5

    const/16 v22, 0x0

    const/16 v23, 0x0

    if-eqz v10, :cond_6

    iget-short v4, v4, Lz;->c:S

    iget-object v7, v12, Lg;->c:Ljava/util/List;

    if-eqz v7, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_4
    move-object/from16 v7, v22

    :goto_2
    if-ltz v4, :cond_5

    array-length v6, v10

    if-ge v4, v6, :cond_5

    aget-object v4, v10, v4

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    move-object/from16 v4, v22

    const/4 v6, 0x1

    :goto_3
    goto :goto_6

    :cond_6
    if-eqz p5, :cond_9

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_8

    aget-object v6, p5, v4

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v4, v4, 0x1

    aget-object v4, p5, v4

    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    :cond_8
    move-object/from16 v4, v22

    const/4 v6, 0x1

    :goto_5
    move-object v7, v5

    goto :goto_6

    :cond_9
    if-eqz v11, :cond_b

    invoke-interface {v11, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v5

    const/4 v6, 0x0

    goto :goto_6

    :cond_a
    move-object v7, v5

    move-object/from16 v4, v22

    const/4 v6, 0x1

    goto :goto_6

    :cond_b
    move-object v7, v5

    move-object/from16 v4, v22

    const/4 v6, 0x1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    iget v14, v12, Lg;->b:I

    if-eqz v6, :cond_c

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lg;->a(Ljava/lang/CharSequence;)V

    move-object/from16 v26, v0

    move-object/from16 v29, v7

    move-object v1, v12

    move-object/from16 v20, v13

    move/from16 v30, v14

    move/from16 v21, v15

    goto/16 :goto_25

    :cond_c
    if-nez v4, :cond_d

    const-string v1, "null"

    invoke-virtual {v12, v1}, Lg;->a(Ljava/lang/CharSequence;)V

    move-object/from16 v26, v0

    move-object/from16 v29, v7

    move-object v1, v12

    move-object/from16 v20, v13

    move/from16 v30, v14

    move/from16 v21, v15

    goto/16 :goto_25

    :cond_d
    const-wide/16 v24, 0x0

    if-eqz v9, :cond_f

    iget v6, v9, Lj;->e:I

    add-int/lit8 v2, v1, -0x2

    if-ne v6, v2, :cond_f

    iget-wide v1, v9, Lj;->d:D

    cmpl-double v3, v1, v24

    if-nez v3, :cond_e

    iget-object v1, v9, Lj;->f:Ljava/text/Format;

    iget-object v2, v9, Lj;->c:Ljava/lang/Number;

    iget-object v3, v9, Lj;->g:Ljava/lang/String;

    invoke-virtual {v12, v1, v2, v3}, Lg;->c(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v26, v0

    move-object/from16 v29, v7

    move-object v1, v12

    move-object/from16 v20, v13

    move/from16 v30, v14

    move/from16 v21, v15

    goto/16 :goto_25

    :cond_e
    iget-object v1, v9, Lj;->f:Ljava/text/Format;

    invoke-virtual {v12, v1, v4}, Lg;->b(Ljava/text/Format;Ljava/lang/Object;)V

    move-object/from16 v26, v0

    move-object/from16 v29, v7

    move-object v1, v12

    move-object/from16 v20, v13

    move/from16 v30, v14

    move/from16 v21, v15

    goto/16 :goto_25

    :cond_f
    iget-object v2, v8, Ll;->c:Ljava/util/Map;

    if-eqz v2, :cond_10

    add-int/lit8 v6, v1, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    if-eqz v2, :cond_10

    invoke-virtual {v12, v2, v4}, Lg;->b(Ljava/text/Format;Ljava/lang/Object;)V

    move-object/from16 v26, v0

    move-object/from16 v29, v7

    move-object v1, v12

    move-object/from16 v20, v13

    move/from16 v30, v14

    move/from16 v21, v15

    goto/16 :goto_25

    :cond_10
    const/4 v6, 0x1

    if-eq v3, v6, :cond_4b

    iget-object v6, v8, Ll;->c:Ljava/util/Map;

    if-eqz v6, :cond_11

    add-int/lit8 v16, v1, -0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v26, v0

    move-object/from16 v29, v7

    move-object/from16 v20, v13

    move/from16 v30, v14

    move/from16 v21, v15

    goto/16 :goto_24

    :cond_11
    const-string v2, "\' is not a Number"

    const-string v6, "\'"

    move-object/from16 v16, v7

    const/4 v7, 0x3

    if-ne v3, v7, :cond_16

    instance-of v3, v4, Ljava/lang/Number;

    if-eqz v3, :cond_15

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v4, v8, Ll;->b:Laa;

    invoke-virtual {v4}, Laa;->b()I

    move-result v5

    add-int/lit8 v1, v1, 0x2

    move v6, v1

    :goto_7
    invoke-virtual {v4, v6}, Laa;->c(I)I

    move-result v1

    const/4 v7, 0x1

    add-int/2addr v1, v7

    if-lt v1, v5, :cond_12

    goto :goto_9

    :cond_12
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v4, v1}, Laa;->d(I)Lz;

    move-result-object v1

    move/from16 p1, v5

    iget v5, v1, Lz;->e:I

    const/4 v9, 0x7

    if-eq v5, v9, :cond_14

    invoke-virtual {v4, v1}, Laa;->a(Lz;)D

    move-result-wide v17

    add-int/lit8 v1, v7, 0x1

    iget-object v5, v4, Laa;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz;

    iget v5, v5, Lz;->a:I

    iget-object v7, v4, Laa;->a:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x3c

    if-ne v5, v7, :cond_13

    cmpl-double v5, v2, v17

    if-lez v5, :cond_14

    goto :goto_8

    :cond_13
    cmpl-double v5, v2, v17

    if-ltz v5, :cond_14

    :goto_8
    move/from16 v5, p1

    move-object/from16 v9, p2

    move v6, v1

    goto :goto_7

    :cond_14
    :goto_9
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move v2, v6

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, v16

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Ll;->g(ILj;[Ljava/lang/Object;Ljava/util/Map;[Ljava/lang/Object;Lg;)V

    move-object/from16 v26, v0

    move-object/from16 v29, v9

    move-object v1, v12

    move-object/from16 v20, v13

    move/from16 v30, v14

    move/from16 v21, v15

    goto/16 :goto_25

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    move-object/from16 v9, v16

    invoke-static {v3}, Ld;->b(I)Z

    move-result v7

    const-string v10, "other"

    if-eqz v7, :cond_44

    instance-of v7, v4, Ljava/lang/Number;

    if-eqz v7, :cond_43

    const/4 v2, 0x4

    if-ne v3, v2, :cond_18

    iget-object v2, v8, Ll;->j:Lk;

    if-nez v2, :cond_17

    new-instance v2, Lk;

    const/4 v3, 0x1

    invoke-direct {v2, v8, v3}, Lk;-><init>(Ll;I)V

    iput-object v2, v8, Ll;->j:Lk;

    :cond_17
    iget-object v2, v8, Ll;->j:Lk;

    move-object v3, v2

    goto :goto_a

    :cond_18
    iget-object v2, v8, Ll;->k:Lk;

    if-nez v2, :cond_19

    new-instance v2, Lk;

    const/4 v3, 0x2

    invoke-direct {v2, v8, v3}, Lk;-><init>(Ll;I)V

    iput-object v2, v8, Ll;->k:Lk;

    :cond_19
    iget-object v2, v8, Ll;->k:Lk;

    move-object v3, v2

    :goto_a
    check-cast v4, Ljava/lang/Number;

    iget-object v2, v8, Ll;->b:Laa;

    iget-object v6, v2, Laa;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz;

    iget v7, v6, Lz;->e:I

    invoke-static {v7}, Ld;->d(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v2, v6}, Laa;->a(Lz;)D

    move-result-wide v6

    move-wide/from16 v20, v6

    goto :goto_b

    :cond_1a
    move-wide/from16 v20, v24

    :goto_b
    new-instance v7, Lj;

    move-object/from16 v16, v7

    move/from16 v17, v1

    move-object/from16 v18, v5

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v21}, Lj;-><init>(ILjava/lang/String;Ljava/lang/Number;D)V

    iget-object v5, v8, Ll;->b:Laa;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    invoke-virtual {v5}, Laa;->b()I

    move-result v2

    invoke-virtual {v5, v1}, Laa;->d(I)Lz;

    move-result-object v4

    iget v6, v4, Lz;->e:I

    invoke-static {v6}, Ld;->d(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual {v5, v4}, Laa;->a(Lz;)D

    move-result-wide v18

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1b
    move-wide/from16 v18, v24

    :goto_c
    move-object/from16 v11, v22

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_d
    move-object/from16 v20, v13

    add-int/lit8 v13, v1, 0x1

    invoke-virtual {v5, v1}, Laa;->d(I)Lz;

    move-result-object v1

    move/from16 v21, v15

    iget v15, v1, Lz;->e:I

    move-object/from16 v26, v0

    const/4 v0, 0x7

    if-ne v15, v0, :cond_1c

    move v2, v6

    move-object/from16 p1, v7

    move-object/from16 v29, v9

    move/from16 v30, v14

    goto/16 :goto_21

    :cond_1c
    invoke-virtual {v5, v13}, Laa;->h(I)I

    move-result v0

    invoke-static {v0}, Ld;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    add-int/lit8 v0, v13, 0x1

    invoke-virtual {v5, v13}, Laa;->d(I)Lz;

    move-result-object v1

    invoke-virtual {v5, v1}, Laa;->a(Lz;)D

    move-result-wide v27

    cmpl-double v1, v16, v27

    if-nez v1, :cond_1d

    move v2, v0

    move-object/from16 p1, v7

    move-object/from16 v29, v9

    move/from16 v30, v14

    goto/16 :goto_21

    :cond_1d
    move v13, v0

    move-object/from16 p1, v7

    move-object/from16 v29, v9

    move/from16 v30, v14

    const/4 v7, 0x6

    const/4 v8, 0x2

    goto/16 :goto_20

    :cond_1e
    if-nez v4, :cond_41

    invoke-virtual {v5, v1, v10}, Laa;->g(Lz;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    if-nez v6, :cond_20

    if-eqz v11, :cond_1f

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move-object/from16 p1, v7

    move-object/from16 v29, v9

    move v6, v13

    move/from16 v30, v14

    const/4 v4, 0x1

    const/4 v7, 0x6

    const/4 v8, 0x2

    goto/16 :goto_20

    :cond_1f
    move-object/from16 p1, v7

    move-object/from16 v29, v9

    move v6, v13

    move/from16 v30, v14

    const/4 v7, 0x6

    const/4 v8, 0x2

    goto/16 :goto_20

    :cond_20
    move/from16 v27, v4

    move-object/from16 p1, v7

    move-object/from16 v29, v9

    move/from16 v28, v13

    move/from16 v30, v14

    const/4 v7, 0x6

    const/4 v8, 0x2

    goto/16 :goto_1f

    :cond_21
    if-nez v11, :cond_3f

    move v15, v13

    move v0, v14

    sub-double v13, v16, v18

    iget-object v11, v3, Lk;->b:Lx;

    if-nez v11, :cond_22

    iget-object v11, v3, Lk;->a:Ll;

    iget-object v11, v11, Ll;->a:Ljava/util/Locale;

    move/from16 v27, v4

    iget v4, v3, Lk;->c:I

    invoke-static {v11, v4}, Lx;->d(Ljava/util/Locale;I)Lx;

    move-result-object v4

    iput-object v4, v3, Lk;->b:Lx;

    goto :goto_e

    :cond_22
    move/from16 v27, v4

    :goto_e
    iget-object v4, v3, Lk;->a:Ll;

    iget v11, v7, Lj;->a:I

    move/from16 v28, v15

    iget-object v15, v4, Ll;->b:Laa;

    invoke-virtual {v15}, Laa;->b()I

    move-result v15

    move-object/from16 v29, v9

    iget-object v9, v4, Ll;->b:Laa;

    invoke-virtual {v9, v11}, Laa;->d(I)Lz;

    move-result-object v9

    iget v9, v9, Lz;->e:I

    invoke-static {v9}, Ld;->d(I)Z

    move-result v9

    if-eqz v9, :cond_23

    add-int/lit8 v11, v11, 0x1

    :cond_23
    :goto_f
    add-int/lit8 v9, v11, 0x1

    move/from16 v30, v0

    iget-object v0, v4, Ll;->b:Laa;

    invoke-virtual {v0, v11}, Laa;->d(I)Lz;

    move-result-object v0

    iget v11, v0, Lz;->e:I

    const/4 v12, 0x7

    if-ne v11, v12, :cond_24

    const/4 v0, 0x0

    const/4 v9, 0x1

    goto :goto_11

    :cond_24
    iget-object v11, v4, Ll;->b:Laa;

    invoke-virtual {v11, v0, v10}, Laa;->g(Lz;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v9

    const/4 v9, 0x1

    goto :goto_11

    :cond_25
    iget-object v0, v4, Ll;->b:Laa;

    invoke-virtual {v0, v9}, Laa;->h(I)I

    move-result v0

    invoke-static {v0}, Ld;->d(I)Z

    move-result v0

    if-eqz v0, :cond_26

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_26
    :goto_10
    iget-object v0, v4, Ll;->b:Laa;

    invoke-virtual {v0, v9}, Laa;->c(I)I

    move-result v0

    const/4 v9, 0x1

    add-int/lit8 v11, v0, 0x1

    if-lt v11, v15, :cond_3e

    const/4 v0, 0x0

    :goto_11
    iget-object v12, v3, Lk;->a:Ll;

    iget-object v4, v7, Lj;->b:Ljava/lang/String;

    add-int/2addr v0, v9

    :goto_12
    iget-object v9, v12, Ll;->b:Laa;

    invoke-virtual {v9, v0}, Laa;->d(I)Lz;

    move-result-object v9

    iget v11, v9, Lz;->e:I

    const/4 v15, 0x2

    if-ne v11, v15, :cond_27

    const/4 v0, 0x0

    const/4 v15, 0x6

    goto :goto_14

    :cond_27
    const/4 v15, 0x5

    if-ne v11, v15, :cond_28

    const/4 v0, -0x1

    const/4 v15, 0x6

    goto :goto_14

    :cond_28
    const/4 v15, 0x6

    if-ne v11, v15, :cond_3d

    invoke-virtual {v9}, Lz;->b()I

    move-result v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3c

    const/4 v11, 0x1

    if-eq v9, v11, :cond_2a

    const/4 v11, 0x2

    if-ne v9, v11, :cond_29

    goto :goto_13

    :cond_29
    move-object/from16 p1, v7

    goto/16 :goto_1c

    :cond_2a
    const/4 v11, 0x2

    :goto_13
    iget-object v9, v12, Ll;->b:Laa;

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v9, v11}, Laa;->d(I)Lz;

    move-result-object v9

    iget-object v11, v12, Ll;->b:Laa;

    invoke-virtual {v11, v9, v4}, Laa;->g(Lz;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2b

    move-object/from16 p1, v7

    goto/16 :goto_1c

    :cond_2b
    :goto_14
    iput v0, v7, Lj;->e:I

    if-lez v0, :cond_2c

    iget-object v4, v3, Lk;->a:Ll;

    iget-object v4, v4, Ll;->c:Ljava/util/Map;

    if-eqz v4, :cond_2c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Format;

    iput-object v0, v7, Lj;->f:Ljava/text/Format;

    :cond_2c
    iget-object v0, v7, Lj;->f:Ljava/text/Format;

    if-nez v0, :cond_2d

    iget-object v0, v3, Lk;->a:Ll;

    invoke-virtual {v0}, Ll;->b()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, v7, Lj;->f:Ljava/text/Format;

    const/4 v0, 0x1

    iput-boolean v0, v7, Lj;->h:Z

    :cond_2d
    iget-object v0, v7, Lj;->f:Ljava/text/Format;

    iget-object v4, v7, Lj;->c:Ljava/lang/Number;

    invoke-virtual {v0, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lj;->g:Ljava/lang/String;

    iget-object v0, v3, Lk;->b:Lx;

    iget-object v0, v0, Lx;->h:Lw;

    new-instance v4, Lq;

    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-nez v9, :cond_36

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_2e

    move-object/from16 p1, v7

    const/4 v7, 0x0

    goto/16 :goto_18

    :cond_2e
    cmpg-double v9, v13, v24

    if-gez v9, :cond_2f

    neg-double v11, v13

    goto :goto_15

    :cond_2f
    move-wide v11, v13

    :goto_15
    const-wide v31, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double v9, v11, v31

    if-gez v9, :cond_32

    const-wide v31, 0x412e848000000000L    # 1000000.0

    mul-double v11, v11, v31

    double-to-long v11, v11

    const-wide/32 v31, 0xf4240

    rem-long v11, v11, v31

    const/16 v9, 0xa

    const/16 v31, 0x6

    :goto_16
    if-lez v31, :cond_31

    move-object/from16 p1, v7

    int-to-long v7, v9

    rem-long v7, v11, v7

    const-wide/16 v32, 0x0

    cmp-long v34, v7, v32

    if-eqz v34, :cond_30

    move/from16 v7, v31

    goto :goto_18

    :cond_30
    mul-int/lit8 v9, v9, 0xa

    add-int/lit8 v31, v31, -0x1

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    goto :goto_16

    :cond_31
    move-object/from16 p1, v7

    const/4 v7, 0x0

    goto :goto_18

    :cond_32
    move-object/from16 p1, v7

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v9, v23

    const-string v8, "%1.15e"

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x65

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2b

    if-ne v11, v12, :cond_33

    add-int/lit8 v9, v9, 0x1

    :cond_33
    add-int/lit8 v11, v8, -0x2

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sub-int/2addr v11, v9

    if-gez v11, :cond_34

    const/4 v7, 0x0

    goto :goto_18

    :cond_34
    add-int/lit8 v8, v8, -0x1

    move/from16 v31, v11

    :goto_17
    if-lez v31, :cond_35

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x30

    if-ne v9, v11, :cond_35

    add-int/lit8 v31, v31, -0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_17

    :cond_35
    move/from16 v7, v31

    goto :goto_18

    :cond_36
    move-object/from16 p1, v7

    const/4 v7, 0x0

    :goto_18
    invoke-direct {v4, v13, v14, v7}, Lq;-><init>(DI)V

    iget-wide v7, v4, Lq;->a:D

    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-nez v7, :cond_3a

    iget-wide v7, v4, Lq;->a:D

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_37

    goto :goto_1a

    :cond_37
    iget-object v0, v0, Lw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv;

    iget-object v8, v7, Lv;->b:Lp;

    invoke-interface {v8, v4}, Lp;->a(Lq;)Z

    move-result v8

    if-eqz v8, :cond_38

    goto :goto_19

    :cond_39
    move-object/from16 v7, v22

    :goto_19
    iget-object v0, v7, Lv;->a:Ljava/lang/String;

    goto :goto_1b

    :cond_3a
    :goto_1a
    move-object v0, v10

    :goto_1b
    if-eqz v6, :cond_3b

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    move-object v11, v0

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/16 v27, 0x1

    goto :goto_1e

    :cond_3b
    move-object v11, v0

    const/4 v7, 0x6

    const/4 v8, 0x2

    goto :goto_1e

    :cond_3c
    move-object/from16 p1, v7

    :goto_1c
    iget-object v7, v12, Ll;->b:Laa;

    invoke-virtual {v7, v0}, Laa;->c(I)I

    move-result v0

    goto :goto_1d

    :cond_3d
    move-object/from16 p1, v7

    :goto_1d
    const/4 v7, 0x1

    add-int/2addr v0, v7

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    goto/16 :goto_12

    :cond_3e
    move-object/from16 p1, v7

    const/4 v7, 0x6

    const/4 v8, 0x2

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p6

    move/from16 v0, v30

    goto/16 :goto_f

    :cond_3f
    move/from16 v27, v4

    move-object/from16 p1, v7

    move-object/from16 v29, v9

    move/from16 v28, v13

    move/from16 v30, v14

    const/4 v7, 0x6

    const/4 v8, 0x2

    :goto_1e
    if-nez v27, :cond_40

    invoke-virtual {v5, v1, v11}, Laa;->g(Lz;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    move/from16 v6, v28

    move v13, v6

    const/4 v4, 0x1

    goto :goto_20

    :cond_40
    goto :goto_1f

    :cond_41
    move/from16 v27, v4

    move-object/from16 p1, v7

    move-object/from16 v29, v9

    move/from16 v28, v13

    move/from16 v30, v14

    const/4 v7, 0x6

    const/4 v8, 0x2

    :goto_1f
    move/from16 v4, v27

    move/from16 v13, v28

    :goto_20
    invoke-virtual {v5, v13}, Laa;->c(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-lt v0, v2, :cond_42

    move v2, v6

    :goto_21
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Ll;->g(ILj;[Ljava/lang/Object;Ljava/util/Map;[Ljava/lang/Object;Lg;)V

    move-object/from16 v8, p0

    move-object/from16 v1, p6

    goto/16 :goto_25

    :cond_42
    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p6

    move v1, v0

    move-object/from16 v13, v20

    move/from16 v15, v21

    move-object/from16 v0, v26

    move-object/from16 v9, v29

    move/from16 v14, v30

    goto/16 :goto_d

    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    move-object/from16 v26, v0

    move-object/from16 v29, v9

    move-object/from16 v20, v13

    move/from16 v30, v14

    move/from16 v21, v15

    const/4 v0, 0x5

    if-ne v3, v0, :cond_4a

    move-object/from16 v8, p0

    iget-object v0, v8, Ll;->b:Laa;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Laa;->b()I

    move-result v4

    const/4 v3, 0x0

    :cond_45
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v1}, Laa;->d(I)Lz;

    move-result-object v1

    iget v6, v1, Lz;->e:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_46

    move v2, v3

    goto :goto_23

    :cond_46
    invoke-virtual {v0, v1, v2}, Laa;->g(Lz;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    move v2, v5

    goto :goto_23

    :cond_47
    if-nez v3, :cond_49

    invoke-virtual {v0, v1, v10}, Laa;->g(Lz;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    move v3, v5

    goto :goto_22

    :cond_48
    const/4 v3, 0x0

    :cond_49
    :goto_22
    invoke-virtual {v0, v5}, Laa;->c(I)I

    move-result v1

    const/4 v5, 0x1

    add-int/2addr v1, v5

    if-lt v1, v4, :cond_45

    move v2, v3

    :goto_23
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Ll;->g(ILj;[Ljava/lang/Object;Ljava/util/Map;[Ljava/lang/Object;Lg;)V

    move-object/from16 v1, p6

    goto :goto_25

    :cond_4a
    move-object/from16 v8, p0

    invoke-static {v3}, Ld;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x13

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unexpected argType "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4b
    move-object/from16 v26, v0

    move-object/from16 v29, v7

    move-object/from16 v20, v13

    move/from16 v30, v14

    move/from16 v21, v15

    :goto_24
    instance-of v0, v4, Ljava/lang/Number;

    if-eqz v0, :cond_4c

    invoke-virtual/range {p0 .. p0}, Ll;->b()Ljava/text/NumberFormat;

    move-result-object v0

    move-object/from16 v1, p6

    invoke-virtual {v1, v0, v4}, Lg;->b(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_25

    :cond_4c
    move-object/from16 v1, p6

    instance-of v0, v4, Ljava/util/Date;

    if-eqz v0, :cond_4e

    iget-object v0, v8, Ll;->h:Ljava/text/DateFormat;

    if-nez v0, :cond_4d

    iget-object v0, v8, Ll;->a:Ljava/util/Locale;

    const/4 v2, 0x3

    invoke-static {v2, v2, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, v8, Ll;->h:Ljava/text/DateFormat;

    :cond_4d
    iget-object v0, v8, Ll;->h:Ljava/text/DateFormat;

    invoke-virtual {v1, v0, v4}, Lg;->b(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_25

    :cond_4e
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg;->a(Ljava/lang/CharSequence;)V

    :goto_25
    iget-object v0, v1, Lg;->c:Ljava/util/List;

    if-eqz v0, :cond_4f

    iget v2, v1, Lg;->b:I

    move/from16 v3, v30

    if-ge v3, v2, :cond_50

    new-instance v4, Lh;

    move-object/from16 v5, v29

    invoke-direct {v4, v5, v3, v2}, Lh;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_4f
    move/from16 v3, v30

    :cond_50
    :goto_26
    if-eqz v26, :cond_52

    sget-object v0, Li;->a:Li;

    invoke-virtual/range {v26 .. v26}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Li;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    iget v2, v1, Lg;->b:I

    invoke-virtual {v0, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    move-object/from16 v0, v22

    goto :goto_27

    :cond_51
    move-object/from16 v0, v26

    goto :goto_27

    :cond_52
    move-object/from16 v0, v26

    :goto_27
    iget-object v2, v8, Ll;->b:Laa;

    move/from16 v3, v21

    invoke-virtual {v2, v3}, Laa;->d(I)Lz;

    move-result-object v2

    invoke-virtual {v2}, Lz;->a()I

    move-result v2

    :goto_28
    const/4 v4, 0x1

    add-int/2addr v3, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v12, v1

    move v1, v3

    move-object/from16 v13, v20

    const/4 v14, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lad;

    invoke-direct {v1, v0}, Lad;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2a

    :goto_29
    throw v1

    :goto_2a
    goto :goto_29
.end method

.method private final g(ILj;[Ljava/lang/Object;Ljava/util/Map;[Ljava/lang/Object;Lg;)V
    .locals 8

    iget-object v0, p0, Ll;->b:Laa;

    iget v0, v0, Laa;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Ll;->f(ILj;[Ljava/lang/Object;Ljava/util/Map;[Ljava/lang/Object;Lg;Ljava/text/FieldPosition;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "JDK apostrophe mode not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final h(Ljava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Ll;->b:Laa;

    iget-object v5, v4, Laa;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Laa;->d(I)Lz;

    move-result-object v4

    invoke-virtual {v4}, Lz;->a()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    new-instance v8, Ljava/text/ParsePosition;

    invoke-direct {v8, v6}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v9, 0x1

    const/4 v10, 0x1

    :goto_0
    iget-object v11, v0, Ll;->b:Laa;

    invoke-virtual {v11, v10}, Laa;->d(I)Lz;

    move-result-object v11

    iget v12, v11, Lz;->e:I

    iget v13, v11, Lz;->a:I

    sub-int/2addr v13, v4

    if-eqz v13, :cond_2

    invoke-virtual {v5, v4, v1, v7, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    :cond_2
    :goto_1
    add-int/2addr v7, v13

    const/4 v4, 0x2

    if-ne v12, v4, :cond_3

    invoke-virtual {v2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    return-void

    :cond_3
    const/4 v13, 0x3

    if-eq v12, v13, :cond_1f

    const/4 v14, 0x4

    if-ne v12, v14, :cond_4

    move-object/from16 v22, v5

    goto/16 :goto_14

    :cond_4
    iget-object v12, v0, Ll;->b:Laa;

    invoke-virtual {v12, v10}, Laa;->c(I)I

    move-result v12

    invoke-virtual {v11}, Lz;->b()I

    move-result v11

    add-int/lit8 v10, v10, 0x1

    iget-object v14, v0, Ll;->b:Laa;

    invoke-virtual {v14, v10}, Laa;->d(I)Lz;

    move-result-object v14

    if-eqz p3, :cond_5

    iget-short v14, v14, Lz;->c:S

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v15, v16

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    iget v6, v14, Lz;->e:I

    const/16 v15, 0x9

    if-ne v6, v15, :cond_6

    iget-object v6, v0, Ll;->b:Laa;

    invoke-virtual {v6, v14}, Laa;->f(Lz;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    iget-short v6, v14, Lz;->c:S

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    move-object v15, v6

    const/4 v14, 0x0

    :goto_3
    add-int/lit8 v10, v10, 0x1

    iget-object v4, v0, Ll;->c:Ljava/util/Map;

    if-eqz v4, :cond_8

    add-int/lit8 v19, v10, -0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/Format;

    if-eqz v4, :cond_8

    invoke-virtual {v8, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v4, v1, v8}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-ne v10, v7, :cond_7

    invoke-virtual {v2, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    :cond_7
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    move-object/from16 v22, v5

    move-object/from16 v24, v6

    goto/16 :goto_12

    :cond_8
    if-eq v11, v9, :cond_16

    iget-object v4, v0, Ll;->c:Ljava/util/Map;

    if-eqz v4, :cond_9

    add-int/lit8 v13, v10, -0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v22, v5

    move-object/from16 v24, v6

    goto/16 :goto_d

    :cond_9
    const/4 v4, 0x3

    if-ne v11, v4, :cond_13

    invoke-virtual {v8, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    iget-object v4, v0, Ll;->b:Laa;

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    const-wide/high16 v17, 0x7ff8000000000000L    # Double.NaN

    move v13, v11

    :goto_4
    invoke-virtual {v4, v10}, Laa;->h(I)I

    move-result v15

    const/4 v9, 0x7

    if-eq v15, v9, :cond_10

    invoke-virtual {v4, v10}, Laa;->d(I)Lz;

    move-result-object v9

    invoke-virtual {v4, v9}, Laa;->a(Lz;)D

    move-result-wide v20

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v4, v10}, Laa;->c(I)I

    move-result v9

    iget-object v15, v4, Laa;->a:Ljava/lang/String;

    invoke-virtual {v4, v10}, Laa;->d(I)Lz;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lz;->a()I

    move-result v22

    const/16 v23, 0x0

    move/from16 v26, v22

    move-object/from16 v22, v5

    move/from16 v5, v26

    :goto_5
    const/16 v19, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v24, v6

    invoke-virtual {v4, v10}, Laa;->d(I)Lz;

    move-result-object v6

    if-eq v10, v9, :cond_b

    move-object/from16 v25, v4

    iget v4, v6, Lz;->e:I

    const/4 v3, 0x3

    if-ne v4, v3, :cond_a

    goto :goto_6

    :cond_a
    goto :goto_9

    :cond_b
    move-object/from16 v25, v4

    const/4 v3, 0x3

    :goto_6
    iget v4, v6, Lz;->a:I

    sub-int/2addr v4, v5

    if-eqz v4, :cond_c

    invoke-virtual {v1, v11, v15, v5, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v4, -0x1

    goto :goto_7

    :cond_c
    add-int v23, v23, v4

    if-ne v10, v9, :cond_f

    move/from16 v4, v23

    :goto_7
    if-ltz v4, :cond_e

    add-int/2addr v4, v11

    if-le v4, v13, :cond_e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_d

    move v13, v4

    move-wide/from16 v17, v20

    goto :goto_a

    :cond_d
    move v13, v4

    move-wide/from16 v17, v20

    goto :goto_8

    :cond_e
    :goto_8
    add-int/lit8 v10, v9, 0x1

    move-object/from16 v3, p4

    move-object/from16 v5, v22

    move-object/from16 v6, v24

    move-object/from16 v4, v25

    const/4 v9, 0x1

    goto :goto_4

    :cond_f
    invoke-virtual {v6}, Lz;->a()I

    move-result v4

    move v5, v4

    :goto_9
    move-object/from16 v3, p4

    move-object/from16 v6, v24

    move-object/from16 v4, v25

    goto :goto_5

    :cond_10
    move-object/from16 v22, v5

    move-object/from16 v24, v6

    :goto_a
    if-ne v13, v11, :cond_11

    invoke-virtual {v8, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_b

    :cond_11
    invoke-virtual {v8, v13}, Ljava/text/ParsePosition;->setIndex(I)V

    :goto_b
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-ne v3, v7, :cond_12

    invoke-virtual {v2, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    :cond_12
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    const/4 v9, 0x1

    goto/16 :goto_12

    :cond_13
    invoke-static {v11}, Ld;->b(I)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x5

    if-ne v11, v1, :cond_14

    goto :goto_c

    :cond_14
    invoke-static {v11}, Ld;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x13

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unexpected argType "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    :goto_c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Parsing of plural/select/selectordinal argument is not supported."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    move-object/from16 v22, v5

    move-object/from16 v24, v6

    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Ll;->b:Laa;

    iget-object v5, v4, Laa;->a:Ljava/lang/String;

    invoke-virtual {v4, v12}, Laa;->d(I)Lz;

    move-result-object v4

    invoke-virtual {v4}, Lz;->a()I

    move-result v4

    add-int/lit8 v6, v12, 0x1

    :goto_e
    iget-object v9, v0, Ll;->b:Laa;

    invoke-virtual {v9, v6}, Laa;->d(I)Lz;

    move-result-object v9

    iget v10, v9, Lz;->e:I

    iget v11, v9, Lz;->a:I

    invoke-virtual {v3, v5, v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    if-eq v10, v4, :cond_18

    const/4 v4, 0x2

    if-ne v10, v4, :cond_17

    goto :goto_f

    :cond_17
    invoke-virtual {v9}, Lz;->a()I

    move-result v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_18
    :goto_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_10

    :cond_19
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_10
    if-gez v3, :cond_1a

    invoke-virtual {v2, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    :cond_1a
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    add-int/2addr v6, v9

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "{"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "}"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_1b

    const/4 v15, 0x0

    goto :goto_11

    :cond_1b
    move-object v15, v4

    :goto_11
    xor-int/lit8 v4, v5, 0x1

    move v7, v3

    move v9, v4

    move-object v4, v15

    :goto_12
    if-eqz v9, :cond_1d

    if-eqz p3, :cond_1c

    aput-object v4, p3, v14

    move-object/from16 v3, p4

    goto :goto_13

    :cond_1c
    move-object/from16 v3, p4

    if-eqz v3, :cond_1e

    move-object/from16 v15, v24

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_1d
    move-object/from16 v3, p4

    :cond_1e
    :goto_13
    iget-object v4, v0, Ll;->b:Laa;

    invoke-virtual {v4, v12}, Laa;->d(I)Lz;

    move-result-object v4

    invoke-virtual {v4}, Lz;->a()I

    move-result v4

    move v10, v12

    goto :goto_15

    :cond_1f
    move-object/from16 v22, v5

    :goto_14
    invoke-virtual {v11}, Lz;->a()I

    move-result v4

    :goto_15
    const/4 v5, 0x1

    add-int/2addr v10, v5

    move-object/from16 v5, v22

    const/4 v6, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public final b()Ljava/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Ll;->i:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    iget-object v0, p0, Ll;->a:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ll;->i:Ljava/text/NumberFormat;

    :cond_0
    iget-object v0, p0, Ll;->i:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    new-instance v0, Lg;

    invoke-direct {v0, p2}, Lg;-><init>(Ljava/lang/StringBuffer;)V

    invoke-direct {p0, p1, v0, p3}, Ll;->d(Ljava/lang/Object;Lg;Ljava/text/FieldPosition;)V

    return-object p2
.end method

.method public final formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 5

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lg;

    invoke-direct {v1, v0}, Lg;-><init>(Ljava/lang/StringBuilder;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lg;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Ll;->d(Ljava/lang/Object;Lg;Ljava/text/FieldPosition;)V

    new-instance p1, Ljava/text/AttributedString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lg;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh;

    iget-object v2, v1, Lh;->a:Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v3, v1, Lh;->b:Ljava/lang/Object;

    iget v4, v1, Lh;->c:I

    iget v1, v1, Lh;->d:I

    invoke-virtual {p1, v2, v3, v4, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "formatToCharacterIterator must be passed non-null object"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ll;->b:Laa;

    iget-object v0, v0, Laa;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Ll;->b:Laa;

    iget-boolean v0, v0, Laa;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Ll;->b:Laa;

    invoke-virtual {v4, v0}, Laa;->c(I)I

    move-result v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Ll;->b:Laa;

    invoke-virtual {v4, v0}, Laa;->h(I)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v4, p0, Ll;->b:Laa;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Laa;->d(I)Lz;

    move-result-object v4

    iget-short v4, v4, Lz;->c:S

    if-le v4, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {p0, p1, p2, v0, v1}, Ll;->h(Ljava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    if-ne p1, v2, :cond_4

    return-object v1

    :cond_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {p0, p1, p2, v1, v0}, Ll;->h(Ljava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    if-ne p1, v2, :cond_6

    return-object v1

    :cond_6
    return-object v0
.end method
