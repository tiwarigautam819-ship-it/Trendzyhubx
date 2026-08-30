###### Class i2.g (i2.g)
.class public final Li2/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Li2/g;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Li2/g;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li2/g;->a:Li2/g;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Li2/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    return-void
.end method

.method public static final declared-synchronized b(Landroid/content/Context;I)V
    .registers 8

    .line 1
    const-class v0, Li2/g;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    const-class v1, Li2/g;

    .line 5
    .line 6
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_8b

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
    const-string v1, "billingClientVersion"

    .line 15
    .line 16
    invoke-static {p1, v1}, La1/a;->n(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Li2/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_2d

    .line 25
    if-eqz v2, :cond_1c

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :cond_1c
    :try_start_1c
    new-instance v2, Ld7/k;

    .line 30
    .line 31
    invoke-direct {v2}, Ld7/k;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x3

    .line 35
    if-ne p1, v3, :cond_2f

    .line 36
    .line 37
    sget-object v4, Li2/l;->l:Li2/p;

    .line 38
    .line 39
    invoke-virtual {v4, p0}, Li2/p;->h(Landroid/content/Context;)Li2/l;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iput-object v4, v2, Ld7/k;->b:Ljava/lang/Object;

    .line 44
    .line 45
    goto :goto_3a

    .line 46
    :catchall_2d
    move-exception p0

    .line 47
    goto :goto_84

    .line 48
    :cond_2f
    const/4 v4, 0x4

    .line 49
    if-ne p1, v4, :cond_3a

    .line 50
    .line 51
    sget-object v4, Li2/m;->G:Li2/j;

    .line 52
    .line 53
    invoke-virtual {v4, p0}, Li2/j;->b(Landroid/content/Context;)Li2/m;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iput-object v4, v2, Ld7/k;->b:Ljava/lang/Object;

    .line 58
    .line 59
    :cond_3a
    :goto_3a
    iget-object v4, v2, Ld7/k;->b:Ljava/lang/Object;

    .line 60
    .line 61
    if-nez v4, :cond_44

    .line 62
    .line 63
    const/4 p0, 0x1

    .line 64
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_42
    .catchall {:try_start_1c .. :try_end_42} :catchall_2d

    .line 65
    .line 66
    .line 67
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :cond_44
    :try_start_44
    sget-object v1, Lq2/o;->J:Lq2/o;

    .line 70
    .line 71
    invoke-static {v1}, Lq2/q;->b(Lq2/o;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const/4 v4, 0x0

    .line 76
    if-eqz v1, :cond_74

    .line 77
    .line 78
    sget-object v1, Lj2/f;->a:Lj2/f;

    .line 79
    .line 80
    const-class v1, Lj2/f;

    .line 81
    .line 82
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_2d

    .line 86
    if-eqz v5, :cond_59

    .line 87
    .line 88
    :goto_57
    move v1, v4

    .line 89
    goto :goto_61

    .line 90
    :cond_59
    :try_start_59
    sget-boolean v1, Lj2/f;->b:Z
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_5c

    .line 91
    .line 92
    goto :goto_61

    .line 93
    :catchall_5c
    move-exception v5

    .line 94
    :try_start_5d
    invoke-static {v5, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_57

    .line 98
    :goto_61
    if-eqz v1, :cond_65

    .line 99
    .line 100
    if-ne p1, v3, :cond_74

    .line 101
    .line 102
    :cond_65
    iget-object v1, v2, Ld7/k;->b:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v1, Li2/h;

    .line 105
    .line 106
    sget-object v4, Li2/s;->b:Li2/s;

    .line 107
    .line 108
    new-instance v5, Lb/m;

    .line 109
    .line 110
    invoke-direct {v5, p1, v3, v2, p0}, Lb/m;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v1, v4, v5}, Li2/h;->a(Li2/s;Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    goto :goto_82

    .line 117
    :cond_74
    iget-object v1, v2, Ld7/k;->b:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v1, Li2/h;

    .line 120
    .line 121
    sget-object v2, Li2/s;->b:Li2/s;

    .line 122
    .line 123
    new-instance v3, Li2/f;

    .line 124
    .line 125
    invoke-direct {v3, p1, p0, v4}, Li2/f;-><init>(ILandroid/content/Context;I)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v1, v2, v3}, Li2/h;->a(Li2/s;Ljava/lang/Runnable;)V
    :try_end_82
    .catchall {:try_start_5d .. :try_end_82} :catchall_2d

    .line 129
    .line 130
    .line 131
    :goto_82
    monitor-exit v0

    .line 132
    return-void

    .line 133
    :goto_84
    :try_start_84
    const-class p1, Li2/g;

    .line 134
    .line 135
    invoke-static {p0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_89
    .catchall {:try_start_84 .. :try_end_89} :catchall_8b

    .line 136
    .line 137
    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 140
    :catchall_8b
    move-exception p0

    .line 141
    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    .line 142
    throw p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 13

    .line 1
    const-class v1, Li2/m;

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    goto/16 :goto_e6

    .line 10
    .line 11
    :cond_a
    :try_start_a
    const-class v2, Li2/p;

    .line 12
    .line 13
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_33

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v0, :cond_15

    .line 19
    .line 20
    :goto_13
    move v9, v3

    .line 21
    goto :goto_2d

    .line 22
    :cond_15
    :try_start_15
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v4, "com.facebook.internal.iap.IAP_CACHE_GPBLV2V7"

    .line 27
    .line 28
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v4, "APP_HAS_BEEN_LAUNCHED_KEY"

    .line 33
    .line 34
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_28

    .line 38
    xor-int/lit8 v3, v0, 0x1

    .line 39
    .line 40
    goto :goto_13

    .line 41
    :catchall_28
    move-exception v0

    .line 42
    :try_start_29
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_13

    .line 46
    :goto_2d
    if-eqz v9, :cond_37

    .line 47
    .line 48
    invoke-static {}, Li2/p;->k()V

    .line 49
    .line 50
    .line 51
    goto :goto_37

    .line 52
    :catchall_33
    move-exception v0

    .line 53
    move-object p1, v0

    .line 54
    goto/16 :goto_e7

    .line 55
    .line 56
    :cond_37
    :goto_37
    const/4 v0, 0x3

    .line 57
    if-ne p1, v0, :cond_66

    .line 58
    .line 59
    sget-object v0, Li2/l;->l:Li2/p;

    .line 60
    .line 61
    invoke-static {}, Li2/p;->g()Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {}, Li2/p;->i()Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const/4 v6, 0x0

    .line 70
    move v8, p1

    .line 71
    move-object v7, p2

    .line 72
    invoke-static/range {v4 .. v9}, Li2/p;->f(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;ZLjava/lang/String;IZ)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Li2/p;->j()Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {}, Li2/p;->i()Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    const/4 v6, 0x1

    .line 84
    invoke-static/range {v4 .. v9}, Li2/p;->f(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;ZLjava/lang/String;IZ)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Li2/p;->g()Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Li2/p;->j()Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_e1

    .line 102
    .line 103
    :cond_66
    move v8, p1

    .line 104
    move-object v7, p2

    .line 105
    sget-object p1, Li2/m;->G:Li2/j;

    .line 106
    .line 107
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1
    :try_end_6e
    .catchall {:try_start_29 .. :try_end_6e} :catchall_33

    .line 111
    const/4 p2, 0x0

    .line 112
    if-eqz p1, :cond_73

    .line 113
    .line 114
    :goto_71
    move-object v4, p2

    .line 115
    goto :goto_7d

    .line 116
    :cond_73
    :try_start_73
    sget-object p1, Li2/m;->J:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_75
    .catchall {:try_start_73 .. :try_end_75} :catchall_77

    .line 117
    .line 118
    move-object v4, p1

    .line 119
    goto :goto_7d

    .line 120
    :catchall_77
    move-exception v0

    .line 121
    move-object p1, v0

    .line 122
    :try_start_79
    invoke-static {p1, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_71

    .line 126
    :goto_7d
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1
    :try_end_81
    .catchall {:try_start_79 .. :try_end_81} :catchall_33

    .line 130
    if-eqz p1, :cond_85

    .line 131
    .line 132
    :goto_83
    move-object v5, p2

    .line 133
    goto :goto_8f

    .line 134
    :cond_85
    :try_start_85
    sget-object p1, Li2/m;->L:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_87
    .catchall {:try_start_85 .. :try_end_87} :catchall_89

    .line 135
    .line 136
    move-object v5, p1

    .line 137
    goto :goto_8f

    .line 138
    :catchall_89
    move-exception v0

    .line 139
    move-object p1, v0

    .line 140
    :try_start_8b
    invoke-static {p1, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_83

    .line 144
    :goto_8f
    const/4 v6, 0x0

    .line 145
    invoke-static/range {v4 .. v9}, Li2/p;->f(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;ZLjava/lang/String;IZ)V

    .line 146
    .line 147
    .line 148
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p1
    :try_end_97
    .catchall {:try_start_8b .. :try_end_97} :catchall_33

    .line 152
    if-eqz p1, :cond_9b

    .line 153
    .line 154
    :goto_99
    move-object v4, p2

    .line 155
    goto :goto_a5

    .line 156
    :cond_9b
    :try_start_9b
    sget-object p1, Li2/m;->K:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_9d
    .catchall {:try_start_9b .. :try_end_9d} :catchall_9f

    .line 157
    .line 158
    move-object v4, p1

    .line 159
    goto :goto_a5

    .line 160
    :catchall_9f
    move-exception v0

    .line 161
    move-object p1, v0

    .line 162
    :try_start_a1
    invoke-static {p1, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto :goto_99

    .line 166
    :goto_a5
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p1
    :try_end_a9
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_33

    .line 170
    if-eqz p1, :cond_ad

    .line 171
    .line 172
    :goto_ab
    move-object v5, p2

    .line 173
    goto :goto_b7

    .line 174
    :cond_ad
    :try_start_ad
    sget-object p1, Li2/m;->L:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_af
    .catchall {:try_start_ad .. :try_end_af} :catchall_b1

    .line 175
    .line 176
    move-object v5, p1

    .line 177
    goto :goto_b7

    .line 178
    :catchall_b1
    move-exception v0

    .line 179
    move-object p1, v0

    .line 180
    :try_start_b3
    invoke-static {p1, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto :goto_ab

    .line 184
    :goto_b7
    const/4 v6, 0x1

    .line 185
    invoke-static/range {v4 .. v9}, Li2/p;->f(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;ZLjava/lang/String;IZ)V

    .line 186
    .line 187
    .line 188
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result p1
    :try_end_bf
    .catchall {:try_start_b3 .. :try_end_bf} :catchall_33

    .line 192
    if-eqz p1, :cond_c3

    .line 193
    .line 194
    :goto_c1
    move-object p1, p2

    .line 195
    goto :goto_cc

    .line 196
    :cond_c3
    :try_start_c3
    sget-object p1, Li2/m;->J:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_c5
    .catchall {:try_start_c3 .. :try_end_c5} :catchall_c6

    .line 197
    .line 198
    goto :goto_cc

    .line 199
    :catchall_c6
    move-exception v0

    .line 200
    move-object p1, v0

    .line 201
    :try_start_c8
    invoke-static {p1, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    goto :goto_c1

    .line 205
    :goto_cc
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 206
    .line 207
    .line 208
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p1
    :try_end_d3
    .catchall {:try_start_c8 .. :try_end_d3} :catchall_33

    .line 212
    if-eqz p1, :cond_d6

    .line 213
    .line 214
    goto :goto_de

    .line 215
    :cond_d6
    :try_start_d6
    sget-object p2, Li2/m;->K:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_d8
    .catchall {:try_start_d6 .. :try_end_d8} :catchall_d9

    .line 216
    .line 217
    goto :goto_de

    .line 218
    :catchall_d9
    move-exception v0

    .line 219
    move-object p1, v0

    .line 220
    :try_start_db
    invoke-static {p1, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :goto_de
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 224
    .line 225
    .line 226
    :goto_e1
    if-eqz v9, :cond_e6

    .line 227
    .line 228
    invoke-static {}, Li2/p;->l()V
    :try_end_e6
    .catchall {:try_start_db .. :try_end_e6} :catchall_33

    .line 229
    .line 230
    .line 231
    :cond_e6
    :goto_e6
    return-void

    .line 232
    :goto_e7
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    return-void
.end method
