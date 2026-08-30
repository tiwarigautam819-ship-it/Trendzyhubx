###### Class y7.i (y7.i)
.class public final Ly7/i;
.super Lu7/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5

    .line 1
    iput p4, p0, Ly7/i;->e:I

    .line 2
    .line 3
    iput-object p2, p0, Ly7/i;->f:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ly7/i;->g:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    invoke-direct {p0, p1, p2}, Lu7/a;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()J
    .registers 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Ly7/i;->e:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    packed-switch v0, :pswitch_data_100

    .line 7
    .line 8
    .line 9
    iget-object v0, v1, Ly7/i;->f:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ly7/k;

    .line 12
    .line 13
    iget-object v5, v1, Ly7/i;->g:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v5, Ly7/a0;

    .line 16
    .line 17
    new-instance v6, Ld7/k;

    .line 18
    .line 19
    invoke-direct {v6}, Ld7/k;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v7, v0, Ly7/k;->b:Ly7/o;

    .line 23
    .line 24
    iget-object v8, v7, Ly7/o;->E:Ly7/x;

    .line 25
    .line 26
    monitor-enter v8

    .line 27
    :try_start_1a
    monitor-enter v7
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_8e

    .line 28
    :try_start_1b
    iget-object v0, v7, Ly7/o;->y:Ly7/a0;

    .line 29
    .line 30
    new-instance v9, Ly7/a0;

    .line 31
    .line 32
    invoke-direct {v9}, Ly7/a0;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v9, v0}, Ly7/a0;->b(Ly7/a0;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v9, v5}, Ly7/a0;->b(Ly7/a0;)V

    .line 39
    .line 40
    .line 41
    iput-object v9, v6, Ld7/k;->b:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {v9}, Ly7/a0;->a()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    int-to-long v9, v5

    .line 48
    invoke-virtual {v0}, Ly7/a0;->a()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    int-to-long v11, v0

    .line 53
    sub-long/2addr v9, v11

    .line 54
    const-wide/16 v11, 0x0

    .line 55
    .line 56
    cmp-long v5, v9, v11

    .line 57
    .line 58
    const/4 v13, 0x0

    .line 59
    if-eqz v5, :cond_57

    .line 60
    .line 61
    iget-object v0, v7, Ly7/o;->b:Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_45

    .line 68
    .line 69
    goto :goto_57

    .line 70
    :cond_45
    iget-object v0, v7, Ly7/o;->b:Ljava/util/LinkedHashMap;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-array v14, v13, [Ly7/w;

    .line 77
    .line 78
    invoke-interface {v0, v14}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, [Ly7/w;

    .line 83
    .line 84
    :goto_53
    move-object v14, v0

    .line 85
    goto :goto_59

    .line 86
    :catchall_55
    move-exception v0

    .line 87
    goto :goto_af

    .line 88
    :cond_57
    :goto_57
    const/4 v0, 0x0

    .line 89
    goto :goto_53

    .line 90
    :goto_59
    iget-object v0, v6, Ld7/k;->b:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Ly7/a0;

    .line 93
    .line 94
    const-string v15, "<set-?>"

    .line 95
    .line 96
    invoke-static {v15, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, v7, Ly7/o;->y:Ly7/a0;

    .line 100
    .line 101
    iget-object v0, v7, Ly7/o;->j:Lu7/c;

    .line 102
    .line 103
    new-instance v15, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-wide/16 v16, -0x1

    .line 109
    .line 110
    iget-object v3, v7, Ly7/o;->c:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v3, " onSettings"

    .line 116
    .line 117
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    new-instance v4, Ly7/i;

    .line 125
    .line 126
    invoke-direct {v4, v3, v7, v6, v13}, Ly7/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v4, v11, v12}, Lu7/c;->c(Lu7/a;J)V
    :try_end_83
    .catchall {:try_start_1b .. :try_end_83} :catchall_55

    .line 130
    .line 131
    .line 132
    :try_start_83
    monitor-exit v7
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_8e

    .line 133
    :try_start_84
    iget-object v0, v7, Ly7/o;->E:Ly7/x;

    .line 134
    .line 135
    iget-object v3, v6, Ld7/k;->b:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v3, Ly7/a0;

    .line 138
    .line 139
    invoke-virtual {v0, v3}, Ly7/x;->a(Ly7/a0;)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8d} :catch_90
    .catchall {:try_start_84 .. :try_end_8d} :catchall_8e

    .line 140
    .line 141
    .line 142
    goto :goto_94

    .line 143
    :catchall_8e
    move-exception v0

    .line 144
    goto :goto_b1

    .line 145
    :catch_90
    move-exception v0

    .line 146
    :try_start_91
    invoke-virtual {v7, v2, v2, v0}, Ly7/o;->a(IILjava/io/IOException;)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_8e

    .line 147
    .line 148
    .line 149
    :goto_94
    monitor-exit v8

    .line 150
    if-eqz v14, :cond_ae

    .line 151
    .line 152
    array-length v0, v14

    .line 153
    :goto_98
    if-ge v13, v0, :cond_ae

    .line 154
    .line 155
    aget-object v2, v14, v13

    .line 156
    .line 157
    monitor-enter v2

    .line 158
    :try_start_9d
    iget-wide v3, v2, Ly7/w;->f:J

    .line 159
    .line 160
    add-long/2addr v3, v9

    .line 161
    iput-wide v3, v2, Ly7/w;->f:J

    .line 162
    .line 163
    if-lez v5, :cond_a7

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_a7
    .catchall {:try_start_9d .. :try_end_a7} :catchall_ab

    .line 166
    .line 167
    .line 168
    :cond_a7
    monitor-exit v2

    .line 169
    add-int/lit8 v13, v13, 0x1

    .line 170
    .line 171
    goto :goto_98

    .line 172
    :catchall_ab
    move-exception v0

    .line 173
    monitor-exit v2

    .line 174
    throw v0

    .line 175
    :cond_ae
    return-wide v16

    .line 176
    :goto_af
    :try_start_af
    monitor-exit v7

    .line 177
    throw v0
    :try_end_b1
    .catchall {:try_start_af .. :try_end_b1} :catchall_8e

    .line 178
    :goto_b1
    monitor-exit v8

    .line 179
    throw v0

    .line 180
    :pswitch_b3
    const-wide/16 v16, -0x1

    .line 181
    .line 182
    :try_start_b5
    iget-object v0, v1, Ly7/i;->f:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v0, Ly7/o;

    .line 185
    .line 186
    iget-object v0, v0, Ly7/o;->a:Ly7/h;

    .line 187
    .line 188
    iget-object v3, v1, Ly7/i;->g:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v3, Ly7/w;

    .line 191
    .line 192
    invoke-virtual {v0, v3}, Ly7/h;->b(Ly7/w;)V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_c2} :catch_c3

    .line 193
    .line 194
    .line 195
    goto :goto_ea

    .line 196
    :catch_c3
    move-exception v0

    .line 197
    sget-object v3, Lz7/n;->a:Lz7/n;

    .line 198
    .line 199
    sget-object v3, Lz7/n;->a:Lz7/n;

    .line 200
    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v5, "Http2Connection.Listener failure for "

    .line 204
    .line 205
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object v5, v1, Ly7/i;->f:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v5, Ly7/o;

    .line 211
    .line 212
    iget-object v5, v5, Ly7/o;->c:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    const/4 v3, 0x4

    .line 225
    invoke-static {v4, v3, v0}, Lz7/n;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 226
    .line 227
    .line 228
    :try_start_e3
    iget-object v3, v1, Ly7/i;->g:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v3, Ly7/w;

    .line 231
    .line 232
    invoke-virtual {v3, v2, v0}, Ly7/w;->c(ILjava/io/IOException;)V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_ea} :catch_ea

    .line 233
    .line 234
    .line 235
    :catch_ea
    :goto_ea
    return-wide v16

    .line 236
    :pswitch_eb
    const-wide/16 v16, -0x1

    .line 237
    .line 238
    iget-object v0, v1, Ly7/i;->f:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v0, Ly7/o;

    .line 241
    .line 242
    iget-object v2, v0, Ly7/o;->a:Ly7/h;

    .line 243
    .line 244
    iget-object v3, v1, Ly7/i;->g:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v3, Ld7/k;

    .line 247
    .line 248
    iget-object v3, v3, Ld7/k;->b:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v3, Ly7/a0;

    .line 251
    .line 252
    invoke-virtual {v2, v0, v3}, Ly7/h;->a(Ly7/o;Ly7/a0;)V

    .line 253
    .line 254
    .line 255
    return-wide v16

    .line 256
    nop

    .line 257
    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_b3
    .end packed-switch
.end method
