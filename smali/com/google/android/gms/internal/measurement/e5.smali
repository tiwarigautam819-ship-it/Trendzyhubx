###### Class com.google.android.gms.internal.measurement.e5 (com.google.android.gms.internal.measurement.e5)
.class public final Lcom/google/android/gms/internal/measurement/e5;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final g:Ljava/lang/Object;

.field public static volatile h:Lcom/google/android/gms/internal/measurement/v4;

.field public static final i:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/f5;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public volatile d:I

.field public volatile e:Ljava/lang/Object;

.field public final synthetic f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/e5;->g:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/google/android/gms/internal/measurement/e5;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/f5;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5

    .line 1
    iput p4, p0, Lcom/google/android/gms/internal/measurement/e5;->f:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p4, -0x1

    .line 7
    iput p4, p0, Lcom/google/android/gms/internal/measurement/e5;->d:I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p4, p1, Lcom/google/android/gms/internal/measurement/f5;->a:Landroid/net/Uri;

    .line 13
    .line 14
    if-eqz p4, :cond_16

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/e5;->a:Lcom/google/android/gms/internal/measurement/f5;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/e5;->b:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/e5;->c:Ljava/lang/Object;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/e5;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/measurement/e5;->d:I

    .line 8
    .line 9
    if-ge v1, v0, :cond_9e

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_b
    iget v1, p0, Lcom/google/android/gms/internal/measurement/e5;->d:I

    .line 13
    .line 14
    if-ge v1, v0, :cond_9a

    .line 15
    .line 16
    sget-object v1, Lcom/google/android/gms/internal/measurement/e5;->h:Lcom/google/android/gms/internal/measurement/v4;

    .line 17
    .line 18
    sget-object v2, Lq4/a;->a:Lq4/a;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_62

    .line 22
    .line 23
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/v4;->b:Lq4/d;

    .line 24
    .line 25
    invoke-interface {v2}, Lq4/d;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lq4/b;

    .line 30
    .line 31
    invoke-virtual {v2}, Lq4/b;->b()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_62

    .line 36
    .line 37
    invoke-virtual {v2}, Lq4/b;->a()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/google/android/gms/internal/measurement/w4;

    .line 42
    .line 43
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/e5;->a:Lcom/google/android/gms/internal/measurement/f5;

    .line 44
    .line 45
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/f5;->a:Landroid/net/Uri;

    .line 46
    .line 47
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/f5;->c:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/e5;->b:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    if-eqz v6, :cond_44

    .line 55
    .line 56
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/w4;->a:Ls/j;

    .line 61
    .line 62
    invoke-virtual {v4, v6}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ls/j;

    .line 67
    .line 68
    goto :goto_45

    .line 69
    :cond_44
    move-object v4, v3

    .line 70
    :goto_45
    if-nez v4, :cond_48

    .line 71
    .line 72
    goto :goto_62

    .line 73
    :cond_48
    if-eqz v5, :cond_59

    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    :cond_59
    invoke-virtual {v4, v7}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Ljava/lang/String;

    .line 95
    .line 96
    goto :goto_62

    .line 97
    :catchall_60
    move-exception v0

    .line 98
    goto :goto_9c

    .line 99
    :cond_62
    :goto_62
    if-eqz v1, :cond_66

    .line 100
    .line 101
    const/4 v4, 0x1

    .line 102
    goto :goto_67

    .line 103
    :cond_66
    const/4 v4, 0x0

    .line 104
    :goto_67
    const-string v5, "Must call PhenotypeFlagInitializer.maybeInit() first"

    .line 105
    .line 106
    if-eqz v4, :cond_94

    .line 107
    .line 108
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/e5;->a:Lcom/google/android/gms/internal/measurement/f5;

    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/e5;->d(Lcom/google/android/gms/internal/measurement/v4;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    if-eqz v4, :cond_77

    .line 118
    .line 119
    goto :goto_80

    .line 120
    :cond_77
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/e5;->b(Lcom/google/android/gms/internal/measurement/v4;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    if-eqz v4, :cond_7e

    .line 125
    .line 126
    goto :goto_80

    .line 127
    :cond_7e
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/e5;->c:Ljava/lang/Object;

    .line 128
    .line 129
    :goto_80
    invoke-virtual {v2}, Lq4/b;->b()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_8f

    .line 134
    .line 135
    if-nez v3, :cond_8b

    .line 136
    .line 137
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/e5;->c:Ljava/lang/Object;

    .line 138
    .line 139
    goto :goto_8f

    .line 140
    :cond_8b
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/e5;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    :cond_8f
    :goto_8f
    iput-object v4, p0, Lcom/google/android/gms/internal/measurement/e5;->e:Ljava/lang/Object;

    .line 145
    .line 146
    iput v0, p0, Lcom/google/android/gms/internal/measurement/e5;->d:I

    .line 147
    .line 148
    goto :goto_9a

    .line 149
    :cond_94
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 150
    .line 151
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :cond_9a
    :goto_9a
    monitor-exit p0

    .line 156
    goto :goto_9e

    .line 157
    :goto_9c
    monitor-exit p0
    :try_end_9d
    .catchall {:try_start_b .. :try_end_9d} :catchall_60

    .line 158
    throw v0

    .line 159
    :cond_9e
    :goto_9e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e5;->e:Ljava/lang/Object;

    .line 160
    .line 161
    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/v4;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e5;->a:Lcom/google/android/gms/internal/measurement/f5;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/measurement/f5;->d:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_52

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/v4;->a:Landroid/content/Context;

    .line 9
    .line 10
    const-class v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_c
    sget-object v2, Lcom/google/android/gms/internal/measurement/y4;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 14
    .line 15
    if-nez v2, :cond_29

    .line 16
    .line 17
    const-string v2, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    .line 18
    .line 19
    invoke-static {p1, v2}, Lz/c;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_21

    .line 24
    .line 25
    new-instance v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_27

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    goto :goto_50

    .line 34
    :cond_21
    new-instance v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/measurement/y4;-><init>(I)V

    .line 38
    .line 39
    .line 40
    :goto_27
    sput-object v2, Lcom/google/android/gms/internal/measurement/y4;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 41
    .line 42
    :cond_29
    sget-object p1, Lcom/google/android/gms/internal/measurement/y4;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 43
    .line 44
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_1f

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e5;->a:Lcom/google/android/gms/internal/measurement/f5;

    .line 46
    .line 47
    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/f5;->d:Z

    .line 48
    .line 49
    if-eqz v2, :cond_34

    .line 50
    .line 51
    move-object v2, v1

    .line 52
    goto :goto_45

    .line 53
    :cond_34
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/f5;->b:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/e5;->b:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v0, :cond_41

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_41

    .line 64
    .line 65
    goto :goto_45

    .line 66
    :cond_41
    invoke-static {v0, v2}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :goto_45
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/y4;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_52

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/e5;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    :goto_50
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_1f

    .line 82
    throw p1

    .line 83
    :cond_52
    return-object v1
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/e5;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_114

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_c

    .line 9
    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return-object p1

    .line 15
    :pswitch_e
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 16
    .line 17
    if-eqz v0, :cond_15

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Boolean;

    .line 20
    .line 21
    goto :goto_6d

    .line 22
    :cond_15
    instance-of v0, p1, Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v0, :cond_3a

    .line 25
    .line 26
    move-object v0, p1

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    sget-object v1, Lcom/google/android/gms/internal/measurement/n4;->c:Ljava/util/regex/Pattern;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2b

    .line 40
    .line 41
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    goto :goto_6d

    .line 44
    :cond_2b
    sget-object v1, Lcom/google/android/gms/internal/measurement/n4;->d:Ljava/util/regex/Pattern;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3a

    .line 55
    .line 56
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 57
    .line 58
    goto :goto_6d

    .line 59
    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e5;->a:Lcom/google/android/gms/internal/measurement/f5;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/f5;->c:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/e5;->b:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v0, :cond_49

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_49

    .line 72
    .line 73
    goto :goto_4d

    .line 74
    :cond_49
    invoke-static {v0, v1}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :goto_4d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v2, "Invalid boolean value for "

    .line 85
    .line 86
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ": "

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string v0, "PhenotypeFlag"

    .line 105
    .line 106
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    :goto_6d
    return-object p1

    .line 111
    :pswitch_6e
    instance-of v0, p1, Ljava/lang/Double;

    .line 112
    .line 113
    if-eqz v0, :cond_75

    .line 114
    .line 115
    check-cast p1, Ljava/lang/Double;

    .line 116
    .line 117
    goto :goto_c7

    .line 118
    :cond_75
    instance-of v0, p1, Ljava/lang/Float;

    .line 119
    .line 120
    if-eqz v0, :cond_84

    .line 121
    .line 122
    check-cast p1, Ljava/lang/Float;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    goto :goto_c7

    .line 133
    :cond_84
    instance-of v0, p1, Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v0, :cond_94

    .line 136
    .line 137
    :try_start_88
    move-object v0, p1

    .line 138
    check-cast v0, Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 145
    .line 146
    .line 147
    move-result-object p1
    :try_end_93
    .catch Ljava/lang/NumberFormatException; {:try_start_88 .. :try_end_93} :catch_94

    .line 148
    goto :goto_c7

    .line 149
    :catch_94
    :cond_94
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e5;->a:Lcom/google/android/gms/internal/measurement/f5;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/f5;->c:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/e5;->b:Ljava/lang/String;

    .line 154
    .line 155
    if-eqz v0, :cond_a3

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_a3

    .line 162
    .line 163
    goto :goto_a7

    .line 164
    :cond_a3
    invoke-static {v0, v1}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    :goto_a7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v2, "Invalid double value for "

    .line 175
    .line 176
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v1, ": "

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    const-string v0, "PhenotypeFlag"

    .line 195
    .line 196
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    const/4 p1, 0x0

    .line 200
    :goto_c7
    return-object p1

    .line 201
    :pswitch_c8
    instance-of v0, p1, Ljava/lang/Long;

    .line 202
    .line 203
    if-eqz v0, :cond_cf

    .line 204
    .line 205
    check-cast p1, Ljava/lang/Long;

    .line 206
    .line 207
    goto :goto_112

    .line 208
    :cond_cf
    instance-of v0, p1, Ljava/lang/String;

    .line 209
    .line 210
    if-eqz v0, :cond_df

    .line 211
    .line 212
    :try_start_d3
    move-object v0, p1

    .line 213
    check-cast v0, Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 216
    .line 217
    .line 218
    move-result-wide v0

    .line 219
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 220
    .line 221
    .line 222
    move-result-object p1
    :try_end_de
    .catch Ljava/lang/NumberFormatException; {:try_start_d3 .. :try_end_de} :catch_df

    .line 223
    goto :goto_112

    .line 224
    :catch_df
    :cond_df
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e5;->a:Lcom/google/android/gms/internal/measurement/f5;

    .line 225
    .line 226
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/f5;->c:Ljava/lang/String;

    .line 227
    .line 228
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/e5;->b:Ljava/lang/String;

    .line 229
    .line 230
    if-eqz v0, :cond_ee

    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_ee

    .line 237
    .line 238
    goto :goto_f2

    .line 239
    :cond_ee
    invoke-static {v0, v1}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    :goto_f2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v2, "Invalid long value for "

    .line 250
    .line 251
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v1, ": "

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    const-string v0, "PhenotypeFlag"

    .line 270
    .line 271
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    const/4 p1, 0x0

    .line 275
    :goto_112
    return-object p1

    .line 276
    nop

    .line 277
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_c8
        :pswitch_6e
        :pswitch_e
    .end packed-switch
.end method

.method public final d(Lcom/google/android/gms/internal/measurement/v4;)Ljava/lang/Object;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e5;->a:Lcom/google/android/gms/internal/measurement/f5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/f5;->a:Landroid/net/Uri;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_d7

    .line 7
    .line 8
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/v4;->a:Landroid/content/Context;

    .line 9
    .line 10
    sget-object v3, Lcom/google/android/gms/internal/measurement/b5;->a:Lq4/b;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v3, "com.google.android.gms.phenotype"

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    if-nez v3, :cond_30

    .line 24
    .line 25
    const-string v2, "PhenotypeClientHelper"

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, " is an unsupported authority. Only com.google.android.gms.phenotype authority is supported."

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto/16 :goto_b8

    .line 48
    .line 49
    :cond_30
    sget-object v0, Lcom/google/android/gms/internal/measurement/b5;->a:Lq4/b;

    .line 50
    .line 51
    invoke-virtual {v0}, Lq4/b;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_46

    .line 56
    .line 57
    sget-object v0, Lcom/google/android/gms/internal/measurement/b5;->a:Lq4/b;

    .line 58
    .line 59
    invoke-virtual {v0}, Lq4/b;->a()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    goto/16 :goto_b8

    .line 70
    .line 71
    :cond_46
    sget-object v0, Lcom/google/android/gms/internal/measurement/b5;->b:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter v0

    .line 74
    :try_start_49
    sget-object v3, Lcom/google/android/gms/internal/measurement/b5;->a:Lq4/b;

    .line 75
    .line 76
    invoke-virtual {v3}, Lq4/b;->b()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_62

    .line 81
    .line 82
    sget-object v2, Lcom/google/android/gms/internal/measurement/b5;->a:Lq4/b;

    .line 83
    .line 84
    invoke-virtual {v2}, Lq4/b;->a()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    monitor-exit v0

    .line 95
    goto :goto_b8

    .line 96
    :catchall_5f
    move-exception p1

    .line 97
    goto/16 :goto_d5

    .line 98
    .line 99
    :cond_62
    const-string v3, "com.google.android.gms"

    .line 100
    .line 101
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_6f

    .line 110
    .line 111
    goto :goto_8f

    .line 112
    :cond_6f
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const-string v5, "com.google.android.gms.phenotype"

    .line 117
    .line 118
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    .line 120
    const/16 v7, 0x1d

    .line 121
    .line 122
    if-ge v6, v7, :cond_7d

    .line 123
    .line 124
    move v6, v4

    .line 125
    goto :goto_7f

    .line 126
    :cond_7d
    const/high16 v6, 0x10000000

    .line 127
    .line 128
    :goto_7f
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    if-eqz v3, :cond_a0

    .line 133
    .line 134
    const-string v5, "com.google.android.gms"

    .line 135
    .line 136
    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_a0

    .line 143
    .line 144
    :goto_8f
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 145
    .line 146
    .line 147
    move-result-object v2
    :try_end_93
    .catchall {:try_start_49 .. :try_end_93} :catchall_5f

    .line 148
    :try_start_93
    const-string v3, "com.google.android.gms"

    .line 149
    .line 150
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 151
    .line 152
    .line 153
    move-result-object v2
    :try_end_99
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_93 .. :try_end_99} :catch_a0
    .catchall {:try_start_93 .. :try_end_99} :catchall_5f

    .line 154
    :try_start_99
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 155
    .line 156
    and-int/lit16 v2, v2, 0x81

    .line 157
    .line 158
    if-eqz v2, :cond_a0

    .line 159
    .line 160
    const/4 v4, 0x1

    .line 161
    :catch_a0
    :cond_a0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    new-instance v3, Lq4/c;

    .line 166
    .line 167
    invoke-direct {v3, v2}, Lq4/c;-><init>(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    sput-object v3, Lcom/google/android/gms/internal/measurement/b5;->a:Lq4/b;

    .line 171
    .line 172
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_99 .. :try_end_ac} :catchall_5f

    .line 173
    sget-object v0, Lcom/google/android/gms/internal/measurement/b5;->a:Lq4/b;

    .line 174
    .line 175
    invoke-virtual {v0}, Lq4/b;->a()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Ljava/lang/Boolean;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    :goto_b8
    if-eqz v4, :cond_d3

    .line 186
    .line 187
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e5;->a:Lcom/google/android/gms/internal/measurement/f5;

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/v4;->a:Landroid/content/Context;

    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e5;->a:Lcom/google/android/gms/internal/measurement/f5;

    .line 199
    .line 200
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/f5;->a:Landroid/net/Uri;

    .line 201
    .line 202
    new-instance v2, Lcom/google/android/gms/internal/measurement/d5;

    .line 203
    .line 204
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/measurement/u4;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/u4;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    goto :goto_e2

    .line 212
    :cond_d3
    move-object p1, v1

    .line 213
    goto :goto_e2

    .line 214
    :goto_d5
    :try_start_d5
    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_5f

    .line 215
    throw p1

    .line 216
    :cond_d7
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/v4;->a:Landroid/content/Context;

    .line 217
    .line 218
    new-instance v0, Lcom/google/android/gms/internal/measurement/d5;

    .line 219
    .line 220
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/g5;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/d5;)Lcom/google/android/gms/internal/measurement/g5;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    :goto_e2
    if-eqz p1, :cond_102

    .line 228
    .line 229
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e5;->a:Lcom/google/android/gms/internal/measurement/f5;

    .line 230
    .line 231
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/f5;->c:Ljava/lang/String;

    .line 232
    .line 233
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/e5;->b:Ljava/lang/String;

    .line 234
    .line 235
    if-eqz v0, :cond_f3

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-eqz v3, :cond_f3

    .line 242
    .line 243
    goto :goto_f7

    .line 244
    :cond_f3
    invoke-static {v0, v2}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    :goto_f7
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/measurement/x4;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    if-eqz p1, :cond_102

    .line 253
    .line 254
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/e5;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    return-object p1

    .line 259
    :cond_102
    return-object v1
.end method
