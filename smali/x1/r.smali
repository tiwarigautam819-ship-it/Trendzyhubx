###### Class x1.r (x1.r)
.class public final Lx1/r;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lx1/r;

.field public static final b:Ljava/util/HashSet;

.field public static c:Ljava/util/concurrent/Executor;

.field public static volatile d:Ljava/lang/String;

.field public static volatile e:Ljava/lang/String;

.field public static volatile f:Ljava/lang/String;

.field public static volatile g:Ljava/lang/Boolean;

.field public static h:Landroid/content/Context;

.field public static i:I

.field public static final j:Ljava/util/concurrent/locks/ReentrantLock;

.field public static final k:Ljava/lang/String;

.field public static l:Z

.field public static m:Z

.field public static n:Z

.field public static final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile p:Ljava/lang/String;

.field public static volatile q:Ljava/lang/String;

.field public static final r:Lcom/getcapacitor/n;

.field public static s:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lx1/r;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx1/r;->a:Lx1/r;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [Lx1/e0;

    .line 10
    .line 11
    sget-object v1, Lx1/e0;->e:Lx1/e0;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v1, v0, v2

    .line 15
    .line 16
    invoke-static {v0}, Li2/t;->i([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lx1/r;->b:Ljava/util/HashSet;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    .line 24
    const-wide/32 v3, 0x10000

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 28
    .line 29
    .line 30
    const v0, 0xface

    .line 31
    .line 32
    .line 33
    sput v0, Lx1/r;->i:I

    .line 34
    .line 35
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lx1/r;->j:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    .line 42
    const-string v0, "v16.0"

    .line 43
    .line 44
    sput-object v0, Lx1/r;->k:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lx1/r;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    const-string v0, "instagram.com"

    .line 54
    .line 55
    sput-object v0, Lx1/r;->p:Ljava/lang/String;

    .line 56
    .line 57
    const-string v0, "facebook.com"

    .line 58
    .line 59
    sput-object v0, Lx1/r;->q:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v0, Lcom/getcapacitor/n;

    .line 62
    .line 63
    const/16 v1, 0x1c

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/getcapacitor/n;-><init>(I)V

    .line 66
    .line 67
    .line 68
    sput-object v0, Lx1/r;->r:Lcom/getcapacitor/n;

    .line 69
    .line 70
    return-void
.end method

.method public static final a()Landroid/content/Context;
    .registers 1

    .line 1
    invoke-static {}, Lq2/g;->k()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lx1/r;->h:Landroid/content/Context;

    .line 5
    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_8
    const-string v0, "applicationContext"

    .line 10
    .line 11
    invoke-static {v0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    throw v0
.end method

.method public static final b()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lq2/g;->k()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lx1/r;->d:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_8
    new-instance v0, Lx1/l;

    .line 10
    .line 11
    const-string v1, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public static final c()Ljava/util/concurrent/Executor;
    .registers 2

    .line 1
    sget-object v0, Lx1/r;->j:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_5
    sget-object v1, Lx1/r;->c:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    if-nez v1, :cond_10

    .line 9
    .line 10
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    sput-object v1, Lx1/r;->c:Ljava/util/concurrent/Executor;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    .line 13
    .line 14
    goto :goto_10

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    goto :goto_20

    .line 17
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lx1/r;->c:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    if-eqz v0, :cond_18

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "Required value was null."

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :goto_20
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method public static final d()Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lx1/r;->k:Ljava/lang/String;

    .line 6
    .line 7
    aput-object v3, v1, v2

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "getGraphApiVersion: %s"

    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    return-object v3
.end method

.method public static final e()Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lx1/a;->l:Ljava/util/Date;

    .line 2
    .line 3
    invoke-static {}, Lh8/b;->f()Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_b

    .line 8
    .line 9
    iget-object v0, v0, Lx1/a;->k:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    sget-object v1, Lx1/r;->q:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v0, :cond_11

    .line 16
    .line 17
    goto :goto_31

    .line 18
    :cond_11
    const-string v2, "gaming"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string v3, "facebook.com"

    .line 25
    .line 26
    if-eqz v2, :cond_22

    .line 27
    .line 28
    const-string v0, "fb.gg"

    .line 29
    .line 30
    invoke-static {v1, v3, v0}, Lk7/o;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_22
    const-string v2, "instagram"

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_31

    .line 42
    .line 43
    const-string v0, "instagram.com"

    .line 44
    .line 45
    invoke-static {v1, v3, v0}, Lk7/o;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_31
    :goto_31
    return-object v1
.end method

.method public static final f(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-static {}, Lq2/g;->k()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.facebook.sdk.appEventPreferences"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "limitEventUsage"

    .line 12
    .line 13
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static final declared-synchronized g()Z
    .registers 2

    .line 1
    const-class v0, Lx1/r;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-boolean v1, Lx1/r;->s:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_7
    move-exception v1

    .line 9
    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    .line 10
    throw v1
.end method

.method public static final h(Lx1/e0;)V
    .registers 1

    .line 1
    sget-object p0, Lx1/r;->b:Ljava/util/HashSet;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    monitor-exit p0

    .line 5
    return-void
.end method

.method public static final i(Landroid/content/Context;)V
    .registers 5

    .line 1
    if-nez p0, :cond_4

    .line 2
    .line 3
    goto/16 :goto_a4

    .line 4
    .line 5
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/16 v1, 0x80

    .line 14
    .line 15
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_a4

    .line 19
    const-string v0, "try {\n                co\u2026     return\n            }"

    .line 20
    .line 21
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 25
    .line 26
    if-nez v0, :cond_1d

    .line 27
    .line 28
    goto/16 :goto_a4

    .line 29
    .line 30
    :cond_1d
    sget-object v0, Lx1/r;->d:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    if-nez v0, :cond_65

    .line 34
    .line 35
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 36
    .line 37
    const-string v2, "com.facebook.sdk.ApplicationId"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    instance-of v2, v0, Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v2, :cond_58

    .line 46
    .line 47
    check-cast v0, Ljava/lang/String;

    .line 48
    .line 49
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 50
    .line 51
    const-string v3, "ROOT"

    .line 52
    .line 53
    invoke-static {v3, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, "this as java.lang.String).toLowerCase(locale)"

    .line 61
    .line 62
    invoke-static {v3, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const-string v3, "fb"

    .line 66
    .line 67
    invoke-static {v2, v3, v1}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_55

    .line 72
    .line 73
    const/4 v2, 0x2

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v2, "this as java.lang.String).substring(startIndex)"

    .line 79
    .line 80
    invoke-static {v2, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lx1/r;->d:Ljava/lang/String;

    .line 84
    .line 85
    goto :goto_65

    .line 86
    :cond_55
    sput-object v0, Lx1/r;->d:Ljava/lang/String;

    .line 87
    .line 88
    goto :goto_65

    .line 89
    :cond_58
    instance-of v0, v0, Ljava/lang/Number;

    .line 90
    .line 91
    if-nez v0, :cond_5d

    .line 92
    .line 93
    goto :goto_65

    .line 94
    :cond_5d
    new-instance p0, Lx1/l;

    .line 95
    .line 96
    const-string v0, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    .line 97
    .line 98
    invoke-direct {p0, v0}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_65
    :goto_65
    sget-object v0, Lx1/r;->e:Ljava/lang/String;

    .line 103
    .line 104
    if-nez v0, :cond_73

    .line 105
    .line 106
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 107
    .line 108
    const-string v2, "com.facebook.sdk.ApplicationName"

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sput-object v0, Lx1/r;->e:Ljava/lang/String;

    .line 115
    .line 116
    :cond_73
    sget-object v0, Lx1/r;->f:Ljava/lang/String;

    .line 117
    .line 118
    if-nez v0, :cond_81

    .line 119
    .line 120
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 121
    .line 122
    const-string v2, "com.facebook.sdk.ClientToken"

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sput-object v0, Lx1/r;->f:Ljava/lang/String;

    .line 129
    .line 130
    :cond_81
    sget v0, Lx1/r;->i:I

    .line 131
    .line 132
    const v2, 0xface

    .line 133
    .line 134
    .line 135
    if-ne v0, v2, :cond_92

    .line 136
    .line 137
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 138
    .line 139
    const-string v3, "com.facebook.sdk.CallbackOffset"

    .line 140
    .line 141
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    sput v0, Lx1/r;->i:I

    .line 146
    .line 147
    :cond_92
    sget-object v0, Lx1/r;->g:Ljava/lang/Boolean;

    .line 148
    .line 149
    if-nez v0, :cond_a4

    .line 150
    .line 151
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 152
    .line 153
    const-string v0, "com.facebook.sdk.CodelessDebugLogEnabled"

    .line 154
    .line 155
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    sput-object p0, Lx1/r;->g:Ljava/lang/Boolean;

    .line 164
    .line 165
    :catch_a4
    :cond_a4
    :goto_a4
    return-void
.end method

.method public static final declared-synchronized j(Landroid/content/Context;)V
    .registers 8

    .line 1
    const-class v0, Lx1/r;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lx1/r;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_8c

    .line 10
    if-eqz v1, :cond_d

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_d
    :try_start_d
    const-string v1, "FacebookActivity is not declared in the AndroidManifest.xml. If you are using the facebook-common module or dependent modules please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info."

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v2, :cond_23

    .line 23
    .line 24
    new-instance v5, Landroid/content/ComponentName;

    .line 25
    .line 26
    const-string v6, "com.facebook.FacebookActivity"

    .line 27
    .line 28
    invoke-direct {v5, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_8c

    .line 29
    .line 30
    .line 31
    :try_start_1e
    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v2
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_22} :catch_23
    .catchall {:try_start_1e .. :try_end_22} :catchall_8c

    .line 35
    goto :goto_24

    .line 36
    :catch_23
    :cond_23
    move-object v2, v4

    .line 37
    :goto_24
    if-nez v2, :cond_2b

    .line 38
    .line 39
    :try_start_26
    const-string v2, "q2.g"

    .line 40
    .line 41
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_2b
    const-string v1, "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml."

    .line 45
    .line 46
    const-string v2, "android.permission.INTERNET"

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v5, -0x1

    .line 53
    if-ne v2, v5, :cond_3b

    .line 54
    .line 55
    const-string v2, "q2.g"

    .line 56
    .line 57
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_3b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v2, "applicationContext.applicationContext"

    .line 65
    .line 66
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sput-object v1, Lx1/r;->h:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {p0}, Lt4/b;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    sget-object p0, Lx1/r;->h:Landroid/content/Context;

    .line 75
    .line 76
    if-eqz p0, :cond_173

    .line 77
    .line 78
    invoke-static {p0}, Lx1/r;->i(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    sget-object p0, Lx1/r;->d:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz p0, :cond_16b

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_16b

    .line 90
    .line 91
    sget-object p0, Lx1/r;->f:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz p0, :cond_163

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_163

    .line 100
    .line 101
    sget-object p0, Lx1/r;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    .line 103
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    .line 105
    .line 106
    sget-object p0, Lx1/j0;->a:Lx1/j0;

    .line 107
    .line 108
    const-class p0, Lx1/j0;

    .line 109
    .line 110
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1
    :try_end_71
    .catchall {:try_start_26 .. :try_end_71} :catchall_8c

    .line 114
    const/4 v2, 0x0

    .line 115
    if-eqz v1, :cond_76

    .line 116
    .line 117
    :goto_74
    move p0, v2

    .line 118
    goto :goto_87

    .line 119
    :cond_76
    :try_start_76
    sget-object v1, Lx1/j0;->a:Lx1/j0;

    .line 120
    .line 121
    invoke-virtual {v1}, Lx1/j0;->e()V

    .line 122
    .line 123
    .line 124
    sget-object v1, Lx1/j0;->d:Lx1/i0;

    .line 125
    .line 126
    invoke-virtual {v1}, Lx1/i0;->a()Z

    .line 127
    .line 128
    .line 129
    move-result p0
    :try_end_81
    .catchall {:try_start_76 .. :try_end_81} :catchall_82

    .line 130
    goto :goto_87

    .line 131
    :catchall_82
    move-exception v1

    .line 132
    :try_start_83
    invoke-static {v1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto :goto_74

    .line 136
    :goto_87
    if-eqz p0, :cond_8f

    .line 137
    .line 138
    sput-boolean v3, Lx1/r;->s:Z

    .line 139
    .line 140
    goto :goto_8f

    .line 141
    :catchall_8c
    move-exception p0

    .line 142
    goto/16 :goto_179

    .line 143
    .line 144
    :cond_8f
    :goto_8f
    sget-object p0, Lx1/r;->h:Landroid/content/Context;

    .line 145
    .line 146
    if-eqz p0, :cond_15d

    .line 147
    .line 148
    instance-of p0, p0, Landroid/app/Application;

    .line 149
    .line 150
    if-eqz p0, :cond_af

    .line 151
    .line 152
    invoke-static {}, Lx1/j0;->c()Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-eqz p0, :cond_af

    .line 157
    .line 158
    sget-object p0, Lx1/r;->h:Landroid/content/Context;

    .line 159
    .line 160
    if-eqz p0, :cond_a9

    .line 161
    .line 162
    check-cast p0, Landroid/app/Application;

    .line 163
    .line 164
    sget-object v1, Lx1/r;->d:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {p0, v1}, Lk2/d;->c(Landroid/app/Application;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_b2

    .line 170
    :cond_a9
    const-string p0, "applicationContext"

    .line 171
    .line 172
    invoke-static {p0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v4

    .line 176
    :cond_af
    invoke-static {}, Li2/p;->m()V

    .line 177
    .line 178
    .line 179
    :goto_b2
    sget-object p0, Lk2/i;->b:Lk2/o;

    .line 180
    .line 181
    invoke-virtual {p0}, Lk2/o;->a()Lk2/i;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    if-eqz p0, :cond_db

    .line 186
    .line 187
    sget-object v1, Lx1/r;->h:Landroid/content/Context;

    .line 188
    .line 189
    if-eqz v1, :cond_d5

    .line 190
    .line 191
    check-cast v1, Landroid/app/Application;

    .line 192
    .line 193
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v5
    :try_end_c4
    .catchall {:try_start_83 .. :try_end_c4} :catchall_8c

    .line 197
    if-eqz v5, :cond_c7

    .line 198
    .line 199
    goto :goto_db

    .line 200
    :cond_c7
    :try_start_c7
    new-instance v5, Lk2/c;

    .line 201
    .line 202
    invoke-direct {v5, v3}, Lk2/c;-><init>(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_cf
    .catchall {:try_start_c7 .. :try_end_cf} :catchall_d0

    .line 206
    .line 207
    .line 208
    goto :goto_db

    .line 209
    :catchall_d0
    move-exception v1

    .line 210
    :try_start_d1
    invoke-static {v1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    goto :goto_db

    .line 214
    :cond_d5
    const-string p0, "applicationContext"

    .line 215
    .line 216
    invoke-static {p0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v4

    .line 220
    :cond_db
    :goto_db
    invoke-static {}, Lq2/w;->d()V

    .line 221
    .line 222
    .line 223
    invoke-static {}, Lq2/b0;->k()V

    .line 224
    .line 225
    .line 226
    sget-object p0, Lq2/d;->c:Lq2/d;

    .line 227
    .line 228
    sget-object p0, Lx1/r;->h:Landroid/content/Context;

    .line 229
    .line 230
    if-eqz p0, :cond_157

    .line 231
    .line 232
    invoke-static {p0}, Lq2/g0;->s(Landroid/content/Context;)V

    .line 233
    .line 234
    .line 235
    new-instance p0, Lcom/google/android/gms/internal/measurement/y4;

    .line 236
    .line 237
    new-instance v1, Lx1/p;

    .line 238
    .line 239
    invoke-direct {v1, v2}, Lx1/p;-><init>(I)V

    .line 240
    .line 241
    .line 242
    const/16 v4, 0x18

    .line 243
    .line 244
    invoke-direct {p0, v4, v2}, Lcom/google/android/gms/internal/measurement/y4;-><init>(IZ)V

    .line 245
    .line 246
    .line 247
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 248
    .line 249
    invoke-direct {v4, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 250
    .line 251
    .line 252
    iput-object v4, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 253
    .line 254
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    new-instance v5, Ljava/util/concurrent/FutureTask;

    .line 259
    .line 260
    new-instance v6, Lcom/google/firebase/messaging/h;

    .line 261
    .line 262
    invoke-direct {v6, p0, v3, v1}, Lcom/google/firebase/messaging/h;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    invoke-direct {v5, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 266
    .line 267
    .line 268
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 269
    .line 270
    .line 271
    sget-object p0, Lq2/o;->K:Lq2/o;

    .line 272
    .line 273
    new-instance v1, Lcom/getcapacitor/n;

    .line 274
    .line 275
    const/16 v4, 0x1d

    .line 276
    .line 277
    invoke-direct {v1, v4}, Lcom/getcapacitor/n;-><init>(I)V

    .line 278
    .line 279
    .line 280
    invoke-static {v1, p0}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 281
    .line 282
    .line 283
    sget-object p0, Lq2/o;->d:Lq2/o;

    .line 284
    .line 285
    new-instance v1, Lx1/q;

    .line 286
    .line 287
    invoke-direct {v1, v2}, Lx1/q;-><init>(I)V

    .line 288
    .line 289
    .line 290
    invoke-static {v1, p0}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 291
    .line 292
    .line 293
    sget-object p0, Lq2/o;->V:Lq2/o;

    .line 294
    .line 295
    new-instance v1, Lx1/q;

    .line 296
    .line 297
    invoke-direct {v1, v3}, Lx1/q;-><init>(I)V

    .line 298
    .line 299
    .line 300
    invoke-static {v1, p0}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 301
    .line 302
    .line 303
    sget-object p0, Lq2/o;->W:Lq2/o;

    .line 304
    .line 305
    new-instance v1, Lx1/q;

    .line 306
    .line 307
    const/4 v2, 0x2

    .line 308
    invoke-direct {v1, v2}, Lx1/q;-><init>(I)V

    .line 309
    .line 310
    .line 311
    invoke-static {v1, p0}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 312
    .line 313
    .line 314
    sget-object p0, Lq2/o;->X:Lq2/o;

    .line 315
    .line 316
    new-instance v1, Lx1/q;

    .line 317
    .line 318
    const/4 v2, 0x3

    .line 319
    invoke-direct {v1, v2}, Lx1/q;-><init>(I)V

    .line 320
    .line 321
    .line 322
    invoke-static {v1, p0}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 323
    .line 324
    .line 325
    new-instance p0, Ljava/util/concurrent/FutureTask;

    .line 326
    .line 327
    new-instance v1, Lx1/p;

    .line 328
    .line 329
    invoke-direct {v1, v3}, Lx1/p;-><init>(I)V

    .line 330
    .line 331
    .line 332
    invoke-direct {p0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 333
    .line 334
    .line 335
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_155
    .catchall {:try_start_d1 .. :try_end_155} :catchall_8c

    .line 340
    .line 341
    .line 342
    monitor-exit v0

    .line 343
    return-void

    .line 344
    :cond_157
    :try_start_157
    const-string p0, "applicationContext"

    .line 345
    .line 346
    invoke-static {p0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw v4

    .line 350
    :cond_15d
    const-string p0, "applicationContext"

    .line 351
    .line 352
    invoke-static {p0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw v4

    .line 356
    :cond_163
    new-instance p0, Lx1/l;

    .line 357
    .line 358
    const-string v1, "A valid Facebook app client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk."

    .line 359
    .line 360
    invoke-direct {p0, v1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    throw p0

    .line 364
    :cond_16b
    new-instance p0, Lx1/l;

    .line 365
    .line 366
    const-string v1, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    .line 367
    .line 368
    invoke-direct {p0, v1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    throw p0

    .line 372
    :cond_173
    const-string p0, "applicationContext"

    .line 373
    .line 374
    invoke-static {p0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw v4

    .line 378
    :goto_179
    monitor-exit v0
    :try_end_17a
    .catchall {:try_start_157 .. :try_end_17a} :catchall_8c

    .line 379
    throw p0
.end method
