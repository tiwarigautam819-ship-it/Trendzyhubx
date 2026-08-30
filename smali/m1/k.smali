###### Class m1.k (m1.k)
.class public final Lm1/k;
.super Ljava/io/InputStream;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Ljava/io/FileOutputStream;

.field public final c:Lm1/d;

.field public final d:Landroidx/fragment/app/e;

.field public final e:J

.field public f:J

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/FileOutputStream;Lm1/d;Landroidx/fragment/app/e;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lm1/k;->f:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lm1/k;->g:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lm1/k;->h:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lm1/k;->i:Z

    .line 14
    .line 15
    iput-object p1, p0, Lm1/k;->a:Ljava/io/InputStream;

    .line 16
    .line 17
    iput-object p2, p0, Lm1/k;->b:Ljava/io/FileOutputStream;

    .line 18
    .line 19
    iput-object p3, p0, Lm1/k;->c:Lm1/d;

    .line 20
    .line 21
    iput-object p4, p0, Lm1/k;->d:Landroidx/fragment/app/e;

    .line 22
    .line 23
    const-wide/32 p1, 0x3200000

    .line 24
    .line 25
    .line 26
    iput-wide p1, p0, Lm1/k;->e:J

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lm1/k;->b:Ljava/io/FileOutputStream;

    .line 2
    .line 3
    iget-boolean v1, p0, Lm1/k;->g:Z

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    goto :goto_22

    .line 8
    :cond_7
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lm1/k;->g:Z

    .line 10
    .line 11
    :try_start_a
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_10

    .line 15
    .line 16
    .line 17
    :catchall_10
    iget-boolean v0, p0, Lm1/k;->h:Z

    .line 18
    .line 19
    if-nez v0, :cond_22

    .line 20
    .line 21
    :try_start_14
    iget-object v0, p0, Lm1/k;->c:Lm1/d;

    .line 22
    .line 23
    invoke-virtual {v0}, Lm1/d;->run()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1a

    .line 24
    .line 25
    .line 26
    goto :goto_22

    .line 27
    :catchall_1a
    move-exception v0

    .line 28
    const-string v1, "TeeInputStream"

    .line 29
    .line 30
    const-string v2, "onComplete failed"

    .line 31
    .line 32
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :cond_22
    :goto_22
    return-void
.end method

.method public final available()I
    .registers 2

    .line 1
    iget-object v0, p0, Lm1/k;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final close()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lm1/k;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    goto :goto_28

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lm1/k;->i:Z

    .line 8
    .line 9
    :try_start_8
    iget-object v0, p0, Lm1/k;->a:Ljava/io/InputStream;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_d

    .line 12
    .line 13
    .line 14
    :catchall_d
    :try_start_d
    iget-object v0, p0, Lm1/k;->b:Ljava/io/FileOutputStream;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_12

    .line 17
    .line 18
    .line 19
    :catchall_12
    iget-boolean v0, p0, Lm1/k;->g:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1a

    .line 22
    .line 23
    iget-boolean v0, p0, Lm1/k;->h:Z

    .line 24
    .line 25
    if-eqz v0, :cond_28

    .line 26
    .line 27
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lm1/k;->d:Landroidx/fragment/app/e;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/e;->run()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_20

    .line 30
    .line 31
    .line 32
    goto :goto_28

    .line 33
    :catchall_20
    move-exception v0

    .line 34
    const-string v1, "TeeInputStream"

    .line 35
    .line 36
    const-string v2, "onAbort failed"

    .line 37
    .line 38
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :cond_28
    :goto_28
    return-void
.end method

.method public final read()I
    .registers 7

    .line 1
    iget-object v0, p0, Lm1/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 2
    invoke-virtual {p0}, Lm1/k;->a()V

    return v1

    .line 3
    :cond_d
    iget-wide v2, p0, Lm1/k;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lm1/k;->f:J

    .line 4
    iget-wide v4, p0, Lm1/k;->e:J

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-lez v2, :cond_25

    .line 5
    iput-boolean v3, p0, Lm1/k;->h:Z

    .line 6
    const-string v0, "TeeInputStream"

    const-string v2, "exceeded max bytes, abort tee"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 7
    :cond_25
    :try_start_25
    iget-object v1, p0, Lm1/k;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_2b

    return v0

    :catch_2b
    move-exception v0

    .line 8
    iput-boolean v3, p0, Lm1/k;->h:Z

    .line 9
    throw v0
.end method

.method public final read([BII)I
    .registers 9

    .line 10
    iget-object v0, p0, Lm1/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_d

    .line 11
    invoke-virtual {p0}, Lm1/k;->a()V

    return v0

    :cond_d
    if-lez p3, :cond_30

    .line 12
    iget-wide v1, p0, Lm1/k;->f:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lm1/k;->f:J

    .line 13
    iget-wide v3, p0, Lm1/k;->e:J

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-lez v1, :cond_26

    .line 14
    iput-boolean v2, p0, Lm1/k;->h:Z

    .line 15
    const-string p1, "TeeInputStream"

    const-string p2, "exceeded max bytes, abort tee"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 16
    :cond_26
    :try_start_26
    iget-object v0, p0, Lm1/k;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_2c

    return p3

    :catch_2c
    move-exception p1

    .line 17
    iput-boolean v2, p0, Lm1/k;->h:Z

    .line 18
    throw p1

    :cond_30
    return p3
.end method
