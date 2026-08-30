###### Class h5.d (h5.d)
.class public final Lh5/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lh5/e;


# static fields
.field public static final m:Ljava/lang/Object;


# instance fields
.field public final a:Lt4/g;

.field public final b:Lj5/c;

.field public final c:Lcom/google/android/gms/internal/measurement/y4;

.field public final d:Lh5/k;

.field public final e:Lv4/l;

.field public final f:Lh5/i;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Lw4/i;

.field public j:Ljava/lang/String;

.field public final k:Ljava/util/HashSet;

.field public final l:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lh5/d;->m:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lt4/g;Lg5/a;Ljava/util/concurrent/ExecutorService;Lw4/i;)V
    .registers 10

    .line 1
    new-instance v0, Lj5/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lt4/g;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lt4/g;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-direct {v0, v1, p2}, Lj5/c;-><init>(Landroid/content/Context;Lg5/a;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Lcom/google/android/gms/internal/measurement/y4;

    .line 12
    .line 13
    const/16 v1, 0x10

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {p2, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Ljava/lang/Object;IZ)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Le5/e;->b:Le5/e;

    .line 20
    .line 21
    if-nez v1, :cond_1f

    .line 22
    .line 23
    new-instance v1, Le5/e;

    .line 24
    .line 25
    const/16 v2, 0x1b

    .line 26
    .line 27
    invoke-direct {v1, v2}, Le5/e;-><init>(I)V

    .line 28
    .line 29
    .line 30
    sput-object v1, Le5/e;->b:Le5/e;

    .line 31
    .line 32
    :cond_1f
    sget-object v1, Le5/e;->b:Le5/e;

    .line 33
    .line 34
    sget-object v2, Lh5/k;->d:Lh5/k;

    .line 35
    .line 36
    if-nez v2, :cond_2c

    .line 37
    .line 38
    new-instance v2, Lh5/k;

    .line 39
    .line 40
    invoke-direct {v2, v1}, Lh5/k;-><init>(Le5/e;)V

    .line 41
    .line 42
    .line 43
    sput-object v2, Lh5/k;->d:Lh5/k;

    .line 44
    .line 45
    :cond_2c
    sget-object v1, Lh5/k;->d:Lh5/k;

    .line 46
    .line 47
    new-instance v2, Lv4/l;

    .line 48
    .line 49
    new-instance v3, Lh5/b;

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-direct {v3, v4, p1}, Lh5/b;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v2, v3}, Lv4/l;-><init>(Lg5/a;)V

    .line 56
    .line 57
    .line 58
    new-instance v3, Lh5/i;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v4, Ljava/lang/Object;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v4, p0, Lh5/d;->g:Ljava/lang/Object;

    .line 72
    .line 73
    new-instance v4, Ljava/util/HashSet;

    .line 74
    .line 75
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v4, p0, Lh5/d;->k:Ljava/util/HashSet;

    .line 79
    .line 80
    new-instance v4, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v4, p0, Lh5/d;->l:Ljava/util/ArrayList;

    .line 86
    .line 87
    iput-object p1, p0, Lh5/d;->a:Lt4/g;

    .line 88
    .line 89
    iput-object v0, p0, Lh5/d;->b:Lj5/c;

    .line 90
    .line 91
    iput-object p2, p0, Lh5/d;->c:Lcom/google/android/gms/internal/measurement/y4;

    .line 92
    .line 93
    iput-object v1, p0, Lh5/d;->d:Lh5/k;

    .line 94
    .line 95
    iput-object v2, p0, Lh5/d;->e:Lv4/l;

    .line 96
    .line 97
    iput-object v3, p0, Lh5/d;->f:Lh5/i;

    .line 98
    .line 99
    iput-object p3, p0, Lh5/d;->h:Ljava/util/concurrent/ExecutorService;

    .line 100
    .line 101
    iput-object p4, p0, Lh5/d;->i:Lw4/i;

    .line 102
    .line 103
    return-void
.end method


# virtual methods
.method public final a(Lh5/j;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lh5/d;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lh5/d;->l:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    .line 13
    throw p1
.end method

.method public final b()V
    .registers 7

    .line 1
    sget-object v0, Lh5/d;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lh5/d;->a:Lt4/g;

    .line 5
    .line 6
    invoke-virtual {v1}, Lt4/g;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v1, v1, Lt4/g;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/y4;->d(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/y4;

    .line 12
    .line 13
    .line 14
    move-result-object v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_3f

    .line 15
    :try_start_e
    iget-object v2, p0, Lh5/d;->c:Lcom/google/android/gms/internal/measurement/y4;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y4;->D()Li5/b;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget v3, v2, Li5/b;->b:I

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    const/4 v5, 0x1

    .line 25
    if-eq v3, v4, :cond_1e

    .line 26
    .line 27
    if-ne v3, v5, :cond_1d

    .line 28
    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    const/4 v5, 0x0

    .line 31
    :cond_1e
    :goto_1e
    if-eqz v5, :cond_39

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Lh5/d;->h(Li5/b;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v4, p0, Lh5/d;->c:Lcom/google/android/gms/internal/measurement/y4;

    .line 38
    .line 39
    invoke-virtual {v2}, Li5/b;->a()Li5/a;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iput-object v3, v2, Li5/a;->b:Ljava/lang/Object;

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    iput v3, v2, Li5/a;->a:I

    .line 47
    .line 48
    invoke-virtual {v2}, Li5/a;->i()Li5/b;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/y4;->B(Li5/b;)V
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_37

    .line 53
    .line 54
    .line 55
    goto :goto_39

    .line 56
    :catchall_37
    move-exception v2

    .line 57
    goto :goto_51

    .line 58
    :cond_39
    :goto_39
    if-eqz v1, :cond_41

    .line 59
    .line 60
    :try_start_3b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/y4;->E()V

    .line 61
    .line 62
    .line 63
    goto :goto_41

    .line 64
    :catchall_3f
    move-exception v1

    .line 65
    goto :goto_57

    .line 66
    :cond_41
    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_3f

    .line 67
    invoke-virtual {p0, v2}, Lh5/d;->k(Li5/b;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lh5/d;->i:Lw4/i;

    .line 71
    .line 72
    new-instance v1, Lh5/c;

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    invoke-direct {v1, p0, v2}, Lh5/c;-><init>(Lh5/d;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lw4/i;->execute(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :goto_51
    if-eqz v1, :cond_56

    .line 83
    .line 84
    :try_start_53
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/y4;->E()V

    .line 85
    .line 86
    .line 87
    :cond_56
    throw v2

    .line 88
    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_3f

    .line 89
    throw v1
.end method

.method public final c(Li5/b;)Li5/b;
    .registers 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lh5/d;->a:Lt4/g;

    .line 6
    .line 7
    invoke-virtual {v2}, Lt4/g;->a()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v2, Lt4/g;->c:Lt4/j;

    .line 11
    .line 12
    iget-object v3, v3, Lt4/j;->a:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, v0, Li5/b;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2}, Lt4/g;->a()V

    .line 17
    .line 18
    .line 19
    iget-object v2, v2, Lt4/g;->c:Lt4/j;

    .line 20
    .line 21
    iget-object v2, v2, Lt4/j;->g:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v5, v0, Li5/b;->d:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v6, v1, Lh5/d;->b:Lj5/c;

    .line 26
    .line 27
    iget-object v7, v6, Lj5/c;->c:Lj5/d;

    .line 28
    .line 29
    invoke-virtual {v7}, Lj5/d;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    const-string v9, "Firebase Installations Service is unavailable. Please try again later."

    .line 34
    .line 35
    if-eqz v8, :cond_14c

    .line 36
    .line 37
    new-instance v8, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v10, "projects/"

    .line 40
    .line 41
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v10, "/installations/"

    .line 48
    .line 49
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, "/authTokens:generate"

    .line 56
    .line 57
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v4}, Lj5/c;->a(Ljava/lang/String;)Ljava/net/URL;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const/4 v10, 0x0

    .line 69
    :goto_44
    const/4 v11, 0x1

    .line 70
    if-gt v10, v11, :cond_146

    .line 71
    .line 72
    const v12, 0x8003

    .line 73
    .line 74
    .line 75
    invoke-static {v12}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v4, v3}, Lj5/c;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    :try_start_51
    const-string v13, "POST"

    .line 83
    .line 84
    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v13, "Authorization"

    .line 88
    .line 89
    new-instance v14, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v15, "FIS_v2 "

    .line 95
    .line 96
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    invoke-virtual {v12, v13, v14}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v12, v11}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 110
    .line 111
    .line 112
    invoke-static {v12}, Lj5/c;->h(Ljava/net/HttpURLConnection;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    invoke-virtual {v7, v13}, Lj5/d;->d(I)V

    .line 120
    .line 121
    .line 122
    const/16 v14, 0xc8

    .line 123
    .line 124
    if-lt v13, v14, :cond_83

    .line 125
    .line 126
    const/16 v14, 0x12c

    .line 127
    .line 128
    if-ge v13, v14, :cond_83

    .line 129
    .line 130
    move v14, v11

    .line 131
    goto :goto_84

    .line 132
    :cond_83
    const/4 v14, 0x0

    .line 133
    :goto_84
    const/4 v15, 0x2

    .line 134
    const/4 v8, 0x0

    .line 135
    if-eqz v14, :cond_96

    .line 136
    .line 137
    invoke-static {v12}, Lj5/c;->f(Ljava/net/HttpURLConnection;)Lj5/b;

    .line 138
    .line 139
    .line 140
    move-result-object v2
    :try_end_8c
    .catch Ljava/lang/AssertionError; {:try_start_51 .. :try_end_8c} :catch_ae
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_8c} :catch_ae
    .catchall {:try_start_51 .. :try_end_8c} :catchall_93

    .line 141
    :goto_8c
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 145
    .line 146
    .line 147
    goto :goto_dc

    .line 148
    :catchall_93
    move-exception v0

    .line 149
    goto/16 :goto_13b

    .line 150
    .line 151
    :cond_96
    :try_start_96
    invoke-static {v12, v8, v3, v2}, Lj5/c;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/AssertionError; {:try_start_96 .. :try_end_99} :catch_ae
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_ae
    .catchall {:try_start_96 .. :try_end_99} :catchall_93

    .line 152
    .line 153
    .line 154
    const/16 v14, 0x191

    .line 155
    .line 156
    if-eq v13, v14, :cond_d0

    .line 157
    .line 158
    const/16 v14, 0x194

    .line 159
    .line 160
    if-ne v13, v14, :cond_a2

    .line 161
    .line 162
    goto :goto_d0

    .line 163
    :cond_a2
    const/16 v14, 0x1ad

    .line 164
    .line 165
    if-eq v13, v14, :cond_c8

    .line 166
    .line 167
    const/16 v14, 0x1f4

    .line 168
    .line 169
    if-lt v13, v14, :cond_b6

    .line 170
    .line 171
    const/16 v14, 0x258

    .line 172
    .line 173
    if-ge v13, v14, :cond_b6

    .line 174
    .line 175
    :catch_ae
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 176
    .line 177
    .line 178
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_142

    .line 182
    .line 183
    :cond_b6
    :try_start_b6
    const-string v13, "Firebase-Installations"

    .line 184
    .line 185
    const-string v14, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    .line 186
    .line 187
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    invoke-static {}, Lj5/b;->a()Lb0/d;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    iput v15, v13, Lb0/d;->b:I

    .line 195
    .line 196
    invoke-virtual {v13}, Lb0/d;->b()Lj5/b;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    goto :goto_8c

    .line 201
    :cond_c8
    new-instance v8, Lh5/f;

    .line 202
    .line 203
    const-string v11, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    .line 204
    .line 205
    invoke-direct {v8, v11}, Lh5/f;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v8

    .line 209
    :cond_d0
    :goto_d0
    invoke-static {}, Lj5/b;->a()Lb0/d;

    .line 210
    .line 211
    .line 212
    move-result-object v13

    .line 213
    const/4 v14, 0x3

    .line 214
    iput v14, v13, Lb0/d;->b:I

    .line 215
    .line 216
    invoke-virtual {v13}, Lb0/d;->b()Lj5/b;

    .line 217
    .line 218
    .line 219
    move-result-object v2
    :try_end_db
    .catch Ljava/lang/AssertionError; {:try_start_b6 .. :try_end_db} :catch_ae
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_db} :catch_ae
    .catchall {:try_start_b6 .. :try_end_db} :catchall_93

    .line 220
    goto :goto_8c

    .line 221
    :goto_dc
    iget v3, v2, Lj5/b;->c:I

    .line 222
    .line 223
    invoke-static {v3}, Landroidx/fragment/app/m1;->e(I)I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-eqz v3, :cond_10c

    .line 228
    .line 229
    if-eq v3, v11, :cond_fc

    .line 230
    .line 231
    if-ne v3, v15, :cond_f6

    .line 232
    .line 233
    invoke-virtual {v1, v8}, Lh5/d;->l(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Li5/b;->a()Li5/a;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    iput v15, v0, Li5/a;->a:I

    .line 241
    .line 242
    invoke-virtual {v0}, Li5/a;->i()Li5/b;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    return-object v0

    .line 247
    :cond_f6
    new-instance v0, Lh5/f;

    .line 248
    .line 249
    invoke-direct {v0, v9}, Lh5/f;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v0

    .line 253
    :cond_fc
    invoke-virtual {v0}, Li5/b;->a()Li5/a;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    const-string v2, "BAD CONFIG"

    .line 258
    .line 259
    iput-object v2, v0, Li5/a;->e:Ljava/lang/Object;

    .line 260
    .line 261
    const/4 v2, 0x5

    .line 262
    iput v2, v0, Li5/a;->a:I

    .line 263
    .line 264
    invoke-virtual {v0}, Li5/a;->i()Li5/b;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    return-object v0

    .line 269
    :cond_10c
    iget-object v3, v2, Lj5/b;->a:Ljava/lang/String;

    .line 270
    .line 271
    iget-wide v4, v2, Lj5/b;->b:J

    .line 272
    .line 273
    iget-object v2, v1, Lh5/d;->d:Lh5/k;

    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 279
    .line 280
    iget-object v2, v2, Lh5/k;->a:Le5/e;

    .line 281
    .line 282
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 286
    .line 287
    .line 288
    move-result-wide v7

    .line 289
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 290
    .line 291
    .line 292
    move-result-wide v6

    .line 293
    invoke-virtual {v0}, Li5/b;->a()Li5/a;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    iput-object v3, v0, Li5/a;->c:Ljava/lang/Object;

    .line 298
    .line 299
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    iput-object v2, v0, Li5/a;->f:Ljava/lang/Object;

    .line 304
    .line 305
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    iput-object v2, v0, Li5/a;->g:Ljava/lang/Object;

    .line 310
    .line 311
    invoke-virtual {v0}, Li5/a;->i()Li5/b;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    return-object v0

    .line 316
    :goto_13b
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 317
    .line 318
    .line 319
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 320
    .line 321
    .line 322
    throw v0

    .line 323
    :goto_142
    add-int/lit8 v10, v10, 0x1

    .line 324
    .line 325
    goto/16 :goto_44

    .line 326
    .line 327
    :cond_146
    new-instance v0, Lh5/f;

    .line 328
    .line 329
    invoke-direct {v0, v9}, Lh5/f;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    throw v0

    .line 333
    :cond_14c
    new-instance v0, Lh5/f;

    .line 334
    .line 335
    invoke-direct {v0, v9}, Lh5/f;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw v0
.end method

.method public final d()Lp4/q;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lh5/d;->g()V

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_4
    iget-object v0, p0, Lh5/d;->j:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_29

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    if-eqz v0, :cond_e

    .line 9
    .line 10
    invoke-static {v0}, Lj7/g;->l(Ljava/lang/Object;)Lp4/q;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_e
    new-instance v0, Lp4/j;

    .line 16
    .line 17
    invoke-direct {v0}, Lp4/j;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lh5/h;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lh5/h;-><init>(Lp4/j;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lh5/d;->a(Lh5/j;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lp4/j;->a:Lp4/q;

    .line 29
    .line 30
    iget-object v1, p0, Lh5/d;->h:Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    new-instance v2, Lh5/c;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {v2, p0, v3}, Lh5/c;-><init>(Lh5/d;I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :catchall_29
    move-exception v0

    .line 43
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    .line 44
    throw v0
.end method

.method public final e()Lp4/q;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lh5/d;->g()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp4/j;

    .line 5
    .line 6
    invoke-direct {v0}, Lp4/j;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lh5/g;

    .line 10
    .line 11
    iget-object v2, p0, Lh5/d;->d:Lh5/k;

    .line 12
    .line 13
    invoke-direct {v1, v2, v0}, Lh5/g;-><init>(Lh5/k;Lp4/j;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lh5/d;->a(Lh5/j;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lh5/c;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-direct {v1, p0, v2}, Lh5/c;-><init>(Lh5/d;I)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lh5/d;->h:Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lp4/j;->a:Lp4/q;

    .line 31
    .line 32
    return-object v0
.end method

.method public final f(Li5/b;)V
    .registers 5

    .line 1
    sget-object v0, Lh5/d;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lh5/d;->a:Lt4/g;

    .line 5
    .line 6
    invoke-virtual {v1}, Lt4/g;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v1, v1, Lt4/g;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/y4;->d(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/y4;

    .line 12
    .line 13
    .line 14
    move-result-object v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    .line 15
    :try_start_e
    iget-object v2, p0, Lh5/d;->c:Lcom/google/android/gms/internal/measurement/y4;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/measurement/y4;->B(Li5/b;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_1d

    .line 18
    .line 19
    .line 20
    if-eqz v1, :cond_1b

    .line 21
    .line 22
    :try_start_15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/y4;->E()V

    .line 23
    .line 24
    .line 25
    goto :goto_1b

    .line 26
    :catchall_19
    move-exception p1

    .line 27
    goto :goto_24

    .line 28
    :cond_1b
    :goto_1b
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    if-eqz v1, :cond_23

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/y4;->E()V

    .line 34
    .line 35
    .line 36
    :cond_23
    throw p1

    .line 37
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_19

    .line 38
    throw p1
.end method

.method public final g()V
    .registers 6

    .line 1
    iget-object v0, p0, Lh5/d;->a:Lt4/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lt4/g;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lt4/g;->c:Lt4/j;

    .line 7
    .line 8
    iget-object v1, v1, Lt4/j;->b:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/d0;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lt4/g;->a()V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lt4/g;->c:Lt4/j;

    .line 19
    .line 20
    iget-object v1, v1, Lt4/j;->g:Ljava/lang/String;

    .line 21
    .line 22
    const-string v3, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    .line 23
    .line 24
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/d0;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lt4/g;->a()V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lt4/g;->c:Lt4/j;

    .line 31
    .line 32
    iget-object v1, v1, Lt4/j;->a:Ljava/lang/String;

    .line 33
    .line 34
    const-string v3, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    .line 35
    .line 36
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/d0;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lt4/g;->a()V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lt4/g;->c:Lt4/j;

    .line 43
    .line 44
    iget-object v1, v1, Lt4/j;->b:Ljava/lang/String;

    .line 45
    .line 46
    sget-object v4, Lh5/k;->c:Ljava/util/regex/Pattern;

    .line 47
    .line 48
    const-string v4, ":"

    .line 49
    .line 50
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_51

    .line 55
    .line 56
    invoke-virtual {v0}, Lt4/g;->a()V

    .line 57
    .line 58
    .line 59
    iget-object v0, v0, Lt4/g;->c:Lt4/j;

    .line 60
    .line 61
    iget-object v0, v0, Lt4/j;->a:Ljava/lang/String;

    .line 62
    .line 63
    sget-object v1, Lh5/k;->c:Ljava/util/regex/Pattern;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4b

    .line 74
    .line 75
    return-void

    .line 76
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0
.end method

.method public final h(Li5/b;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lh5/d;->a:Lt4/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lt4/g;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lt4/g;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "CHIME_ANDROID_SDK"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1e

    .line 15
    .line 16
    iget-object v0, p0, Lh5/d;->a:Lt4/g;

    .line 17
    .line 18
    const-string v1, "[DEFAULT]"

    .line 19
    .line 20
    invoke-virtual {v0}, Lt4/g;->a()V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lt4/g;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_50

    .line 30
    .line 31
    :cond_1e
    iget p1, p1, Li5/b;->b:I

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    if-ne p1, v0, :cond_50

    .line 35
    .line 36
    iget-object p1, p0, Lh5/d;->e:Lv4/l;

    .line 37
    .line 38
    invoke-virtual {p1}, Lv4/l;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Li5/c;

    .line 43
    .line 44
    iget-object v0, p1, Li5/c;->a:Landroid/content/SharedPreferences;

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_2e
    invoke-virtual {p1}, Li5/c;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_38

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    goto :goto_3d

    .line 55
    :catchall_36
    move-exception p1

    .line 56
    goto :goto_4e

    .line 57
    :cond_38
    invoke-virtual {p1}, Li5/c;->b()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_36

    .line 62
    :goto_3d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4d

    .line 67
    .line 68
    iget-object p1, p0, Lh5/d;->f:Lh5/i;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lh5/i;->a()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    :cond_4d
    return-object v1

    .line 79
    :goto_4e
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_36

    .line 80
    throw p1

    .line 81
    :cond_50
    iget-object p1, p0, Lh5/d;->f:Lh5/i;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lh5/i;->a()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1
.end method

.method public final i(Li5/b;)Li5/b;
    .registers 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v0, Li5/b;->a:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v5, 0x0

    .line 9
    if-eqz v2, :cond_6a

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/16 v6, 0xb

    .line 16
    .line 17
    if-ne v2, v6, :cond_6a

    .line 18
    .line 19
    iget-object v2, v1, Lh5/d;->e:Lv4/l;

    .line 20
    .line 21
    invoke-virtual {v2}, Lv4/l;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Li5/c;

    .line 26
    .line 27
    iget-object v6, v2, Li5/c;->a:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    monitor-enter v6

    .line 30
    :try_start_1d
    sget-object v7, Li5/c;->c:[Ljava/lang/String;

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    :goto_20
    if-ge v8, v3, :cond_66

    .line 34
    .line 35
    aget-object v9, v7, v8

    .line 36
    .line 37
    iget-object v10, v2, Li5/c;->b:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v11, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v12, "|T|"

    .line 42
    .line 43
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v10, "|"

    .line 50
    .line 51
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    iget-object v10, v2, Li5/c;->a:Landroid/content/SharedPreferences;

    .line 62
    .line 63
    invoke-interface {v10, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    if-eqz v9, :cond_63

    .line 68
    .line 69
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    if-nez v10, :cond_63

    .line 74
    .line 75
    const-string v2, "{"

    .line 76
    .line 77
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v2
    :try_end_50
    .catchall {:try_start_1d .. :try_end_50} :catchall_61

    .line 81
    if-eqz v2, :cond_5e

    .line 82
    .line 83
    :try_start_52
    new-instance v2, Lorg/json/JSONObject;

    .line 84
    .line 85
    invoke-direct {v2, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v7, "token"

    .line 89
    .line 90
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_5d} :catch_5f
    .catchall {:try_start_52 .. :try_end_5d} :catchall_61

    .line 94
    goto :goto_5f

    .line 95
    :cond_5e
    move-object v5, v9

    .line 96
    :catch_5f
    :goto_5f
    :try_start_5f
    monitor-exit v6

    .line 97
    goto :goto_6a

    .line 98
    :catchall_61
    move-exception v0

    .line 99
    goto :goto_68

    .line 100
    :cond_63
    add-int/lit8 v8, v8, 0x1

    .line 101
    .line 102
    goto :goto_20

    .line 103
    :cond_66
    monitor-exit v6

    .line 104
    goto :goto_6a

    .line 105
    :goto_68
    monitor-exit v6
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_61

    .line 106
    throw v0

    .line 107
    :cond_6a
    :goto_6a
    iget-object v2, v1, Lh5/d;->b:Lj5/c;

    .line 108
    .line 109
    iget-object v6, v1, Lh5/d;->a:Lt4/g;

    .line 110
    .line 111
    invoke-virtual {v6}, Lt4/g;->a()V

    .line 112
    .line 113
    .line 114
    iget-object v6, v6, Lt4/g;->c:Lt4/j;

    .line 115
    .line 116
    iget-object v6, v6, Lt4/j;->a:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v7, v0, Li5/b;->a:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v8, v1, Lh5/d;->a:Lt4/g;

    .line 121
    .line 122
    invoke-virtual {v8}, Lt4/g;->a()V

    .line 123
    .line 124
    .line 125
    iget-object v8, v8, Lt4/g;->c:Lt4/j;

    .line 126
    .line 127
    iget-object v8, v8, Lt4/j;->g:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v9, v1, Lh5/d;->a:Lt4/g;

    .line 130
    .line 131
    invoke-virtual {v9}, Lt4/g;->a()V

    .line 132
    .line 133
    .line 134
    iget-object v9, v9, Lt4/g;->c:Lt4/j;

    .line 135
    .line 136
    iget-object v9, v9, Lt4/j;->b:Ljava/lang/String;

    .line 137
    .line 138
    const-string v10, "Firebase Installations Service is unavailable. Please try again later."

    .line 139
    .line 140
    iget-object v11, v2, Lj5/c;->c:Lj5/d;

    .line 141
    .line 142
    invoke-virtual {v11}, Lj5/d;->b()Z

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    if-eqz v12, :cond_1a4

    .line 147
    .line 148
    new-instance v12, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v13, "projects/"

    .line 151
    .line 152
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v13, "/installations"

    .line 159
    .line 160
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    invoke-static {v12}, Lj5/c;->a(Ljava/lang/String;)Ljava/net/URL;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    const/4 v13, 0x0

    .line 172
    :goto_ab
    const/4 v14, 0x1

    .line 173
    if-gt v13, v14, :cond_19e

    .line 174
    .line 175
    const v15, 0x8001

    .line 176
    .line 177
    .line 178
    invoke-static {v15}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v12, v6}, Lj5/c;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 182
    .line 183
    .line 184
    move-result-object v15

    .line 185
    :try_start_b8
    const-string v4, "POST"

    .line 186
    .line 187
    invoke-virtual {v15, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v15, v14}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 191
    .line 192
    .line 193
    if-eqz v5, :cond_cb

    .line 194
    .line 195
    const-string v4, "x-goog-fis-android-iid-migration-auth"

    .line 196
    .line 197
    invoke-virtual {v15, v4, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_cb

    .line 201
    :catchall_c8
    move-exception v0

    .line 202
    goto/16 :goto_18d

    .line 203
    .line 204
    :cond_cb
    :goto_cb
    invoke-static {v15, v7, v9}, Lj5/c;->g(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    invoke-virtual {v11, v4}, Lj5/d;->d(I)V
    :try_end_d5
    .catch Ljava/lang/AssertionError; {:try_start_b8 .. :try_end_d5} :catch_194
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_d5} :catch_194
    .catchall {:try_start_b8 .. :try_end_d5} :catchall_c8

    .line 212
    .line 213
    .line 214
    const/16 v3, 0xc8

    .line 215
    .line 216
    if-lt v4, v3, :cond_df

    .line 217
    .line 218
    const/16 v3, 0x12c

    .line 219
    .line 220
    if-ge v4, v3, :cond_df

    .line 221
    .line 222
    move v3, v14

    .line 223
    goto :goto_e0

    .line 224
    :cond_df
    const/4 v3, 0x0

    .line 225
    :goto_e0
    if-eqz v3, :cond_f0

    .line 226
    .line 227
    :try_start_e2
    invoke-static {v15}, Lj5/c;->e(Ljava/net/HttpURLConnection;)Lj5/a;

    .line 228
    .line 229
    .line 230
    move-result-object v2
    :try_end_e6
    .catch Ljava/lang/AssertionError; {:try_start_e2 .. :try_end_e6} :catch_ed
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e6} :catch_ed
    .catchall {:try_start_e2 .. :try_end_e6} :catchall_c8

    .line 231
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 232
    .line 233
    .line 234
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 235
    .line 236
    .line 237
    goto :goto_126

    .line 238
    :catch_ed
    const/4 v3, 0x4

    .line 239
    goto/16 :goto_194

    .line 240
    .line 241
    :cond_f0
    :try_start_f0
    invoke-static {v15, v9, v6, v8}, Lj5/c;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/lang/AssertionError; {:try_start_f0 .. :try_end_f3} :catch_ed
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_ed
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_c8

    .line 242
    .line 243
    .line 244
    const/16 v3, 0x1ad

    .line 245
    .line 246
    if-eq v4, v3, :cond_184

    .line 247
    .line 248
    const/16 v3, 0x1f4

    .line 249
    .line 250
    if-lt v4, v3, :cond_108

    .line 251
    .line 252
    const/16 v3, 0x258

    .line 253
    .line 254
    if-ge v4, v3, :cond_108

    .line 255
    .line 256
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 257
    .line 258
    .line 259
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 260
    .line 261
    .line 262
    const/4 v3, 0x4

    .line 263
    goto/16 :goto_19a

    .line 264
    .line 265
    :cond_108
    :try_start_108
    const-string v3, "Firebase-Installations"

    .line 266
    .line 267
    const-string v4, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    .line 268
    .line 269
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    new-instance v16, Lj5/a;

    .line 273
    .line 274
    const/16 v20, 0x0

    .line 275
    .line 276
    const/16 v19, 0x0

    .line 277
    .line 278
    const/16 v18, 0x0

    .line 279
    .line 280
    const/16 v17, 0x0

    .line 281
    .line 282
    const/16 v21, 0x2

    .line 283
    .line 284
    invoke-direct/range {v16 .. v21}, Lj5/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj5/b;I)V
    :try_end_11e
    .catch Ljava/lang/AssertionError; {:try_start_108 .. :try_end_11e} :catch_ed
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_11e} :catch_ed
    .catchall {:try_start_108 .. :try_end_11e} :catchall_c8

    .line 285
    .line 286
    .line 287
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 288
    .line 289
    .line 290
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 291
    .line 292
    .line 293
    move-object/from16 v2, v16

    .line 294
    .line 295
    :goto_126
    iget v3, v2, Lj5/a;->e:I

    .line 296
    .line 297
    invoke-static {v3}, Landroidx/fragment/app/m1;->e(I)I

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    if-eqz v3, :cond_148

    .line 302
    .line 303
    if-ne v3, v14, :cond_140

    .line 304
    .line 305
    const-string v2, "BAD CONFIG"

    .line 306
    .line 307
    invoke-virtual {v0}, Li5/b;->a()Li5/a;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    iput-object v2, v0, Li5/a;->e:Ljava/lang/Object;

    .line 312
    .line 313
    const/4 v2, 0x5

    .line 314
    iput v2, v0, Li5/a;->a:I

    .line 315
    .line 316
    invoke-virtual {v0}, Li5/a;->i()Li5/b;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    return-object v0

    .line 321
    :cond_140
    new-instance v0, Lh5/f;

    .line 322
    .line 323
    const-string v2, "Firebase Installations Service is unavailable. Please try again later."

    .line 324
    .line 325
    invoke-direct {v0, v2}, Lh5/f;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw v0

    .line 329
    :cond_148
    iget-object v3, v2, Lj5/a;->b:Ljava/lang/String;

    .line 330
    .line 331
    iget-object v4, v2, Lj5/a;->c:Ljava/lang/String;

    .line 332
    .line 333
    iget-object v5, v1, Lh5/d;->d:Lh5/k;

    .line 334
    .line 335
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 339
    .line 340
    iget-object v5, v5, Lh5/k;->a:Le5/e;

    .line 341
    .line 342
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 346
    .line 347
    .line 348
    move-result-wide v7

    .line 349
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 350
    .line 351
    .line 352
    move-result-wide v5

    .line 353
    iget-object v2, v2, Lj5/a;->d:Lj5/b;

    .line 354
    .line 355
    iget-object v7, v2, Lj5/b;->a:Ljava/lang/String;

    .line 356
    .line 357
    iget-wide v8, v2, Lj5/b;->b:J

    .line 358
    .line 359
    invoke-virtual {v0}, Li5/b;->a()Li5/a;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    iput-object v3, v0, Li5/a;->b:Ljava/lang/Object;

    .line 364
    .line 365
    const/4 v3, 0x4

    .line 366
    iput v3, v0, Li5/a;->a:I

    .line 367
    .line 368
    iput-object v7, v0, Li5/a;->c:Ljava/lang/Object;

    .line 369
    .line 370
    iput-object v4, v0, Li5/a;->d:Ljava/lang/Object;

    .line 371
    .line 372
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    iput-object v2, v0, Li5/a;->f:Ljava/lang/Object;

    .line 377
    .line 378
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    iput-object v2, v0, Li5/a;->g:Ljava/lang/Object;

    .line 383
    .line 384
    invoke-virtual {v0}, Li5/a;->i()Li5/b;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    return-object v0

    .line 389
    :cond_184
    const/4 v3, 0x4

    .line 390
    :try_start_185
    new-instance v4, Lh5/f;

    .line 391
    .line 392
    const-string v14, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    .line 393
    .line 394
    invoke-direct {v4, v14}, Lh5/f;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    throw v4
    :try_end_18d
    .catch Ljava/lang/AssertionError; {:try_start_185 .. :try_end_18d} :catch_194
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_18d} :catch_194
    .catchall {:try_start_185 .. :try_end_18d} :catchall_c8

    .line 398
    :goto_18d
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 399
    .line 400
    .line 401
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 402
    .line 403
    .line 404
    throw v0

    .line 405
    :catch_194
    :goto_194
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 406
    .line 407
    .line 408
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 409
    .line 410
    .line 411
    :goto_19a
    add-int/lit8 v13, v13, 0x1

    .line 412
    .line 413
    goto/16 :goto_ab

    .line 414
    .line 415
    :cond_19e
    new-instance v0, Lh5/f;

    .line 416
    .line 417
    invoke-direct {v0, v10}, Lh5/f;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    throw v0

    .line 421
    :cond_1a4
    new-instance v0, Lh5/f;

    .line 422
    .line 423
    invoke-direct {v0, v10}, Lh5/f;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    throw v0
.end method

.method public final j(Ljava/lang/Exception;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lh5/d;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lh5/d;->l:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_21

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lh5/j;

    .line 21
    .line 22
    invoke-interface {v2, p1}, Lh5/j;->b(Ljava/lang/Exception;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_9

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 29
    .line 30
    .line 31
    goto :goto_9

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1f

    .line 37
    throw p1
.end method

.method public final k(Li5/b;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lh5/d;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lh5/d;->l:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_21

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lh5/j;

    .line 21
    .line 22
    invoke-interface {v2, p1}, Lh5/j;->a(Li5/b;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_9

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 29
    .line 30
    .line 31
    goto :goto_9

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1f

    .line 37
    throw p1
.end method

.method public final declared-synchronized l(Ljava/lang/String;)V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iput-object p1, p0, Lh5/d;->j:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_5
    move-exception p1

    .line 7
    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    .line 8
    throw p1
.end method

.method public final declared-synchronized m(Li5/b;Li5/b;)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lh5/d;->k:Ljava/util/HashSet;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_30

    .line 9
    .line 10
    iget-object p1, p1, Li5/b;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p2, p2, Li5/b;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_30

    .line 19
    .line 20
    iget-object p1, p0, Lh5/d;->k:Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_20

    .line 31
    .line 32
    goto :goto_30

    .line 33
    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_2a

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :catchall_28
    move-exception p1

    .line 42
    goto :goto_32

    .line 43
    :cond_2a
    new-instance p1, Ljava/lang/ClassCastException;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p1
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_28

    .line 49
    :cond_30
    :goto_30
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_28

    .line 52
    throw p1
.end method
