###### Class v3.g (v3.g)
.class public final Lv3/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static c:Lv3/g;


# instance fields
.field public final a:Landroid/content/Context;

.field public volatile b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lv3/g;->a:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Landroid/content/Context;)Lv3/g;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Lv3/g;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_6
    sget-object v1, Lv3/g;->c:Lv3/g;

    .line 8
    .line 9
    if-nez v1, :cond_17

    .line 10
    .line 11
    invoke-static {p0}, Lv3/o;->a(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lv3/g;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lv3/g;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lv3/g;->c:Lv3/g;

    .line 20
    .line 21
    goto :goto_17

    .line 22
    :catchall_15
    move-exception p0

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_15

    .line 25
    sget-object p0, Lv3/g;->c:Lv3/g;

    .line 26
    .line 27
    return-object p0

    .line 28
    :goto_1b
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_15

    .line 29
    throw p0
.end method

.method public static final varargs c(Landroid/content/pm/PackageInfo;[Lv3/l;)Lv3/l;
    .registers 5

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    goto :goto_31

    .line 7
    :cond_6
    array-length v0, v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_12

    .line 10
    .line 11
    const-string p0, "GoogleSignatureVerifier"

    .line 12
    .line 13
    const-string p1, "Package has more than one signature."

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_12
    new-instance v0, Lv3/m;

    .line 20
    .line 21
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aget-object p0, p0, v2

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Lv3/m;-><init>([B)V

    .line 31
    .line 32
    .line 33
    :goto_20
    array-length p0, p1

    .line 34
    if-ge v2, p0, :cond_31

    .line 35
    .line 36
    aget-object p0, p1, v2

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lv3/l;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2e

    .line 43
    .line 44
    aget-object p0, p1, v2

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_20

    .line 50
    :cond_31
    :goto_31
    return-object v1
.end method

.method public static final d(Landroid/content/pm/PackageInfo;Z)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_27

    .line 4
    .line 5
    if-eqz p0, :cond_29

    .line 6
    .line 7
    const-string v2, "com.android.vending"

    .line 8
    .line 9
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1a

    .line 16
    .line 17
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "com.google.android.gms"

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_27

    .line 26
    .line 27
    :cond_1a
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 28
    .line 29
    if-nez p1, :cond_20

    .line 30
    .line 31
    :cond_1e
    move p1, v1

    .line 32
    goto :goto_27

    .line 33
    :cond_20
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 34
    .line 35
    and-int/lit16 p1, p1, 0x81

    .line 36
    .line 37
    if-eqz p1, :cond_1e

    .line 38
    .line 39
    move p1, v0

    .line 40
    :cond_27
    :goto_27
    move-object v2, p0

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    const/4 v2, 0x0

    .line 43
    :goto_2a
    if-eqz p0, :cond_48

    .line 44
    .line 45
    iget-object p0, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 46
    .line 47
    if-eqz p0, :cond_48

    .line 48
    .line 49
    if-eqz p1, :cond_39

    .line 50
    .line 51
    sget-object p0, Lv3/n;->a:[Lv3/l;

    .line 52
    .line 53
    invoke-static {v2, p0}, Lv3/g;->c(Landroid/content/pm/PackageInfo;[Lv3/l;)Lv3/l;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    goto :goto_45

    .line 58
    :cond_39
    sget-object p0, Lv3/n;->a:[Lv3/l;

    .line 59
    .line 60
    aget-object p0, p0, v1

    .line 61
    .line 62
    new-array p1, v0, [Lv3/l;

    .line 63
    .line 64
    aput-object p0, p1, v1

    .line 65
    .line 66
    invoke-static {v2, p1}, Lv3/g;->c(Landroid/content/pm/PackageInfo;[Lv3/l;)Lv3/l;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :goto_45
    if-eqz p0, :cond_48

    .line 71
    .line 72
    return v0

    .line 73
    :cond_48
    return v1
.end method


# virtual methods
.method public final b(I)Z
    .registers 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lv3/g;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move/from16 v2, p1

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x3

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v2, :cond_1da

    .line 19
    .line 20
    array-length v6, v2

    .line 21
    if-nez v6, :cond_18

    .line 22
    .line 23
    goto/16 :goto_1da

    .line 24
    .line 25
    :cond_18
    move-object v0, v4

    .line 26
    move v7, v5

    .line 27
    :goto_1a
    if-ge v7, v6, :cond_1d6

    .line 28
    .line 29
    aget-object v8, v2, v7

    .line 30
    .line 31
    const-string v9, "Failed to get Google certificates from remote"

    .line 32
    .line 33
    const-string v10, "GoogleCertificates"

    .line 34
    .line 35
    const-string v11, "null pkg"

    .line 36
    .line 37
    if-nez v8, :cond_2d

    .line 38
    .line 39
    new-instance v0, Lv3/r;

    .line 40
    .line 41
    invoke-direct {v0, v5, v11, v4}, Lv3/r;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_1cb

    .line 45
    .line 46
    :cond_2d
    iget-object v0, v1, Lv3/g;->b:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_1c9

    .line 53
    .line 54
    sget-object v0, Lv3/o;->a:Lv3/k;

    .line 55
    .line 56
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    :try_start_3b
    invoke-static {}, Lv3/o;->c()V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lv3/o;->c:Lcom/google/android/gms/common/internal/c0;

    .line 64
    .line 65
    check-cast v0, Lcom/google/android/gms/common/internal/a0;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/a0;->d()Z

    .line 68
    .line 69
    .line 70
    move-result v0
    :try_end_46
    .catch Lf4/b; {:try_start_3b .. :try_end_46} :catch_4c
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_46} :catch_4a
    .catchall {:try_start_3b .. :try_end_46} :catchall_47

    .line 71
    goto :goto_51

    .line 72
    :catchall_47
    move-exception v0

    .line 73
    goto/16 :goto_1c5

    .line 74
    .line 75
    :catch_4a
    move-exception v0

    .line 76
    goto :goto_4d

    .line 77
    :catch_4c
    move-exception v0

    .line 78
    :goto_4d
    :try_start_4d
    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_47

    .line 79
    .line 80
    .line 81
    move v0, v5

    .line 82
    :goto_51
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 83
    .line 84
    .line 85
    const/4 v12, 0x2

    .line 86
    const/4 v13, 0x1

    .line 87
    if-eqz v0, :cond_133

    .line 88
    .line 89
    iget-object v0, v1, Lv3/g;->a:Landroid/content/Context;

    .line 90
    .line 91
    invoke-static {v0}, Lv3/f;->a(Landroid/content/Context;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    :try_start_62
    sget-object v14, Lv3/o;->e:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {v14}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_e9

    .line 102
    .line 103
    .line 104
    :try_start_67
    invoke-static {}, Lv3/o;->c()V
    :try_end_6a
    .catch Lf4/b; {:try_start_67 .. :try_end_6a} :catch_111
    .catchall {:try_start_67 .. :try_end_6a} :catchall_e9

    .line 105
    .line 106
    .line 107
    :try_start_6a
    sget-object v14, Lv3/o;->e:Landroid/content/Context;

    .line 108
    .line 109
    new-instance v15, Le4/b;

    .line 110
    .line 111
    invoke-direct {v15, v14}, Le4/b;-><init>(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v15}, Le4/b;->d(Landroid/os/IBinder;)Le4/a;

    .line 115
    .line 116
    .line 117
    move-result-object v14

    .line 118
    invoke-static {v14}, Le4/b;->e(Le4/a;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    check-cast v14, Landroid/content/Context;
    :try_end_7b
    .catchall {:try_start_6a .. :try_end_7b} :catchall_e9

    .line 123
    .line 124
    :try_start_7b
    sget-object v15, Lv3/o;->c:Lcom/google/android/gms/common/internal/c0;

    .line 125
    .line 126
    check-cast v15, Lcom/google/android/gms/common/internal/a0;

    .line 127
    .line 128
    invoke-virtual {v15}, Lh4/a;->c()Landroid/os/Parcel;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    sget v16, Lj4/b;->a:I

    .line 133
    .line 134
    invoke-virtual {v4, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    .line 136
    .line 137
    const/16 v5, 0x4f45

    .line 138
    .line 139
    invoke-static {v5, v4}, Lz7/d;->p(ILandroid/os/Parcel;)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    invoke-static {v4, v13, v8}, Lz7/d;->m(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const/4 v13, 0x4

    .line 147
    invoke-static {v4, v12, v13}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    .line 152
    .line 153
    invoke-static {v4, v3, v13}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 154
    .line 155
    .line 156
    const/4 v12, 0x0

    .line 157
    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Le4/b;

    .line 161
    .line 162
    invoke-direct {v0, v14}, Le4/b;-><init>(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v4, v13, v0}, Lz7/d;->k(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    .line 166
    .line 167
    .line 168
    const/4 v0, 0x5

    .line 169
    invoke-static {v4, v0, v13}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    .line 174
    .line 175
    const/4 v0, 0x6

    .line 176
    invoke-static {v4, v0, v13}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 177
    .line 178
    .line 179
    const/4 v12, 0x1

    .line 180
    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    .line 182
    .line 183
    invoke-static {v5, v4}, Lz7/d;->q(ILandroid/os/Parcel;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v15, v0, v4}, Lh4/a;->b(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    sget-object v4, Lv3/p;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 191
    .line 192
    invoke-static {v0, v4}, Lj4/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    check-cast v4, Lv3/p;

    .line 197
    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_c8} :catch_103
    .catchall {:try_start_7b .. :try_end_c8} :catchall_e9

    .line 199
    .line 200
    .line 201
    :try_start_c8
    iget-boolean v0, v4, Lv3/p;->a:Z

    .line 202
    .line 203
    if-eqz v0, :cond_d9

    .line 204
    .line 205
    iget v0, v4, Lv3/p;->d:I

    .line 206
    .line 207
    invoke-static {v0}, Ly1/j;->m(I)I

    .line 208
    .line 209
    .line 210
    new-instance v0, Lv3/r;

    .line 211
    .line 212
    const/4 v4, 0x0

    .line 213
    const/4 v12, 0x1

    .line 214
    invoke-direct {v0, v12, v4, v4}, Lv3/r;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 215
    .line 216
    .line 217
    goto :goto_12a

    .line 218
    :cond_d9
    iget-object v0, v4, Lv3/p;->b:Ljava/lang/String;

    .line 219
    .line 220
    iget v5, v4, Lv3/p;->c:I

    .line 221
    .line 222
    invoke-static {v5}, Lj7/g;->v(I)I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-ne v5, v13, :cond_eb

    .line 227
    .line 228
    new-instance v5, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 229
    .line 230
    invoke-direct {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    .line 231
    .line 232
    .line 233
    goto :goto_ec

    .line 234
    :catchall_e9
    move-exception v0

    .line 235
    goto :goto_12f

    .line 236
    :cond_eb
    const/4 v5, 0x0

    .line 237
    :goto_ec
    const-string v9, "error checking package certificate"

    .line 238
    .line 239
    if-nez v0, :cond_f1

    .line 240
    .line 241
    move-object v0, v9

    .line 242
    :cond_f1
    iget v9, v4, Lv3/p;->d:I

    .line 243
    .line 244
    invoke-static {v9}, Ly1/j;->m(I)I

    .line 245
    .line 246
    .line 247
    iget v4, v4, Lv3/p;->c:I

    .line 248
    .line 249
    invoke-static {v4}, Lj7/g;->v(I)I

    .line 250
    .line 251
    .line 252
    new-instance v4, Lv3/r;

    .line 253
    .line 254
    const/4 v12, 0x0

    .line 255
    invoke-direct {v4, v12, v0, v5}, Lv3/r;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 256
    .line 257
    .line 258
    move-object v0, v4

    .line 259
    goto :goto_12a

    .line 260
    :catch_103
    move-exception v0

    .line 261
    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .line 263
    .line 264
    const-string v4, "module call"

    .line 265
    .line 266
    new-instance v5, Lv3/r;

    .line 267
    .line 268
    const/4 v12, 0x0

    .line 269
    invoke-direct {v5, v12, v4, v0}, Lv3/r;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 270
    .line 271
    .line 272
    :goto_10f
    move-object v0, v5

    .line 273
    goto :goto_12a

    .line 274
    :catch_111
    move-exception v0

    .line 275
    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    const-string v5, "module init: "

    .line 283
    .line 284
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    new-instance v5, Lv3/r;

    .line 293
    .line 294
    const/4 v12, 0x0

    .line 295
    invoke-direct {v5, v12, v4, v0}, Lv3/r;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_129
    .catchall {:try_start_c8 .. :try_end_129} :catchall_e9

    .line 296
    .line 297
    .line 298
    goto :goto_10f

    .line 299
    :goto_12a
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_1af

    .line 303
    .line 304
    :goto_12f
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 305
    .line 306
    .line 307
    throw v0

    .line 308
    :cond_133
    :try_start_133
    iget-object v0, v1, Lv3/g;->a:Landroid/content/Context;

    .line 309
    .line 310
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    const/16 v4, 0x40

    .line 315
    .line 316
    invoke-virtual {v0, v8, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 317
    .line 318
    .line 319
    move-result-object v0
    :try_end_13f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_133 .. :try_end_13f} :catch_1b6

    .line 320
    iget-object v4, v1, Lv3/g;->a:Landroid/content/Context;

    .line 321
    .line 322
    invoke-static {v4}, Lv3/f;->a(Landroid/content/Context;)Z

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-nez v0, :cond_14f

    .line 327
    .line 328
    new-instance v0, Lv3/r;

    .line 329
    .line 330
    const/4 v4, 0x0

    .line 331
    const/4 v5, 0x0

    .line 332
    invoke-direct {v0, v5, v11, v4}, Lv3/r;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 333
    .line 334
    .line 335
    goto :goto_1af

    .line 336
    :cond_14f
    const/4 v5, 0x0

    .line 337
    iget-object v9, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 338
    .line 339
    if-eqz v9, :cond_1a6

    .line 340
    .line 341
    array-length v9, v9

    .line 342
    const/4 v10, 0x1

    .line 343
    if-eq v9, v10, :cond_159

    .line 344
    .line 345
    goto :goto_1a6

    .line 346
    :cond_159
    new-instance v9, Lv3/m;

    .line 347
    .line 348
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 349
    .line 350
    aget-object v10, v10, v5

    .line 351
    .line 352
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 353
    .line 354
    .line 355
    move-result-object v10

    .line 356
    invoke-direct {v9, v10}, Lv3/m;-><init>([B)V

    .line 357
    .line 358
    .line 359
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 360
    .line 361
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 362
    .line 363
    .line 364
    move-result-object v11

    .line 365
    :try_start_16c
    invoke-static {v10, v9, v4, v5}, Lv3/o;->b(Ljava/lang/String;Lv3/m;ZZ)Lv3/r;

    .line 366
    .line 367
    .line 368
    move-result-object v4
    :try_end_170
    .catchall {:try_start_16c .. :try_end_170} :catchall_1a1

    .line 369
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 370
    .line 371
    .line 372
    iget-boolean v5, v4, Lv3/r;->a:Z

    .line 373
    .line 374
    if-eqz v5, :cond_19f

    .line 375
    .line 376
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 377
    .line 378
    if-eqz v0, :cond_19f

    .line 379
    .line 380
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 381
    .line 382
    and-int/2addr v0, v12

    .line 383
    if-eqz v0, :cond_19f

    .line 384
    .line 385
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    const/4 v11, 0x0

    .line 390
    const/4 v12, 0x1

    .line 391
    :try_start_186
    invoke-static {v10, v9, v11, v12}, Lv3/o;->b(Ljava/lang/String;Lv3/m;ZZ)Lv3/r;

    .line 392
    .line 393
    .line 394
    move-result-object v0
    :try_end_18a
    .catchall {:try_start_186 .. :try_end_18a} :catchall_19a

    .line 395
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 396
    .line 397
    .line 398
    iget-boolean v0, v0, Lv3/r;->a:Z

    .line 399
    .line 400
    if-eqz v0, :cond_19f

    .line 401
    .line 402
    new-instance v0, Lv3/r;

    .line 403
    .line 404
    const-string v4, "debuggable release cert app rejected"

    .line 405
    .line 406
    const/4 v5, 0x0

    .line 407
    invoke-direct {v0, v11, v4, v5}, Lv3/r;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 408
    .line 409
    .line 410
    goto :goto_1af

    .line 411
    :catchall_19a
    move-exception v0

    .line 412
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 413
    .line 414
    .line 415
    throw v0

    .line 416
    :cond_19f
    move-object v0, v4

    .line 417
    goto :goto_1af

    .line 418
    :catchall_1a1
    move-exception v0

    .line 419
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 420
    .line 421
    .line 422
    throw v0

    .line 423
    :cond_1a6
    :goto_1a6
    new-instance v0, Lv3/r;

    .line 424
    .line 425
    const-string v4, "single cert required"

    .line 426
    .line 427
    const/4 v5, 0x0

    .line 428
    const/4 v12, 0x0

    .line 429
    invoke-direct {v0, v12, v4, v5}, Lv3/r;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 430
    .line 431
    .line 432
    :goto_1af
    iget-boolean v4, v0, Lv3/r;->a:Z

    .line 433
    .line 434
    if-eqz v4, :cond_1cb

    .line 435
    .line 436
    iput-object v8, v1, Lv3/g;->b:Ljava/lang/String;

    .line 437
    .line 438
    goto :goto_1cb

    .line 439
    :catch_1b6
    move-exception v0

    .line 440
    const-string v4, "no pkg "

    .line 441
    .line 442
    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    new-instance v5, Lv3/r;

    .line 447
    .line 448
    const/4 v12, 0x0

    .line 449
    invoke-direct {v5, v12, v4, v0}, Lv3/r;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 450
    .line 451
    .line 452
    move-object v0, v5

    .line 453
    goto :goto_1cb

    .line 454
    :goto_1c5
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 455
    .line 456
    .line 457
    throw v0

    .line 458
    :cond_1c9
    sget-object v0, Lv3/r;->d:Lv3/r;

    .line 459
    .line 460
    :cond_1cb
    :goto_1cb
    iget-boolean v4, v0, Lv3/r;->a:Z

    .line 461
    .line 462
    if-eqz v4, :cond_1d0

    .line 463
    .line 464
    goto :goto_1e3

    .line 465
    :cond_1d0
    add-int/lit8 v7, v7, 0x1

    .line 466
    .line 467
    const/4 v4, 0x0

    .line 468
    const/4 v5, 0x0

    .line 469
    goto/16 :goto_1a

    .line 470
    .line 471
    :cond_1d6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    goto :goto_1e3

    .line 475
    :cond_1da
    :goto_1da
    new-instance v0, Lv3/r;

    .line 476
    .line 477
    const-string v2, "no pkgs"

    .line 478
    .line 479
    const/4 v4, 0x0

    .line 480
    const/4 v12, 0x0

    .line 481
    invoke-direct {v0, v12, v2, v4}, Lv3/r;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 482
    .line 483
    .line 484
    :goto_1e3
    iget-object v2, v0, Lv3/r;->c:Ljava/lang/Throwable;

    .line 485
    .line 486
    iget-boolean v4, v0, Lv3/r;->a:Z

    .line 487
    .line 488
    if-nez v4, :cond_202

    .line 489
    .line 490
    const-string v4, "GoogleCertificatesRslt"

    .line 491
    .line 492
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    if-eqz v3, :cond_202

    .line 497
    .line 498
    if-eqz v2, :cond_1fb

    .line 499
    .line 500
    invoke-virtual {v0}, Lv3/r;->a()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    invoke-static {v4, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    .line 506
    .line 507
    goto :goto_202

    .line 508
    :cond_1fb
    invoke-virtual {v0}, Lv3/r;->a()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    :cond_202
    :goto_202
    iget-boolean v0, v0, Lv3/r;->a:Z

    .line 516
    .line 517
    return v0
.end method
