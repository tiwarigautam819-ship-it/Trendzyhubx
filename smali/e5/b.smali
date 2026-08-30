###### Class e5.b (e5.b)
.class public final synthetic Le5/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lg5/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 1
    iput p2, p0, Le5/b;->a:I

    iput-object p1, p0, Le5/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Le5/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt4/g;Landroid/content/Context;)V
    .registers 4

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Le5/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/b;->c:Ljava/lang/Object;

    iput-object p2, p0, Le5/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 16

    .line 1
    iget v0, p0, Le5/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_116

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le5/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lv4/e;

    .line 9
    .line 10
    iget-object v1, p0, Le5/b;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lv4/b;

    .line 13
    .line 14
    iget-object v2, v1, Lv4/b;->f:Lv4/d;

    .line 15
    .line 16
    new-instance v3, Lcom/google/firebase/messaging/y;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v4, Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v5, Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v6, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v7, Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v8, Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v9, v1, Lv4/b;->c:Ljava/util/Set;

    .line 47
    .line 48
    iget-object v1, v1, Lv4/b;->g:Ljava/util/Set;

    .line 49
    .line 50
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    :goto_35
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-eqz v10, :cond_69

    .line 59
    .line 60
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    check-cast v10, Lv4/h;

    .line 65
    .line 66
    iget v11, v10, Lv4/h;->c:I

    .line 67
    .line 68
    iget v12, v10, Lv4/h;->b:I

    .line 69
    .line 70
    if-nez v11, :cond_49

    .line 71
    .line 72
    const/4 v13, 0x1

    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    const/4 v13, 0x0

    .line 75
    :goto_4a
    iget-object v10, v10, Lv4/h;->a:Lv4/p;

    .line 76
    .line 77
    const/4 v14, 0x2

    .line 78
    if-eqz v13, :cond_59

    .line 79
    .line 80
    if-ne v12, v14, :cond_55

    .line 81
    .line 82
    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_35

    .line 86
    :cond_55
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_35

    .line 90
    :cond_59
    if-ne v11, v14, :cond_5f

    .line 91
    .line 92
    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_35

    .line 96
    :cond_5f
    if-ne v12, v14, :cond_65

    .line 97
    .line 98
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_35

    .line 102
    :cond_65
    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_35

    .line 106
    :cond_69
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_78

    .line 111
    .line 112
    const-class v1, Ld5/c;

    .line 113
    .line 114
    invoke-static {v1}, Lv4/p;->a(Ljava/lang/Class;)Lv4/p;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :cond_78
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iput-object v1, v3, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 126
    .line 127
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iput-object v1, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 132
    .line 133
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 134
    .line 135
    .line 136
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v3, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 141
    .line 142
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 143
    .line 144
    .line 145
    iput-object v0, v3, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 146
    .line 147
    invoke-interface {v2, v3}, Lv4/d;->create(Lv4/c;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    return-object v0

    .line 152
    :pswitch_97
    iget-object v0, p0, Le5/b;->c:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, Lt4/g;

    .line 155
    .line 156
    iget-object v1, p0, Le5/b;->b:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v1, Landroid/content/Context;

    .line 159
    .line 160
    new-instance v2, Ll5/a;

    .line 161
    .line 162
    invoke-virtual {v0}, Lt4/g;->d()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    iget-object v0, v0, Lt4/g;->d:Lv4/e;

    .line 167
    .line 168
    const-class v4, Ld5/c;

    .line 169
    .line 170
    invoke-virtual {v0, v4}, Lv4/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Ld5/c;

    .line 175
    .line 176
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 177
    .line 178
    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 180
    .line 181
    const/16 v4, 0x18

    .line 182
    .line 183
    if-ge v0, v4, :cond_b9

    .line 184
    .line 185
    goto :goto_c1

    .line 186
    :cond_b9
    if-lt v0, v4, :cond_c0

    .line 187
    .line 188
    invoke-static {v1}, Lz/a;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    goto :goto_c1

    .line 193
    :cond_c0
    const/4 v1, 0x0

    .line 194
    :goto_c1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v4, "com.google.firebase.common.prefs:"

    .line 197
    .line 198
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    const/4 v3, 0x0

    .line 209
    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    const-string v3, "firebase_data_collection_default_enabled"

    .line 214
    .line 215
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    const/4 v5, 0x1

    .line 220
    if-eqz v4, :cond_e2

    .line 221
    .line 222
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    goto :goto_104

    .line 227
    :cond_e2
    :try_start_e2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    if-eqz v0, :cond_104

    .line 232
    .line 233
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    const/16 v4, 0x80

    .line 238
    .line 239
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    if-eqz v0, :cond_104

    .line 244
    .line 245
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 246
    .line 247
    if-eqz v1, :cond_104

    .line 248
    .line 249
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-eqz v1, :cond_104

    .line 254
    .line 255
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 256
    .line 257
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v5
    :try_end_104
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e2 .. :try_end_104} :catch_104

    .line 261
    :catch_104
    :cond_104
    :goto_104
    iput-boolean v5, v2, Ll5/a;->a:Z

    .line 262
    .line 263
    return-object v2

    .line 264
    :pswitch_107
    iget-object v0, p0, Le5/b;->b:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v0, Landroid/content/Context;

    .line 267
    .line 268
    iget-object v1, p0, Le5/b;->c:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v1, Ljava/lang/String;

    .line 271
    .line 272
    new-instance v2, Lcom/google/firebase/messaging/b0;

    .line 273
    .line 274
    invoke-direct {v2, v0, v1}, Lcom/google/firebase/messaging/b0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    return-object v2

    .line 278
    nop

    .line 279
    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_107
        :pswitch_97
    .end packed-switch
.end method
