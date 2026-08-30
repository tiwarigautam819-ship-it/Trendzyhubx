###### Class d1.k (d1.k)
.class public abstract Ld1/k;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lu/l;

.field public static final b:Ljava/lang/Object;

.field public static c:Le5/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lu/l;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld1/k;->a:Lu/l;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ld1/k;->b:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    sput-object v0, Ld1/k;->c:Le5/e;

    .line 17
    .line 18
    return-void
.end method

.method public static a(Landroid/content/Context;)J
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x21

    .line 12
    .line 13
    if-lt v1, v2, :cond_15

    .line 14
    .line 15
    invoke-static {v0, p0}, Ld1/i;->a(Landroid/content/pm/PackageManager;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 32
    .line 33
    return-wide v0
.end method

.method public static b()Le5/e;
    .registers 2

    .line 1
    new-instance v0, Le5/e;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Le5/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ld1/k;->c:Le5/e;

    .line 9
    .line 10
    sget-object v1, Ld1/k;->a:Lu/l;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lu/h;->j(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    sget-object v0, Ld1/k;->c:Le5/e;

    .line 16
    .line 17
    return-object v0
.end method

.method public static c(Landroid/content/Context;Z)V
    .registers 20

    .line 1
    if-nez p1, :cond_8

    .line 2
    .line 3
    sget-object v0, Ld1/k;->c:Le5/e;

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    goto/16 :goto_d4

    .line 8
    .line 9
    :cond_8
    sget-object v1, Ld1/k;->b:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    if-nez p1, :cond_16

    .line 13
    .line 14
    :try_start_d
    sget-object v0, Ld1/k;->c:Le5/e;

    .line 15
    .line 16
    if-eqz v0, :cond_16

    .line 17
    .line 18
    monitor-exit v1

    .line 19
    return-void

    .line 20
    :catchall_13
    move-exception v0

    .line 21
    goto/16 :goto_da

    .line 22
    .line 23
    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v2, 0x1c

    .line 26
    .line 27
    if-lt v0, v2, :cond_d5

    .line 28
    .line 29
    const/16 v2, 0x1e

    .line 30
    .line 31
    if-ne v0, v2, :cond_22

    .line 32
    .line 33
    goto/16 :goto_d5

    .line 34
    .line 35
    :cond_22
    new-instance v0, Ljava/io/File;

    .line 36
    .line 37
    new-instance v2, Ljava/io/File;

    .line 38
    .line 39
    const-string v3, "/data/misc/profiles/ref/"

    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v3, "primary.prof"

    .line 49
    .line 50
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const-wide/16 v4, 0x0

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x1

    .line 65
    if-eqz v0, :cond_48

    .line 66
    .line 67
    cmp-long v0, v2, v4

    .line 68
    .line 69
    if-lez v0, :cond_48

    .line 70
    .line 71
    move v0, v7

    .line 72
    goto :goto_49

    .line 73
    :cond_48
    move v0, v6

    .line 74
    :goto_49
    new-instance v8, Ljava/io/File;

    .line 75
    .line 76
    new-instance v9, Ljava/io/File;

    .line 77
    .line 78
    const-string v10, "/data/misc/profiles/cur/0/"

    .line 79
    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v10, "primary.prof"

    .line 88
    .line 89
    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 93
    .line 94
    .line 95
    move-result-wide v16

    .line 96
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 97
    .line 98
    .line 99
    move-result v8
    :try_end_63
    .catchall {:try_start_d .. :try_end_63} :catchall_13

    .line 100
    if-eqz v8, :cond_6b

    .line 101
    .line 102
    cmp-long v4, v16, v4

    .line 103
    .line 104
    if-lez v4, :cond_6b

    .line 105
    .line 106
    move v4, v7

    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    move v4, v6

    .line 109
    :goto_6c
    :try_start_6c
    invoke-static/range {p0 .. p0}, Ld1/k;->a(Landroid/content/Context;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v14
    :try_end_70
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6c .. :try_end_70} :catch_d0
    .catchall {:try_start_6c .. :try_end_70} :catchall_13

    .line 113
    :try_start_70
    new-instance v5, Ljava/io/File;

    .line 114
    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    const-string v9, "profileInstalled"

    .line 120
    .line 121
    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 125
    .line 126
    .line 127
    move-result v8
    :try_end_7f
    .catchall {:try_start_70 .. :try_end_7f} :catchall_13

    .line 128
    if-eqz v8, :cond_8b

    .line 129
    .line 130
    :try_start_81
    invoke-static {v5}, Ld1/j;->a(Ljava/io/File;)Ld1/j;

    .line 131
    .line 132
    .line 133
    move-result-object v8
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_85} :catch_86
    .catchall {:try_start_81 .. :try_end_85} :catchall_13

    .line 134
    goto :goto_8c

    .line 135
    :catch_86
    :try_start_86
    invoke-static {}, Ld1/k;->b()Le5/e;

    .line 136
    .line 137
    .line 138
    monitor-exit v1

    .line 139
    goto :goto_d4

    .line 140
    :cond_8b
    const/4 v8, 0x0

    .line 141
    :goto_8c
    const/4 v9, 0x2

    .line 142
    if-eqz v8, :cond_9c

    .line 143
    .line 144
    iget-wide v10, v8, Ld1/j;->c:J

    .line 145
    .line 146
    cmp-long v10, v10, v14

    .line 147
    .line 148
    if-nez v10, :cond_9c

    .line 149
    .line 150
    iget v10, v8, Ld1/j;->b:I

    .line 151
    .line 152
    if-ne v10, v9, :cond_9a

    .line 153
    .line 154
    goto :goto_9c

    .line 155
    :cond_9a
    move v6, v10

    .line 156
    goto :goto_a3

    .line 157
    :cond_9c
    :goto_9c
    if-eqz v0, :cond_a0

    .line 158
    .line 159
    move v6, v7

    .line 160
    goto :goto_a3

    .line 161
    :cond_a0
    if-eqz v4, :cond_a3

    .line 162
    .line 163
    move v6, v9

    .line 164
    :cond_a3
    :goto_a3
    if-eqz p1, :cond_aa

    .line 165
    .line 166
    if-eqz v4, :cond_aa

    .line 167
    .line 168
    if-eq v6, v7, :cond_aa

    .line 169
    .line 170
    move v6, v9

    .line 171
    :cond_aa
    if-eqz v8, :cond_b9

    .line 172
    .line 173
    iget v0, v8, Ld1/j;->b:I

    .line 174
    .line 175
    if-ne v0, v9, :cond_b9

    .line 176
    .line 177
    if-ne v6, v7, :cond_b9

    .line 178
    .line 179
    iget-wide v9, v8, Ld1/j;->d:J

    .line 180
    .line 181
    cmp-long v0, v2, v9

    .line 182
    .line 183
    if-gez v0, :cond_b9

    .line 184
    .line 185
    const/4 v6, 0x3

    .line 186
    :cond_b9
    move v13, v6

    .line 187
    new-instance v11, Ld1/j;

    .line 188
    .line 189
    const/4 v12, 0x1

    .line 190
    invoke-direct/range {v11 .. v17}, Ld1/j;-><init>(IIJJ)V

    .line 191
    .line 192
    .line 193
    if-eqz v8, :cond_c8

    .line 194
    .line 195
    invoke-virtual {v8, v11}, Ld1/j;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v0
    :try_end_c6
    .catchall {:try_start_86 .. :try_end_c6} :catchall_13

    .line 199
    if-nez v0, :cond_cb

    .line 200
    .line 201
    :cond_c8
    :try_start_c8
    invoke-virtual {v11, v5}, Ld1/j;->b(Ljava/io/File;)V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_13

    .line 202
    .line 203
    .line 204
    :catch_cb
    :cond_cb
    :try_start_cb
    invoke-static {}, Ld1/k;->b()Le5/e;

    .line 205
    .line 206
    .line 207
    monitor-exit v1

    .line 208
    goto :goto_d4

    .line 209
    :catch_d0
    invoke-static {}, Ld1/k;->b()Le5/e;

    .line 210
    .line 211
    .line 212
    monitor-exit v1

    .line 213
    :goto_d4
    return-void

    .line 214
    :cond_d5
    :goto_d5
    invoke-static {}, Ld1/k;->b()Le5/e;

    .line 215
    .line 216
    .line 217
    monitor-exit v1

    .line 218
    return-void

    .line 219
    :goto_da
    monitor-exit v1
    :try_end_db
    .catchall {:try_start_cb .. :try_end_db} :catchall_13

    .line 220
    throw v0
.end method
