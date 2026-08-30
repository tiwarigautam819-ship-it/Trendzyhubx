###### Class u7.b (u7.b)
.class public final Lu7/b;
.super Lu7/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 4

    .line 1
    iput p3, p0, Lu7/b;->e:I

    iput-object p2, p0, Lu7/b;->f:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lu7/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lv7/m;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lu7/b;->e:I

    iput-object p1, p0, Lu7/b;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p2, p1}, Lu7/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 14

    .line 1
    iget v0, p0, Lu7/b;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_b6

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu7/b;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ly7/o;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    :try_start_d
    iget-object v2, v0, Ly7/o;->E:Ly7/x;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v1, v3, v3}, Ly7/x;->t(IIZ)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_14

    .line 18
    .line 19
    .line 20
    goto :goto_18

    .line 21
    :catch_14
    move-exception v2

    .line 22
    invoke-virtual {v0, v1, v1, v2}, Ly7/o;->a(IILjava/io/IOException;)V

    .line 23
    .line 24
    .line 25
    :goto_18
    const-wide/16 v0, -0x1

    .line 26
    .line 27
    return-wide v0

    .line 28
    :pswitch_1b
    iget-object v0, p0, Lu7/b;->f:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lv7/m;

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    iget-object v3, v0, Lv7/m;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    const-wide/high16 v6, -0x8000000000000000L

    .line 45
    .line 46
    move-wide v7, v6

    .line 47
    move-object v6, v5

    .line 48
    move v5, v4

    .line 49
    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_5c

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    check-cast v9, Lv7/l;

    .line 60
    .line 61
    const-string v10, "connection"

    .line 62
    .line 63
    invoke-static {v10, v9}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    monitor-enter v9

    .line 67
    :try_start_42
    invoke-virtual {v0, v9, v1, v2}, Lv7/m;->b(Lv7/l;J)I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-lez v10, :cond_4b

    .line 72
    .line 73
    add-int/lit8 v5, v5, 0x1

    .line 74
    .line 75
    goto :goto_57

    .line 76
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    iget-wide v10, v9, Lv7/l;->q:J
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_59

    .line 79
    .line 80
    sub-long v10, v1, v10

    .line 81
    .line 82
    cmp-long v12, v10, v7

    .line 83
    .line 84
    if-lez v12, :cond_57

    .line 85
    .line 86
    move-object v6, v9

    .line 87
    move-wide v7, v10

    .line 88
    :cond_57
    :goto_57
    monitor-exit v9

    .line 89
    goto :goto_30

    .line 90
    :catchall_59
    move-exception v0

    .line 91
    monitor-exit v9

    .line 92
    throw v0

    .line 93
    :cond_5c
    iget-wide v9, v0, Lv7/m;->b:J

    .line 94
    .line 95
    cmp-long v3, v7, v9

    .line 96
    .line 97
    if-gez v3, :cond_71

    .line 98
    .line 99
    iget v3, v0, Lv7/m;->a:I

    .line 100
    .line 101
    if-le v4, v3, :cond_67

    .line 102
    .line 103
    goto :goto_71

    .line 104
    :cond_67
    if-lez v4, :cond_6b

    .line 105
    .line 106
    sub-long/2addr v9, v7

    .line 107
    goto :goto_a8

    .line 108
    :cond_6b
    if-lez v5, :cond_6e

    .line 109
    .line 110
    goto :goto_a8

    .line 111
    :cond_6e
    const-wide/16 v9, -0x1

    .line 112
    .line 113
    goto :goto_a8

    .line 114
    :cond_71
    :goto_71
    invoke-static {v6}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    monitor-enter v6

    .line 118
    :try_start_75
    iget-object v3, v6, Lv7/l;->p:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v3
    :try_end_7b
    .catchall {:try_start_75 .. :try_end_7b} :catchall_a9

    .line 124
    const-wide/16 v9, 0x0

    .line 125
    .line 126
    if-nez v3, :cond_81

    .line 127
    .line 128
    monitor-exit v6

    .line 129
    goto :goto_a8

    .line 130
    :cond_81
    :try_start_81
    iget-wide v3, v6, Lv7/l;->q:J
    :try_end_83
    .catchall {:try_start_81 .. :try_end_83} :catchall_a9

    .line 131
    .line 132
    add-long/2addr v3, v7

    .line 133
    cmp-long v1, v3, v1

    .line 134
    .line 135
    if-eqz v1, :cond_8a

    .line 136
    .line 137
    monitor-exit v6

    .line 138
    goto :goto_a8

    .line 139
    :cond_8a
    const/4 v1, 0x1

    .line 140
    :try_start_8b
    iput-boolean v1, v6, Lv7/l;->j:Z

    .line 141
    .line 142
    iget-object v1, v0, Lv7/m;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 143
    .line 144
    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_a9

    .line 145
    .line 146
    .line 147
    monitor-exit v6

    .line 148
    iget-object v1, v6, Lv7/l;->d:Ljava/net/Socket;

    .line 149
    .line 150
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v1}, Ls7/b;->e(Ljava/net/Socket;)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Lv7/m;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_a8

    .line 163
    .line 164
    iget-object v0, v0, Lv7/m;->c:Lu7/c;

    .line 165
    .line 166
    invoke-virtual {v0}, Lu7/c;->a()V

    .line 167
    .line 168
    .line 169
    :cond_a8
    :goto_a8
    return-wide v9

    .line 170
    :catchall_a9
    move-exception v0

    .line 171
    monitor-exit v6

    .line 172
    throw v0

    .line 173
    :pswitch_ac
    iget-object v0, p0, Lu7/b;->f:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v0, Lc7/a;

    .line 176
    .line 177
    invoke-interface {v0}, Lc7/a;->b()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    const-wide/16 v0, -0x1

    .line 181
    .line 182
    return-wide v0

    .line 183
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_1b
    .end packed-switch
.end method
