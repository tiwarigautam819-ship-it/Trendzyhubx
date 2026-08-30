###### Class c5.b (c5.b)
.class public final Lc5/b;
.super Ljava/io/OutputStream;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:J


# virtual methods
.method public final write(I)V
    .registers 6

    .line 1
    iget-wide v0, p0, Lc5/b;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc5/b;->a:J

    return-void
.end method

.method public final write([B)V
    .registers 6

    .line 2
    iget-wide v0, p0, Lc5/b;->a:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc5/b;->a:J

    return-void
.end method

.method public final write([BII)V
    .registers 6

    if-ltz p2, :cond_14

    .line 3
    array-length v0, p1

    if-gt p2, v0, :cond_14

    if-ltz p3, :cond_14

    add-int/2addr p2, p3

    array-length p1, p1

    if-gt p2, p1, :cond_14

    if-ltz p2, :cond_14

    .line 4
    iget-wide p1, p0, Lc5/b;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lc5/b;->a:J

    return-void

    .line 5
    :cond_14
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
