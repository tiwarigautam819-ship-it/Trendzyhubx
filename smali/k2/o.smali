###### Class k2.o (k2.o)
.class public final Lk2/o;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lk2/o;

.field public static final b:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lk2/o;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lk2/o;->a:Lk2/o;

    .line 7
    .line 8
    const/16 v0, 0x13

    .line 9
    .line 10
    new-array v0, v0, [J

    .line 11
    .line 12
    fill-array-data v0, :array_12

    .line 13
    .line 14
    .line 15
    sput-object v0, Lk2/o;->b:[J

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_12
    .array-data 8
        0x493e0
        0xdbba0
        0x1b7740
        0x36ee80
        0x1499700
        0x2932e00
        0x5265c00
        0xa4cb800
        0xf731400
        0x240c8400
        0x48190800
        0x6c258c00
        0x90321000L
        0x134fd9000L
        0x1cf7c5800L
        0x269fb2000L
        0x30479e800L
        0x39ef8b000L
        0x757b12c00L
    .end array-data
.end method

.method public static final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    const-class v0, Lk2/o;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_45

    .line 10
    :cond_9
    :try_start_9
    const-string v1, "context"

    .line 11
    .line 12
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const-string p0, "Unclassified"

    .line 16
    .line 17
    new-instance v1, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "fb_mobile_launch_source"

    .line 23
    .line 24
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance p0, Ly1/k;

    .line 28
    .line 29
    invoke-direct {p0, p1, p2}, Ly1/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "fb_mobile_activate_app"

    .line 33
    .line 34
    sget-object p2, Lx1/r;->a:Lx1/r;

    .line 35
    .line 36
    invoke-static {}, Lx1/j0;->c()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_2c

    .line 41
    .line 42
    invoke-virtual {p0, p1, v1}, Ly1/k;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    :cond_2c
    sget-object p1, Ly1/k;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {}, Lx1/w;->n()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/4 p2, 0x2

    .line 52
    if-eq p1, p2, :cond_45

    .line 53
    .line 54
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_46

    .line 58
    if-eqz p1, :cond_3c

    .line 59
    .line 60
    goto :goto_45

    .line 61
    :cond_3c
    const/4 p1, 0x1

    .line 62
    :try_start_3d
    invoke-static {p1}, Ly1/i;->c(I)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    .line 63
    .line 64
    .line 65
    goto :goto_45

    .line 66
    :catchall_41
    move-exception p1

    .line 67
    :try_start_42
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    .line 68
    .line 69
    .line 70
    :cond_45
    :goto_45
    return-void

    .line 71
    :catchall_46
    move-exception p0

    .line 72
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static final d(Ljava/lang/String;Lk2/n;Ljava/lang/String;)V
    .registers 20

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-class v2, Lk2/o;

    .line 4
    .line 5
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 10
    .line 11
    goto/16 :goto_e8

    .line 12
    .line 13
    :cond_c
    if-nez v1, :cond_10

    .line 14
    .line 15
    goto/16 :goto_e8

    .line 16
    .line 17
    :cond_10
    :try_start_10
    iget-object v0, v1, Lk2/n;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ljava/lang/Long;

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    if-nez v0, :cond_1c

    .line 24
    .line 25
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v5
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_2b

    .line 33
    cmp-long v0, v5, v3

    .line 34
    .line 35
    sget-object v7, Lk2/o;->a:Lk2/o;

    .line 36
    .line 37
    if-gez v0, :cond_2e

    .line 38
    .line 39
    :try_start_26
    invoke-virtual {v7}, Lk2/o;->c()V

    .line 40
    .line 41
    .line 42
    move-wide v5, v3

    .line 43
    goto :goto_2e

    .line 44
    :catchall_2b
    move-exception v0

    .line 45
    goto/16 :goto_e9

    .line 46
    .line 47
    :cond_2e
    :goto_2e
    iget-object v0, v1, Lk2/n;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Ljava/lang/Long;

    .line 50
    .line 51
    if-eqz v0, :cond_45

    .line 52
    .line 53
    iget-object v8, v1, Lk2/n;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v8, Ljava/lang/Long;

    .line 56
    .line 57
    if-nez v8, :cond_3b

    .line 58
    .line 59
    goto :goto_45

    .line 60
    :cond_3b
    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v8

    .line 64
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 65
    .line 66
    .line 67
    move-result-wide v10

    .line 68
    sub-long/2addr v8, v10

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    :goto_45
    move-wide v8, v3

    .line 71
    :goto_46
    cmp-long v0, v8, v3

    .line 72
    .line 73
    if-gez v0, :cond_4e

    .line 74
    .line 75
    invoke-virtual {v7}, Lk2/o;->c()V

    .line 76
    .line 77
    .line 78
    move-wide v8, v3

    .line 79
    :cond_4e
    new-instance v13, Landroid/os/Bundle;

    .line 80
    .line 81
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v0, "fb_mobile_app_interruptions"

    .line 85
    .line 86
    iget v7, v1, Lk2/n;->a:I

    .line 87
    .line 88
    invoke-virtual {v13, v0, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    const-string v7, "fb_mobile_time_between_sessions"

    .line 92
    .line 93
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 94
    .line 95
    const-string v11, "session_quanta_%d"

    .line 96
    .line 97
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0
    :try_end_64
    .catchall {:try_start_26 .. :try_end_64} :catchall_2b

    .line 101
    const/4 v12, 0x0

    .line 102
    if-eqz v0, :cond_69

    .line 103
    .line 104
    :goto_67
    move v0, v12

    .line 105
    goto :goto_7e

    .line 106
    :cond_69
    move v0, v12

    .line 107
    :goto_6a
    :try_start_6a
    sget-object v14, Lk2/o;->b:[J

    .line 108
    .line 109
    const/16 v15, 0x13

    .line 110
    .line 111
    if-ge v0, v15, :cond_7e

    .line 112
    .line 113
    aget-wide v15, v14, v0
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_79

    .line 114
    .line 115
    cmp-long v14, v15, v5

    .line 116
    .line 117
    if-gez v14, :cond_7e

    .line 118
    .line 119
    add-int/lit8 v0, v0, 0x1

    .line 120
    .line 121
    goto :goto_6a

    .line 122
    :catchall_79
    move-exception v0

    .line 123
    :try_start_7a
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto :goto_67

    .line 127
    :cond_7e
    :goto_7e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const/4 v5, 0x1

    .line 132
    new-array v6, v5, [Ljava/lang/Object;

    .line 133
    .line 134
    aput-object v0, v6, v12

    .line 135
    .line 136
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v10, v11, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v13, v7, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, v1, Lk2/n;->f:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v0, Lg/m0;

    .line 150
    .line 151
    if-eqz v0, :cond_9e

    .line 152
    .line 153
    invoke-virtual {v0}, Lg/m0;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-nez v0, :cond_a0

    .line 158
    .line 159
    :cond_9e
    const-string v0, "Unclassified"

    .line 160
    .line 161
    :cond_a0
    const-string v5, "fb_mobile_launch_source"

    .line 162
    .line 163
    invoke-virtual {v13, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string v0, "_logTime"

    .line 167
    .line 168
    iget-object v1, v1, Lk2/n;->c:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Ljava/lang/Long;

    .line 171
    .line 172
    if-eqz v1, :cond_b1

    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 175
    .line 176
    .line 177
    move-result-wide v3

    .line 178
    :cond_b1
    const/16 v1, 0x3e8

    .line 179
    .line 180
    int-to-long v5, v1

    .line 181
    div-long/2addr v3, v5

    .line 182
    invoke-virtual {v13, v0, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 183
    .line 184
    .line 185
    new-instance v10, Ly1/k;

    .line 186
    .line 187
    move-object/from16 v1, p0

    .line 188
    .line 189
    move-object/from16 v3, p2

    .line 190
    .line 191
    invoke-direct {v10, v1, v3}, Ly1/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    long-to-double v0, v8

    .line 195
    const-wide/16 v3, 0x3e8

    .line 196
    .line 197
    long-to-double v3, v3

    .line 198
    div-double/2addr v0, v3

    .line 199
    const-string v11, "fb_mobile_deactivate_app"

    .line 200
    .line 201
    sget-object v3, Lx1/r;->a:Lx1/r;

    .line 202
    .line 203
    invoke-static {}, Lx1/j0;->c()Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-eqz v3, :cond_e8

    .line 208
    .line 209
    invoke-static {v10}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v3
    :try_end_d4
    .catchall {:try_start_7a .. :try_end_d4} :catchall_2b

    .line 213
    if-eqz v3, :cond_d7

    .line 214
    .line 215
    goto :goto_e8

    .line 216
    :cond_d7
    :try_start_d7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    invoke-static {}, Lk2/d;->b()Ljava/util/UUID;

    .line 221
    .line 222
    .line 223
    move-result-object v15

    .line 224
    const/4 v14, 0x0

    .line 225
    invoke-static/range {v10 .. v15}, Ly1/k;->f(Ly1/k;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_e3
    .catchall {:try_start_d7 .. :try_end_e3} :catchall_e4

    .line 226
    .line 227
    .line 228
    goto :goto_e8

    .line 229
    :catchall_e4
    move-exception v0

    .line 230
    :try_start_e5
    invoke-static {v0, v10}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_2b

    .line 231
    .line 232
    .line 233
    :cond_e8
    :goto_e8
    return-void

    .line 234
    :goto_e9
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    return-void
.end method


# virtual methods
.method public a()Lk2/i;
    .registers 4

    .line 1
    const-class v0, Lk2/i;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_b

    .line 9
    .line 10
    :goto_9
    move-object v0, v2

    .line 11
    goto :goto_13

    .line 12
    :cond_b
    :try_start_b
    sget-object v0, Lk2/i;->c:Lk2/i;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_e

    .line 13
    .line 14
    goto :goto_13

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_9

    .line 20
    :goto_13
    if-nez v0, :cond_4e

    .line 21
    .line 22
    monitor-enter p0

    .line 23
    :try_start_16
    sget-object v0, Lx1/r;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_48

    .line 29
    if-nez v0, :cond_20

    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-object v2

    .line 33
    :cond_20
    :try_start_20
    const-class v0, Lk2/i;

    .line 34
    .line 35
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_48

    .line 39
    if-eqz v1, :cond_29

    .line 40
    .line 41
    goto :goto_30

    .line 42
    :cond_29
    :try_start_29
    sget-object v2, Lk2/i;->c:Lk2/i;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_2c

    .line 43
    .line 44
    goto :goto_30

    .line 45
    :catchall_2c
    move-exception v1

    .line 46
    :try_start_2d
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :goto_30
    if-nez v2, :cond_4a

    .line 50
    .line 51
    new-instance v2, Lk2/i;

    .line 52
    .line 53
    invoke-direct {v2}, Lk2/i;-><init>()V

    .line 54
    .line 55
    .line 56
    const-class v0, Lk2/i;

    .line 57
    .line 58
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_48

    .line 62
    if-eqz v1, :cond_40

    .line 63
    .line 64
    goto :goto_4a

    .line 65
    :cond_40
    :try_start_40
    sput-object v2, Lk2/i;->c:Lk2/i;
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_43

    .line 66
    .line 67
    goto :goto_4a

    .line 68
    :catchall_43
    move-exception v1

    .line 69
    :try_start_44
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    .line 70
    .line 71
    .line 72
    goto :goto_4a

    .line 73
    :catchall_48
    move-exception v0

    .line 74
    goto :goto_4c

    .line 75
    :cond_4a
    :goto_4a
    monitor-exit p0

    .line 76
    return-object v2

    .line 77
    :goto_4c
    monitor-exit p0

    .line 78
    throw v0

    .line 79
    :cond_4e
    return-object v0
.end method

.method public c()V
    .registers 4

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    sget-object v0, Lq2/z;->c:Lo3/a;

    .line 9
    .line 10
    sget-object v0, Lx1/e0;->d:Lx1/e0;

    .line 11
    .line 12
    const-string v1, "k2.o"

    .line 13
    .line 14
    const-string v2, "Clock skew detected"

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lo3/a;->i(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_13
    move-exception v0

    .line 21
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
