###### Class com.google.android.gms.internal.measurement.o6 (com.google.android.gms.internal.measurement.o6)
.class public final Lcom/google/android/gms/internal/measurement/o6;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lq4/d;
.implements Lcom/google/android/gms/internal/measurement/r6;


# static fields
.field public static final b:Lcom/google/android/gms/internal/measurement/a6;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/a6;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/a6;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/measurement/o6;->b:Lcom/google/android/gms/internal/measurement/a6;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/a7;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lcom/google/android/gms/internal/measurement/r6;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_18

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/measurement/r6;->b(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_15

    .line 16
    .line 17
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/measurement/r6;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/a7;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_15
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_6

    .line 25
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v1, "No factory is available for message type: "

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public b(Ljava/lang/Class;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lcom/google/android/gms/internal/measurement/r6;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_7
    if-ge v3, v1, :cond_16

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/measurement/r6;->b(Ljava/lang/Class;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_13

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_13
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    goto :goto_7

    .line 23
    :cond_16
    return v2
.end method

.method public c()Ljava/lang/Object;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/u4;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/u4;->a:Landroid/content/ContentResolver;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/u4;->b:Landroid/net/Uri;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string v1, "ConfigurationContentLdr"

    .line 14
    .line 15
    if-nez v3, :cond_18

    .line 16
    .line 17
    const-string v0, "Unable to acquire ContentProviderClient, using default values"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_18
    :try_start_18
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/u4;->b:Landroid/net/Uri;

    .line 26
    .line 27
    sget-object v5, Lcom/google/android/gms/internal/measurement/u4;->i:[Ljava/lang/String;

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 33
    .line 34
    .line 35
    move-result-object v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_35
    .catchall {:try_start_18 .. :try_end_23} :catchall_32

    .line 36
    if-nez v2, :cond_3e

    .line 37
    .line 38
    :try_start_25
    const-string v0, "ContentProvider query returned null cursor, using default values"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_3b

    .line 44
    .line 45
    if-eqz v2, :cond_37

    .line 46
    .line 47
    :try_start_2e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_35
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    .line 48
    .line 49
    .line 50
    goto :goto_37

    .line 51
    :catchall_32
    move-exception v0

    .line 52
    goto/16 :goto_a3

    .line 53
    .line 54
    :catch_35
    move-exception v0

    .line 55
    goto :goto_98

    .line 56
    :cond_37
    :goto_37
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :catchall_3b
    move-exception v0

    .line 61
    move-object v4, v0

    .line 62
    goto :goto_8d

    .line 63
    :cond_3e
    :try_start_3e
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_4d

    .line 68
    .line 69
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_3b

    .line 70
    .line 71
    :try_start_46
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_35
    .catchall {:try_start_46 .. :try_end_49} :catchall_32

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_4d
    const/16 v4, 0x100

    .line 79
    .line 80
    if-gt v0, v4, :cond_57

    .line 81
    .line 82
    :try_start_51
    new-instance v4, Ls/e;

    .line 83
    .line 84
    invoke-direct {v4, v0}, Ls/j;-><init>(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_5e

    .line 88
    :cond_57
    new-instance v4, Ljava/util/HashMap;

    .line 89
    .line 90
    const/high16 v5, 0x3f800000    # 1.0f

    .line 91
    .line 92
    invoke-direct {v4, v0, v5}, Ljava/util/HashMap;-><init>(IF)V

    .line 93
    .line 94
    .line 95
    :goto_5e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_72

    .line 100
    .line 101
    const/4 v0, 0x0

    .line 102
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const/4 v5, 0x1

    .line 107
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    goto :goto_5e

    .line 115
    :cond_72
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_86

    .line 120
    .line 121
    const-string v0, "Cursor read incomplete (ContentProvider dead?), using default values"

    .line 122
    .line 123
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_7f
    .catchall {:try_start_51 .. :try_end_7f} :catchall_3b

    .line 127
    .line 128
    :try_start_7f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_82} :catch_35
    .catchall {:try_start_7f .. :try_end_82} :catchall_32

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 132
    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_86
    :try_start_86
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_89} :catch_35
    .catchall {:try_start_86 .. :try_end_89} :catchall_32

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 139
    .line 140
    .line 141
    return-object v4

    .line 142
    :goto_8d
    if-eqz v2, :cond_97

    .line 143
    .line 144
    :try_start_8f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    .line 145
    .line 146
    .line 147
    goto :goto_97

    .line 148
    :catchall_93
    move-exception v0

    .line 149
    :try_start_94
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    :cond_97
    :goto_97
    throw v4
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_98} :catch_35
    .catchall {:try_start_94 .. :try_end_98} :catchall_32

    .line 153
    :goto_98
    :try_start_98
    const-string v2, "ContentProvider query failed, using default values"

    .line 154
    .line 155
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .line 157
    .line 158
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_9f
    .catchall {:try_start_98 .. :try_end_9f} :catchall_32

    .line 159
    .line 160
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 161
    .line 162
    .line 163
    return-object v0

    .line 164
    :goto_a3
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 165
    .line 166
    .line 167
    throw v0
.end method

.method public d(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/q5;

    .line 4
    .line 5
    check-cast p2, Lcom/google/android/gms/internal/measurement/i5;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/q5;->b:Lcom/google/android/gms/internal/measurement/o6;

    .line 12
    .line 13
    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/measurement/b7;->h(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/o6;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x4

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public e(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/q5;

    .line 4
    .line 5
    check-cast p2, Lcom/google/android/gms/internal/measurement/i5;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/i5;->a(Lcom/google/android/gms/internal/measurement/b7;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, v0, Lcom/google/android/gms/internal/measurement/q5;->b:Lcom/google/android/gms/internal/measurement/o6;

    .line 19
    .line 20
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/b7;->h(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/o6;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/internal/measurement/a5;->a:Lq4/b;

    .line 6
    .line 7
    if-nez v1, :cond_58

    .line 8
    .line 9
    const-class v2, Lcom/google/android/gms/internal/measurement/a5;

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    :try_start_b
    sget-object v1, Lcom/google/android/gms/internal/measurement/a5;->a:Lq4/b;

    .line 13
    .line 14
    if-nez v1, :cond_54

    .line 15
    .line 16
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 19
    .line 20
    sget-object v4, Lcom/google/android/gms/internal/measurement/c5;->a:Ls/e;

    .line 21
    .line 22
    const-string v4, "eng"

    .line 23
    .line 24
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_25

    .line 29
    .line 30
    const-string v4, "userdebug"

    .line 31
    .line 32
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_36

    .line 37
    .line 38
    :cond_25
    const-string v1, "dev-keys"

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3c

    .line 45
    .line 46
    const-string v1, "test-keys"

    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_36

    .line 53
    .line 54
    goto :goto_3c

    .line 55
    :cond_36
    sget-object v0, Lq4/a;->a:Lq4/a;

    .line 56
    .line 57
    :goto_38
    move-object v1, v0

    .line 58
    goto :goto_52

    .line 59
    :catchall_3a
    move-exception v0

    .line 60
    goto :goto_56

    .line 61
    :cond_3c
    :goto_3c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/s4;->a()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4d

    .line 66
    .line 67
    invoke-static {v0}, Lcom/getcapacitor/a;->w(Landroid/content/Context;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_49

    .line 72
    .line 73
    goto :goto_4d

    .line 74
    :cond_49
    invoke-static {v0}, Lcom/getcapacitor/a;->b(Landroid/content/Context;)Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :cond_4d
    :goto_4d
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a5;->d(Landroid/content/Context;)Lq4/b;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    goto :goto_38

    .line 83
    :goto_52
    sput-object v1, Lcom/google/android/gms/internal/measurement/a5;->a:Lq4/b;

    .line 84
    .line 85
    :cond_54
    monitor-exit v2

    .line 86
    return-object v1

    .line 87
    :goto_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_b .. :try_end_57} :catchall_3a

    .line 88
    throw v0

    .line 89
    :cond_58
    return-object v1
.end method
