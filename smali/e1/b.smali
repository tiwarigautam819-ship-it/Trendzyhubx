###### Class e1.b (e1.b)
.class public final Le1/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Le1/b;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Le1/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .registers 11

    .line 1
    iget v0, p0, Le1/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_172

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Le1/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/fragment/app/h0;

    .line 9
    .line 10
    invoke-static {p1}, Lb/p;->access$ensureViewModelStore(Lb/p;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lb/p;->getLifecycle()Landroidx/lifecycle/o;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p0}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_14
    sget-object v0, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    .line 22
    .line 23
    if-ne p2, v0, :cond_27

    .line 24
    .line 25
    invoke-interface {p1}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, p0}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Le1/b;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Landroidx/lifecycle/l0;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/lifecycle/l0;->b()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v0, "Next event must be ON_CREATE, it was "

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p2

    .line 64
    :pswitch_3f
    new-instance p1, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Le1/b;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p1, [Landroidx/lifecycle/h;

    .line 72
    .line 73
    array-length p2, p1

    .line 74
    const/4 v0, 0x0

    .line 75
    const/4 v1, 0x0

    .line 76
    if-gtz p2, :cond_54

    .line 77
    .line 78
    array-length p2, p1

    .line 79
    if-gtz p2, :cond_51

    .line 80
    .line 81
    return-void

    .line 82
    :cond_51
    aget-object p1, p1, v1

    .line 83
    .line 84
    throw v0

    .line 85
    :cond_54
    aget-object p1, p1, v1

    .line 86
    .line 87
    throw v0

    .line 88
    :pswitch_57
    sget-object p1, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 89
    .line 90
    if-ne p2, p1, :cond_66

    .line 91
    .line 92
    iget-object p1, p0, Le1/b;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Landroidx/fragment/app/c0;

    .line 95
    .line 96
    iget-object p1, p1, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 97
    .line 98
    if-eqz p1, :cond_66

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 101
    .line 102
    .line 103
    :cond_66
    return-void

    .line 104
    :pswitch_67
    iget-object v0, p0, Le1/b;->b:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v0, Le1/g;

    .line 107
    .line 108
    sget-object v1, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    .line 109
    .line 110
    if-ne p2, v1, :cond_169

    .line 111
    .line 112
    invoke-interface {p1}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1, p0}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v0}, Le1/g;->getSavedStateRegistry()Le1/e;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const-string p2, "androidx.savedstate.Restarter"

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Le1/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-nez p1, :cond_84

    .line 130
    .line 131
    goto/16 :goto_160

    .line 132
    .line 133
    :cond_84
    const-string p2, "classes_to_restore"

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-eqz p1, :cond_161

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    const/4 v1, 0x0

    .line 146
    move v2, v1

    .line 147
    :cond_92
    :goto_92
    if-ge v2, p2, :cond_160

    .line 148
    .line 149
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    add-int/lit8 v2, v2, 0x1

    .line 154
    .line 155
    check-cast v3, Ljava/lang/String;

    .line 156
    .line 157
    const-string v4, "Class "

    .line 158
    .line 159
    :try_start_9e
    const-class v5, Le1/b;

    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-static {v3, v1, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    const-class v6, Le1/c;

    .line 170
    .line 171
    invoke-virtual {v5, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    const-string v6, "{\n                Class.\u2026class.java)\n            }"

    .line 176
    .line 177
    invoke-static {v6, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9e .. :try_end_b3} :catch_153

    .line 178
    .line 179
    .line 180
    const/4 v6, 0x0

    .line 181
    :try_start_b4
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 182
    .line 183
    .line 184
    move-result-object v4
    :try_end_b8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b4 .. :try_end_b8} :catch_137

    .line 185
    const/4 v5, 0x1

    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 187
    .line 188
    .line 189
    :try_start_bc
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    const-string v5, "{\n                constr\u2026wInstance()\n            }"

    .line 194
    .line 195
    invoke-static {v5, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    check-cast v4, Le1/c;
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c7} :catch_12a

    .line 199
    .line 200
    instance-of v3, v0, Landroidx/lifecycle/t0;

    .line 201
    .line 202
    if-eqz v3, :cond_122

    .line 203
    .line 204
    move-object v3, v0

    .line 205
    check-cast v3, Landroidx/lifecycle/t0;

    .line 206
    .line 207
    invoke-interface {v3}, Landroidx/lifecycle/t0;->getViewModelStore()Landroidx/lifecycle/s0;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-interface {v0}, Le1/g;->getSavedStateRegistry()Le1/e;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    iget-object v3, v3, Landroidx/lifecycle/s0;->a:Ljava/util/LinkedHashMap;

    .line 219
    .line 220
    new-instance v5, Ljava/util/HashSet;

    .line 221
    .line 222
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    check-cast v6, Ljava/util/Collection;

    .line 227
    .line 228
    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    :goto_ea
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    if-eqz v6, :cond_10c

    .line 240
    .line 241
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    check-cast v6, Ljava/lang/String;

    .line 246
    .line 247
    const-string v7, "key"

    .line 248
    .line 249
    invoke-static {v7, v6}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    check-cast v6, Landroidx/lifecycle/p0;

    .line 257
    .line 258
    invoke-static {v6}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    invoke-interface {v0}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    invoke-static {v6, v4, v7}, Landroidx/lifecycle/j0;->a(Landroidx/lifecycle/p0;Le1/e;Landroidx/lifecycle/o;)V

    .line 266
    .line 267
    .line 268
    goto :goto_ea

    .line 269
    :cond_10c
    new-instance v5, Ljava/util/HashSet;

    .line 270
    .line 271
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    check-cast v3, Ljava/util/Collection;

    .line 276
    .line 277
    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-nez v3, :cond_92

    .line 285
    .line 286
    invoke-virtual {v4}, Le1/e;->d()V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_92

    .line 290
    .line 291
    :cond_122
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 292
    .line 293
    const-string p2, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner"

    .line 294
    .line 295
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw p1

    .line 299
    :catch_12a
    move-exception p1

    .line 300
    new-instance p2, Ljava/lang/RuntimeException;

    .line 301
    .line 302
    const-string v0, "Failed to instantiate "

    .line 303
    .line 304
    invoke-static {v0, v3}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    .line 310
    .line 311
    throw p2

    .line 312
    :catch_137
    move-exception p1

    .line 313
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 314
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v1, " must have default constructor in order to be automatically recreated"

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    .line 338
    .line 339
    throw p2

    .line 340
    :catch_153
    move-exception p1

    .line 341
    new-instance p2, Ljava/lang/RuntimeException;

    .line 342
    .line 343
    const-string v0, " wasn\'t found"

    .line 344
    .line 345
    invoke-static {v4, v3, v0}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    .line 351
    .line 352
    throw p2

    .line 353
    :cond_160
    :goto_160
    return-void

    .line 354
    :cond_161
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 355
    .line 356
    const-string p2, "Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\""

    .line 357
    .line 358
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw p1

    .line 362
    :cond_169
    new-instance p1, Ljava/lang/AssertionError;

    .line 363
    .line 364
    const-string p2, "Next event must be ON_CREATE"

    .line 365
    .line 366
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    throw p1

    .line 370
    nop

    .line 371
    :pswitch_data_172
    .packed-switch 0x0
        :pswitch_67
        :pswitch_57
        :pswitch_3f
        :pswitch_14
    .end packed-switch
.end method
