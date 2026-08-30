###### Class v7.a (v7.a)
.class public final Lv7/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lr7/o;


# static fields
.field public static final a:Lv7/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lv7/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv7/a;->a:Lv7/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lw7/f;)Lr7/u;
    .registers 11

    .line 1
    iget-object v1, p1, Lw7/f;->a:Lv7/i;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_3
    iget-boolean v0, v1, Lv7/i;->l:Z

    .line 5
    .line 6
    if-eqz v0, :cond_9c

    .line 7
    .line 8
    iget-boolean v0, v1, Lv7/i;->k:Z

    .line 9
    .line 10
    if-nez v0, :cond_94

    .line 11
    .line 12
    iget-boolean v0, v1, Lv7/i;->j:Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_91

    .line 13
    .line 14
    if-nez v0, :cond_89

    .line 15
    .line 16
    monitor-exit v1

    .line 17
    iget-object v2, v1, Lv7/i;->g:Lv7/e;

    .line 18
    .line 19
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v1, Lv7/i;->a:Lr7/r;

    .line 23
    .line 24
    :try_start_17
    iget v3, p1, Lw7/f;->f:I

    .line 25
    .line 26
    iget v4, p1, Lw7/f;->g:I

    .line 27
    .line 28
    iget v5, p1, Lw7/f;->h:I

    .line 29
    .line 30
    iget-boolean v6, v0, Lr7/r;->f:Z

    .line 31
    .line 32
    iget-object v7, p1, Lw7/f;->e:Lcom/google/android/gms/common/internal/g;

    .line 33
    .line 34
    iget-object v7, v7, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v7, Ljava/lang/String;

    .line 37
    .line 38
    const-string v8, "GET"

    .line 39
    .line 40
    invoke-static {v7, v8}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    const/4 v8, 0x1

    .line 45
    xor-int/2addr v7, v8

    .line 46
    invoke-virtual/range {v2 .. v7}, Lv7/e;->a(IIIZZ)Lv7/l;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3, v0, p1}, Lv7/l;->k(Lr7/r;Lw7/f;)Lw7/d;

    .line 51
    .line 52
    .line 53
    move-result-object v0
    :try_end_35
    .catch Lv7/n; {:try_start_17 .. :try_end_35} :catch_77
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_35} :catch_74

    .line 54
    new-instance v3, Lcom/google/firebase/messaging/p;

    .line 55
    .line 56
    const-string v4, "finder"

    .line 57
    .line 58
    invoke-static {v4, v2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v1, v3, Lcom/google/firebase/messaging/p;->b:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object v2, v3, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    .line 67
    .line 68
    iput-object v0, v3, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-interface {v0}, Lw7/d;->h()Lv7/l;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, v3, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    .line 75
    .line 76
    iput-object v3, v1, Lv7/i;->i:Lcom/google/firebase/messaging/p;

    .line 77
    .line 78
    iput-object v3, v1, Lv7/i;->v:Lcom/google/firebase/messaging/p;

    .line 79
    .line 80
    monitor-enter v1

    .line 81
    :try_start_50
    iput-boolean v8, v1, Lv7/i;->j:Z

    .line 82
    .line 83
    iput-boolean v8, v1, Lv7/i;->k:Z
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_70

    .line 84
    .line 85
    monitor-exit v1

    .line 86
    iget-boolean v0, v1, Lv7/i;->m:Z

    .line 87
    .line 88
    if-nez v0, :cond_68

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    const/16 v1, 0x3d

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-static {p1, v2, v3, v0, v1}, Lw7/f;->a(Lw7/f;ILcom/google/firebase/messaging/p;Lcom/google/android/gms/common/internal/g;I)Lw7/f;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object p1, p1, Lw7/f;->e:Lcom/google/android/gms/common/internal/g;

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Lw7/f;->b(Lcom/google/android/gms/common/internal/g;)Lr7/u;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :cond_68
    new-instance p1, Ljava/io/IOException;

    .line 106
    .line 107
    const-string v0, "Canceled"

    .line 108
    .line 109
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :catchall_70
    move-exception v0

    .line 114
    move-object p1, v0

    .line 115
    monitor-exit v1

    .line 116
    throw p1

    .line 117
    :catch_74
    move-exception v0

    .line 118
    move-object p1, v0

    .line 119
    goto :goto_7a

    .line 120
    :catch_77
    move-exception v0

    .line 121
    move-object p1, v0

    .line 122
    goto :goto_83

    .line 123
    :goto_7a
    invoke-virtual {v2, p1}, Lv7/e;->c(Ljava/io/IOException;)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Lv7/n;

    .line 127
    .line 128
    invoke-direct {v0, p1}, Lv7/n;-><init>(Ljava/io/IOException;)V

    .line 129
    .line 130
    .line 131
    throw v0

    .line 132
    :goto_83
    iget-object v0, p1, Lv7/n;->b:Ljava/io/IOException;

    .line 133
    .line 134
    invoke-virtual {v2, v0}, Lv7/e;->c(Ljava/io/IOException;)V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :cond_89
    :try_start_89
    const-string p1, "Check failed."

    .line 139
    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 141
    .line 142
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :catchall_91
    move-exception v0

    .line 147
    move-object p1, v0

    .line 148
    goto :goto_a4

    .line 149
    :cond_94
    const-string p1, "Check failed."

    .line 150
    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_9c
    const-string p1, "released"

    .line 158
    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 160
    .line 161
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0
    :try_end_a4
    .catchall {:try_start_89 .. :try_end_a4} :catchall_91

    .line 165
    :goto_a4
    monitor-exit v1

    .line 166
    throw p1
.end method
