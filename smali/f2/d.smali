###### Class f2.d (f2.d)
.class public final Lf2/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lf2/d;

.field public static final b:Ljava/lang/String;

.field public static c:Z

.field public static d:Le2/a;

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lf2/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf2/d;->a:Lf2/d;

    .line 7
    .line 8
    const-class v0, Lf2/d;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "GpsAraTriggersManager::class.java.toString()"

    .line 15
    .line 16
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lf2/d;->b:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 9

    .line 1
    const-string v0, "gps_ara_failed_reason"

    .line 2
    .line 3
    const-string v1, "gps_ara_failed"

    .line 4
    .line 5
    const-string v2, "gpsDebugLogger"

    .line 6
    .line 7
    const-string v3, "FAILURE_NO_MEASUREMENT_MANAGER_CLASS"

    .line 8
    .line 9
    sget-object v4, Lf2/d;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v5, :cond_12

    .line 17
    .line 18
    return v6

    .line 19
    :cond_12
    :try_start_12
    sget-boolean v5, Lf2/d;->c:Z
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_1f

    .line 20
    .line 21
    if-nez v5, :cond_17

    .line 22
    .line 23
    return v6

    .line 24
    :cond_17
    const/4 v5, 0x0

    .line 25
    :try_start_18
    const-string v7, "android.adservices.measurement.MeasurementManager"

    .line 26
    .line 27
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_23
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_1d} :catch_21
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1f

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    return v0

    .line 32
    :catchall_1f
    move-exception v0

    .line 33
    goto :goto_5b

    .line 34
    :catch_21
    move-exception v7

    .line 35
    goto :goto_25

    .line 36
    :catch_23
    move-exception v7

    .line 37
    goto :goto_40

    .line 38
    :goto_25
    :try_start_25
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    sget-object v3, Lf2/d;->d:Le2/a;

    .line 42
    .line 43
    if-eqz v3, :cond_3c

    .line 44
    .line 45
    new-instance v2, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v2, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v2, v1}, Le2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return v6

    .line 61
    :cond_3c
    invoke-static {v2}, Ld7/g;->i(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v5

    .line 65
    :goto_40
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    sget-object v3, Lf2/d;->d:Le2/a;

    .line 69
    .line 70
    if-eqz v3, :cond_57

    .line 71
    .line 72
    new-instance v2, Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v2, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v2, v1}, Le2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return v6

    .line 88
    :cond_57
    invoke-static {v2}, Ld7/g;->i(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v5
    :try_end_5b
    .catchall {:try_start_25 .. :try_end_5b} :catchall_1f

    .line 92
    :goto_5b
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return v6
.end method

.method public final b(Ly1/e;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    iget-object p1, p1, Ly1/e;->a:Lorg/json/JSONObject;

    .line 10
    .line 11
    if-eqz p1, :cond_41

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_13

    .line 18
    .line 19
    goto :goto_41

    .line 20
    :cond_13
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "params.keys()"

    .line 25
    .line 26
    invoke-static {v2, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lj7/d;

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    invoke-direct {v2, v3, v0}, Lj7/d;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lj7/a;

    .line 36
    .line 37
    invoke-direct {v0, v2}, Lj7/a;-><init>(Lj7/e;)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lf2/b;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-direct {v2, v3, p1}, Lf2/b;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lj7/k;

    .line 47
    .line 48
    invoke-direct {p1, v0, v2}, Lj7/k;-><init>(Lj7/e;Lc7/l;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lj7/d;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-direct {v0, v2, p1}, Lj7/d;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "&"

    .line 58
    .line 59
    invoke-static {v0, p1}, Lj7/f;->z(Lj7/e;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :catchall_3f
    move-exception p1

    .line 65
    goto :goto_44

    .line 66
    :cond_41
    :goto_41
    const-string p1, ""
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_3f

    .line 67
    .line 68
    return-object p1

    .line 69
    :goto_44
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-object v1
.end method

.method public final c(Ljava/lang/String;Ly1/e;)V
    .registers 13

    .line 1
    const-string v0, "FAILURE_TRIGGER_REGISTRATION_FAILED"

    .line 2
    .line 3
    const-string v1, "gps_ara_failed_reason"

    .line 4
    .line 5
    const-string v2, "gps_ara_failed"

    .line 6
    .line 7
    const-string v3, "gpsDebugLogger"

    .line 8
    .line 9
    sget-object v4, Lf2/d;->b:Ljava/lang/String;

    .line 10
    .line 11
    const-string v5, "?app_id="

    .line 12
    .line 13
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-eqz v6, :cond_14

    .line 18
    .line 19
    goto/16 :goto_fb

    .line 20
    .line 21
    :cond_14
    :try_start_14
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v6
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_5d

    .line 25
    if-eqz v6, :cond_1c

    .line 26
    .line 27
    goto/16 :goto_fb

    .line 28
    .line 29
    :cond_1c
    :try_start_1c
    iget-object v6, p2, Ly1/e;->a:Lorg/json/JSONObject;

    .line 30
    .line 31
    const-string v7, "_eventName"

    .line 32
    .line 33
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const-string v7, "_removed_"

    .line 38
    .line 39
    invoke-static {v6, v7}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-nez v7, :cond_fb

    .line 44
    .line 45
    const-string v7, "eventName"

    .line 46
    .line 47
    invoke-static {v7, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const-string v7, "gps"

    .line 51
    .line 52
    invoke-static {v6, v7}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v6
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_f7

    .line 56
    if-nez v6, :cond_fb

    .line 57
    .line 58
    :try_start_39
    invoke-virtual {p0}, Lf2/d;->a()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-nez v6, :cond_41

    .line 63
    .line 64
    goto/16 :goto_fb

    .line 65
    .line 66
    :cond_41
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v6
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_5d

    .line 70
    const/4 v7, 0x0

    .line 71
    :try_start_46
    invoke-static {}, Lc1/b;->r()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-static {v8}, Lc1/b;->q(Ljava/lang/Object;)Landroid/adservices/measurement/MeasurementManager;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    if-nez v8, :cond_65

    .line 84
    .line 85
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-static {v6}, Lc1/b;->p(Landroid/content/Context;)Landroid/adservices/measurement/MeasurementManager;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    goto :goto_65

    .line 94
    :catchall_5d
    move-exception p1

    .line 95
    goto/16 :goto_fc

    .line 96
    .line 97
    :catch_60
    move-exception p1

    .line 98
    goto :goto_c1

    .line 99
    :catch_62
    move-exception p1

    .line 100
    goto/16 :goto_dc

    .line 101
    .line 102
    :cond_65
    :goto_65
    if-nez v8, :cond_82

    .line 103
    .line 104
    const-string p1, "FAILURE_GET_MEASUREMENT_MANAGER"

    .line 105
    .line 106
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    sget-object p1, Lf2/d;->d:Le2/a;

    .line 110
    .line 111
    if-eqz p1, :cond_7e

    .line 112
    .line 113
    new-instance p2, Landroid/os/Bundle;

    .line 114
    .line 115
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v5, "Failed to get measurement manager"

    .line 119
    .line 120
    invoke-virtual {p2, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2, v2}, Le2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_7e
    invoke-static {v3}, Ld7/g;->i(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v7

    .line 131
    :cond_82
    invoke-virtual {p0, p2}, Lf2/d;->b(Ly1/e;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    sget-object v9, Lf2/d;->e:Ljava/lang/String;

    .line 141
    .line 142
    if-eqz v9, :cond_bb

    .line 143
    .line 144
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const/16 p1, 0x26

    .line 154
    .line 155
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const-string p2, "parse(\"$serverUri?$appId\u2026=$applicationId&$params\")"

    .line 170
    .line 171
    invoke-static {p2, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    new-instance p2, Lf2/c;

    .line 175
    .line 176
    const/4 v5, 0x0

    .line 177
    invoke-direct {p2, v5}, Lf2/c;-><init>(I)V

    .line 178
    .line 179
    .line 180
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-static {v8, p1, v5, p2}, Lc1/b;->w(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_bb
    const-string p1, "serverUri"

    .line 189
    .line 190
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v7
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_c1} :catch_62
    .catch Ljava/lang/Error; {:try_start_46 .. :try_end_c1} :catch_60
    .catchall {:try_start_46 .. :try_end_c1} :catchall_5d

    .line 194
    :goto_c1
    :try_start_c1
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    sget-object p2, Lf2/d;->d:Le2/a;

    .line 198
    .line 199
    if-eqz p2, :cond_d8

    .line 200
    .line 201
    new-instance v0, Landroid/os/Bundle;

    .line 202
    .line 203
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, v0, v2}, Le2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_fb

    .line 217
    :cond_d8
    invoke-static {v3}, Ld7/g;->i(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v7

    .line 221
    :goto_dc
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    sget-object p2, Lf2/d;->d:Le2/a;

    .line 225
    .line 226
    if-eqz p2, :cond_f3

    .line 227
    .line 228
    new-instance v0, Landroid/os/Bundle;

    .line 229
    .line 230
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2, v0, v2}, Le2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    goto :goto_fb

    .line 244
    :cond_f3
    invoke-static {v3}, Ld7/g;->i(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v7

    .line 248
    :catchall_f7
    move-exception p1

    .line 249
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_fb
    .catchall {:try_start_c1 .. :try_end_fb} :catchall_5d

    .line 250
    .line 251
    .line 252
    :cond_fb
    :goto_fb
    return-void

    .line 253
    :goto_fc
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    return-void
.end method

.method public final d(Ljava/lang/String;Ly1/e;)V
    .registers 6

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
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lf2/a;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p1, p2, v2}, Lf2/a;-><init>(Ljava/lang/String;Ly1/e;I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_15
    move-exception p1

    .line 23
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
