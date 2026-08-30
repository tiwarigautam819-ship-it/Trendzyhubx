###### Class x7.d (x7.d)
.class public final Lx7/d;
.super Lx7/b;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final d:Lr7/m;

.field public e:J

.field public f:Z

.field public final synthetic g:Li5/a;


# direct methods
.method public constructor <init>(Li5/a;Lr7/m;)V
    .registers 4

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lx7/d;->g:Li5/a;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lx7/b;-><init>(Li5/a;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lx7/d;->d:Lr7/m;

    .line 12
    .line 13
    const-wide/16 p1, -0x1

    .line 14
    .line 15
    iput-wide p1, p0, Lx7/d;->e:J

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lx7/d;->f:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lx7/b;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v0, p0, Lx7/d;->f:Z

    .line 7
    .line 8
    if-eqz v0, :cond_28

    .line 9
    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    sget-object v1, Ls7/b;->a:[B

    .line 13
    .line 14
    const-string v1, "timeUnit"

    .line 15
    .line 16
    invoke-static {v1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x64

    .line 20
    .line 21
    :try_start_14
    invoke-static {p0, v0}, Ls7/b;->t(Le8/w;I)Z

    .line 22
    .line 23
    .line 24
    move-result v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_19

    .line 25
    goto :goto_1a

    .line 26
    :catch_19
    const/4 v0, 0x0

    .line 27
    :goto_1a
    if-nez v0, :cond_28

    .line 28
    .line 29
    iget-object v0, p0, Lx7/d;->g:Li5/a;

    .line 30
    .line 31
    iget-object v0, v0, Li5/a;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lv7/l;

    .line 34
    .line 35
    invoke-virtual {v0}, Lv7/l;->l()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lx7/b;->a()V

    .line 39
    .line 40
    .line 41
    :cond_28
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lx7/b;->b:Z

    .line 43
    .line 44
    return-void
.end method

.method public final h(JLe8/g;)J
    .registers 13

    .line 1
    iget-object p1, p0, Lx7/d;->g:Li5/a;

    .line 2
    .line 3
    iget-object p2, p1, Li5/a;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p2, Le8/i;

    .line 6
    .line 7
    const-string v0, "sink"

    .line 8
    .line 9
    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lx7/b;->b:Z

    .line 13
    .line 14
    if-nez v0, :cond_d2

    .line 15
    .line 16
    iget-boolean v0, p0, Lx7/d;->f:Z

    .line 17
    .line 18
    const-wide/16 v1, -0x1

    .line 19
    .line 20
    if-nez v0, :cond_16

    .line 21
    .line 22
    goto :goto_83

    .line 23
    :cond_16
    iget-wide v3, p0, Lx7/d;->e:J

    .line 24
    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    cmp-long v0, v3, v5

    .line 28
    .line 29
    if-eqz v0, :cond_22

    .line 30
    .line 31
    cmp-long v0, v3, v1

    .line 32
    .line 33
    if-nez v0, :cond_84

    .line 34
    .line 35
    :cond_22
    const-string v0, "expected chunk size and optional extensions but was \""

    .line 36
    .line 37
    cmp-long v3, v3, v1

    .line 38
    .line 39
    if-eqz v3, :cond_2b

    .line 40
    .line 41
    invoke-interface {p2}, Le8/i;->f()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    :cond_2b
    :try_start_2b
    invoke-interface {p2}, Le8/i;->p()J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    iput-wide v3, p0, Lx7/d;->e:J

    .line 49
    .line 50
    invoke-interface {p2}, Le8/i;->f()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {p2}, Lk7/g;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iget-wide v3, p0, Lx7/d;->e:J

    .line 63
    .line 64
    cmp-long v3, v3, v5

    .line 65
    .line 66
    if-ltz v3, :cond_ac

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/4 v4, 0x0

    .line 73
    if-lez v3, :cond_55

    .line 74
    .line 75
    const-string v3, ";"

    .line 76
    .line 77
    invoke-static {p2, v3, v4}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v3
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_50} :catch_53

    .line 81
    if-eqz v3, :cond_ac

    .line 82
    .line 83
    goto :goto_55

    .line 84
    :catch_53
    move-exception p1

    .line 85
    goto :goto_c8

    .line 86
    :cond_55
    :goto_55
    iget-wide v7, p0, Lx7/d;->e:J

    .line 87
    .line 88
    cmp-long p2, v7, v5

    .line 89
    .line 90
    if-nez p2, :cond_7f

    .line 91
    .line 92
    iput-boolean v4, p0, Lx7/d;->f:Z

    .line 93
    .line 94
    iget-object p2, p1, Li5/a;->f:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p2, Lx7/a;

    .line 97
    .line 98
    invoke-virtual {p2}, Lx7/a;->a()Lr7/k;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iput-object p2, p1, Li5/a;->g:Ljava/lang/Object;

    .line 103
    .line 104
    iget-object p2, p1, Li5/a;->b:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p2, Lr7/r;

    .line 107
    .line 108
    invoke-static {p2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p2, Lr7/r;->j:Lr7/b;

    .line 112
    .line 113
    iget-object v0, p1, Li5/a;->g:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v0, Lr7/k;

    .line 116
    .line 117
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget-object v3, p0, Lx7/d;->d:Lr7/m;

    .line 121
    .line 122
    invoke-static {p2, v3, v0}, Lw7/e;->b(Lr7/b;Lr7/m;Lr7/k;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lx7/b;->a()V

    .line 126
    .line 127
    .line 128
    :cond_7f
    iget-boolean p2, p0, Lx7/d;->f:Z

    .line 129
    .line 130
    if-nez p2, :cond_84

    .line 131
    .line 132
    :goto_83
    return-wide v1

    .line 133
    :cond_84
    iget-wide v3, p0, Lx7/d;->e:J

    .line 134
    .line 135
    const-wide/16 v5, 0x2000

    .line 136
    .line 137
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 138
    .line 139
    .line 140
    move-result-wide v3

    .line 141
    invoke-super {p0, v3, v4, p3}, Lx7/b;->h(JLe8/g;)J

    .line 142
    .line 143
    .line 144
    move-result-wide p2

    .line 145
    cmp-long v0, p2, v1

    .line 146
    .line 147
    if-eqz v0, :cond_9a

    .line 148
    .line 149
    iget-wide v0, p0, Lx7/d;->e:J

    .line 150
    .line 151
    sub-long/2addr v0, p2

    .line 152
    iput-wide v0, p0, Lx7/d;->e:J

    .line 153
    .line 154
    return-wide p2

    .line 155
    :cond_9a
    iget-object p1, p1, Li5/a;->c:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p1, Lv7/l;

    .line 158
    .line 159
    invoke-virtual {p1}, Lv7/l;->l()V

    .line 160
    .line 161
    .line 162
    new-instance p1, Ljava/net/ProtocolException;

    .line 163
    .line 164
    const-string p2, "unexpected end of stream"

    .line 165
    .line 166
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lx7/b;->a()V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_ac
    :try_start_ac
    new-instance p1, Ljava/net/ProtocolException;

    .line 174
    .line 175
    new-instance p3, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-wide v0, p0, Lx7/d;->e:J

    .line 181
    .line 182
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const/16 p2, 0x22

    .line 189
    .line 190
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p1
    :try_end_c8
    .catch Ljava/lang/NumberFormatException; {:try_start_ac .. :try_end_c8} :catch_53

    .line 201
    :goto_c8
    new-instance p2, Ljava/net/ProtocolException;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p2

    .line 211
    :cond_d2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 212
    .line 213
    const-string p2, "closed"

    .line 214
    .line 215
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p1
.end method
