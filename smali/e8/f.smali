###### Class e8.f (e8.f)
.class public final Le8/f;
.super Ljava/io/InputStream;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le8/i;


# direct methods
.method public synthetic constructor <init>(Le8/i;I)V
    .registers 3

    .line 1
    iput p2, p0, Le8/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le8/f;->b:Le8/i;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a()V
    .registers 1

    .line 1
    return-void
.end method


# virtual methods
.method public final available()I
    .registers 5

    .line 1
    iget v0, p0, Le8/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_32

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le8/f;->b:Le8/i;

    .line 7
    .line 8
    check-cast v0, Le8/q;

    .line 9
    .line 10
    iget-boolean v1, v0, Le8/q;->c:Z

    .line 11
    .line 12
    if-nez v1, :cond_1b

    .line 13
    .line 14
    iget-object v0, v0, Le8/q;->b:Le8/g;

    .line 15
    .line 16
    iget-wide v0, v0, Le8/g;->b:J

    .line 17
    .line 18
    const v2, 0x7fffffff

    .line 19
    .line 20
    .line 21
    int-to-long v2, v2

    .line 22
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    :goto_19
    long-to-int v0, v0

    .line 27
    return v0

    .line 28
    :cond_1b
    new-instance v0, Ljava/io/IOException;

    .line 29
    .line 30
    const-string v1, "closed"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :pswitch_23
    iget-object v0, p0, Le8/f;->b:Le8/i;

    .line 37
    .line 38
    check-cast v0, Le8/g;

    .line 39
    .line 40
    iget-wide v0, v0, Le8/g;->b:J

    .line 41
    .line 42
    const v2, 0x7fffffff

    .line 43
    .line 44
    .line 45
    int-to-long v2, v2

    .line 46
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    goto :goto_19

    .line 51
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_23
    .end packed-switch
.end method

.method public final close()V
    .registers 2

    .line 1
    iget v0, p0, Le8/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le8/f;->b:Le8/i;

    .line 7
    .line 8
    check-cast v0, Le8/q;

    .line 9
    .line 10
    invoke-virtual {v0}, Le8/q;->close()V

    .line 11
    .line 12
    .line 13
    :pswitch_c
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public final read()I
    .registers 7

    iget v0, p0, Le8/f;->a:I

    packed-switch v0, :pswitch_data_4c

    .line 1
    iget-object v0, p0, Le8/f;->b:Le8/i;

    check-cast v0, Le8/q;

    iget-object v1, v0, Le8/q;->b:Le8/g;

    iget-boolean v2, v0, Le8/q;->c:Z

    if-nez v2, :cond_2e

    .line 2
    iget-wide v2, v1, Le8/g;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_27

    .line 3
    iget-object v0, v0, Le8/q;->a:Le8/w;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v2, v3, v1}, Le8/w;->h(JLe8/g;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_27

    const/4 v0, -0x1

    goto :goto_2d

    .line 4
    :cond_27
    invoke-virtual {v1}, Le8/g;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_2d
    return v0

    .line 5
    :cond_2e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :pswitch_36
    iget-object v0, p0, Le8/f;->b:Le8/i;

    check-cast v0, Le8/g;

    .line 7
    iget-wide v1, v0, Le8/g;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_49

    .line 8
    invoke-virtual {v0}, Le8/g;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_4a

    :cond_49
    const/4 v0, -0x1

    :goto_4a
    return v0

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_36
    .end packed-switch
.end method

.method public final read([BII)I
    .registers 13

    iget v0, p0, Le8/f;->a:I

    packed-switch v0, :pswitch_data_4e

    const-string v0, "data"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Le8/f;->b:Le8/i;

    check-cast v0, Le8/q;

    iget-object v1, v0, Le8/q;->b:Le8/g;

    iget-boolean v2, v0, Le8/q;->c:Z

    if-nez v2, :cond_38

    .line 10
    array-length v2, p1

    int-to-long v3, v2

    int-to-long v5, p2

    int-to-long v7, p3

    invoke-static/range {v3 .. v8}, Li2/t;->c(JJJ)V

    .line 11
    iget-wide v2, v1, Le8/g;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_33

    .line 12
    iget-object v0, v0, Le8/q;->a:Le8/w;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v2, v3, v1}, Le8/w;->h(JLe8/g;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_33

    const/4 p1, -0x1

    goto :goto_37

    .line 13
    :cond_33
    invoke-virtual {v1, p1, p2, p3}, Le8/g;->read([BII)I

    move-result p1

    :goto_37
    return p1

    .line 14
    :cond_38
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :pswitch_40
    const-string v0, "sink"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Le8/f;->b:Le8/i;

    check-cast v0, Le8/g;

    invoke-virtual {v0, p1, p2, p3}, Le8/g;->read([BII)I

    move-result p1

    return p1

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_40
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Le8/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_32

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Le8/f;->b:Le8/i;

    .line 12
    .line 13
    check-cast v1, Le8/q;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ".inputStream()"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :pswitch_1b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Le8/f;->b:Le8/i;

    .line 34
    .line 35
    check-cast v1, Le8/g;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ".inputStream()"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    nop

    .line 51
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method
