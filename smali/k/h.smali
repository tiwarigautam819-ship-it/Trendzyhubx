###### Class k.h (k.h)
.class public final Lk/h;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public C:Landroid/content/res/ColorStateList;

.field public D:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic E:Lk/i;

.field public final a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ll/q;


# direct methods
.method public constructor <init>(Lk/i;Landroid/view/Menu;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk/h;->E:Lk/i;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lk/h;->C:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iput-object p1, p0, Lk/h;->D:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    iput-object p2, p0, Lk/h;->a:Landroid/view/Menu;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lk/h;->b:I

    .line 15
    .line 16
    iput p1, p0, Lk/h;->c:I

    .line 17
    .line 18
    iput p1, p0, Lk/h;->d:I

    .line 19
    .line 20
    iput p1, p0, Lk/h;->e:I

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lk/h;->f:Z

    .line 24
    .line 25
    iput-boolean p1, p0, Lk/h;->g:Z

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lk/h;->E:Lk/i;

    .line 2
    .line 3
    iget-object v0, v0, Lk/i;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 26
    return-object p1

    .line 27
    :catch_1a
    move-exception p2

    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "Cannot instantiate class: "

    .line 31
    .line 32
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p3, "SupportMenuInflater"

    .line 43
    .line 44
    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method public final b(Landroid/view/MenuItem;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lk/h;->E:Lk/i;

    .line 2
    .line 3
    iget-object v1, v0, Lk/i;->c:Landroid/content/Context;

    .line 4
    .line 5
    iget-boolean v2, p0, Lk/h;->s:Z

    .line 6
    .line 7
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-boolean v3, p0, Lk/h;->t:Z

    .line 12
    .line 13
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-boolean v3, p0, Lk/h;->u:Z

    .line 18
    .line 19
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget v3, p0, Lk/h;->r:I

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    if-lt v3, v5, :cond_1e

    .line 28
    .line 29
    move v3, v5

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v3, v4

    .line 32
    :goto_1f
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lk/h;->l:Ljava/lang/CharSequence;

    .line 37
    .line 38
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget v3, p0, Lk/h;->m:I

    .line 43
    .line 44
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 45
    .line 46
    .line 47
    iget v2, p0, Lk/h;->v:I

    .line 48
    .line 49
    if-ltz v2, :cond_35

    .line 50
    .line 51
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 52
    .line 53
    .line 54
    :cond_35
    iget-object v2, p0, Lk/h;->y:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v2, :cond_90

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/content/Context;->isRestricted()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_88

    .line 63
    .line 64
    new-instance v2, Lk/g;

    .line 65
    .line 66
    iget-object v3, v0, Lk/i;->d:Ljava/lang/Object;

    .line 67
    .line 68
    if-nez v3, :cond_4b

    .line 69
    .line 70
    invoke-static {v1}, Lk/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, v0, Lk/i;->d:Ljava/lang/Object;

    .line 75
    .line 76
    :cond_4b
    iget-object v1, v0, Lk/i;->d:Ljava/lang/Object;

    .line 77
    .line 78
    iget-object v3, p0, Lk/h;->y:Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v1, v2, Lk/g;->a:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :try_start_58
    sget-object v6, Lk/g;->c:[Ljava/lang/Class;

    .line 90
    .line 91
    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    iput-object v6, v2, Lk/g;->b:Ljava/lang/reflect/Method;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_60} :catch_64

    .line 96
    .line 97
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 98
    .line 99
    .line 100
    goto :goto_90

    .line 101
    :catch_64
    move-exception p1

    .line 102
    new-instance v0, Landroid/view/InflateException;

    .line 103
    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v4, "Couldn\'t resolve menu item onClick handler "

    .line 107
    .line 108
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v3, " in class "

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :cond_88
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 138
    .line 139
    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    .line 140
    .line 141
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p1

    .line 145
    :cond_90
    :goto_90
    iget v1, p0, Lk/h;->r:I

    .line 146
    .line 147
    const/4 v2, 0x2

    .line 148
    if-lt v1, v2, :cond_da

    .line 149
    .line 150
    instance-of v1, p1, Ll/p;

    .line 151
    .line 152
    if-eqz v1, :cond_a5

    .line 153
    .line 154
    move-object v1, p1

    .line 155
    check-cast v1, Ll/p;

    .line 156
    .line 157
    iget v2, v1, Ll/p;->x:I

    .line 158
    .line 159
    and-int/lit8 v2, v2, -0x5

    .line 160
    .line 161
    or-int/lit8 v2, v2, 0x4

    .line 162
    .line 163
    iput v2, v1, Ll/p;->x:I

    .line 164
    .line 165
    goto :goto_da

    .line 166
    :cond_a5
    instance-of v1, p1, Ll/u;

    .line 167
    .line 168
    if-eqz v1, :cond_da

    .line 169
    .line 170
    move-object v1, p1

    .line 171
    check-cast v1, Ll/u;

    .line 172
    .line 173
    iget-object v2, v1, Ll/u;->c:Le0/a;

    .line 174
    .line 175
    :try_start_ae
    iget-object v3, v1, Ll/u;->d:Ljava/lang/reflect/Method;

    .line 176
    .line 177
    if-nez v3, :cond_c7

    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    const-string v6, "setExclusiveCheckable"

    .line 184
    .line 185
    new-array v7, v5, [Ljava/lang/Class;

    .line 186
    .line 187
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 188
    .line 189
    aput-object v8, v7, v4

    .line 190
    .line 191
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    iput-object v3, v1, Ll/u;->d:Ljava/lang/reflect/Method;

    .line 196
    .line 197
    goto :goto_c7

    .line 198
    :catch_c5
    move-exception v1

    .line 199
    goto :goto_d3

    .line 200
    :cond_c7
    :goto_c7
    iget-object v1, v1, Ll/u;->d:Ljava/lang/reflect/Method;

    .line 201
    .line 202
    new-array v3, v5, [Ljava/lang/Object;

    .line 203
    .line 204
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 205
    .line 206
    aput-object v6, v3, v4

    .line 207
    .line 208
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_d2} :catch_c5

    .line 209
    .line 210
    .line 211
    goto :goto_da

    .line 212
    :goto_d3
    const-string v2, "MenuItemWrapper"

    .line 213
    .line 214
    const-string v3, "Error while calling setExclusiveCheckable"

    .line 215
    .line 216
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .line 218
    .line 219
    :cond_da
    :goto_da
    iget-object v1, p0, Lk/h;->x:Ljava/lang/String;

    .line 220
    .line 221
    if-eqz v1, :cond_ec

    .line 222
    .line 223
    sget-object v2, Lk/i;->e:[Ljava/lang/Class;

    .line 224
    .line 225
    iget-object v0, v0, Lk/i;->a:[Ljava/lang/Object;

    .line 226
    .line 227
    invoke-virtual {p0, v1, v2, v0}, Lk/h;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Landroid/view/View;

    .line 232
    .line 233
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 234
    .line 235
    .line 236
    move v4, v5

    .line 237
    :cond_ec
    iget v0, p0, Lk/h;->w:I

    .line 238
    .line 239
    if-lez v0, :cond_fd

    .line 240
    .line 241
    if-nez v4, :cond_f6

    .line 242
    .line 243
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 244
    .line 245
    .line 246
    goto :goto_fd

    .line 247
    :cond_f6
    const-string v0, "SupportMenuInflater"

    .line 248
    .line 249
    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 250
    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    :cond_fd
    :goto_fd
    iget-object v0, p0, Lk/h;->z:Ll/q;

    .line 255
    .line 256
    if-eqz v0, :cond_113

    .line 257
    .line 258
    instance-of v1, p1, Le0/a;

    .line 259
    .line 260
    if-eqz v1, :cond_10c

    .line 261
    .line 262
    move-object v1, p1

    .line 263
    check-cast v1, Le0/a;

    .line 264
    .line 265
    invoke-interface {v1, v0}, Le0/a;->b(Ll/q;)Le0/a;

    .line 266
    .line 267
    .line 268
    goto :goto_113

    .line 269
    :cond_10c
    const-string v0, "MenuItemCompat"

    .line 270
    .line 271
    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    .line 272
    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    :cond_113
    :goto_113
    iget-object v0, p0, Lk/h;->A:Ljava/lang/CharSequence;

    .line 277
    .line 278
    instance-of v1, p1, Le0/a;

    .line 279
    .line 280
    const/16 v2, 0x1a

    .line 281
    .line 282
    if-eqz v1, :cond_122

    .line 283
    .line 284
    move-object v3, p1

    .line 285
    check-cast v3, Le0/a;

    .line 286
    .line 287
    invoke-interface {v3, v0}, Le0/a;->setContentDescription(Ljava/lang/CharSequence;)Le0/a;

    .line 288
    .line 289
    .line 290
    goto :goto_129

    .line 291
    :cond_122
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 292
    .line 293
    if-lt v3, v2, :cond_129

    .line 294
    .line 295
    invoke-static {p1, v0}, Ld0/a;->c(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 296
    .line 297
    .line 298
    :cond_129
    :goto_129
    iget-object v0, p0, Lk/h;->B:Ljava/lang/CharSequence;

    .line 299
    .line 300
    if-eqz v1, :cond_134

    .line 301
    .line 302
    move-object v3, p1

    .line 303
    check-cast v3, Le0/a;

    .line 304
    .line 305
    invoke-interface {v3, v0}, Le0/a;->setTooltipText(Ljava/lang/CharSequence;)Le0/a;

    .line 306
    .line 307
    .line 308
    goto :goto_13b

    .line 309
    :cond_134
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 310
    .line 311
    if-lt v3, v2, :cond_13b

    .line 312
    .line 313
    invoke-static {p1, v0}, Ld0/a;->g(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 314
    .line 315
    .line 316
    :cond_13b
    :goto_13b
    iget-char v0, p0, Lk/h;->n:C

    .line 317
    .line 318
    iget v3, p0, Lk/h;->o:I

    .line 319
    .line 320
    if-eqz v1, :cond_148

    .line 321
    .line 322
    move-object v4, p1

    .line 323
    check-cast v4, Le0/a;

    .line 324
    .line 325
    invoke-interface {v4, v0, v3}, Le0/a;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 326
    .line 327
    .line 328
    goto :goto_14f

    .line 329
    :cond_148
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 330
    .line 331
    if-lt v4, v2, :cond_14f

    .line 332
    .line 333
    invoke-static {p1, v0, v3}, Ld0/a;->b(Landroid/view/MenuItem;CI)V

    .line 334
    .line 335
    .line 336
    :cond_14f
    :goto_14f
    iget-char v0, p0, Lk/h;->p:C

    .line 337
    .line 338
    iget v3, p0, Lk/h;->q:I

    .line 339
    .line 340
    if-eqz v1, :cond_15c

    .line 341
    .line 342
    move-object v4, p1

    .line 343
    check-cast v4, Le0/a;

    .line 344
    .line 345
    invoke-interface {v4, v0, v3}, Le0/a;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 346
    .line 347
    .line 348
    goto :goto_163

    .line 349
    :cond_15c
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 350
    .line 351
    if-lt v4, v2, :cond_163

    .line 352
    .line 353
    invoke-static {p1, v0, v3}, Ld0/a;->f(Landroid/view/MenuItem;CI)V

    .line 354
    .line 355
    .line 356
    :cond_163
    :goto_163
    iget-object v0, p0, Lk/h;->D:Landroid/graphics/PorterDuff$Mode;

    .line 357
    .line 358
    if-eqz v0, :cond_177

    .line 359
    .line 360
    if-eqz v1, :cond_170

    .line 361
    .line 362
    move-object v3, p1

    .line 363
    check-cast v3, Le0/a;

    .line 364
    .line 365
    invoke-interface {v3, v0}, Le0/a;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 366
    .line 367
    .line 368
    goto :goto_177

    .line 369
    :cond_170
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 370
    .line 371
    if-lt v3, v2, :cond_177

    .line 372
    .line 373
    invoke-static {p1, v0}, Ld0/a;->e(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 374
    .line 375
    .line 376
    :cond_177
    :goto_177
    iget-object v0, p0, Lk/h;->C:Landroid/content/res/ColorStateList;

    .line 377
    .line 378
    if-eqz v0, :cond_18a

    .line 379
    .line 380
    if-eqz v1, :cond_183

    .line 381
    .line 382
    check-cast p1, Le0/a;

    .line 383
    .line 384
    invoke-interface {p1, v0}, Le0/a;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 385
    .line 386
    .line 387
    goto :goto_18a

    .line 388
    :cond_183
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 389
    .line 390
    if-lt v1, v2, :cond_18a

    .line 391
    .line 392
    invoke-static {p1, v0}, Ld0/a;->d(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    .line 393
    .line 394
    .line 395
    :cond_18a
    :goto_18a
    return-void
.end method
