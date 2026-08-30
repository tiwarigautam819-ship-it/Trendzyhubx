###### Class e8.p (e8.p)
.class public final Le8/p;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Le8/h;


# instance fields
.field public final a:Le8/u;

.field public final b:Le8/g;

.field public c:Z


# direct methods
.method public constructor <init>(Le8/u;)V
    .registers 3

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Le8/p;->a:Le8/u;

    .line 10
    .line 11
    new-instance p1, Le8/g;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Le8/p;->b:Le8/g;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Le8/h;
    .registers 9

    .line 1
    iget-boolean v0, p0, Le8/p;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_33

    .line 4
    .line 5
    iget-object v0, p0, Le8/p;->b:Le8/g;

    .line 6
    .line 7
    iget-wide v1, v0, Le8/g;->b:J

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v5, v1, v3

    .line 12
    .line 13
    if-nez v5, :cond_10

    .line 14
    .line 15
    move-wide v1, v3

    .line 16
    goto :goto_29

    .line 17
    :cond_10
    iget-object v5, v0, Le8/g;->a:Le8/r;

    .line 18
    .line 19
    invoke-static {v5}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v5, v5, Le8/r;->g:Le8/r;

    .line 23
    .line 24
    invoke-static {v5}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget v6, v5, Le8/r;->c:I

    .line 28
    .line 29
    const/16 v7, 0x2000

    .line 30
    .line 31
    if-ge v6, v7, :cond_29

    .line 32
    .line 33
    iget-boolean v7, v5, Le8/r;->e:Z

    .line 34
    .line 35
    if-eqz v7, :cond_29

    .line 36
    .line 37
    iget v5, v5, Le8/r;->b:I

    .line 38
    .line 39
    sub-int/2addr v6, v5

    .line 40
    int-to-long v5, v6

    .line 41
    sub-long/2addr v1, v5

    .line 42
    :cond_29
    :goto_29
    cmp-long v3, v1, v3

    .line 43
    .line 44
    if-lez v3, :cond_32

    .line 45
    .line 46
    iget-object v3, p0, Le8/p;->a:Le8/u;

    .line 47
    .line 48
    invoke-interface {v3, v1, v2, v0}, Le8/u;->n(JLe8/g;)V

    .line 49
    .line 50
    .line 51
    :cond_32
    return-object p0

    .line 52
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "closed"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method public final b()Le8/y;
    .registers 2

    .line 1
    iget-object v0, p0, Le8/p;->a:Le8/u;

    .line 2
    .line 3
    invoke-interface {v0}, Le8/u;->b()Le8/y;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final close()V
    .registers 7

    .line 1
    iget-object v0, p0, Le8/p;->a:Le8/u;

    .line 2
    .line 3
    iget-boolean v1, p0, Le8/p;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_26

    .line 6
    .line 7
    :try_start_6
    iget-object v1, p0, Le8/p;->b:Le8/g;

    .line 8
    .line 9
    iget-wide v2, v1, Le8/g;->b:J

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v4, v2, v4

    .line 14
    .line 15
    if-lez v4, :cond_16

    .line 16
    .line 17
    invoke-interface {v0, v2, v3, v1}, Le8/u;->n(JLe8/g;)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    .line 18
    .line 19
    .line 20
    goto :goto_16

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    :goto_16
    const/4 v1, 0x0

    .line 24
    :goto_17
    :try_start_17
    invoke-interface {v0}, Le8/u;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    .line 25
    .line 26
    .line 27
    goto :goto_1f

    .line 28
    :catchall_1b
    move-exception v0

    .line 29
    if-nez v1, :cond_1f

    .line 30
    .line 31
    move-object v1, v0

    .line 32
    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Le8/p;->c:Z

    .line 34
    .line 35
    if-nez v1, :cond_25

    .line 36
    .line 37
    goto :goto_26

    .line 38
    :cond_25
    throw v1

    .line 39
    :cond_26
    :goto_26
    return-void
.end method

.method public final d(J)Le8/h;
    .registers 4

    .line 1
    iget-boolean v0, p0, Le8/p;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    iget-object v0, p0, Le8/p;->b:Le8/g;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Le8/g;->A(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Le8/p;->a()Le8/h;

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string p2, "closed"

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final flush()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Le8/p;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_17

    .line 4
    .line 5
    iget-object v0, p0, Le8/p;->b:Le8/g;

    .line 6
    .line 7
    iget-wide v1, v0, Le8/g;->b:J

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v3, v1, v3

    .line 12
    .line 13
    iget-object v4, p0, Le8/p;->a:Le8/u;

    .line 14
    .line 15
    if-lez v3, :cond_13

    .line 16
    .line 17
    invoke-interface {v4, v1, v2, v0}, Le8/u;->n(JLe8/g;)V

    .line 18
    .line 19
    .line 20
    :cond_13
    invoke-interface {v4}, Le8/u;->flush()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "closed"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public final isOpen()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Le8/p;->c:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public final j(Le8/j;)Le8/h;
    .registers 3

    .line 1
    const-string v0, "byteString"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Le8/p;->c:Z

    .line 7
    .line 8
    if-nez v0, :cond_12

    .line 9
    .line 10
    iget-object v0, p0, Le8/p;->b:Le8/g;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Le8/g;->w(Le8/j;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Le8/p;->a()Le8/h;

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "closed"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public final m(Ljava/lang/String;)Le8/h;
    .registers 3

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Le8/p;->c:Z

    .line 7
    .line 8
    if-nez v0, :cond_12

    .line 9
    .line 10
    iget-object v0, p0, Le8/p;->b:Le8/g;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Le8/g;->E(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Le8/p;->a()Le8/h;

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "closed"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public final n(JLe8/g;)V
    .registers 5

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Le8/p;->c:Z

    .line 7
    .line 8
    if-nez v0, :cond_12

    .line 9
    .line 10
    iget-object v0, p0, Le8/p;->b:Le8/g;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, p3}, Le8/g;->n(JLe8/g;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Le8/p;->a()Le8/h;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string p2, "closed"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "buffer("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Le8/p;->a:Le8/u;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x29

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .registers 3

    const-string v0, "source"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1
    iget-boolean v0, p0, Le8/p;->c:Z

    if-nez v0, :cond_13

    .line 2
    iget-object v0, p0, Le8/p;->b:Le8/g;

    .line 3
    invoke-virtual {v0, p1}, Le8/g;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Le8/p;->a()Le8/h;

    return p1

    .line 5
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([B)Le8/h;
    .registers 4

    .line 6
    iget-boolean v0, p0, Le8/p;->c:Z

    if-nez v0, :cond_e

    .line 7
    iget-object v0, p0, Le8/p;->b:Le8/g;

    .line 8
    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Le8/g;->x([BI)V

    .line 9
    invoke-virtual {p0}, Le8/p;->a()Le8/h;

    return-object p0

    .line 10
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeByte(I)Le8/h;
    .registers 3

    .line 1
    iget-boolean v0, p0, Le8/p;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    iget-object v0, p0, Le8/p;->b:Le8/g;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Le8/g;->z(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Le8/p;->a()Le8/h;

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "closed"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final writeInt(I)Le8/h;
    .registers 3

    .line 1
    iget-boolean v0, p0, Le8/p;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    iget-object v0, p0, Le8/p;->b:Le8/g;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Le8/g;->B(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Le8/p;->a()Le8/h;

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "closed"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final writeShort(I)Le8/h;
    .registers 3

    .line 1
    iget-boolean v0, p0, Le8/p;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    iget-object v0, p0, Le8/p;->b:Le8/g;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Le8/g;->C(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Le8/p;->a()Le8/h;

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "closed"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method
