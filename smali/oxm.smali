.class final Loxm;
.super Ljava/util/AbstractSet;


# instance fields
.field final a:I

.field final synthetic b:Loxn;


# direct methods
.method public constructor <init>(Loxn;I)V
    .locals 0

    iput-object p1, p0, Loxm;->b:Loxn;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput p2, p0, Loxm;->a:I

    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    iget-object v0, p0, Loxm;->b:Loxn;

    iget-object v0, v0, Loxn;->c:[I

    iget v1, p0, Loxm;->a:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method final b()I
    .locals 2

    iget v0, p0, Loxm;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Loxm;->b:Loxn;

    iget-object v1, v1, Loxn;->c:[I

    aget v0, v1, v0

    return v0
.end method

.method final c(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Loxm;->b:Loxn;

    iget-object v0, v0, Loxn;->b:[Ljava/lang/Object;

    invoke-virtual {p0}, Loxm;->b()I

    move-result v1

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Loxm;->b:Loxn;

    iget-object v0, v0, Loxn;->b:[Ljava/lang/Object;

    invoke-virtual {p0}, Loxm;->b()I

    move-result v1

    invoke-virtual {p0}, Loxm;->a()I

    move-result v2

    iget v3, p0, Loxm;->a:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    sget-object v3, Loxn;->a:Ljava/util/Comparator;

    goto :goto_0

    :cond_0
    sget-object v3, Loxp;->a:Ljava/util/Comparator;

    :goto_0
    invoke-static {v0, v1, v2, p1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Loxl;

    invoke-direct {v0, p0}, Loxl;-><init>(Loxm;)V

    return-object v0
.end method

.method public final size()I
    .locals 2

    invoke-virtual {p0}, Loxm;->a()I

    move-result v0

    invoke-virtual {p0}, Loxm;->b()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
