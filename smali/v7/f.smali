###### Class v7.f (v7.f)
.class public final Lv7/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln6/d;

.field public volatile b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic c:Lv7/i;


# direct methods
.method public constructor <init>(Lv7/i;Ln6/d;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv7/f;->c:Lv7/i;

    .line 5
    .line 6
    iput-object p2, p0, Lv7/f;->a:Ln6/d;

    .line 7
    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lv7/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 1
    const-string v0, "logEvent request failed"

    .line 2
    .line 3
    const-string v1, "GA4Reporter"

    .line 4
    .line 5
    const-string v2, "Callback failure for "

    .line 6
    .line 7
    const-string v3, "canceled due to "

    .line 8
    .line 9
    iget-object v4, p0, Lv7/f;->c:Lv7/i;

    .line 10
    .line 11
    iget-object v4, v4, Lv7/i;->b:Lcom/google/android/gms/common/internal/g;

    .line 12
    .line 13
    iget-object v4, v4, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Lr7/m;

    .line 16
    .line 17
    invoke-virtual {v4}, Lr7/m;->f()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, "OkHttp "

    .line 22
    .line 23
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v5, p0, Lv7/f;->c:Lv7/i;

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v6, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :try_start_27
    iget-object v4, v5, Lv7/i;->d:Lv7/h;

    .line 41
    .line 42
    invoke-virtual {v4}, Le8/e;->h()V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_3f

    .line 43
    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    :try_start_2d
    invoke-virtual {v5}, Lv7/i;->h()Lr7/u;

    .line 47
    .line 48
    .line 49
    move-result-object v4
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_68
    .catchall {:try_start_2d .. :try_end_31} :catchall_47

    .line 50
    const/4 v8, 0x1

    .line 51
    :try_start_32
    iget-object v9, p0, Lv7/f;->a:Ln6/d;

    .line 52
    .line 53
    invoke-virtual {v9, v4}, Ln6/d;->b(Lr7/u;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_44
    .catchall {:try_start_32 .. :try_end_37} :catchall_41

    .line 54
    .line 55
    .line 56
    :try_start_37
    iget-object v0, v5, Lv7/i;->a:Lr7/r;

    .line 57
    .line 58
    :goto_39
    iget-object v0, v0, Lr7/r;->a:Lcom/google/firebase/messaging/y;

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Lcom/google/firebase/messaging/y;->p(Lv7/f;)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    .line 61
    .line 62
    .line 63
    goto :goto_8d

    .line 64
    :catchall_3f
    move-exception v0

    .line 65
    goto :goto_99

    .line 66
    :catchall_41
    move-exception v2

    .line 67
    move v4, v8

    .line 68
    goto :goto_48

    .line 69
    :catch_44
    move-exception v3

    .line 70
    move v4, v8

    .line 71
    goto :goto_69

    .line 72
    :catchall_47
    move-exception v2

    .line 73
    :goto_48
    :try_start_48
    invoke-virtual {v5}, Lv7/i;->d()V

    .line 74
    .line 75
    .line 76
    if-nez v4, :cond_67

    .line 77
    .line 78
    new-instance v4, Ljava/io/IOException;

    .line 79
    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v4, v2}, Li2/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    goto :goto_67

    .line 102
    :catchall_65
    move-exception v0

    .line 103
    goto :goto_91

    .line 104
    :cond_67
    :goto_67
    throw v2

    .line 105
    :catch_68
    move-exception v3

    .line 106
    :goto_69
    if-eqz v4, :cond_87

    .line 107
    .line 108
    sget-object v0, Lz7/n;->a:Lz7/n;

    .line 109
    .line 110
    sget-object v0, Lz7/n;->a:Lz7/n;

    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v5}, Lv7/i;->a(Lv7/i;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    const/4 v0, 0x4

    .line 132
    invoke-static {v1, v0, v3}, Lz7/n;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    goto :goto_8a

    .line 136
    :cond_87
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8a
    .catchall {:try_start_48 .. :try_end_8a} :catchall_65

    .line 137
    .line 138
    .line 139
    :goto_8a
    :try_start_8a
    iget-object v0, v5, Lv7/i;->a:Lr7/r;
    :try_end_8c
    .catchall {:try_start_8a .. :try_end_8c} :catchall_3f

    .line 140
    .line 141
    goto :goto_39

    .line 142
    :goto_8d
    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :goto_91
    :try_start_91
    iget-object v1, v5, Lv7/i;->a:Lr7/r;

    .line 147
    .line 148
    iget-object v1, v1, Lr7/r;->a:Lcom/google/firebase/messaging/y;

    .line 149
    .line 150
    invoke-virtual {v1, p0}, Lcom/google/firebase/messaging/y;->p(Lv7/f;)V

    .line 151
    .line 152
    .line 153
    throw v0
    :try_end_99
    .catchall {:try_start_91 .. :try_end_99} :catchall_3f

    .line 154
    :goto_99
    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0
.end method
