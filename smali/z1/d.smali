###### Class z1.d (z1.d)
.class public final Lz1/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# static fields
.field public static final e:Ljava/util/HashMap;


# instance fields
.field public final a:Ljava/util/LinkedHashSet;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/ref/WeakReference;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz1/d;->e:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lz1/d;->a:Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lz1/d;->b:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lz1/d;->c:Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lz1/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 4

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
    goto :goto_32

    .line 8
    :cond_7
    :try_start_7
    new-instance v0, La2/i;

    .line 9
    .line 10
    const/16 v1, 0x19

    .line 11
    .line 12
    invoke-direct {v0, p1, v1, p0}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_33

    .line 19
    if-eqz p1, :cond_15

    .line 20
    .line 21
    goto :goto_32

    .line 22
    :cond_15
    :try_start_15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-ne p1, v1, :cond_29

    .line 35
    .line 36
    invoke-virtual {v0}, La2/i;->run()V

    .line 37
    .line 38
    .line 39
    goto :goto_32

    .line 40
    :catchall_27
    move-exception p1

    .line 41
    goto :goto_2f

    .line 42
    :cond_29
    iget-object p1, p0, Lz1/d;->b:Landroid/os/Handler;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_27

    .line 45
    .line 46
    .line 47
    goto :goto_32

    .line 48
    :goto_2f
    :try_start_2f
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    .line 49
    .line 50
    .line 51
    :goto_32
    return-void

    .line 52
    :catchall_33
    move-exception p1

    .line 53
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lz1/d;->a:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_a

    .line 8
    .line 9
    goto/16 :goto_141

    .line 10
    .line 11
    :cond_a
    :try_start_a
    move-object v1, p1

    .line 12
    check-cast v1, Landroid/widget/EditText;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lk7/g;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "this as java.lang.String).toLowerCase()"

    .line 35
    .line 36
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_2e

    .line 44
    .line 45
    goto/16 :goto_141

    .line 46
    .line 47
    :cond_2e
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_141

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/16 v3, 0x64

    .line 58
    .line 59
    if-le v2, v3, :cond_3e

    .line 60
    .line 61
    goto/16 :goto_141

    .line 62
    .line 63
    :cond_3e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    new-instance v0, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Lz1/b;->a(Landroid/view/View;)Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    sget-object v3, Lz1/c;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 76
    .line 77
    new-instance v3, Ljava/util/HashSet;

    .line 78
    .line 79
    invoke-static {}, Lz1/c;->a()Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    const/4 v4, 0x0

    .line 91
    move-object v5, v4

    .line 92
    :cond_5b
    :goto_5b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_13e

    .line 97
    .line 98
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    check-cast v6, Lz1/c;

    .line 103
    .line 104
    invoke-virtual {v6}, Lz1/c;->c()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    const-string v8, "r2"

    .line 109
    .line 110
    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v7
    :try_end_71
    .catchall {:try_start_a .. :try_end_71} :catchall_f1

    .line 114
    const-string v8, "compile(...)"

    .line 115
    .line 116
    if-eqz v7, :cond_8e

    .line 117
    .line 118
    :try_start_75
    const-string v7, "[^\\d.]"

    .line 119
    .line 120
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-static {v8, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    const-string v9, ""

    .line 128
    .line 129
    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    const-string v9, "replaceAll(...)"

    .line 138
    .line 139
    invoke-static {v9, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_8f

    .line 143
    :cond_8e
    move-object v7, v1

    .line 144
    :goto_8f
    invoke-static {v6}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v9
    :try_end_93
    .catchall {:try_start_75 .. :try_end_93} :catchall_f1

    .line 148
    if-eqz v9, :cond_97

    .line 149
    .line 150
    :goto_95
    move-object v9, v4

    .line 151
    goto :goto_9f

    .line 152
    :cond_97
    :try_start_97
    iget-object v9, v6, Lz1/c;->b:Ljava/lang/String;
    :try_end_99
    .catchall {:try_start_97 .. :try_end_99} :catchall_9a

    .line 153
    .line 154
    goto :goto_9f

    .line 155
    :catchall_9a
    move-exception v9

    .line 156
    :try_start_9b
    invoke-static {v9, v6}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto :goto_95

    .line 160
    :goto_9f
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 161
    .line 162
    .line 163
    move-result v9
    :try_end_a3
    .catchall {:try_start_9b .. :try_end_a3} :catchall_f1

    .line 164
    const-class v10, Lz1/b;

    .line 165
    .line 166
    const/4 v11, 0x0

    .line 167
    if-lez v9, :cond_de

    .line 168
    .line 169
    :try_start_a8
    invoke-static {v6}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v9
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_f1

    .line 173
    if-eqz v9, :cond_b0

    .line 174
    .line 175
    :goto_ae
    move-object v9, v4

    .line 176
    goto :goto_b8

    .line 177
    :cond_b0
    :try_start_b0
    iget-object v9, v6, Lz1/c;->b:Ljava/lang/String;
    :try_end_b2
    .catchall {:try_start_b0 .. :try_end_b2} :catchall_b3

    .line 178
    .line 179
    goto :goto_b8

    .line 180
    :catchall_b3
    move-exception v9

    .line 181
    :try_start_b4
    invoke-static {v9, v6}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    goto :goto_ae

    .line 185
    :goto_b8
    invoke-static {v10}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v12
    :try_end_bc
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_f1

    .line 189
    if-eqz v12, :cond_c0

    .line 190
    .line 191
    :goto_be
    move v8, v11

    .line 192
    goto :goto_da

    .line 193
    :cond_c0
    :try_start_c0
    const-string v12, "rule"

    .line 194
    .line 195
    invoke-static {v12, v9}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-static {v8, v9}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    .line 210
    .line 211
    .line 212
    move-result v8
    :try_end_d4
    .catchall {:try_start_c0 .. :try_end_d4} :catchall_d5

    .line 213
    goto :goto_da

    .line 214
    :catchall_d5
    move-exception v8

    .line 215
    :try_start_d6
    invoke-static {v8, v10}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    goto :goto_be

    .line 219
    :goto_da
    if-nez v8, :cond_de

    .line 220
    .line 221
    goto/16 :goto_5b

    .line 222
    .line 223
    :cond_de
    invoke-virtual {v6}, Lz1/c;->b()Ljava/util/ArrayList;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    invoke-static {v2, v8}, Lz1/b;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    if-eqz v8, :cond_f3

    .line 232
    .line 233
    invoke-virtual {v6}, Lz1/c;->c()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-static {v0, v6, v7}, Lz1/a;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_5b

    .line 241
    .line 242
    :catchall_f1
    move-exception p1

    .line 243
    goto :goto_142

    .line 244
    :cond_f3
    if-nez v5, :cond_12b

    .line 245
    .line 246
    invoke-static {v10}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v5
    :try_end_f9
    .catchall {:try_start_d6 .. :try_end_f9} :catchall_f1

    .line 250
    if-eqz v5, :cond_fd

    .line 251
    .line 252
    :goto_fb
    move-object v5, v4

    .line 253
    goto :goto_12b

    .line 254
    :cond_fd
    :try_start_fd
    new-instance v5, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-static {p1}, Lc2/e;->h(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    if-eqz v8, :cond_12b

    .line 264
    .line 265
    invoke-static {v8}, Lc2/e;->a(Landroid/view/View;)Ljava/util/ArrayList;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 270
    .line 271
    .line 272
    move-result v9

    .line 273
    :cond_110
    :goto_110
    if-ge v11, v9, :cond_12b

    .line 274
    .line 275
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v12

    .line 279
    add-int/lit8 v11, v11, 0x1

    .line 280
    .line 281
    check-cast v12, Landroid/view/View;

    .line 282
    .line 283
    if-eq p1, v12, :cond_110

    .line 284
    .line 285
    sget-object v13, Lz1/b;->a:Lz1/b;

    .line 286
    .line 287
    invoke-virtual {v13, v12}, Lz1/b;->b(Landroid/view/View;)Ljava/util/ArrayList;

    .line 288
    .line 289
    .line 290
    move-result-object v12

    .line 291
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_125
    .catchall {:try_start_fd .. :try_end_125} :catchall_126

    .line 292
    .line 293
    .line 294
    goto :goto_110

    .line 295
    :catchall_126
    move-exception v5

    .line 296
    :try_start_127
    invoke-static {v5, v10}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    goto :goto_fb

    .line 300
    :cond_12b
    :goto_12b
    invoke-virtual {v6}, Lz1/c;->b()Ljava/util/ArrayList;

    .line 301
    .line 302
    .line 303
    move-result-object v8

    .line 304
    invoke-static {v5, v8}, Lz1/b;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 305
    .line 306
    .line 307
    move-result v8

    .line 308
    if-eqz v8, :cond_5b

    .line 309
    .line 310
    invoke-virtual {v6}, Lz1/c;->c()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    invoke-static {v0, v6, v7}, Lz1/a;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    goto/16 :goto_5b

    .line 318
    .line 319
    :cond_13e
    invoke-static {v0}, Lx2/a;->p(Ljava/util/HashMap;)V
    :try_end_141
    .catchall {:try_start_127 .. :try_end_141} :catchall_f1

    .line 320
    .line 321
    .line 322
    :cond_141
    :goto_141
    return-void

    .line 323
    :goto_142
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    return-void
.end method

.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .registers 4

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
    goto :goto_18

    .line 8
    :cond_7
    if-eqz p1, :cond_f

    .line 9
    .line 10
    :try_start_9
    invoke-virtual {p0, p1}, Lz1/d;->a(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    goto :goto_f

    .line 14
    :catchall_d
    move-exception p1

    .line 15
    goto :goto_15

    .line 16
    :cond_f
    :goto_f
    if-eqz p2, :cond_18

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lz1/d;->a(Landroid/view/View;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_d

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :goto_15
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_18
    :goto_18
    return-void
.end method
