###### Class com.getcapacitor.b (com.getcapacitor.b)
.class public final synthetic Lcom/getcapacitor/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 6

    .line 1
    iput p5, p0, Lcom/getcapacitor/b;->a:I

    iput-object p1, p0, Lcom/getcapacitor/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/getcapacitor/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/getcapacitor/b;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/getcapacitor/b;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lo2/f;Ljava/lang/String;)V
    .registers 6

    .line 2
    const/4 v0, 0x3

    iput v0, p0, Lcom/getcapacitor/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/getcapacitor/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/getcapacitor/b;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/getcapacitor/b;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/getcapacitor/b;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    .line 1
    iget v0, p0, Lcom/getcapacitor/b;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    iget-object v3, p0, Lcom/getcapacitor/b;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/getcapacitor/b;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/getcapacitor/b;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/getcapacitor/b;->b:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    packed-switch v0, :pswitch_data_112

    .line 16
    .line 17
    .line 18
    check-cast v6, Lorg/json/JSONObject;

    .line 19
    .line 20
    check-cast v5, Ljava/lang/String;

    .line 21
    .line 22
    check-cast v4, Lo2/f;

    .line 23
    .line 24
    check-cast v3, Ljava/lang/String;

    .line 25
    .line 26
    const-class v0, Lo2/f;

    .line 27
    .line 28
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_22

    .line 33
    .line 34
    goto :goto_6b

    .line 35
    :cond_22
    :try_start_22
    const-string v1, "$buttonText"

    .line 36
    .line 37
    invoke-static {v1, v5}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_67

    .line 38
    .line 39
    .line 40
    :try_start_27
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lq2/g0;->m(Landroid/content/Context;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v9, "this as java.lang.String).toLowerCase()"

    .line 53
    .line 54
    invoke-static {v9, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v6}, Lo2/a;->c(Ljava/lang/String;Lorg/json/JSONObject;)[F

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget-object v4, v4, Lo2/f;->d:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v5, v4, v1}, Lo2/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-nez v6, :cond_45

    .line 68
    .line 69
    goto :goto_6b

    .line 70
    :cond_45
    new-array v4, v7, [[F

    .line 71
    .line 72
    aput-object v6, v4, v8

    .line 73
    .line 74
    filled-new-array {v1}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v2, v4, v1}, Ll2/d;->f(I[[F[Ljava/lang/String;)[Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-nez v1, :cond_54

    .line 83
    .line 84
    goto :goto_6b

    .line 85
    :cond_54
    aget-object v1, v1, v8

    .line 86
    .line 87
    invoke-static {v3, v1}, Lo2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v2, "other"

    .line 91
    .line 92
    invoke-static {v1, v2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_6b

    .line 97
    .line 98
    sget-object v2, Lo2/f;->e:Ljava/util/HashSet;

    .line 99
    .line 100
    invoke-static {v1, v5, v6}, Lo2/a;->j(Ljava/lang/String;Ljava/lang/String;[F)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_66} :catch_6b
    .catchall {:try_start_27 .. :try_end_66} :catchall_67

    .line 101
    .line 102
    .line 103
    goto :goto_6b

    .line 104
    :catchall_67
    move-exception v1

    .line 105
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :catch_6b
    :cond_6b
    :goto_6b
    return-void

    .line 109
    :pswitch_6c
    check-cast v6, Li2/m;

    .line 110
    .line 111
    check-cast v4, Ljava/lang/Runnable;

    .line 112
    .line 113
    check-cast v5, Li2/s;

    .line 114
    .line 115
    check-cast v3, Ljava/util/ArrayList;

    .line 116
    .line 117
    const-class v0, Li2/m;

    .line 118
    .line 119
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-eqz v9, :cond_7d

    .line 124
    .line 125
    goto :goto_ba

    .line 126
    :cond_7d
    :try_start_7d
    iget-object v9, v6, Li2/m;->n:Ljava/lang/Class;

    .line 127
    .line 128
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    new-array v11, v7, [Ljava/lang/Class;

    .line 133
    .line 134
    aput-object v9, v11, v8

    .line 135
    .line 136
    new-instance v9, Li2/k;

    .line 137
    .line 138
    new-array v12, v7, [Ljava/lang/Object;

    .line 139
    .line 140
    aput-object v4, v12, v8

    .line 141
    .line 142
    invoke-direct {v9, v6, v12, v7}, Li2/k;-><init>(Li2/h;Ljava/lang/Object;I)V

    .line 143
    .line 144
    .line 145
    invoke-static {v10, v11, v9}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v6, v5, v3}, Li2/m;->e(Li2/s;Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    if-eqz v3, :cond_ba

    .line 154
    .line 155
    iget-object v5, v6, Li2/m;->b:Ljava/lang/Class;

    .line 156
    .line 157
    iget-object v9, v6, Li2/m;->v:Ljava/lang/reflect/Method;

    .line 158
    .line 159
    invoke-static {v6}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v10
    :try_end_a2
    .catchall {:try_start_7d .. :try_end_a2} :catchall_b6

    .line 163
    if-eqz v10, :cond_a5

    .line 164
    .line 165
    goto :goto_ac

    .line 166
    :cond_a5
    :try_start_a5
    iget-object v1, v6, Li2/m;->a:Ljava/lang/Object;
    :try_end_a7
    .catchall {:try_start_a5 .. :try_end_a7} :catchall_a8

    .line 167
    .line 168
    goto :goto_ac

    .line 169
    :catchall_a8
    move-exception v10

    .line 170
    :try_start_a9
    invoke-static {v10, v6}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :goto_ac
    new-array v2, v2, [Ljava/lang/Object;

    .line 174
    .line 175
    aput-object v3, v2, v8

    .line 176
    .line 177
    aput-object v4, v2, v7

    .line 178
    .line 179
    invoke-static {v5, v9, v1, v2}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b5
    .catchall {:try_start_a9 .. :try_end_b5} :catchall_b6

    .line 180
    .line 181
    .line 182
    goto :goto_ba

    .line 183
    :catchall_b6
    move-exception v1

    .line 184
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_ba
    :goto_ba
    return-void

    .line 188
    :pswitch_bb
    check-cast v6, Li2/l;

    .line 189
    .line 190
    check-cast v4, Ljava/lang/Runnable;

    .line 191
    .line 192
    check-cast v5, Li2/s;

    .line 193
    .line 194
    check-cast v3, Ljava/util/ArrayList;

    .line 195
    .line 196
    const-class v0, Li2/l;

    .line 197
    .line 198
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    if-eqz v9, :cond_cc

    .line 203
    .line 204
    goto :goto_105

    .line 205
    :cond_cc
    :try_start_cc
    iget-object v9, v6, Li2/l;->e:Ljava/lang/Class;

    .line 206
    .line 207
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    new-array v11, v7, [Ljava/lang/Class;

    .line 212
    .line 213
    aput-object v9, v11, v8

    .line 214
    .line 215
    new-instance v9, Li2/k;

    .line 216
    .line 217
    invoke-direct {v9, v6, v4, v8}, Li2/k;-><init>(Li2/h;Ljava/lang/Object;I)V

    .line 218
    .line 219
    .line 220
    invoke-static {v10, v11, v9}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    iget-object v9, v6, Li2/l;->k:Li2/r;

    .line 225
    .line 226
    invoke-virtual {v9, v5, v3}, Li2/r;->a(Li2/s;Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    iget-object v5, v6, Li2/l;->b:Ljava/lang/Class;

    .line 231
    .line 232
    iget-object v9, v6, Li2/l;->i:Ljava/lang/reflect/Method;

    .line 233
    .line 234
    invoke-static {v6}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v10
    :try_end_ed
    .catchall {:try_start_cc .. :try_end_ed} :catchall_101

    .line 238
    if-eqz v10, :cond_f0

    .line 239
    .line 240
    goto :goto_f7

    .line 241
    :cond_f0
    :try_start_f0
    iget-object v1, v6, Li2/l;->a:Ljava/lang/Object;
    :try_end_f2
    .catchall {:try_start_f0 .. :try_end_f2} :catchall_f3

    .line 242
    .line 243
    goto :goto_f7

    .line 244
    :catchall_f3
    move-exception v10

    .line 245
    :try_start_f4
    invoke-static {v10, v6}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :goto_f7
    new-array v2, v2, [Ljava/lang/Object;

    .line 249
    .line 250
    aput-object v3, v2, v8

    .line 251
    .line 252
    aput-object v4, v2, v7

    .line 253
    .line 254
    invoke-static {v5, v9, v1, v2}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_100
    .catchall {:try_start_f4 .. :try_end_100} :catchall_101

    .line 255
    .line 256
    .line 257
    goto :goto_105

    .line 258
    :catchall_101
    move-exception v1

    .line 259
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    :goto_105
    return-void

    .line 263
    :pswitch_106
    check-cast v6, Lcom/getcapacitor/Bridge;

    .line 264
    .line 265
    check-cast v4, Lcom/getcapacitor/PluginHandle;

    .line 266
    .line 267
    check-cast v5, Ljava/lang/String;

    .line 268
    .line 269
    check-cast v3, Lcom/getcapacitor/PluginCall;

    .line 270
    .line 271
    invoke-static {v6, v4, v5, v3}, Lcom/getcapacitor/Bridge;->a(Lcom/getcapacitor/Bridge;Lcom/getcapacitor/PluginHandle;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_106
        :pswitch_bb
        :pswitch_6c
    .end packed-switch
.end method
