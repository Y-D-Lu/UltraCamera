.class public final Lyf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static a:I


# instance fields
.field public b:Z

.field public c:I

.field d:I

.field public e:I

.field public f:F

.field public g:Z

.field final h:[F

.field final i:[F

.field j:[Lxy;

.field k:I

.field public l:I

.field m:Z

.field n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lyf;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lyf;->c:I

    iput v0, p0, Lyf;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lyf;->e:I

    iput-boolean v0, p0, Lyf;->g:Z

    const/16 v1, 0x9

    new-array v2, v1, [F

    iput-object v2, p0, Lyf;->h:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lyf;->i:[F

    const/16 v1, 0x10

    new-array v1, v1, [Lxy;

    iput-object v1, p0, Lyf;->j:[Lxy;

    iput v0, p0, Lyf;->k:I

    iput v0, p0, Lyf;->l:I

    iput-boolean v0, p0, Lyf;->m:Z

    iput p1, p0, Lyf;->n:I

    return-void
.end method


# virtual methods
.method public final a(Lxy;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lyf;->k:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lyf;->j:[Lxy;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lyf;->j:[Lxy;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    add-int/2addr v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxy;

    iput-object v0, p0, Lyf;->j:[Lxy;

    :cond_2
    iget-object v0, p0, Lyf;->j:[Lxy;

    iget v1, p0, Lyf;->k:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lyf;->k:I

    return-void
.end method

.method public final b(Lxy;)V
    .locals 4

    iget v0, p0, Lyf;->k:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lyf;->j:[Lxy;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_0

    iget-object p1, p0, Lyf;->j:[Lxy;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v2

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_1

    :cond_0
    iget p1, p0, Lyf;->k:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lyf;->k:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 6

    const/4 v0, 0x5

    iput v0, p0, Lyf;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lyf;->e:I

    const/4 v1, -0x1

    iput v1, p0, Lyf;->c:I

    iput v1, p0, Lyf;->d:I

    const/4 v1, 0x0

    iput v1, p0, Lyf;->f:F

    iput-boolean v0, p0, Lyf;->g:Z

    iput-boolean v0, p0, Lyf;->m:Z

    iget v2, p0, Lyf;->k:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lyf;->j:[Lxy;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lyf;->k:I

    iput v0, p0, Lyf;->l:I

    iput-boolean v0, p0, Lyf;->b:Z

    iget-object v0, p0, Lyf;->i:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lyf;

    iget v0, p0, Lyf;->c:I

    iget p1, p1, Lyf;->c:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final d(Lya;F)V
    .locals 3

    iput p2, p0, Lyf;->f:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lyf;->g:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lyf;->m:Z

    iget v0, p0, Lyf;->k:I

    const/4 v1, -0x1

    iput v1, p0, Lyf;->d:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lyf;->j:[Lxy;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p0, p2}, Lxy;->c(Lya;Lyf;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput p2, p0, Lyf;->k:I

    return-void
.end method

.method public final e(Lya;Lxy;)V
    .locals 4

    iget v0, p0, Lyf;->k:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lyf;->j:[Lxy;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v1}, Lxy;->d(Lya;Lxy;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lyf;->k:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lyf;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
