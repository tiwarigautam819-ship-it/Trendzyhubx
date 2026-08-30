###### Class y1.k (y1.k)
.class public final Ly1/k;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final c:Ljava/lang/String;

.field public static d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public static final e:Ljava/lang/Object;

.field public static f:Ljava/lang/String;

.field public static g:Z


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ly1/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Ly1/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    const-string v0, "com.facebook.appevents.AppEventsLoggerImpl"

    .line 10
    .line 11
    :cond_a
    sput-object v0, Ly1/k;->c:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Ly1/k;->e:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 16
    invoke-static {p1}, Lq2/g0;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ly1/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lq2/g;->k()V

    .line 3
    iput-object p1, p0, Ly1/k;->a:Ljava/lang/String;

    .line 4
    sget-object p1, Lx1/a;->l:Ljava/util/Date;

    invoke-static {}, Lh8/b;->f()Lx1/a;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p1, Lx1/a;->a:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_35

    if-eqz p2, :cond_27

    .line 6
    iget-object v0, p1, Lx1/a;->h:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 8
    :cond_27
    new-instance p2, Ly1/b;

    .line 9
    iget-object p1, p1, Lx1/a;->e:Ljava/lang/String;

    .line 10
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ly1/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iput-object p2, p0, Ly1/k;->b:Ly1/b;

    goto :goto_46

    :cond_35
    if-nez p2, :cond_3e

    .line 12
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 13
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    move-result-object p2

    .line 14
    :cond_3e
    new-instance p1, Ly1/b;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Ly1/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Ly1/k;->b:Ly1/b;

    .line 15
    :goto_46
    invoke-static {}, Lx1/w;->q()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .registers 3

    .line 1
    const-class v0, Ly1/k;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    sget-object v0, Ly1/k;->f:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    .line 12
    .line 13
    return-object v0

    .line 14
    :catchall_d
    move-exception v1

    .line 15
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method

.method public static final synthetic b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 3

    .line 1
    const-class v0, Ly1/k;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    sget-object v0, Ly1/k;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    .line 12
    .line 13
    return-object v0

    .line 14
    :catchall_d
    move-exception v1

    .line 15
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method

.method public static final synthetic c()Ljava/lang/Object;
    .registers 3

    .line 1
    const-class v0, Ly1/k;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    sget-object v0, Ly1/k;->e:Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    .line 12
    .line 13
    return-object v0

    .line 14
    :catchall_d
    move-exception v1

    .line 15
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method

.method public static synthetic f(Ly1/k;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    .registers 15

    .line 1
    const-class v1, Ly1/k;

    .line 2
    .line 3
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    const/4 v8, 0x0

    .line 11
    move-object v2, p0

    .line 12
    move-object v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move-object v5, p3

    .line 15
    move v6, p4

    .line 16
    move-object v7, p5

    .line 17
    :try_start_10
    invoke-virtual/range {v2 .. v8}, Ly1/k;->e(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;Ly1/o;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception v0

    .line 22
    move-object p0, v0

    .line 23
    invoke-static {p0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

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
    invoke-static {}, Lk2/d;->b()Ljava/util/UUID;

    .line 9
    .line 10
    .line 11
    move-result-object v6
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_17

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    move-object v1, p0

    .line 15
    move-object v2, p1

    .line 16
    move-object v4, p2

    .line 17
    :try_start_10
    invoke-static/range {v1 .. v6}, Ly1/k;->f(Ly1/k;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception v0

    .line 22
    :goto_15
    move-object p1, v0

    .line 23
    goto :goto_1a

    .line 24
    :catchall_17
    move-exception v0

    .line 25
    move-object v1, p0

    .line 26
    goto :goto_15

    .line 27
    :goto_1a
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;Ly1/o;)V
    .registers 20

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move/from16 v5, p4

    .line 4
    .line 5
    move-object/from16 v1, p6

    .line 6
    .line 7
    const-string v2, "fb_mobile_purchase"

    .line 8
    .line 9
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_10

    .line 14
    .line 15
    goto/16 :goto_1c6

    .line 16
    .line 17
    :cond_10
    if-eqz p1, :cond_1c6

    .line 18
    .line 19
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_1a

    .line 24
    .line 25
    goto/16 :goto_1c6

    .line 26
    .line 27
    :cond_1a
    const/4 v9, 0x0

    .line 28
    if-nez v5, :cond_11d

    .line 29
    .line 30
    invoke-static {}, Lk2/k;->d()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_11d

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_3a

    .line 40
    const-string v4, "StartTrial"

    .line 41
    .line 42
    const-string v6, "Subscribe"

    .line 43
    .line 44
    if-nez v3, :cond_3e

    .line 45
    .line 46
    :try_start_2d
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_3e

    .line 51
    .line 52
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_11d

    .line 57
    .line 58
    goto :goto_3e

    .line 59
    :catchall_3a
    move-exception v0

    .line 60
    move-object p1, v0

    .line 61
    goto/16 :goto_1c3

    .line 62
    .line 63
    :cond_3e
    :goto_3e
    sget-object v3, Ly1/k;->c:Ljava/lang/String;

    .line 64
    .line 65
    const-string v7, "You are logging purchase events while auto-logging of in-app purchase is enabled in the SDK. Make sure you don\'t log duplicate events"

    .line 66
    .line 67
    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    sget-object v3, Lq2/o;->H:Lq2/o;

    .line 71
    .line 72
    invoke-static {v3}, Lq2/q;->b(Lq2/o;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_53

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_67

    .line 83
    .line 84
    :cond_53
    sget-object v2, Lq2/o;->I:Lq2/o;

    .line 85
    .line 86
    invoke-static {v2}, Lq2/q;->b(Lq2/o;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_11d

    .line 91
    .line 92
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_67

    .line 97
    .line 98
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_11d

    .line 103
    .line 104
    :cond_67
    sget-object v2, Li2/n;->a:Ljava/util/List;

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    if-eqz p2, :cond_6e

    .line 108
    .line 109
    move-object v3, p2

    .line 110
    goto :goto_a8

    .line 111
    :cond_6e
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v3}, Lq2/w;->b(Ljava/lang/String;)Lq2/t;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    if-eqz v3, :cond_7b

    .line 120
    .line 121
    iget-object v4, v3, Lq2/t;->u:Ljava/util/List;

    .line 122
    .line 123
    goto :goto_7c

    .line 124
    :cond_7b
    move-object v4, v2

    .line 125
    :goto_7c
    if-eqz v4, :cond_8a

    .line 126
    .line 127
    iget-object v4, v3, Lq2/t;->u:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_87

    .line 134
    .line 135
    goto :goto_8a

    .line 136
    :cond_87
    iget-object v3, v3, Lq2/t;->u:Ljava/util/List;

    .line 137
    .line 138
    goto :goto_8c

    .line 139
    :cond_8a
    :goto_8a
    sget-object v3, Li2/n;->b:Ljava/util/List;

    .line 140
    .line 141
    :goto_8c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    :catch_90
    :cond_90
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_a7

    .line 150
    .line 151
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Ljava/lang/String;
    :try_end_9c
    .catchall {:try_start_2d .. :try_end_9c} :catchall_3a

    .line 156
    .line 157
    if-eqz v0, :cond_90

    .line 158
    .line 159
    :try_start_9e
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 160
    .line 161
    .line 162
    move-result-wide v6

    .line 163
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 164
    .line 165
    .line 166
    move-result-object v3
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a6} :catch_90
    .catchall {:try_start_9e .. :try_end_a6} :catchall_3a

    .line 167
    goto :goto_a8

    .line 168
    :cond_a7
    move-object v3, v2

    .line 169
    :goto_a8
    :try_start_a8
    sget-object v4, Li2/n;->a:Ljava/util/List;

    .line 170
    .line 171
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-static {v4}, Lq2/w;->b(Ljava/lang/String;)Lq2/t;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    if-eqz v4, :cond_b7

    .line 180
    .line 181
    iget-object v6, v4, Lq2/t;->t:Ljava/util/List;

    .line 182
    .line 183
    goto :goto_b8

    .line 184
    :cond_b7
    move-object v6, v2

    .line 185
    :goto_b8
    if-eqz v6, :cond_c6

    .line 186
    .line 187
    iget-object v6, v4, Lq2/t;->t:Ljava/util/List;

    .line 188
    .line 189
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-eqz v6, :cond_c3

    .line 194
    .line 195
    goto :goto_c6

    .line 196
    :cond_c3
    iget-object v4, v4, Lq2/t;->t:Ljava/util/List;

    .line 197
    .line 198
    goto :goto_c8

    .line 199
    :cond_c6
    :goto_c6
    sget-object v4, Li2/n;->a:Ljava/util/List;

    .line 200
    .line 201
    :goto_c8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    :catch_cc
    :cond_cc
    :goto_cc
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    if-eqz v6, :cond_ed

    .line 210
    .line 211
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    check-cast v6, Ljava/lang/String;
    :try_end_d8
    .catchall {:try_start_a8 .. :try_end_d8} :catchall_3a

    .line 216
    .line 217
    if-eqz v0, :cond_df

    .line 218
    .line 219
    :try_start_da
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    goto :goto_e0

    .line 224
    :cond_df
    move-object v6, v2

    .line 225
    :goto_e0
    if-eqz v6, :cond_cc

    .line 226
    .line 227
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-nez v7, :cond_e9

    .line 232
    .line 233
    goto :goto_cc

    .line 234
    :cond_e9
    invoke-static {v6}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 235
    .line 236
    .line 237
    move-result-object v2
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_ed} :catch_cc
    .catchall {:try_start_da .. :try_end_ed} :catchall_3a

    .line 238
    :cond_ed
    if-eqz v3, :cond_11d

    .line 239
    .line 240
    if-eqz v2, :cond_11d

    .line 241
    .line 242
    :try_start_f1
    new-instance v4, Li2/a;

    .line 243
    .line 244
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 245
    .line 246
    .line 247
    move-result-wide v6

    .line 248
    invoke-direct {v4, p1, v6, v7, v2}, Li2/a;-><init>(Ljava/lang/String;DLjava/util/Currency;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v4}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 256
    .line 257
    .line 258
    move-result-wide v3

    .line 259
    new-instance v6, Lr6/d;

    .line 260
    .line 261
    invoke-direct {v6, v0, v1}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-static {v6}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    invoke-static {v2, v3, v4, v9, v6}, Li2/q;->c(Ljava/util/List;JZLjava/util/List;)Landroid/os/Bundle;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-static {v2, v0, v1}, Li2/n;->a(Landroid/os/Bundle;Landroid/os/Bundle;Ly1/o;)Lr6/d;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    iget-object v1, v0, Lr6/d;->a:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v1, Landroid/os/Bundle;

    .line 279
    .line 280
    iget-object v0, v0, Lr6/d;->b:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v0, Ly1/o;

    .line 283
    .line 284
    move-object v2, v0

    .line 285
    goto :goto_11f

    .line 286
    :cond_11d
    move-object v2, v1

    .line 287
    move-object v1, v0

    .line 288
    :goto_11f
    const-string v0, "app_events_killswitch"

    .line 289
    .line 290
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-static {v0, v3, v9}, Lq2/s;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 295
    .line 296
    .line 297
    move-result v0
    :try_end_129
    .catchall {:try_start_f1 .. :try_end_129} :catchall_3a

    .line 298
    const/4 v10, 0x1

    .line 299
    const-string v11, "AppEvents"

    .line 300
    .line 301
    sget-object v12, Lx1/e0;->d:Lx1/e0;

    .line 302
    .line 303
    if-eqz v0, :cond_13d

    .line 304
    .line 305
    :try_start_130
    sget-object v0, Lq2/z;->c:Lo3/a;

    .line 306
    .line 307
    const-string v0, "KillSwitch is enabled and fail to log app event: %s"

    .line 308
    .line 309
    new-array v1, v10, [Ljava/lang/Object;

    .line 310
    .line 311
    aput-object p1, v1, v9

    .line 312
    .line 313
    invoke-static {v12, v11, v0, v1}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_1c6

    .line 317
    .line 318
    :cond_13d
    sget-object v0, Lj2/b;->a:Lj2/b;

    .line 319
    .line 320
    const-class v3, Lj2/b;

    .line 321
    .line 322
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v0
    :try_end_145
    .catchall {:try_start_130 .. :try_end_145} :catchall_3a

    .line 326
    if-eqz v0, :cond_149

    .line 327
    .line 328
    :goto_147
    move v0, v9

    .line 329
    goto :goto_15a

    .line 330
    :cond_149
    :try_start_149
    sget-boolean v0, Lj2/b;->b:Z

    .line 331
    .line 332
    if-nez v0, :cond_14e

    .line 333
    .line 334
    goto :goto_147

    .line 335
    :cond_14e
    sget-object v0, Lj2/b;->c:Ljava/util/HashSet;

    .line 336
    .line 337
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v0
    :try_end_154
    .catchall {:try_start_149 .. :try_end_154} :catchall_155

    .line 341
    goto :goto_15a

    .line 342
    :catchall_155
    move-exception v0

    .line 343
    :try_start_156
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    goto :goto_147

    .line 347
    :goto_15a
    if-eqz v0, :cond_15e

    .line 348
    .line 349
    goto/16 :goto_1c6

    .line 350
    .line 351
    :cond_15e
    invoke-static {v1, v2, v5}, Lx1/w;->g(Landroid/os/Bundle;Ly1/o;Z)Lr6/d;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    iget-object v1, v0, Lr6/d;->a:Ljava/lang/Object;

    .line 356
    .line 357
    move-object v4, v1

    .line 358
    check-cast v4, Landroid/os/Bundle;

    .line 359
    .line 360
    iget-object v0, v0, Lr6/d;->b:Ljava/lang/Object;

    .line 361
    .line 362
    move-object v8, v0

    .line 363
    check-cast v8, Ly1/o;
    :try_end_16c
    .catchall {:try_start_156 .. :try_end_16c} :catchall_3a

    .line 364
    .line 365
    :try_start_16c
    sget-object v0, Lj2/f;->a:Lj2/f;

    .line 366
    .line 367
    invoke-virtual {v0, v4}, Lj2/f;->c(Landroid/os/Bundle;)Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-nez v0, :cond_17e

    .line 372
    .line 373
    invoke-static {v4, p1}, Lj2/h;->b(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    goto :goto_17e

    .line 377
    :catch_178
    move-exception v0

    .line 378
    move-object p1, v0

    .line 379
    goto :goto_1a3

    .line 380
    :catch_17b
    move-exception v0

    .line 381
    move-object p1, v0

    .line 382
    goto :goto_1b3

    .line 383
    :cond_17e
    :goto_17e
    invoke-static {v4}, Lj2/a;->a(Landroid/os/Bundle;)V

    .line 384
    .line 385
    .line 386
    invoke-static {v4, p1}, Lj2/d;->e(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-static {v4}, Lj2/i;->d(Landroid/os/Bundle;)V

    .line 390
    .line 391
    .line 392
    invoke-static {v4}, Lj2/f;->b(Landroid/os/Bundle;)V

    .line 393
    .line 394
    .line 395
    new-instance v0, Ly1/e;

    .line 396
    .line 397
    iget-object v1, p0, Ly1/k;->a:Ljava/lang/String;

    .line 398
    .line 399
    sget v2, Lk2/d;->k:I

    .line 400
    .line 401
    if-nez v2, :cond_198

    .line 402
    .line 403
    move v6, v10

    .line 404
    :goto_193
    move-object v2, p1

    .line 405
    move-object v3, p2

    .line 406
    move-object/from16 v7, p5

    .line 407
    .line 408
    goto :goto_19a

    .line 409
    :cond_198
    move v6, v9

    .line 410
    goto :goto_193

    .line 411
    :goto_19a
    invoke-direct/range {v0 .. v8}, Ly1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;Ly1/o;)V

    .line 412
    .line 413
    .line 414
    iget-object p1, p0, Ly1/k;->b:Ly1/b;

    .line 415
    .line 416
    invoke-static {v0, p1}, Lx1/w;->c(Ly1/e;Ly1/b;)V
    :try_end_1a2
    .catch Lorg/json/JSONException; {:try_start_16c .. :try_end_1a2} :catch_17b
    .catch Lx1/l; {:try_start_16c .. :try_end_1a2} :catch_178
    .catchall {:try_start_16c .. :try_end_1a2} :catchall_3a

    .line 417
    .line 418
    .line 419
    goto :goto_1c6

    .line 420
    :goto_1a3
    :try_start_1a3
    sget-object v0, Lq2/z;->c:Lo3/a;

    .line 421
    .line 422
    const-string v0, "Invalid app event: %s"

    .line 423
    .line 424
    invoke-virtual {p1}, Lx1/l;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    new-array v1, v10, [Ljava/lang/Object;

    .line 429
    .line 430
    aput-object p1, v1, v9

    .line 431
    .line 432
    invoke-static {v12, v11, v0, v1}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    goto :goto_1c6

    .line 436
    :goto_1b3
    sget-object v0, Lq2/z;->c:Lo3/a;

    .line 437
    .line 438
    const-string v0, "JSON encoding for app event failed: \'%s\'"

    .line 439
    .line 440
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    new-array v1, v10, [Ljava/lang/Object;

    .line 445
    .line 446
    aput-object p1, v1, v9

    .line 447
    .line 448
    invoke-static {v12, v11, v0, v1}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1c2
    .catchall {:try_start_1a3 .. :try_end_1c2} :catchall_3a

    .line 449
    .line 450
    .line 451
    goto :goto_1c6

    .line 452
    :goto_1c3
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    :cond_1c6
    :goto_1c6
    return-void
.end method

.method public final g(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 10

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
    invoke-static {}, Lk2/d;->b()Ljava/util/UUID;

    .line 9
    .line 10
    .line 11
    move-result-object v6
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_17

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    move-object v1, p0

    .line 15
    move-object v4, p1

    .line 16
    move-object v2, p2

    .line 17
    :try_start_10
    invoke-static/range {v1 .. v6}, Ly1/k;->f(Ly1/k;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception v0

    .line 22
    :goto_15
    move-object p1, v0

    .line 23
    goto :goto_1a

    .line 24
    :catchall_17
    move-exception v0

    .line 25
    move-object v1, p0

    .line 26
    goto :goto_15

    .line 27
    :goto_1a
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
