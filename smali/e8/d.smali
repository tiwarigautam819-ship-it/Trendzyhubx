###### Class e8.d (e8.d)
.class public final Le8/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Le8/w;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 1
    iput p2, p0, Le8/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le8/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Le8/d;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b()Le8/y;
    .registers 2

    .line 1
    iget v0, p0, Le8/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_10

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le8/d;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Le8/y;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_a
    iget-object v0, p0, Le8/d;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Le8/v;

    .line 14
    .line 15
    return-object v0

    .line 16
    nop

    .line 17
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method public final close()V
    .registers 4

    .line 1
    iget v0, p0, Le8/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3c

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le8/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/io/InputStream;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Le8/d;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Le8/v;

    .line 17
    .line 18
    iget-object v1, p0, Le8/d;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Le8/d;

    .line 21
    .line 22
    invoke-virtual {v0}, Le8/e;->h()V

    .line 23
    .line 24
    .line 25
    :try_start_18
    invoke-virtual {v1}, Le8/d;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_2a
    .catchall {:try_start_18 .. :try_end_1b} :catchall_28

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Le8/e;->i()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_22

    .line 33
    .line 34
    return-void

    .line 35
    :cond_22
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Le8/v;->k(Ljava/io/IOException;)Ljava/io/IOException;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    throw v0

    .line 41
    :catchall_28
    move-exception v1

    .line 42
    goto :goto_37

    .line 43
    :catch_2a
    move-exception v1

    .line 44
    :try_start_2b
    invoke-virtual {v0}, Le8/e;->i()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_32

    .line 49
    .line 50
    goto :goto_36

    .line 51
    :cond_32
    invoke-virtual {v0, v1}, Le8/v;->k(Ljava/io/IOException;)Ljava/io/IOException;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_36
    throw v1
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    .line 56
    :goto_37
    invoke-virtual {v0}, Le8/e;->i()Z

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    nop

    .line 61
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public final h(JLe8/g;)J
    .registers 8

    .line 1
    iget p1, p0, Le8/d;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_96

    .line 4
    .line 5
    .line 6
    const-string p1, "sink"

    .line 7
    .line 8
    invoke-static {p1, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :try_start_a
    iget-object p1, p0, Le8/d;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Le8/y;

    .line 14
    .line 15
    invoke-virtual {p1}, Le8/y;->f()V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p3, p1}, Le8/g;->v(I)Le8/r;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget p2, p1, Le8/r;->c:I

    .line 24
    .line 25
    rsub-int p2, p2, 0x2000

    .line 26
    .line 27
    int-to-long v0, p2

    .line 28
    const-wide/16 v2, 0x2000

    .line 29
    .line 30
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    long-to-int p2, v0

    .line 35
    iget-object v0, p0, Le8/d;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ljava/io/InputStream;

    .line 38
    .line 39
    iget-object v1, p1, Le8/r;->a:[B

    .line 40
    .line 41
    iget v2, p1, Le8/r;->c:I

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    const/4 v0, -0x1

    .line 48
    if-ne p2, v0, :cond_46

    .line 49
    .line 50
    iget p2, p1, Le8/r;->b:I

    .line 51
    .line 52
    iget v0, p1, Le8/r;->c:I

    .line 53
    .line 54
    if-ne p2, v0, :cond_43

    .line 55
    .line 56
    invoke-virtual {p1}, Le8/r;->a()Le8/r;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p3, Le8/g;->a:Le8/r;

    .line 61
    .line 62
    invoke-static {p1}, Le8/s;->a(Le8/r;)V

    .line 63
    .line 64
    .line 65
    goto :goto_43

    .line 66
    :catch_41
    move-exception p1

    .line 67
    goto :goto_52

    .line 68
    :cond_43
    :goto_43
    const-wide/16 p1, -0x1

    .line 69
    .line 70
    goto :goto_51

    .line 71
    :cond_46
    iget v0, p1, Le8/r;->c:I

    .line 72
    .line 73
    add-int/2addr v0, p2

    .line 74
    iput v0, p1, Le8/r;->c:I

    .line 75
    .line 76
    iget-wide v0, p3, Le8/g;->b:J

    .line 77
    .line 78
    int-to-long p1, p2

    .line 79
    add-long/2addr v0, p1

    .line 80
    iput-wide v0, p3, Le8/g;->b:J
    :try_end_51
    .catch Ljava/lang/AssertionError; {:try_start_a .. :try_end_51} :catch_41

    .line 81
    .line 82
    :goto_51
    return-wide p1

    .line 83
    :goto_52
    invoke-static {p1}, Ll2/e;->n(Ljava/lang/AssertionError;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_5e

    .line 88
    .line 89
    new-instance p2, Ljava/io/IOException;

    .line 90
    .line 91
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    throw p2

    .line 95
    :cond_5e
    throw p1

    .line 96
    :pswitch_5f
    const-string p1, "sink"

    .line 97
    .line 98
    invoke-static {p1, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Le8/d;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Le8/v;

    .line 104
    .line 105
    iget-object p2, p0, Le8/d;->c:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p2, Le8/d;

    .line 108
    .line 109
    invoke-virtual {p1}, Le8/e;->h()V

    .line 110
    .line 111
    .line 112
    const-wide/16 v0, 0x2000

    .line 113
    .line 114
    :try_start_71
    invoke-virtual {p2, v0, v1, p3}, Le8/d;->h(JLe8/g;)J

    .line 115
    .line 116
    .line 117
    move-result-wide p2
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_75} :catch_84
    .catchall {:try_start_71 .. :try_end_75} :catchall_82

    .line 118
    invoke-virtual {p1}, Le8/e;->i()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_7c

    .line 123
    .line 124
    return-wide p2

    .line 125
    :cond_7c
    const/4 p2, 0x0

    .line 126
    invoke-virtual {p1, p2}, Le8/v;->k(Ljava/io/IOException;)Ljava/io/IOException;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    throw p1

    .line 131
    :catchall_82
    move-exception p2

    .line 132
    goto :goto_91

    .line 133
    :catch_84
    move-exception p2

    .line 134
    :try_start_85
    invoke-virtual {p1}, Le8/e;->i()Z

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    if-nez p3, :cond_8c

    .line 139
    .line 140
    goto :goto_90

    .line 141
    :cond_8c
    invoke-virtual {p1, p2}, Le8/v;->k(Ljava/io/IOException;)Ljava/io/IOException;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    :goto_90
    throw p2
    :try_end_91
    .catchall {:try_start_85 .. :try_end_91} :catchall_82

    .line 146
    :goto_91
    invoke-virtual {p1}, Le8/e;->i()Z

    .line 147
    .line 148
    .line 149
    throw p2

    .line 150
    nop

    .line 151
    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_5f
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Le8/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_36

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "source("

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Le8/d;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/io/InputStream;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x29

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :pswitch_1d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "AsyncTimeout.source("

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Le8/d;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Le8/d;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x29

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    nop

    .line 55
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method
