###### Class com.google.android.gms.internal.measurement.i5 (com.google.android.gms.internal.measurement.i5)
.class public abstract Lcom/google/android/gms/internal/measurement/i5;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field protected zza:I


# direct methods
.method public static b(Ljava/lang/Iterable;Ljava/util/List;)V
    .registers 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/m6;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_66

    .line 10
    .line 11
    check-cast p0, Lcom/google/android/gms/internal/measurement/m6;

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/m6;->zza()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    move-object v0, p1

    .line 18
    check-cast v0, Lcom/google/android/gms/internal/measurement/m6;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_fb

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-nez v2, :cond_48

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    sub-int/2addr p0, p1

    .line 45
    const-string v1, "Element at index "

    .line 46
    .line 47
    const-string v2, " is null."

    .line 48
    .line 49
    invoke-static {p0, v1, v2}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-int/lit8 v1, v1, -0x1

    .line 58
    .line 59
    :goto_3a
    if-lt v1, p1, :cond_42

    .line 60
    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    add-int/lit8 v1, v1, -0x1

    .line 65
    .line 66
    goto :goto_3a

    .line 67
    :cond_42
    new-instance p1, Ljava/lang/NullPointerException;

    .line 68
    .line 69
    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_48
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/p5;

    .line 74
    .line 75
    if-eqz v3, :cond_52

    .line 76
    .line 77
    check-cast v2, Lcom/google/android/gms/internal/measurement/p5;

    .line 78
    .line 79
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/m6;->zza()V

    .line 80
    .line 81
    .line 82
    goto :goto_1b

    .line 83
    :cond_52
    instance-of v3, v2, [B

    .line 84
    .line 85
    if-eqz v3, :cond_60

    .line 86
    .line 87
    check-cast v2, [B

    .line 88
    .line 89
    array-length v3, v2

    .line 90
    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/measurement/p5;->c([BII)Lcom/google/android/gms/internal/measurement/p5;

    .line 91
    .line 92
    .line 93
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/m6;->zza()V

    .line 94
    .line 95
    .line 96
    goto :goto_1b

    .line 97
    :cond_60
    check-cast v2, Ljava/lang/String;

    .line 98
    .line 99
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_1b

    .line 103
    :cond_66
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/x6;

    .line 104
    .line 105
    if-eqz v0, :cond_70

    .line 106
    .line 107
    check-cast p0, Ljava/util/Collection;

    .line 108
    .line 109
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_70
    instance-of v0, p0, Ljava/util/Collection;

    .line 114
    .line 115
    if-eqz v0, :cond_be

    .line 116
    .line 117
    move-object v0, p0

    .line 118
    check-cast v0, Ljava/util/Collection;

    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    instance-of v2, p1, Ljava/util/ArrayList;

    .line 125
    .line 126
    if-eqz v2, :cond_8a

    .line 127
    .line 128
    move-object v2, p1

    .line 129
    check-cast v2, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    add-int/2addr v3, v0

    .line 136
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 137
    .line 138
    .line 139
    :cond_8a
    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/y6;

    .line 140
    .line 141
    if-eqz v2, :cond_be

    .line 142
    .line 143
    move-object v2, p1

    .line 144
    check-cast v2, Lcom/google/android/gms/internal/measurement/y6;

    .line 145
    .line 146
    iget v3, v2, Lcom/google/android/gms/internal/measurement/y6;->c:I

    .line 147
    .line 148
    add-int/2addr v3, v0

    .line 149
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/y6;->b:[Ljava/lang/Object;

    .line 150
    .line 151
    array-length v4, v0

    .line 152
    if-gt v3, v4, :cond_9a

    .line 153
    .line 154
    goto :goto_be

    .line 155
    :cond_9a
    array-length v4, v0

    .line 156
    const/16 v5, 0xa

    .line 157
    .line 158
    if-nez v4, :cond_a8

    .line 159
    .line 160
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    new-array v0, v0, [Ljava/lang/Object;

    .line 165
    .line 166
    iput-object v0, v2, Lcom/google/android/gms/internal/measurement/y6;->b:[Ljava/lang/Object;

    .line 167
    .line 168
    goto :goto_be

    .line 169
    :cond_a8
    array-length v0, v0

    .line 170
    :goto_a9
    if-ge v0, v3, :cond_b6

    .line 171
    .line 172
    mul-int/lit8 v0, v0, 0x3

    .line 173
    .line 174
    div-int/lit8 v0, v0, 0x2

    .line 175
    .line 176
    add-int/lit8 v0, v0, 0x1

    .line 177
    .line 178
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    goto :goto_a9

    .line 183
    :cond_b6
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/y6;->b:[Ljava/lang/Object;

    .line 184
    .line 185
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iput-object v0, v2, Lcom/google/android/gms/internal/measurement/y6;->b:[Ljava/lang/Object;

    .line 190
    .line 191
    :cond_be
    :goto_be
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    instance-of v2, p0, Ljava/util/List;

    .line 196
    .line 197
    const/4 v3, 0x0

    .line 198
    if-eqz v2, :cond_e3

    .line 199
    .line 200
    instance-of v2, p0, Ljava/util/RandomAccess;

    .line 201
    .line 202
    if-eqz v2, :cond_e3

    .line 203
    .line 204
    check-cast p0, Ljava/util/List;

    .line 205
    .line 206
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    :goto_d1
    if-ge v1, v2, :cond_fb

    .line 211
    .line 212
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    if-eqz v4, :cond_df

    .line 217
    .line 218
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    add-int/lit8 v1, v1, 0x1

    .line 222
    .line 223
    goto :goto_d1

    .line 224
    :cond_df
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/y5;->b(Ljava/util/List;I)V

    .line 225
    .line 226
    .line 227
    throw v3

    .line 228
    :cond_e3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    :goto_e7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_fb

    .line 237
    .line 238
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    if-eqz v1, :cond_f7

    .line 243
    .line 244
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_e7

    .line 248
    :cond_f7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/y5;->b(Ljava/util/List;I)V

    .line 249
    .line 250
    .line 251
    throw v3

    .line 252
    :cond_fb
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/measurement/b7;)I
.end method

.method public final c()[B
    .registers 7

    .line 1
    :try_start_0
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/z5;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/z5;->a(Lcom/google/android/gms/internal/measurement/b7;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-array v1, v0, [B

    .line 10
    .line 11
    new-instance v2, Lcom/google/android/gms/internal/measurement/q5;

    .line 12
    .line 13
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/q5;-><init>([BI)V

    .line 14
    .line 15
    .line 16
    move-object v0, p0

    .line 17
    check-cast v0, Lcom/google/android/gms/internal/measurement/z5;

    .line 18
    .line 19
    sget-object v3, Lcom/google/android/gms/internal/measurement/z6;->c:Lcom/google/android/gms/internal/measurement/z6;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/b7;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/q5;->b:Lcom/google/android/gms/internal/measurement/o6;

    .line 33
    .line 34
    if-eqz v4, :cond_24

    .line 35
    .line 36
    goto :goto_2f

    .line 37
    :cond_24
    new-instance v4, Lcom/google/android/gms/internal/measurement/o6;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    sget-object v5, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    .line 43
    .line 44
    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 45
    .line 46
    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/q5;->b:Lcom/google/android/gms/internal/measurement/o6;

    .line 47
    .line 48
    :goto_2f
    invoke-interface {v3, v0, v4}, Lcom/google/android/gms/internal/measurement/b7;->h(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/o6;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/q5;->i()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_39

    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v1, "Did not write as much data as expected."

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_41} :catch_41

    .line 66
    :catch_41
    move-exception v0

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string v3, "Serializing "

    .line 78
    .line 79
    const-string v4, " to a byte array threw an IOException (should never happen)."

    .line 80
    .line 81
    invoke-static {v3, v2, v4}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw v1
.end method
