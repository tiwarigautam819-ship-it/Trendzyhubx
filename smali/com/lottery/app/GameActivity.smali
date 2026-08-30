###### Class com.lottery.app.GameActivity (com.lottery.app.GameActivity)
.class public Lcom/lottery/app/GameActivity;
.super Landroid/app/Activity;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final synthetic e:I


# instance fields
.field public a:Landroid/webkit/WebView;

.field public b:Ll6/e;

.field public c:Lm1/e;

.field public d:Lutils/ReplacePropertiesUtil;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .registers 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, v1, Lcom/lottery/app/GameActivity;->d:Lutils/ReplacePropertiesUtil;

    .line 7
    .line 8
    if-nez v0, :cond_10

    .line 9
    .line 10
    new-instance v0, Lutils/ReplacePropertiesUtil;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lutils/ReplacePropertiesUtil;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, v1, Lcom/lottery/app/GameActivity;->d:Lutils/ReplacePropertiesUtil;

    .line 16
    .line 17
    :cond_10
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "params"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v3, "returnType"

    .line 28
    .line 29
    const-string v4, "isCache"

    .line 30
    .line 31
    const-string v5, "vendorCode"

    .line 32
    .line 33
    const-string v6, "title"

    .line 34
    .line 35
    const-string v7, "fontColor"

    .line 36
    .line 37
    const-string v8, "bodyColor"

    .line 38
    .line 39
    const-string v9, "backgroundColor"

    .line 40
    .line 41
    const-string v10, "url"

    .line 42
    .line 43
    new-instance v11, Ll6/e;

    .line 44
    .line 45
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v12, ""

    .line 49
    .line 50
    iput-object v12, v11, Ll6/e;->a:Ljava/lang/String;

    .line 51
    .line 52
    const-string v13, "#000000"

    .line 53
    .line 54
    iput-object v13, v11, Ll6/e;->b:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v12, v11, Ll6/e;->c:Ljava/lang/String;

    .line 57
    .line 58
    const-string v14, "#FFFFFF"

    .line 59
    .line 60
    iput-object v14, v11, Ll6/e;->d:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v12, v11, Ll6/e;->e:Ljava/lang/String;

    .line 63
    .line 64
    iput-object v12, v11, Ll6/e;->f:Ljava/lang/String;

    .line 65
    .line 66
    const/4 v12, 0x0

    .line 67
    iput-boolean v12, v11, Ll6/e;->g:Z

    .line 68
    .line 69
    const/4 v14, 0x1

    .line 70
    iput v14, v11, Ll6/e;->h:I

    .line 71
    .line 72
    if-eqz v0, :cond_c5

    .line 73
    .line 74
    :try_start_49
    new-instance v15, Lorg/json/JSONObject;

    .line 75
    .line 76
    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_5f

    .line 84
    .line 85
    iget-object v0, v11, Ll6/e;->a:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v15, v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, v11, Ll6/e;->a:Ljava/lang/String;

    .line 92
    .line 93
    goto :goto_5f

    .line 94
    :catch_5d
    move-exception v0

    .line 95
    goto :goto_c2

    .line 96
    :cond_5f
    :goto_5f
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_6d

    .line 101
    .line 102
    iget-object v0, v11, Ll6/e;->b:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v15, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, v11, Ll6/e;->b:Ljava/lang/String;

    .line 109
    .line 110
    :cond_6d
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_7b

    .line 115
    .line 116
    iget-object v0, v11, Ll6/e;->c:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v15, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iput-object v0, v11, Ll6/e;->c:Ljava/lang/String;

    .line 123
    .line 124
    :cond_7b
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_89

    .line 129
    .line 130
    iget-object v0, v11, Ll6/e;->d:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v15, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iput-object v0, v11, Ll6/e;->d:Ljava/lang/String;

    .line 137
    .line 138
    :cond_89
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_97

    .line 143
    .line 144
    iget-object v0, v11, Ll6/e;->e:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v15, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iput-object v0, v11, Ll6/e;->e:Ljava/lang/String;

    .line 151
    .line 152
    :cond_97
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_a5

    .line 157
    .line 158
    iget-object v0, v11, Ll6/e;->f:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v15, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iput-object v0, v11, Ll6/e;->f:Ljava/lang/String;

    .line 165
    .line 166
    :cond_a5
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_b3

    .line 171
    .line 172
    iget-boolean v0, v11, Ll6/e;->g:Z

    .line 173
    .line 174
    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    iput-boolean v0, v11, Ll6/e;->g:Z

    .line 179
    .line 180
    :cond_b3
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_c5

    .line 185
    .line 186
    iget v0, v11, Ll6/e;->h:I

    .line 187
    .line 188
    invoke-virtual {v15, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    iput v0, v11, Ll6/e;->h:I
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_c1} :catch_5d

    .line 193
    .line 194
    goto :goto_c5

    .line 195
    :goto_c2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    .line 197
    .line 198
    :cond_c5
    :goto_c5
    iput-object v11, v1, Lcom/lottery/app/GameActivity;->b:Ll6/e;

    .line 199
    .line 200
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    const-string v2, "\u2705GameActivity"

    .line 212
    .line 213
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v0, v14, v12, v12}, Lf4/f;->a(Landroid/view/Window;ZZZ)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 228
    .line 229
    const/high16 v4, -0x1000000

    .line 230
    .line 231
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    .line 236
    .line 237
    const-string v0, "buildFixedLayout"

    .line 238
    .line 239
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    new-instance v0, Landroid/widget/LinearLayout;

    .line 243
    .line 244
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 248
    .line 249
    .line 250
    :try_start_f9
    iget-object v3, v1, Lcom/lottery/app/GameActivity;->b:Ll6/e;

    .line 251
    .line 252
    iget-object v3, v3, Ll6/e;->b:Ljava/lang/String;

    .line 253
    .line 254
    invoke-static {v3, v13}, Li2/t;->k(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_104} :catch_105

    .line 259
    .line 260
    .line 261
    goto :goto_108

    .line 262
    :catch_105
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 263
    .line 264
    .line 265
    :goto_108
    iget-object v3, v1, Lcom/lottery/app/GameActivity;->b:Ll6/e;

    .line 266
    .line 267
    const-string v4, "buildContentView"

    .line 268
    .line 269
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    new-instance v4, Landroid/widget/TextView;

    .line 273
    .line 274
    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 275
    .line 276
    .line 277
    const-string v5, "Failed to retrieve page URL."

    .line 278
    .line 279
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    const/16 v5, 0x11

    .line 283
    .line 284
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 285
    .line 286
    .line 287
    iget-object v6, v3, Ll6/e;->d:Ljava/lang/String;

    .line 288
    .line 289
    const-string v7, "#ffffff"

    .line 290
    .line 291
    invoke-static {v6, v7}, Li2/t;->k(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    .line 297
    .line 298
    iget-object v6, v3, Ll6/e;->b:Ljava/lang/String;

    .line 299
    .line 300
    invoke-static {v6, v13}, Li2/t;->k(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 305
    .line 306
    .line 307
    const/high16 v6, 0x41900000    # 18.0f

    .line 308
    .line 309
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 310
    .line 311
    .line 312
    iget-object v8, v3, Ll6/e;->a:Ljava/lang/String;

    .line 313
    .line 314
    const/4 v9, -0x1

    .line 315
    if-eqz v8, :cond_20d

    .line 316
    .line 317
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 318
    .line 319
    .line 320
    move-result v8

    .line 321
    if-eqz v8, :cond_144

    .line 322
    .line 323
    goto/16 :goto_20d

    .line 324
    .line 325
    :cond_144
    new-instance v4, Landroid/webkit/WebView;

    .line 326
    .line 327
    invoke-direct {v4, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 328
    .line 329
    .line 330
    iput-object v4, v1, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 331
    .line 332
    new-instance v4, Lm1/e;

    .line 333
    .line 334
    iget-object v8, v3, Ll6/e;->f:Ljava/lang/String;

    .line 335
    .line 336
    iget-boolean v10, v3, Ll6/e;->g:Z

    .line 337
    .line 338
    invoke-direct {v4, v1, v8, v10}, Lm1/e;-><init>(Lcom/lottery/app/GameActivity;Ljava/lang/String;Z)V

    .line 339
    .line 340
    .line 341
    iput-object v4, v1, Lcom/lottery/app/GameActivity;->c:Lm1/e;

    .line 342
    .line 343
    iget-object v4, v1, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 344
    .line 345
    new-instance v8, Ll6/c;

    .line 346
    .line 347
    invoke-direct {v8, v1, v1, v12}, Ll6/c;-><init>(Landroid/app/Activity;Landroid/app/Activity;I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 351
    .line 352
    .line 353
    iget-object v4, v1, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 354
    .line 355
    new-instance v8, Ll6/d;

    .line 356
    .line 357
    invoke-direct {v8, v3}, Ll6/d;-><init>(Ll6/e;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4, v8}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 361
    .line 362
    .line 363
    iget-object v4, v1, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 364
    .line 365
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    invoke-virtual {v4, v14}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v4, v14}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v4, v14}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4, v14}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v4, v14}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v4, v14}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v4, v12}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v4, v14}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4, v14}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 397
    .line 398
    .line 399
    iget-object v8, v3, Ll6/e;->c:Ljava/lang/String;

    .line 400
    .line 401
    if-eqz v8, :cond_19b

    .line 402
    .line 403
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 404
    .line 405
    .line 406
    move-result v8

    .line 407
    if-nez v8, :cond_19b

    .line 408
    .line 409
    iget-object v8, v3, Ll6/e;->c:Ljava/lang/String;

    .line 410
    .line 411
    goto :goto_19d

    .line 412
    :cond_19b
    iget-object v8, v3, Ll6/e;->b:Ljava/lang/String;

    .line 413
    .line 414
    :goto_19d
    iget-object v10, v1, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 415
    .line 416
    invoke-static {v8, v13}, Li2/t;->k(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    move-result v8

    .line 420
    invoke-virtual {v10, v8}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 421
    .line 422
    .line 423
    iget-object v8, v1, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 424
    .line 425
    invoke-virtual {v8, v12}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 426
    .line 427
    .line 428
    iget-object v8, v1, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 429
    .line 430
    invoke-virtual {v8, v14}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 431
    .line 432
    .line 433
    iget-object v8, v1, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 434
    .line 435
    invoke-virtual {v8, v14}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 436
    .line 437
    .line 438
    iget-object v8, v1, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 439
    .line 440
    invoke-virtual {v8, v12}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 441
    .line 442
    .line 443
    iget-object v8, v1, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 444
    .line 445
    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 446
    .line 447
    .line 448
    move-result-object v8

    .line 449
    invoke-virtual {v8, v12}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 450
    .line 451
    .line 452
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 453
    .line 454
    const/16 v10, 0x1a

    .line 455
    .line 456
    if-lt v8, v10, :cond_1cc

    .line 457
    .line 458
    invoke-static {v4}, Lcom/getcapacitor/plugin/util/a;->w(Landroid/webkit/WebSettings;)V

    .line 459
    .line 460
    .line 461
    :cond_1cc
    new-instance v4, Lutils/ReplacePropertiesUtil;

    .line 462
    .line 463
    invoke-direct {v4, v1}, Lutils/ReplacePropertiesUtil;-><init>(Landroid/content/Context;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v4}, Lutils/ReplacePropertiesUtil;->isDebugger()Z

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    invoke-static {v4}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 471
    .line 472
    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    const-string v8, "webView.setWebViewClient "

    .line 476
    .line 477
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    iget v8, v3, Ll6/e;->h:I

    .line 481
    .line 482
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .line 491
    .line 492
    iget v2, v3, Ll6/e;->h:I

    .line 493
    .line 494
    if-ne v2, v14, :cond_1f7

    .line 495
    .line 496
    iget-object v2, v1, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 497
    .line 498
    iget-object v3, v3, Ll6/e;->a:Ljava/lang/String;

    .line 499
    .line 500
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    goto :goto_20b

    .line 504
    :cond_1f7
    const/4 v4, 0x2

    .line 505
    if-ne v2, v4, :cond_20b

    .line 506
    .line 507
    iget-object v15, v1, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 508
    .line 509
    iget-object v2, v3, Ll6/e;->a:Ljava/lang/String;

    .line 510
    .line 511
    const-string v19, "utf-8"

    .line 512
    .line 513
    const/16 v20, 0x0

    .line 514
    .line 515
    const/16 v16, 0x0

    .line 516
    .line 517
    const-string v18, "text/html"

    .line 518
    .line 519
    move-object/from16 v17, v2

    .line 520
    .line 521
    invoke-virtual/range {v15 .. v20}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    :cond_20b
    :goto_20b
    iget-object v4, v1, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 525
    .line 526
    :cond_20d
    :goto_20d
    iget-object v2, v1, Lcom/lottery/app/GameActivity;->b:Ll6/e;

    .line 527
    .line 528
    iget-object v3, v2, Ll6/e;->e:Ljava/lang/String;

    .line 529
    .line 530
    iget-object v2, v2, Ll6/e;->d:Ljava/lang/String;

    .line 531
    .line 532
    const/16 v8, 0x2e

    .line 533
    .line 534
    int-to-float v8, v8

    .line 535
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 536
    .line 537
    .line 538
    move-result-object v10

    .line 539
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 540
    .line 541
    .line 542
    move-result-object v10

    .line 543
    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    .line 544
    .line 545
    mul-float/2addr v8, v10

    .line 546
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 547
    .line 548
    .line 549
    move-result v8

    .line 550
    const/16 v10, 0x18

    .line 551
    .line 552
    int-to-float v10, v10

    .line 553
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 554
    .line 555
    .line 556
    move-result-object v11

    .line 557
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 558
    .line 559
    .line 560
    move-result-object v11

    .line 561
    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    .line 562
    .line 563
    mul-float/2addr v10, v11

    .line 564
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 565
    .line 566
    .line 567
    move-result v10

    .line 568
    const/16 v11, 0x8

    .line 569
    .line 570
    int-to-float v11, v11

    .line 571
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 572
    .line 573
    .line 574
    move-result-object v13

    .line 575
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 576
    .line 577
    .line 578
    move-result-object v13

    .line 579
    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 580
    .line 581
    mul-float/2addr v11, v13

    .line 582
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 583
    .line 584
    .line 585
    move-result v11

    .line 586
    new-instance v13, Landroid/widget/FrameLayout;

    .line 587
    .line 588
    invoke-direct {v13, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 589
    .line 590
    .line 591
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 592
    .line 593
    const/4 v5, -0x2

    .line 594
    invoke-direct {v15, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v13, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v13, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 601
    .line 602
    .line 603
    new-instance v15, Landroid/widget/FrameLayout;

    .line 604
    .line 605
    invoke-direct {v15, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 606
    .line 607
    .line 608
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 609
    .line 610
    invoke-direct {v5, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v15, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    .line 615
    .line 616
    new-instance v5, Landroid/widget/ImageView;

    .line 617
    .line 618
    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 619
    .line 620
    .line 621
    const v8, 0x7f080084

    .line 622
    .line 623
    .line 624
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 625
    .line 626
    .line 627
    invoke-static {v2, v7}, Li2/t;->k(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    .line 629
    .line 630
    move-result v8

    .line 631
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 632
    .line 633
    .line 634
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 635
    .line 636
    invoke-direct {v8, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 637
    .line 638
    .line 639
    const v10, 0x800013

    .line 640
    .line 641
    .line 642
    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 643
    .line 644
    invoke-virtual {v8, v11, v12, v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    .line 649
    .line 650
    new-instance v8, Ll6/b;

    .line 651
    .line 652
    invoke-direct {v8, v1, v12}, Ll6/b;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    .line 657
    .line 658
    new-instance v8, Landroid/widget/TextView;

    .line 659
    .line 660
    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 667
    .line 668
    .line 669
    invoke-static {v2, v7}, Li2/t;->k(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .line 671
    .line 672
    move-result v2

    .line 673
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 674
    .line 675
    .line 676
    const/4 v2, 0x0

    .line 677
    invoke-virtual {v8, v2, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 678
    .line 679
    .line 680
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 681
    .line 682
    const/4 v3, -0x2

    .line 683
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 684
    .line 685
    .line 686
    const/16 v3, 0x11

    .line 687
    .line 688
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 689
    .line 690
    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v15, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v15, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 703
    .line 704
    .line 705
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 706
    .line 707
    const/high16 v3, 0x3f800000    # 1.0f

    .line 708
    .line 709
    invoke-direct {v2, v9, v12, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 716
    .line 717
    .line 718
    new-instance v2, Li8/l;

    .line 719
    .line 720
    invoke-direct {v2, v14, v14}, Li8/l;-><init>(ZZ)V

    .line 721
    .line 722
    .line 723
    sget-object v3, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 724
    .line 725
    invoke-static {v0, v2}, Lj0/d0;->i(Landroid/view/View;Lj0/r;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0, v12}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 732
    .line 733
    .line 734
    return-void
.end method

.method public final onDestroy()V
    .registers 9

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/lottery/app/GameActivity;->c:Lm1/e;

    .line 5
    .line 6
    if-eqz v0, :cond_bf

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lm1/e;->f:Z

    .line 10
    .line 11
    iget-object v1, v0, Lm1/e;->e:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "NetFetcher"

    .line 14
    .line 15
    if-eqz v1, :cond_9f

    .line 16
    .line 17
    sget-object v3, Lm1/j;->a:Lr7/r;

    .line 18
    .line 19
    if-nez v3, :cond_16

    .line 20
    .line 21
    goto/16 :goto_9f

    .line 22
    .line 23
    :cond_16
    const/4 v3, 0x0

    .line 24
    :try_start_17
    sget-object v4, Lm1/j;->a:Lr7/r;

    .line 25
    .line 26
    iget-object v4, v4, Lr7/r;->a:Lcom/google/firebase/messaging/y;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/google/firebase/messaging/y;->A()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    :cond_23
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v5
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_4b

    .line 40
    const-class v6, Ljava/lang/Object;

    .line 41
    .line 42
    if-eqz v5, :cond_4d

    .line 43
    .line 44
    :try_start_2b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Lv7/i;

    .line 49
    .line 50
    iget-object v7, v5, Lv7/i;->b:Lcom/google/android/gms/common/internal/g;

    .line 51
    .line 52
    iget-object v7, v7, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v7, Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_23

    .line 69
    .line 70
    invoke-virtual {v5}, Lv7/i;->d()V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_23

    .line 76
    :catchall_4b
    move-exception v4

    .line 77
    goto :goto_7f

    .line 78
    :cond_4d
    sget-object v4, Lm1/j;->a:Lr7/r;

    .line 79
    .line 80
    iget-object v4, v4, Lr7/r;->a:Lcom/google/firebase/messaging/y;

    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/google/firebase/messaging/y;->B()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    :cond_59
    :goto_59
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_84

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Lv7/i;

    .line 101
    .line 102
    iget-object v7, v5, Lv7/i;->b:Lcom/google/android/gms/common/internal/g;

    .line 103
    .line 104
    iget-object v7, v7, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v7, Ljava/util/Map;

    .line 107
    .line 108
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_59

    .line 121
    .line 122
    invoke-virtual {v5}, Lv7/i;->d()V
    :try_end_7c
    .catchall {:try_start_2b .. :try_end_7c} :catchall_4b

    .line 123
    .line 124
    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_59

    .line 128
    :goto_7f
    const-string v5, "cancelByTag failed"

    .line 129
    .line 130
    invoke-static {v2, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .line 132
    .line 133
    :cond_84
    if-lez v3, :cond_9f

    .line 134
    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v5, "cancelByTag("

    .line 138
    .line 139
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v1, ") cancelled="

    .line 146
    .line 147
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    :cond_9f
    :goto_9f
    iget-object v1, v0, Lm1/e;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 161
    .line 162
    if-eqz v1, :cond_aa

    .line 163
    .line 164
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v1, Ljava/util/concurrent/ExecutorService;

    .line 167
    .line 168
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    :cond_aa
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v2, "shutdown vendor="

    .line 174
    .line 175
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, v0, Lm1/e;->a:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const-string v1, "GameResourceCache"

    .line 188
    .line 189
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    :cond_bf
    iget-object v0, p0, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 193
    .line 194
    const/4 v1, 0x0

    .line 195
    if-eqz v0, :cond_ec

    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Landroid/view/ViewGroup;

    .line 217
    .line 218
    if-eqz v0, :cond_e0

    .line 219
    .line 220
    iget-object v2, p0, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 221
    .line 222
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 223
    .line 224
    .line 225
    :cond_e0
    iget-object v0, p0, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 226
    .line 227
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 233
    .line 234
    .line 235
    iput-object v1, p0, Lcom/lottery/app/GameActivity;->a:Landroid/webkit/WebView;

    .line 236
    .line 237
    :cond_ec
    iput-object v1, p0, Lcom/lottery/app/GameActivity;->c:Lm1/e;

    .line 238
    .line 239
    return-void
.end method
