###### Class d7.a (d7.a)
.class public Ld7/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/Iterator;
.implements Le7/a;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj7/b;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Ld7/a;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lj7/b;->a:Lj7/e;

    .line 5
    invoke-interface {v0}, Lj7/e;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ld7/a;->c:Ljava/lang/Object;

    .line 6
    iget p1, p1, Lj7/b;->b:I

    .line 7
    iput p1, p0, Ld7/a;->b:I

    return-void
.end method

.method public constructor <init>(Ls6/c;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Ld7/a;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Ld7/a;->a:I

    const-string v0, "array"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .line 1
    iget v0, p0, Ld7/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_40

    .line 4
    .line 5
    .line 6
    iget v0, p0, Ld7/a;->b:I

    .line 7
    .line 8
    iget-object v1, p0, Ld7/a;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ls6/c;

    .line 11
    .line 12
    invoke-virtual {v1}, Ls6/c;->a()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_13

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    return v0

    .line 22
    :pswitch_15
    iget-object v0, p0, Ld7/a;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/util/Iterator;

    .line 25
    .line 26
    :goto_19
    iget v1, p0, Ld7/a;->b:I

    .line 27
    .line 28
    if-lez v1, :cond_2d

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2d

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget v1, p0, Ld7/a;->b:I

    .line 40
    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    iput v1, p0, Ld7/a;->b:I

    .line 44
    .line 45
    goto :goto_19

    .line 46
    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    return v0

    .line 51
    :pswitch_32
    iget v0, p0, Ld7/a;->b:I

    .line 52
    .line 53
    iget-object v1, p0, Ld7/a;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, [Ljava/lang/Object;

    .line 56
    .line 57
    array-length v1, v1

    .line 58
    if-ge v0, v1, :cond_3d

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    const/4 v0, 0x0

    .line 63
    :goto_3e
    return v0

    .line 64
    nop

    .line 65
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_32
        :pswitch_15
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Ld7/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_5c

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ld7/a;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1a

    .line 11
    .line 12
    iget-object v0, p0, Ld7/a;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ls6/c;

    .line 15
    .line 16
    iget v1, p0, Ld7/a;->b:I

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    iput v2, p0, Ld7/a;->b:I

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_1a
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :pswitch_20
    iget-object v0, p0, Ld7/a;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/util/Iterator;

    .line 36
    .line 37
    :goto_24
    iget v1, p0, Ld7/a;->b:I

    .line 38
    .line 39
    if-lez v1, :cond_38

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_38

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iget v1, p0, Ld7/a;->b:I

    .line 51
    .line 52
    add-int/lit8 v1, v1, -0x1

    .line 53
    .line 54
    iput v1, p0, Ld7/a;->b:I

    .line 55
    .line 56
    goto :goto_24

    .line 57
    :cond_38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    :pswitch_3d
    :try_start_3d
    iget-object v0, p0, Ld7/a;->c:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, [Ljava/lang/Object;

    .line 65
    .line 66
    iget v1, p0, Ld7/a;->b:I

    .line 67
    .line 68
    add-int/lit8 v2, v1, 0x1

    .line 69
    .line 70
    iput v2, p0, Ld7/a;->b:I

    .line 71
    .line 72
    aget-object v0, v0, v1
    :try_end_49
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3d .. :try_end_49} :catch_4a

    .line 73
    .line 74
    return-object v0

    .line 75
    :catch_4a
    move-exception v0

    .line 76
    iget v1, p0, Ld7/a;->b:I

    .line 77
    .line 78
    add-int/lit8 v1, v1, -0x1

    .line 79
    .line 80
    iput v1, p0, Ld7/a;->b:I

    .line 81
    .line 82
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v1

    .line 92
    nop

    .line 93
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_20
    .end packed-switch
.end method

.method public final remove()V
    .registers 3

    .line 1
    iget v0, p0, Ld7/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1e

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    const-string v1, "Operation is not supported for read-only collection"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0

    .line 14
    :pswitch_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string v1, "Operation is not supported for read-only collection"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :pswitch_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 23
    .line 24
    const-string v1, "Operation is not supported for read-only collection"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    nop

    .line 31
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method
