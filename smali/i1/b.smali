###### Class i1.b (i1.b)
.class public final Li1/b;
.super Li1/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final d:Landroid/util/SparseIntArray;

.field public final e:Landroid/os/Parcel;

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    new-instance v5, Ls/e;

    const/4 v0, 0x0

    .line 2
    invoke-direct {v5, v0}, Ls/j;-><init>(I)V

    .line 3
    new-instance v6, Ls/e;

    .line 4
    invoke-direct {v6, v0}, Ls/j;-><init>(I)V

    .line 5
    new-instance v7, Ls/e;

    .line 6
    invoke-direct {v7, v0}, Ls/j;-><init>(I)V

    .line 7
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Li1/b;-><init>(Landroid/os/Parcel;IILjava/lang/String;Ls/e;Ls/e;Ls/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;IILjava/lang/String;Ls/e;Ls/e;Ls/e;)V
    .registers 8

    .line 8
    invoke-direct {p0, p5, p6, p7}, Li1/a;-><init>(Ls/e;Ls/e;Ls/e;)V

    .line 9
    new-instance p5, Landroid/util/SparseIntArray;

    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p5, p0, Li1/b;->d:Landroid/util/SparseIntArray;

    const/4 p5, -0x1

    .line 10
    iput p5, p0, Li1/b;->i:I

    .line 11
    iput p5, p0, Li1/b;->k:I

    .line 12
    iput-object p1, p0, Li1/b;->e:Landroid/os/Parcel;

    .line 13
    iput p2, p0, Li1/b;->f:I

    .line 14
    iput p3, p0, Li1/b;->g:I

    .line 15
    iput p2, p0, Li1/b;->j:I

    .line 16
    iput-object p4, p0, Li1/b;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Li1/b;
    .registers 9

    .line 1
    new-instance v0, Li1/b;

    .line 2
    .line 3
    iget-object v1, p0, Li1/b;->e:Landroid/os/Parcel;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget v3, p0, Li1/b;->j:I

    .line 10
    .line 11
    iget v4, p0, Li1/b;->f:I

    .line 12
    .line 13
    if-ne v3, v4, :cond_10

    .line 14
    .line 15
    iget v3, p0, Li1/b;->g:I

    .line 16
    .line 17
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v5, p0, Li1/b;->h:Ljava/lang/String;

    .line 23
    .line 24
    const-string v6, "  "

    .line 25
    .line 26
    invoke-static {v4, v5, v6}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget-object v6, p0, Li1/a;->b:Ls/e;

    .line 31
    .line 32
    iget-object v7, p0, Li1/a;->c:Ls/e;

    .line 33
    .line 34
    iget-object v5, p0, Li1/a;->a:Ls/e;

    .line 35
    .line 36
    invoke-direct/range {v0 .. v7}, Li1/b;-><init>(Landroid/os/Parcel;IILjava/lang/String;Ls/e;Ls/e;Ls/e;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public final e(I)Z
    .registers 4

    .line 1
    :goto_0
    iget v0, p0, Li1/b;->j:I

    .line 2
    .line 3
    iget v1, p0, Li1/b;->g:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_31

    .line 6
    .line 7
    iget v0, p0, Li1/b;->k:I

    .line 8
    .line 9
    if-ne v0, p1, :cond_b

    .line 10
    .line 11
    goto :goto_35

    .line 12
    :cond_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_1a

    .line 25
    .line 26
    goto :goto_37

    .line 27
    :cond_1a
    iget v0, p0, Li1/b;->j:I

    .line 28
    .line 29
    iget-object v1, p0, Li1/b;->e:Landroid/os/Parcel;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput v1, p0, Li1/b;->k:I

    .line 43
    .line 44
    iget v1, p0, Li1/b;->j:I

    .line 45
    .line 46
    add-int/2addr v1, v0

    .line 47
    iput v1, p0, Li1/b;->j:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_31
    iget v0, p0, Li1/b;->k:I

    .line 51
    .line 52
    if-ne v0, p1, :cond_37

    .line 53
    .line 54
    :goto_35
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :cond_37
    :goto_37
    const/4 p1, 0x0

    .line 57
    return p1
.end method

.method public final i(I)V
    .registers 7

    .line 1
    iget v0, p0, Li1/b;->i:I

    .line 2
    .line 3
    iget-object v1, p0, Li1/b;->d:Landroid/util/SparseIntArray;

    .line 4
    .line 5
    iget-object v2, p0, Li1/b;->e:Landroid/os/Parcel;

    .line 6
    .line 7
    if-ltz v0, :cond_1b

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sub-int v4, v3, v0

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    iput p1, p0, Li1/b;->i:I

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
