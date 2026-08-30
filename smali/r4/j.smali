###### Class r4.j (r4.j)
.class public final Lr4/j;
.super Lr4/g;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final i:[Ljava/lang/Object;

.field public static final j:Lr4/j;


# instance fields
.field public final transient d:[Ljava/lang/Object;

.field public final transient e:I

.field public final transient f:[Ljava/lang/Object;

.field public final transient g:I

.field public final transient h:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v5, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sput-object v5, Lr4/j;->i:[Ljava/lang/Object;

    .line 5
    .line 6
    new-instance v1, Lr4/j;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    move-object v6, v5

    .line 12
    invoke-direct/range {v1 .. v6}, Lr4/j;-><init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lr4/j;->j:Lr4/j;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lr4/j;->d:[Ljava/lang/Object;

    .line 5
    .line 6
    iput p1, p0, Lr4/j;->e:I

    .line 7
    .line 8
    iput-object p5, p0, Lr4/j;->f:[Ljava/lang/Object;

    .line 9
    .line 10
    iput p2, p0, Lr4/j;->g:I

    .line 11
    .line 12
    iput p3, p0, Lr4/j;->h:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lr4/j;->d:[Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lr4/j;->h:I

    .line 5
    .line 6
    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    return v2
.end method

.method public final b()[Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lr4/j;->d:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()I
    .registers 2

    .line 1
    iget v0, p0, Lr4/j;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_28

    .line 3
    .line 4
    iget-object v1, p0, Lr4/j;->f:[Ljava/lang/Object;

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    if-nez v2, :cond_9

    .line 8
    .line 9
    goto :goto_28

    .line 10
    :cond_9
    if-nez p1, :cond_d

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    :goto_11
    invoke-static {v2}, Lf4/f;->f(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    :goto_15
    iget v3, p0, Lr4/j;->g:I

    .line 23
    .line 24
    and-int/2addr v2, v3

    .line 25
    aget-object v3, v1, v2

    .line 26
    .line 27
    if-nez v3, :cond_1d

    .line 28
    .line 29
    return v0

    .line 30
    :cond_1d
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_25

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_25
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_15

    .line 41
    :cond_28
    :goto_28
    return v0
.end method

.method public final d()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lr4/j;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    iget-object v0, p0, Lr4/g;->b:Lr4/e;

    .line 2
    .line 3
    if-nez v0, :cond_e

    .line 4
    .line 5
    iget-object v0, p0, Lr4/j;->d:[Ljava/lang/Object;

    .line 6
    .line 7
    iget v1, p0, Lr4/j;->h:I

    .line 8
    .line 9
    invoke-static {v1, v0}, Lr4/e;->e(I[Ljava/lang/Object;)Lr4/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lr4/g;->b:Lr4/e;

    .line 14
    .line 15
    :cond_e
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lr4/e;->f(I)Lr4/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget v0, p0, Lr4/j;->h:I

    .line 2
    .line 3
    return v0
.end method
