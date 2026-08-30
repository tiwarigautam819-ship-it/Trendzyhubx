###### Class i2.i (i2.i)
.class public final Li2/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final a:Li2/s;

.field public final b:Ljava/lang/Runnable;

.field public final synthetic c:Li2/l;


# direct methods
.method public constructor <init>(Li2/l;Li2/s;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li2/i;->c:Li2/l;

    .line 5
    .line 6
    iput-object p2, p0, Li2/i;->a:Li2/s;

    .line 7
    .line 8
    iput-object p3, p0, Li2/i;->b:Ljava/lang/Runnable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 13

    .line 1
    const-string v1, "productId"

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
    goto/16 :goto_e5

    .line 10
    .line 11
    :cond_a
    :try_start_a
    const-string v0, "proxy"

    .line 12
    .line 13
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "method"

    .line 17
    .line 18
    invoke-static {p1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "onPurchaseHistoryResponse"

    .line 26
    .line 27
    invoke-static {p1, p2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_22

    .line 32
    .line 33
    goto/16 :goto_e5

    .line 34
    .line 35
    :cond_22
    const/4 p1, 0x0

    .line 36
    if-eqz p3, :cond_2f

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    invoke-static {p2, p3}, Ls6/f;->p(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    goto :goto_30

    .line 44
    :catchall_2b
    move-exception v0

    .line 45
    move-object p1, v0

    .line 46
    goto/16 :goto_e6

    .line 47
    .line 48
    :cond_2f
    move-object p2, p1

    .line 49
    :goto_30
    if-eqz p2, :cond_e5

    .line 50
    .line 51
    instance-of p3, p2, Ljava/util/List;

    .line 52
    .line 53
    if-nez p3, :cond_38

    .line 54
    .line 55
    goto/16 :goto_e5

    .line 56
    .line 57
    :cond_38
    new-instance v6, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    check-cast p2, Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    :catch_43
    :goto_43
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result p3
    :try_end_47
    .catchall {:try_start_a .. :try_end_47} :catchall_2b

    .line 72
    iget-object v5, p0, Li2/i;->a:Li2/s;

    .line 73
    .line 74
    const-class v8, Li2/l;

    .line 75
    .line 76
    iget-object v3, p0, Li2/i;->c:Li2/l;

    .line 77
    .line 78
    if-eqz p3, :cond_b6

    .line 79
    .line 80
    :try_start_4f
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p3
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_2b

    .line 84
    :try_start_53
    invoke-static {v8}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_43
    .catchall {:try_start_53 .. :try_end_57} :catchall_2b

    .line 88
    if-eqz v0, :cond_5b

    .line 89
    .line 90
    :goto_59
    move-object v2, p1

    .line 91
    goto :goto_64

    .line 92
    :cond_5b
    :try_start_5b
    iget-object v0, v3, Li2/l;->d:Ljava/lang/Class;
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_5f

    .line 93
    .line 94
    move-object v2, v0

    .line 95
    goto :goto_64

    .line 96
    :catchall_5f
    move-exception v0

    .line 97
    :try_start_60
    invoke-static {v0, v8}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_59

    .line 101
    :goto_64
    invoke-static {v8}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_68} :catch_43
    .catchall {:try_start_60 .. :try_end_68} :catchall_2b

    .line 105
    if-eqz v0, :cond_6c

    .line 106
    .line 107
    :goto_6a
    move-object v0, p1

    .line 108
    goto :goto_74

    .line 109
    :cond_6c
    :try_start_6c
    iget-object v0, v3, Li2/l;->h:Ljava/lang/reflect/Method;
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_6f

    .line 110
    .line 111
    goto :goto_74

    .line 112
    :catchall_6f
    move-exception v0

    .line 113
    :try_start_70
    invoke-static {v0, v8}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_6a

    .line 117
    :goto_74
    const/4 v3, 0x0

    .line 118
    new-array v3, v3, [Ljava/lang/Object;

    .line 119
    .line 120
    invoke-static {v2, v0, p3, v3}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    instance-of v0, p3, Ljava/lang/String;

    .line 125
    .line 126
    if-eqz v0, :cond_82

    .line 127
    .line 128
    check-cast p3, Ljava/lang/String;

    .line 129
    .line 130
    goto :goto_83

    .line 131
    :cond_82
    move-object p3, p1

    .line 132
    :goto_83
    if-nez p3, :cond_86

    .line 133
    .line 134
    goto :goto_43

    .line 135
    :cond_86
    new-instance v0, Lorg/json/JSONObject;

    .line 136
    .line 137
    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result p3

    .line 144
    if-nez p3, :cond_92

    .line 145
    .line 146
    goto :goto_43

    .line 147
    :cond_92
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    const-string v2, "skuID"

    .line 152
    .line 153
    invoke-static {v2, p3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    sget-object v2, Li2/s;->b:Li2/s;

    .line 160
    .line 161
    if-ne v5, v2, :cond_ac

    .line 162
    .line 163
    sget-object v2, Li2/l;->l:Li2/p;

    .line 164
    .line 165
    invoke-static {}, Li2/p;->g()Ljava/util/concurrent/ConcurrentHashMap;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v2, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    goto :goto_43

    .line 173
    :cond_ac
    sget-object v2, Li2/l;->l:Li2/p;

    .line 174
    .line 175
    invoke-static {}, Li2/p;->j()Ljava/util/concurrent/ConcurrentHashMap;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v2, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_b5} :catch_43
    .catchall {:try_start_70 .. :try_end_b5} :catchall_2b

    .line 180
    .line 181
    .line 182
    goto :goto_43

    .line 183
    :cond_b6
    :try_start_b6
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result p1
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_2b

    .line 187
    iget-object v4, p0, Li2/i;->b:Ljava/lang/Runnable;

    .line 188
    .line 189
    if-nez p1, :cond_e2

    .line 190
    .line 191
    :try_start_be
    invoke-static {v8}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result p1
    :try_end_c2
    .catchall {:try_start_be .. :try_end_c2} :catchall_2b

    .line 195
    if-eqz p1, :cond_c5

    .line 196
    .line 197
    goto :goto_e5

    .line 198
    :cond_c5
    :try_start_c5
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p1
    :try_end_c9
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_dc

    .line 202
    if-eqz p1, :cond_cc

    .line 203
    .line 204
    goto :goto_e5

    .line 205
    :cond_cc
    :try_start_cc
    new-instance v2, Lcom/getcapacitor/b;

    .line 206
    .line 207
    const/4 v7, 0x1

    .line 208
    invoke-direct/range {v2 .. v7}, Lcom/getcapacitor/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v2}, Li2/l;->c(Ljava/lang/Runnable;)V
    :try_end_d5
    .catchall {:try_start_cc .. :try_end_d5} :catchall_d6

    .line 212
    .line 213
    .line 214
    goto :goto_e5

    .line 215
    :catchall_d6
    move-exception v0

    .line 216
    move-object p1, v0

    .line 217
    :try_start_d8
    invoke-static {p1, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_dc

    .line 218
    .line 219
    .line 220
    goto :goto_e5

    .line 221
    :catchall_dc
    move-exception v0

    .line 222
    move-object p1, v0

    .line 223
    :try_start_de
    invoke-static {p1, v8}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    goto :goto_e5

    .line 227
    :cond_e2
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_e5
    .catchall {:try_start_de .. :try_end_e5} :catchall_2b

    .line 228
    .line 229
    .line 230
    :cond_e5
    :goto_e5
    return-void

    .line 231
    :goto_e6
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    return-void
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
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
    invoke-virtual {p0, p1, p2, p3}, Li2/i;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lr6/j;->a:Lr6/j;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    .line 13
    .line 14
    return-object p1

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-object v1
.end method
