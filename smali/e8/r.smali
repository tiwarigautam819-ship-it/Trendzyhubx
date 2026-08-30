###### Class e8.r (e8.r)
.class public final Le8/r;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Z

.field public f:Le8/r;

.field public g:Le8/r;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 2
    new-array v0, v0, [B

    iput-object v0, p0, Le8/r;->a:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le8/r;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Le8/r;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .registers 6

    const-string v0, "data"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Le8/r;->a:[B

    .line 7
    iput p2, p0, Le8/r;->b:I

    .line 8
    iput p3, p0, Le8/r;->c:I

    .line 9
    iput-boolean p4, p0, Le8/r;->d:Z

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Le8/r;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Le8/r;
    .registers 5

    .line 1
    iget-object v0, p0, Le8/r;->f:Le8/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p0, :cond_6

    .line 5
    .line 6
    goto :goto_7

    .line 7
    :cond_6
    move-object v0, v1

    .line 8
    :goto_7
    iget-object v2, p0, Le8/r;->g:Le8/r;

    .line 9
    .line 10
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Le8/r;->f:Le8/r;

    .line 14
    .line 15
    iput-object v3, v2, Le8/r;->f:Le8/r;

    .line 16
    .line 17
    iget-object v2, p0, Le8/r;->f:Le8/r;

    .line 18
    .line 19
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Le8/r;->g:Le8/r;

    .line 23
    .line 24
    iput-object v3, v2, Le8/r;->g:Le8/r;

    .line 25
    .line 26
    iput-object v1, p0, Le8/r;->f:Le8/r;

    .line 27
    .line 28
    iput-object v1, p0, Le8/r;->g:Le8/r;

    .line 29
    .line 30
    return-object v0
.end method

.method public final b(Le8/r;)V
    .registers 3

    .line 1
    const-string v0, "segment"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object p0, p1, Le8/r;->g:Le8/r;

    .line 7
    .line 8
    iget-object v0, p0, Le8/r;->f:Le8/r;

    .line 9
    .line 10
    iput-object v0, p1, Le8/r;->f:Le8/r;

    .line 11
    .line 12
    iget-object v0, p0, Le8/r;->f:Le8/r;

    .line 13
    .line 14
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, v0, Le8/r;->g:Le8/r;

    .line 18
    .line 19
    iput-object p1, p0, Le8/r;->f:Le8/r;

    .line 20
    .line 21
    return-void
.end method

.method public final c()Le8/r;
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le8/r;->d:Z

    .line 3
    .line 4
    new-instance v1, Le8/r;

    .line 5
    .line 6
    iget v2, p0, Le8/r;->b:I

    .line 7
    .line 8
    iget v3, p0, Le8/r;->c:I

    .line 9
    .line 10
    iget-object v4, p0, Le8/r;->a:[B

    .line 11
    .line 12
    invoke-direct {v1, v4, v2, v3, v0}, Le8/r;-><init>([BIIZ)V

    .line 13
    .line 14
    .line 15
    return-object v1
.end method

.method public final d(Le8/r;I)V
    .registers 8

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Le8/r;->a:[B

    .line 7
    .line 8
    iget-boolean v1, p1, Le8/r;->e:Z

    .line 9
    .line 10
    if-eqz v1, :cond_4c

    .line 11
    .line 12
    iget v1, p1, Le8/r;->c:I

    .line 13
    .line 14
    add-int v2, v1, p2

    .line 15
    .line 16
    const/16 v3, 0x2000

    .line 17
    .line 18
    if-le v2, v3, :cond_36

    .line 19
    .line 20
    iget-boolean v4, p1, Le8/r;->d:Z

    .line 21
    .line 22
    if-nez v4, :cond_30

    .line 23
    .line 24
    iget v4, p1, Le8/r;->b:I

    .line 25
    .line 26
    sub-int/2addr v2, v4

    .line 27
    if-gt v2, v3, :cond_2a

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v2, v4, v1, v0, v0}, Ls6/f;->j(III[B[B)V

    .line 31
    .line 32
    .line 33
    iget v1, p1, Le8/r;->c:I

    .line 34
    .line 35
    iget v3, p1, Le8/r;->b:I

    .line 36
    .line 37
    sub-int/2addr v1, v3

    .line 38
    iput v1, p1, Le8/r;->c:I

    .line 39
    .line 40
    iput v2, p1, Le8/r;->b:I

    .line 41
    .line 42
    goto :goto_36

    .line 43
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_36
    :goto_36
    iget v1, p1, Le8/r;->c:I

    .line 56
    .line 57
    iget v2, p0, Le8/r;->b:I

    .line 58
    .line 59
    add-int v3, v2, p2

    .line 60
    .line 61
    iget-object v4, p0, Le8/r;->a:[B

    .line 62
    .line 63
    invoke-static {v1, v2, v3, v4, v0}, Ls6/f;->j(III[B[B)V

    .line 64
    .line 65
    .line 66
    iget v0, p1, Le8/r;->c:I

    .line 67
    .line 68
    add-int/2addr v0, p2

    .line 69
    iput v0, p1, Le8/r;->c:I

    .line 70
    .line 71
    iget p1, p0, Le8/r;->b:I

    .line 72
    .line 73
    add-int/2addr p1, p2

    .line 74
    iput p1, p0, Le8/r;->b:I

    .line 75
    .line 76
    return-void

    .line 77
    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string p2, "only owner can write"

    .line 80
    .line 81
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1
.end method
