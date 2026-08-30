###### Class b2.d (b2.d)
.class public final synthetic Lb2/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lp4/d;
.implements Lp4/a;
.implements Lk2/l;
.implements Ln3/b;
.implements Lm3/f;
.implements Lm6/e;
.implements Lv4/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 1
    iput p2, p0, Lb2/d;->a:I

    iput-object p1, p0, Lb2/d;->b:Ljava/lang/Object;

    iput-object p3, p0, Lb2/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 4

    .line 2
    iput p3, p0, Lb2/d;->a:I

    iput-object p1, p0, Lb2/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Lb2/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 8

    .line 1
    iget v0, p0, Lb2/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_78

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb2/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ll3/i;

    .line 9
    .line 10
    iget-object v1, p0, Lb2/d;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_3c

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    .line 34
    iget-object v3, v0, Ll3/i;->i:Lm3/c;

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    int-to-long v4, v4

    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/String;

    .line 52
    .line 53
    check-cast v3, Lm3/h;

    .line 54
    .line 55
    sget-object v6, Li3/c;->g:Li3/c;

    .line 56
    .line 57
    invoke-virtual {v3, v4, v5, v6, v2}, Lm3/h;->s(JLi3/c;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_15

    .line 61
    :cond_3c
    const/4 v0, 0x0

    .line 62
    return-object v0

    .line 63
    :pswitch_3e
    iget-object v0, p0, Lb2/d;->b:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Ll3/i;

    .line 66
    .line 67
    iget-object v1, p0, Lb2/d;->c:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Ljava/lang/Iterable;

    .line 70
    .line 71
    iget-object v0, v0, Ll3/i;->c:Lm3/d;

    .line 72
    .line 73
    check-cast v0, Lm3/h;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_58

    .line 87
    .line 88
    goto :goto_75

    .line 89
    :cond_58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v3, "DELETE FROM events WHERE _id in "

    .line 92
    .line 93
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Lm3/h;->u(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0}, Lm3/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 116
    .line 117
    .line 118
    :goto_75
    const/4 v0, 0x0

    .line 119
    return-object v0

    .line 120
    nop

    .line 121
    :pswitch_data_78
    .packed-switch 0x4
        :pswitch_3e
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    .line 1
    iget-object v0, p0, Lb2/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm3/h;

    .line 4
    .line 5
    iget-object v1, p0, Lb2/d;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lf3/i;

    .line 8
    .line 9
    move-object v2, p1

    .line 10
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    iget-object p1, v0, Lm3/h;->d:Lm3/a;

    .line 13
    .line 14
    iget v3, p1, Lm3/a;->b:I

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1, v3}, Lm3/h;->o(Landroid/database/sqlite/SQLiteDatabase;Lf3/i;I)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v10

    .line 20
    invoke-static {}, Lc3/d;->values()[Lc3/d;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    array-length v4, v3

    .line 25
    const/4 v11, 0x0

    .line 26
    move v5, v11

    .line 27
    :goto_1a
    if-ge v5, v4, :cond_54

    .line 28
    .line 29
    aget-object v6, v3, v5

    .line 30
    .line 31
    iget-object v7, v1, Lf3/i;->c:Lc3/d;

    .line 32
    .line 33
    if-ne v6, v7, :cond_23

    .line 34
    .line 35
    goto :goto_49

    .line 36
    :cond_23
    iget v7, p1, Lm3/a;->b:I

    .line 37
    .line 38
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    sub-int/2addr v7, v8

    .line 43
    if-gtz v7, :cond_2d

    .line 44
    .line 45
    goto :goto_54

    .line 46
    :cond_2d
    invoke-static {}, Lf3/i;->a()Lc5/h;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    iget-object v9, v1, Lf3/i;->a:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v8, v9}, Lc5/h;->v(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    if-eqz v6, :cond_4c

    .line 56
    .line 57
    iput-object v6, v8, Lc5/h;->d:Ljava/lang/Object;

    .line 58
    .line 59
    iget-object v6, v1, Lf3/i;->b:[B

    .line 60
    .line 61
    iput-object v6, v8, Lc5/h;->c:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {v8}, Lc5/h;->g()Lf3/i;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v0, v2, v6, v7}, Lm3/h;->o(Landroid/database/sqlite/SQLiteDatabase;Lf3/i;I)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    .line 73
    .line 74
    :goto_49
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    goto :goto_1a

    .line 77
    :cond_4c
    new-instance p1, Ljava/lang/NullPointerException;

    .line 78
    .line 79
    const-string v0, "Null priority"

    .line 80
    .line 81
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_54
    :goto_54
    new-instance p1, Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, "event_id IN ("

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    move v1, v11

    .line 98
    :goto_61
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    const/4 v12, 0x1

    .line 103
    if-ge v1, v3, :cond_82

    .line 104
    .line 105
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lm3/b;

    .line 110
    .line 111
    iget-wide v3, v3, Lm3/b;->a:J

    .line 112
    .line 113
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    sub-int/2addr v3, v12

    .line 121
    if-ge v1, v3, :cond_7f

    .line 122
    .line 123
    const/16 v3, 0x2c

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    :cond_7f
    add-int/lit8 v1, v1, 0x1

    .line 129
    .line 130
    goto :goto_61

    .line 131
    :cond_82
    const/16 v1, 0x29

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, "name"

    .line 137
    .line 138
    const-string v3, "value"

    .line 139
    .line 140
    const-string v4, "event_id"

    .line 141
    .line 142
    filled-new-array {v4, v1, v3}, [Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    const/4 v8, 0x0

    .line 151
    const/4 v9, 0x0

    .line 152
    const-string v3, "event_metadata"

    .line 153
    .line 154
    const/4 v6, 0x0

    .line 155
    const/4 v7, 0x0

    .line 156
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    :goto_9f
    :try_start_9f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_d3

    .line 165
    .line 166
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 167
    .line 168
    .line 169
    move-result-wide v2

    .line 170
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Ljava/util/Set;

    .line 179
    .line 180
    if-nez v0, :cond_c1

    .line 181
    .line 182
    new-instance v0, Ljava/util/HashSet;

    .line 183
    .line 184
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    :cond_c1
    new-instance v2, Lm3/g;

    .line 195
    .line 196
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    const/4 v4, 0x2

    .line 201
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-direct {v2, v3, v4}, Lm3/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_d2
    .catchall {:try_start_9f .. :try_end_d2} :catchall_12b

    .line 209
    .line 210
    .line 211
    goto :goto_9f

    .line 212
    :cond_d3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v10}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    :goto_da
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_12a

    .line 224
    .line 225
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    check-cast v1, Lm3/b;

    .line 230
    .line 231
    iget-wide v2, v1, Lm3/b;->a:J

    .line 232
    .line 233
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-nez v4, :cond_f3

    .line 242
    .line 243
    goto :goto_da

    .line 244
    :cond_f3
    iget-object v4, v1, Lm3/b;->c:Lf3/h;

    .line 245
    .line 246
    invoke-virtual {v4}, Lf3/h;->c()Lcom/google/android/gms/common/internal/g;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    check-cast v5, Ljava/util/Set;

    .line 259
    .line 260
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    :goto_107
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    if-eqz v6, :cond_11b

    .line 269
    .line 270
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    check-cast v6, Lm3/g;

    .line 275
    .line 276
    iget-object v7, v6, Lm3/g;->a:Ljava/lang/String;

    .line 277
    .line 278
    iget-object v6, v6, Lm3/g;->b:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v4, v7, v6}, Lcom/google/android/gms/common/internal/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto :goto_107

    .line 284
    :cond_11b
    iget-object v1, v1, Lm3/b;->b:Lf3/i;

    .line 285
    .line 286
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/g;->c()Lf3/h;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    new-instance v5, Lm3/b;

    .line 291
    .line 292
    invoke-direct {v5, v2, v3, v1, v4}, Lm3/b;-><init>(JLf3/i;Lf3/h;)V

    .line 293
    .line 294
    .line 295
    invoke-interface {v0, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    goto :goto_da

    .line 299
    :cond_12a
    return-object v10

    .line 300
    :catchall_12b
    move-exception v0

    .line 301
    move-object p1, v0

    .line 302
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 303
    .line 304
    .line 305
    throw p1
.end method

.method public b(Lp4/i;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lb2/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/firebase/messaging/j;

    .line 4
    .line 5
    iget-object v1, p0, Lb2/d;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_9
    iget-object v2, v0, Lcom/google/firebase/messaging/j;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ls/e;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ls/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p1

    .line 19
    :catchall_12
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    .line 21
    throw p1
.end method

.method public c(Ljava/io/File;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lb2/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll2/c;

    .line 4
    .line 5
    iget-object v1, p0, Lb2/d;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ll2/b;

    .line 8
    .line 9
    const-string v2, "$slave"

    .line 10
    .line 11
    invoke-static {v2, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "file"

    .line 15
    .line 16
    invoke-static {v2, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Ll2/c;->g:Ll2/b;

    .line 20
    .line 21
    iput-object p1, v0, Ll2/c;->f:Ljava/io/File;

    .line 22
    .line 23
    iget-object p1, v0, Ll2/c;->h:Ljava/lang/Runnable;

    .line 24
    .line 25
    if-eqz p1, :cond_1d

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 28
    .line 29
    .line 30
    :cond_1d
    return-void
.end method

.method public create(Lv4/c;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget v0, p0, Lb2/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_b6

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb2/d;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lb2/d;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lv4/b;

    .line 13
    .line 14
    :try_start_d
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v1, Lv4/b;->f:Lv4/d;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lv4/d;->create(Lv4/c;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    .line 23
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :catchall_1a
    move-exception p1

    .line 28
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :pswitch_1f
    iget-object v0, p0, Lb2/d;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v1, p0, Lb2/d;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lcom/getcapacitor/n;

    .line 39
    .line 40
    const-class v2, Landroid/content/Context;

    .line 41
    .line 42
    check-cast p1, Lcom/google/firebase/messaging/y;

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Lcom/google/firebase/messaging/y;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/content/Context;

    .line 49
    .line 50
    iget v1, v1, Lcom/getcapacitor/n;->a:I

    .line 51
    .line 52
    packed-switch v1, :pswitch_data_bc

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_49

    .line 68
    .line 69
    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    goto :goto_af

    .line 74
    :cond_49
    const-string p1, ""

    .line 75
    .line 76
    goto :goto_af

    .line 77
    :pswitch_4c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-string v3, "android.hardware.type.television"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_5d

    .line 90
    .line 91
    const-string p1, "tv"

    .line 92
    .line 93
    goto :goto_af

    .line 94
    :cond_5d
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const-string v3, "android.hardware.type.watch"

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_6c

    .line 105
    .line 106
    const-string p1, "watch"

    .line 107
    .line 108
    goto :goto_af

    .line 109
    :cond_6c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const-string v3, "android.hardware.type.automotive"

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_7b

    .line 120
    .line 121
    const-string p1, "auto"

    .line 122
    .line 123
    goto :goto_af

    .line 124
    :cond_7b
    const/16 v2, 0x1a

    .line 125
    .line 126
    if-lt v1, v2, :cond_49

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const-string v1, "android.hardware.type.embedded"

    .line 133
    .line 134
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_49

    .line 139
    .line 140
    const-string p1, "embedded"

    .line 141
    .line 142
    goto :goto_af

    .line 143
    :pswitch_8e
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p1, :cond_49

    .line 148
    .line 149
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 150
    .line 151
    const/16 v2, 0x18

    .line 152
    .line 153
    if-lt v1, v2, :cond_49

    .line 154
    .line 155
    invoke-static {p1}, Lt4/i;->a(Landroid/content/pm/ApplicationInfo;)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    goto :goto_af

    .line 164
    :pswitch_a3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    if-eqz p1, :cond_49

    .line 169
    .line 170
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 171
    .line 172
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    :goto_af
    new-instance v1, Lo5/a;

    .line 177
    .line 178
    invoke-direct {v1, v0, p1}, Lo5/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-object v1

    .line 182
    nop

    .line 183
    :pswitch_data_b6
    .packed-switch 0x8
        :pswitch_1f
    .end packed-switch

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :pswitch_data_bc
    .packed-switch 0x13
        :pswitch_a3
        :pswitch_8e
        :pswitch_4c
    .end packed-switch
.end method

.method public d()V
    .registers 8

    .line 1
    iget-object v0, p0, Lb2/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lq2/t;

    .line 4
    .line 5
    iget-object v1, p0, Lb2/d;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    const-class v2, Lb2/f;

    .line 10
    .line 11
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_11

    .line 16
    .line 17
    goto :goto_66

    .line 18
    :cond_11
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v0, :cond_1d

    .line 21
    .line 22
    :try_start_15
    iget-boolean v0, v0, Lq2/t;->g:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1d

    .line 25
    .line 26
    move v0, v3

    .line 27
    goto :goto_1e

    .line 28
    :catchall_1b
    move-exception v0

    .line 29
    goto :goto_63

    .line 30
    :cond_1d
    move v0, v4

    .line 31
    :goto_1e
    sget-object v5, Lx1/r;->a:Lx1/r;

    .line 32
    .line 33
    sget-object v5, Lx1/j0;->a:Lx1/j0;

    .line 34
    .line 35
    const-class v5, Lx1/j0;

    .line 36
    .line 37
    invoke-static {v5}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v6
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_1b

    .line 41
    if-eqz v6, :cond_2c

    .line 42
    .line 43
    :goto_2a
    move v5, v4

    .line 44
    goto :goto_3d

    .line 45
    :cond_2c
    :try_start_2c
    sget-object v6, Lx1/j0;->a:Lx1/j0;

    .line 46
    .line 47
    invoke-virtual {v6}, Lx1/j0;->e()V

    .line 48
    .line 49
    .line 50
    sget-object v6, Lx1/j0;->g:Lx1/i0;

    .line 51
    .line 52
    invoke-virtual {v6}, Lx1/i0;->a()Z

    .line 53
    .line 54
    .line 55
    move-result v5
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_38

    .line 56
    goto :goto_3d

    .line 57
    :catchall_38
    move-exception v6

    .line 58
    :try_start_39
    invoke-static {v6, v5}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2a

    .line 62
    :goto_3d
    if-eqz v0, :cond_66

    .line 63
    .line 64
    if-eqz v5, :cond_66

    .line 65
    .line 66
    sget-object v0, Lb2/f;->a:Lb2/f;

    .line 67
    .line 68
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_1b

    .line 72
    if-eqz v5, :cond_4a

    .line 73
    .line 74
    goto :goto_66

    .line 75
    :cond_4a
    :try_start_4a
    sget-boolean v5, Lb2/f;->h:Z

    .line 76
    .line 77
    if-eqz v5, :cond_4f

    .line 78
    .line 79
    goto :goto_66

    .line 80
    :cond_4f
    sput-boolean v3, Lb2/f;->h:Z

    .line 81
    .line 82
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    new-instance v5, Lb2/e;

    .line 87
    .line 88
    invoke-direct {v5, v1, v4}, Lb2/e;-><init>(Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5d
    .catchall {:try_start_4a .. :try_end_5d} :catchall_5e

    .line 92
    .line 93
    .line 94
    goto :goto_66

    .line 95
    :catchall_5e
    move-exception v1

    .line 96
    :try_start_5f
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_1b

    .line 97
    .line 98
    .line 99
    goto :goto_66

    .line 100
    :goto_63
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_66
    :goto_66
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lb2/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lb2/d;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    invoke-static {p1}, Lm6/g;->b(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_10

    .line 14
    .line 15
    sget-object p1, Lm6/g;->c:Ljava/lang/String;

    .line 16
    .line 17
    :cond_10
    invoke-static {p1, v0}, Lm6/g;->d(Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onComplete(Lp4/i;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lb2/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/google/firebase/messaging/g;

    .line 4
    .line 5
    iget-object v0, p0, Lb2/d;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/content/Intent;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/g;->a(Landroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
