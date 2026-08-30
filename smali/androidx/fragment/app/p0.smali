###### Class androidx.fragment.app.p0 (androidx.fragment.app.p0)
.class public final Landroidx/fragment/app/p0;
.super Lb/y;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/y0;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/p0;->d:I

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/p0;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lb/y;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/capacitorjs/plugins/app/AppPlugin;Z)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/p0;->d:I

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/p0;->e:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lb/y;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 1
    iget v0, p0, Landroidx/fragment/app/p0;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_70

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_6
    iget-object v0, p0, Landroidx/fragment/app/p0;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/fragment/app/y0;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-static {v1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const-string v3, "FragmentManager"

    .line 17
    .line 18
    if-eqz v2, :cond_24

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v4, "handleOnBackCancelled. PREDICTIVE_BACK = true fragment manager "

    .line 23
    .line 24
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_24
    invoke-static {v1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3d

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "cancelBackStackTransition for transition "

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_3d
    iget-object v1, v0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 63
    .line 64
    if-eqz v1, :cond_6f

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    iput-boolean v2, v1, Landroidx/fragment/app/a;->r:Z

    .line 68
    .line 69
    new-instance v3, Landroidx/fragment/app/u;

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    invoke-direct {v3, v4, v0}, Landroidx/fragment/app/u;-><init>(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object v4, v1, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    .line 76
    .line 77
    if-nez v4, :cond_55

    .line 78
    .line 79
    new-instance v4, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v4, v1, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    .line 85
    .line 86
    :cond_55
    iget-object v1, v1, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    const/4 v4, 0x1

    .line 95
    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/a;->d(ZZ)I

    .line 96
    .line 97
    .line 98
    const/4 v1, 0x1

    .line 99
    iput-boolean v1, v0, Landroidx/fragment/app/y0;->i:Z

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroidx/fragment/app/y0;->z(Z)Z

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->D()V

    .line 105
    .line 106
    .line 107
    iput-boolean v2, v0, Landroidx/fragment/app/y0;->i:Z

    .line 108
    .line 109
    const/4 v1, 0x0

    .line 110
    iput-object v1, v0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 111
    .line 112
    :cond_6f
    return-void

    .line 113
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public final b()V
    .registers 14

    .line 1
    iget v0, p0, Landroidx/fragment/app/p0;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_178

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/p0;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/capacitorjs/plugins/app/AppPlugin;

    .line 9
    .line 10
    const-string v1, "backButton"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/capacitorjs/plugins/app/AppPlugin;->access$000(Lcom/capacitorjs/plugins/app/AppPlugin;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_2b

    .line 17
    .line 18
    invoke-static {v0}, Lcom/capacitorjs/plugins/app/AppPlugin;->access$100(Lcom/capacitorjs/plugins/app/AppPlugin;)Lcom/getcapacitor/Bridge;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_50

    .line 31
    .line 32
    invoke-static {v0}, Lcom/capacitorjs/plugins/app/AppPlugin;->access$200(Lcom/capacitorjs/plugins/app/AppPlugin;)Lcom/getcapacitor/Bridge;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 41
    .line 42
    .line 43
    goto :goto_50

    .line 44
    :cond_2b
    new-instance v2, Lcom/getcapacitor/JSObject;

    .line 45
    .line 46
    invoke-direct {v2}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/capacitorjs/plugins/app/AppPlugin;->access$300(Lcom/capacitorjs/plugins/app/AppPlugin;)Lcom/getcapacitor/Bridge;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroid/webkit/WebView;->canGoBack()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const-string v4, "canGoBack"

    .line 62
    .line 63
    invoke-virtual {v2, v4, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Z)Lcom/getcapacitor/JSObject;

    .line 64
    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    invoke-static {v0, v1, v2, v3}, Lcom/capacitorjs/plugins/app/AppPlugin;->access$400(Lcom/capacitorjs/plugins/app/AppPlugin;Ljava/lang/String;Lcom/getcapacitor/JSObject;Z)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lcom/capacitorjs/plugins/app/AppPlugin;->access$500(Lcom/capacitorjs/plugins/app/AppPlugin;)Lcom/getcapacitor/Bridge;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "backbutton"

    .line 75
    .line 76
    const-string v2, "document"

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/getcapacitor/Bridge;->triggerJSEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_50
    :goto_50
    return-void

    .line 82
    :pswitch_51
    iget-object v0, p0, Landroidx/fragment/app/p0;->e:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Landroidx/fragment/app/y0;

    .line 85
    .line 86
    const/4 v1, 0x3

    .line 87
    invoke-static {v1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const-string v3, "FragmentManager"

    .line 92
    .line 93
    if-eqz v2, :cond_6f

    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v4, "handleOnBackPressed. PREDICTIVE_BACK = true fragment manager "

    .line 98
    .line 99
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_6f
    iget-object v2, v0, Landroidx/fragment/app/y0;->j:Landroidx/fragment/app/p0;

    .line 113
    .line 114
    iget-object v4, v0, Landroidx/fragment/app/y0;->n:Ljava/util/ArrayList;

    .line 115
    .line 116
    const/4 v5, 0x1

    .line 117
    iput-boolean v5, v0, Landroidx/fragment/app/y0;->i:Z

    .line 118
    .line 119
    invoke-virtual {v0, v5}, Landroidx/fragment/app/y0;->z(Z)Z

    .line 120
    .line 121
    .line 122
    const/4 v6, 0x0

    .line 123
    iput-boolean v6, v0, Landroidx/fragment/app/y0;->i:Z

    .line 124
    .line 125
    iget-object v7, v0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 126
    .line 127
    if-eqz v7, :cond_154

    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    const/4 v8, 0x0

    .line 134
    if-nez v7, :cond_b9

    .line 135
    .line 136
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 137
    .line 138
    iget-object v9, v0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 139
    .line 140
    invoke-static {v9}, Landroidx/fragment/app/y0;->E(Landroidx/fragment/app/a;)Ljava/util/HashSet;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-direct {v7, v9}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    move v10, v6

    .line 152
    :goto_97
    if-ge v10, v9, :cond_b9

    .line 153
    .line 154
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    add-int/lit8 v10, v10, 0x1

    .line 159
    .line 160
    if-nez v11, :cond_b3

    .line 161
    .line 162
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v12

    .line 170
    if-nez v12, :cond_ac

    .line 171
    .line 172
    goto :goto_97

    .line 173
    :cond_ac
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Landroidx/fragment/app/c0;

    .line 178
    .line 179
    throw v8

    .line 180
    :cond_b3
    new-instance v0, Ljava/lang/ClassCastException;

    .line 181
    .line 182
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 183
    .line 184
    .line 185
    throw v0

    .line 186
    :cond_b9
    iget-object v4, v0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 187
    .line 188
    iget-object v4, v4, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    move v9, v6

    .line 195
    :cond_c2
    :goto_c2
    if-ge v9, v7, :cond_d3

    .line 196
    .line 197
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    add-int/lit8 v9, v9, 0x1

    .line 202
    .line 203
    check-cast v10, Landroidx/fragment/app/h1;

    .line 204
    .line 205
    iget-object v10, v10, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 206
    .line 207
    if-eqz v10, :cond_c2

    .line 208
    .line 209
    iput-boolean v6, v10, Landroidx/fragment/app/c0;->m:Z

    .line 210
    .line 211
    goto :goto_c2

    .line 212
    :cond_d3
    new-instance v4, Ljava/util/ArrayList;

    .line 213
    .line 214
    iget-object v7, v0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 215
    .line 216
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v4, v6, v5}, Landroidx/fragment/app/y0;->f(Ljava/util/ArrayList;II)Ljava/util/HashSet;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    :goto_e6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-eqz v5, :cond_106

    .line 236
    .line 237
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    check-cast v5, Landroidx/fragment/app/o;

    .line 242
    .line 243
    iget-object v7, v5, Landroidx/fragment/app/o;->c:Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-static {v1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    if-eqz v9, :cond_ff

    .line 250
    .line 251
    const-string v9, "SpecialEffectsController: Completing Back "

    .line 252
    .line 253
    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    :cond_ff
    invoke-virtual {v5, v7}, Landroidx/fragment/app/o;->k(Ljava/util/List;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v5, v7}, Landroidx/fragment/app/o;->c(Ljava/util/List;)V

    .line 260
    .line 261
    .line 262
    goto :goto_e6

    .line 263
    :cond_106
    iget-object v4, v0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 264
    .line 265
    iget-object v4, v4, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    :cond_10e
    :goto_10e
    if-ge v6, v5, :cond_128

    .line 272
    .line 273
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    add-int/lit8 v6, v6, 0x1

    .line 278
    .line 279
    check-cast v7, Landroidx/fragment/app/h1;

    .line 280
    .line 281
    iget-object v7, v7, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 282
    .line 283
    if-eqz v7, :cond_10e

    .line 284
    .line 285
    iget-object v9, v7, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 286
    .line 287
    if-nez v9, :cond_10e

    .line 288
    .line 289
    invoke-virtual {v0, v7}, Landroidx/fragment/app/y0;->g(Landroidx/fragment/app/c0;)Landroidx/fragment/app/g1;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    invoke-virtual {v7}, Landroidx/fragment/app/g1;->k()V

    .line 294
    .line 295
    .line 296
    goto :goto_10e

    .line 297
    :cond_128
    iput-object v8, v0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 298
    .line 299
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->e0()V

    .line 300
    .line 301
    .line 302
    invoke-static {v1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_177

    .line 307
    .line 308
    const-string v1, "Op is being set to null"

    .line 309
    .line 310
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    const-string v4, "OnBackPressedCallback enabled="

    .line 316
    .line 317
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-boolean v2, v2, Lb/y;->a:Z

    .line 321
    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v2, " for  FragmentManager "

    .line 326
    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    goto :goto_177

    .line 341
    :cond_154
    iget-boolean v2, v2, Lb/y;->a:Z

    .line 342
    .line 343
    if-eqz v2, :cond_167

    .line 344
    .line 345
    invoke-static {v1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_163

    .line 350
    .line 351
    const-string v1, "Calling popBackStackImmediate via onBackPressed callback"

    .line 352
    .line 353
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    :cond_163
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->Q()Z

    .line 357
    .line 358
    .line 359
    goto :goto_177

    .line 360
    :cond_167
    invoke-static {v1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    if-eqz v1, :cond_172

    .line 365
    .line 366
    const-string v1, "Calling onBackPressed via onBackPressed callback"

    .line 367
    .line 368
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    :cond_172
    iget-object v0, v0, Landroidx/fragment/app/y0;->g:Lb/i0;

    .line 372
    .line 373
    invoke-virtual {v0}, Lb/i0;->c()V

    .line 374
    .line 375
    .line 376
    :cond_177
    :goto_177
    return-void

    .line 377
    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_51
    .end packed-switch
.end method

.method public c(Lb/b;)V
    .registers 13

    .line 1
    iget v0, p0, Landroidx/fragment/app/p0;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_c4

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lb/y;->c(Lb/b;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_9
    iget-object v0, p0, Landroidx/fragment/app/p0;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroidx/fragment/app/y0;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-static {v1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-string v3, "FragmentManager"

    .line 20
    .line 21
    if-eqz v2, :cond_27

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v4, "handleOnBackProgressed. PREDICTIVE_BACK = true fragment manager "

    .line 26
    .line 27
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_27
    iget-object v2, v0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 41
    .line 42
    if-eqz v2, :cond_c2

    .line 43
    .line 44
    new-instance v2, Ljava/util/ArrayList;

    .line 45
    .line 46
    iget-object v4, v0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 47
    .line 48
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x1

    .line 57
    invoke-virtual {v0, v2, v4, v5}, Landroidx/fragment/app/y0;->f(Ljava/util/ArrayList;II)Ljava/util/HashSet;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :cond_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_a8

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Landroidx/fragment/app/o;

    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const-string v6, "backEvent"

    .line 81
    .line 82
    invoke-static {v6, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_6d

    .line 90
    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v7, "SpecialEffectsController: Processing Progress "

    .line 94
    .line 95
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget v7, p1, Lb/b;->c:F

    .line 99
    .line 100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :cond_6d
    iget-object v6, v5, Landroidx/fragment/app/o;->c:Ljava/util/ArrayList;

    .line 111
    .line 112
    new-instance v7, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    move v9, v4

    .line 122
    :goto_79
    if-ge v9, v8, :cond_89

    .line 123
    .line 124
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    add-int/lit8 v9, v9, 0x1

    .line 129
    .line 130
    check-cast v10, Landroidx/fragment/app/l1;

    .line 131
    .line 132
    iget-object v10, v10, Landroidx/fragment/app/l1;->k:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-static {v7, v10}, Ls6/m;->o(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    .line 135
    .line 136
    .line 137
    goto :goto_79

    .line 138
    :cond_89
    invoke-static {v7}, Ls6/g;->y(Ljava/util/ArrayList;)Ljava/util/Set;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    check-cast v6, Ljava/lang/Iterable;

    .line 143
    .line 144
    invoke-static {v6}, Ls6/g;->w(Ljava/lang/Iterable;)Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    move v8, v4

    .line 153
    :goto_98
    if-ge v8, v7, :cond_40

    .line 154
    .line 155
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    check-cast v9, Landroidx/fragment/app/k1;

    .line 160
    .line 161
    iget-object v10, v5, Landroidx/fragment/app/o;->a:Landroid/view/ViewGroup;

    .line 162
    .line 163
    invoke-virtual {v9, p1, v10}, Landroidx/fragment/app/k1;->c(Lb/b;Landroid/view/ViewGroup;)V

    .line 164
    .line 165
    .line 166
    add-int/lit8 v8, v8, 0x1

    .line 167
    .line 168
    goto :goto_98

    .line 169
    :cond_a8
    iget-object p1, v0, Landroidx/fragment/app/y0;->n:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_b5

    .line 180
    .line 181
    goto :goto_c2

    .line 182
    :cond_b5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    new-instance p1, Ljava/lang/ClassCastException;

    .line 190
    .line 191
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 192
    .line 193
    .line 194
    throw p1

    .line 195
    :cond_c2
    :goto_c2
    return-void

    .line 196
    nop

    .line 197
    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public d(Lb/b;)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/p0;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_34

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lb/y;->d(Lb/b;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_9
    iget-object p1, p0, Landroidx/fragment/app/p0;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroidx/fragment/app/y0;

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_27

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "handleOnBackStarted. PREDICTIVE_BACK = true fragment manager "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "FragmentManager"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_27
    invoke-virtual {p1}, Landroidx/fragment/app/y0;->w()V

    .line 41
    .line 42
    .line 43
    new-instance v0, Landroidx/fragment/app/x0;

    .line 44
    .line 45
    invoke-direct {v0, p1}, Landroidx/fragment/app/x0;-><init>(Landroidx/fragment/app/y0;)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/y0;->x(Landroidx/fragment/app/v0;Z)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
