###### Class o3.a (o3.a)
.class public Lo3/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ls5/n;


# static fields
.field public static b:Lo3/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lo3/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static b()Lq2/k;
    .registers 17

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Lr6/d;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v2, v1, v3}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    new-instance v5, Lr6/d;

    .line 18
    .line 19
    invoke-direct {v5, v4, v3}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/16 v4, 0x9

    .line 23
    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    new-instance v6, Lr6/d;

    .line 29
    .line 30
    invoke-direct {v6, v4, v3}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/16 v4, 0x11

    .line 34
    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    new-instance v7, Lr6/d;

    .line 40
    .line 41
    invoke-direct {v7, v4, v3}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const/16 v4, 0x155

    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    new-instance v8, Lr6/d;

    .line 51
    .line 52
    invoke-direct {v8, v4, v3}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/4 v4, 0x5

    .line 56
    new-array v4, v4, [Lr6/d;

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    aput-object v2, v4, v9

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    aput-object v5, v4, v2

    .line 63
    .line 64
    aput-object v6, v4, v0

    .line 65
    .line 66
    const/4 v5, 0x3

    .line 67
    aput-object v7, v4, v5

    .line 68
    .line 69
    aput-object v8, v4, v1

    .line 70
    .line 71
    invoke-static {v4}, Ls6/r;->r([Lr6/d;)Ljava/util/HashMap;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    const/16 v1, 0x66

    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    new-instance v4, Lr6/d;

    .line 82
    .line 83
    invoke-direct {v4, v1, v3}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    const/16 v1, 0xbe

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance v6, Lr6/d;

    .line 93
    .line 94
    invoke-direct {v6, v1, v3}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    const/16 v1, 0x19c

    .line 98
    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    new-instance v7, Lr6/d;

    .line 104
    .line 105
    invoke-direct {v7, v1, v3}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    new-array v1, v5, [Lr6/d;

    .line 109
    .line 110
    aput-object v4, v1, v9

    .line 111
    .line 112
    aput-object v6, v1, v2

    .line 113
    .line 114
    aput-object v7, v1, v0

    .line 115
    .line 116
    invoke-static {v1}, Ls6/r;->r([Lr6/d;)Ljava/util/HashMap;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    new-instance v10, Lq2/k;

    .line 121
    .line 122
    const/4 v15, 0x0

    .line 123
    const/16 v16, 0x0

    .line 124
    .line 125
    const/4 v11, 0x0

    .line 126
    const/4 v14, 0x0

    .line 127
    invoke-direct/range {v10 .. v16}, Lq2/k;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-object v10
.end method

.method public static g(Lr0/b;Landroid/text/Editable;IIZ)Z
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_ef

    .line 3
    .line 4
    if-ltz p2, :cond_ef

    .line 5
    .line 6
    if-gez p3, :cond_9

    .line 7
    .line 8
    goto/16 :goto_ef

    .line 9
    .line 10
    :cond_9
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, -0x1

    .line 19
    if-eq v1, v3, :cond_ef

    .line 20
    .line 21
    if-eq v2, v3, :cond_ef

    .line 22
    .line 23
    if-eq v1, v2, :cond_1a

    .line 24
    .line 25
    goto/16 :goto_ef

    .line 26
    .line 27
    :cond_1a
    const/4 v4, 0x1

    .line 28
    if-eqz p4, :cond_a5

    .line 29
    .line 30
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    if-ltz v1, :cond_2c

    .line 39
    .line 40
    if-ge p4, v1, :cond_2a

    .line 41
    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    if-gez p2, :cond_2e

    .line 44
    .line 45
    :cond_2c
    :goto_2c
    move v1, v3

    .line 46
    goto :goto_5d

    .line 47
    :cond_2e
    :goto_2e
    move p4, v0

    .line 48
    :goto_2f
    if-nez p2, :cond_32

    .line 49
    .line 50
    goto :goto_5d

    .line 51
    :cond_32
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    if-gez v1, :cond_3b

    .line 54
    .line 55
    if-eqz p4, :cond_39

    .line 56
    .line 57
    goto :goto_2c

    .line 58
    :cond_39
    move v1, v0

    .line 59
    goto :goto_5d

    .line 60
    :cond_3b
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz p4, :cond_4b

    .line 65
    .line 66
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    if-nez p4, :cond_48

    .line 71
    .line 72
    goto :goto_2c

    .line 73
    :cond_48
    add-int/lit8 p2, p2, -0x1

    .line 74
    .line 75
    goto :goto_2e

    .line 76
    :cond_4b
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_54

    .line 81
    .line 82
    add-int/lit8 p2, p2, -0x1

    .line 83
    .line 84
    goto :goto_2f

    .line 85
    :cond_54
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 86
    .line 87
    .line 88
    move-result p4

    .line 89
    if-eqz p4, :cond_5b

    .line 90
    .line 91
    goto :goto_2c

    .line 92
    :cond_5b
    move p4, v4

    .line 93
    goto :goto_2f

    .line 94
    :goto_5d
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    if-ltz v2, :cond_6c

    .line 103
    .line 104
    if-ge p3, v2, :cond_6a

    .line 105
    .line 106
    goto :goto_6c

    .line 107
    :cond_6a
    if-gez p2, :cond_6e

    .line 108
    .line 109
    :cond_6c
    :goto_6c
    move p3, v3

    .line 110
    goto :goto_a0

    .line 111
    :cond_6e
    :goto_6e
    move p4, v0

    .line 112
    :goto_6f
    if-nez p2, :cond_73

    .line 113
    .line 114
    move p3, v2

    .line 115
    goto :goto_a0

    .line 116
    :cond_73
    if-lt v2, p3, :cond_78

    .line 117
    .line 118
    if-eqz p4, :cond_a0

    .line 119
    .line 120
    goto :goto_6c

    .line 121
    :cond_78
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz p4, :cond_8a

    .line 126
    .line 127
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 128
    .line 129
    .line 130
    move-result p4

    .line 131
    if-nez p4, :cond_85

    .line 132
    .line 133
    goto :goto_6c

    .line 134
    :cond_85
    add-int/lit8 p2, p2, -0x1

    .line 135
    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 137
    .line 138
    goto :goto_6e

    .line 139
    :cond_8a
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-nez v6, :cond_95

    .line 144
    .line 145
    add-int/lit8 p2, p2, -0x1

    .line 146
    .line 147
    add-int/lit8 v2, v2, 0x1

    .line 148
    .line 149
    goto :goto_6f

    .line 150
    :cond_95
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 151
    .line 152
    .line 153
    move-result p4

    .line 154
    if-eqz p4, :cond_9c

    .line 155
    .line 156
    goto :goto_6c

    .line 157
    :cond_9c
    add-int/lit8 v2, v2, 0x1

    .line 158
    .line 159
    move p4, v4

    .line 160
    goto :goto_6f

    .line 161
    :cond_a0
    :goto_a0
    if-eq v1, v3, :cond_ef

    .line 162
    .line 163
    if-ne p3, v3, :cond_b3

    .line 164
    .line 165
    goto :goto_ef

    .line 166
    :cond_a5
    sub-int/2addr v1, p2

    .line 167
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    add-int/2addr v2, p3

    .line 172
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 177
    .line 178
    .line 179
    move-result p3

    .line 180
    :cond_b3
    const-class p2, Lp0/w;

    .line 181
    .line 182
    invoke-interface {p1, v1, p3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    check-cast p2, [Lp0/w;

    .line 187
    .line 188
    if-eqz p2, :cond_ef

    .line 189
    .line 190
    array-length p4, p2

    .line 191
    if-lez p4, :cond_ef

    .line 192
    .line 193
    array-length p4, p2

    .line 194
    move v2, v0

    .line 195
    :goto_c2
    if-ge v2, p4, :cond_d9

    .line 196
    .line 197
    aget-object v3, p2, v2

    .line 198
    .line 199
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    .line 212
    .line 213
    .line 214
    move-result p3

    .line 215
    add-int/lit8 v2, v2, 0x1

    .line 216
    .line 217
    goto :goto_c2

    .line 218
    :cond_d9
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 223
    .line 224
    .line 225
    move-result p4

    .line 226
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 227
    .line 228
    .line 229
    move-result p3

    .line 230
    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->beginBatchEdit()Z

    .line 231
    .line 232
    .line 233
    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->endBatchEdit()Z

    .line 237
    .line 238
    .line 239
    return v4

    .line 240
    :cond_ef
    :goto_ef
    return v0
.end method

.method public static i(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "string"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lo3/a;->k(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static varargs j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 1
    const-string p0, "tag"

    .line 2
    .line 3
    invoke-static {p0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lx1/r;->b:Ljava/util/HashSet;

    .line 7
    .line 8
    monitor-enter p0

    .line 9
    monitor-exit p0

    .line 10
    return-void
.end method

.method public static k(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string p0, "tag"

    .line 2
    .line 3
    invoke-static {p0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "string"

    .line 7
    .line 8
    invoke-static {p0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lx1/r;->b:Ljava/util/HashSet;

    .line 12
    .line 13
    monitor-enter p0

    .line 14
    monitor-exit p0

    .line 15
    return-void
.end method

.method public static l(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .registers 12

    .line 1
    const-string v0, "items"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_63

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_10

    .line 15
    .line 16
    goto :goto_63

    .line 17
    :cond_10
    new-instance v1, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    move v4, v3

    .line 28
    :goto_1b
    if-ge v4, v2, :cond_62

    .line 29
    .line 30
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    if-nez v5, :cond_24

    .line 35
    .line 36
    goto :goto_5f

    .line 37
    :cond_24
    const-string v6, "code"

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-nez v6, :cond_2d

    .line 44
    .line 45
    goto :goto_5f

    .line 46
    :cond_2d
    const-string v7, "subcodes"

    .line 47
    .line 48
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    if-eqz v5, :cond_57

    .line 53
    .line 54
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-lez v7, :cond_57

    .line 59
    .line 60
    new-instance v7, Ljava/util/HashSet;

    .line 61
    .line 62
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    move v9, v3

    .line 70
    :goto_45
    if-ge v9, v8, :cond_58

    .line 71
    .line 72
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->optInt(I)I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    if-eqz v10, :cond_54

    .line 77
    .line 78
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :cond_54
    add-int/lit8 v9, v9, 0x1

    .line 86
    .line 87
    goto :goto_45

    .line 88
    :cond_57
    move-object v7, v0

    .line 89
    :cond_58
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :goto_5f
    add-int/lit8 v4, v4, 0x1

    .line 97
    .line 98
    goto :goto_1b

    .line 99
    :cond_62
    return-object v1

    .line 100
    :cond_63
    :goto_63
    return-object v0
.end method

.method public static q()V
    .registers 7

    .line 1
    invoke-static {}, Lq2/g0;->z()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {}, Landroid/support/v4/media/session/a;->d()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_11

    .line 14
    .line 15
    new-array v0, v1, [Ljava/io/File;

    .line 16
    .line 17
    goto :goto_1f

    .line 18
    :cond_11
    new-instance v2, Lm1/g;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-direct {v2, v3}, Lm1/g;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1f

    .line 29
    .line 30
    new-array v0, v1, [Ljava/io/File;

    .line 31
    .line 32
    :cond_1f
    :goto_1f
    new-instance v2, Ljava/util/ArrayList;

    .line 33
    .line 34
    array-length v3, v0

    .line 35
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    array-length v3, v0

    .line 39
    move v4, v1

    .line 40
    :goto_27
    if-ge v4, v3, :cond_35

    .line 41
    .line 42
    aget-object v5, v0, v4

    .line 43
    .line 44
    invoke-static {v5}, La2/c;->i(Ljava/io/File;)Ls2/d;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    goto :goto_27

    .line 54
    :cond_35
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    move v4, v1

    .line 64
    :cond_3f
    :goto_3f
    if-ge v4, v3, :cond_54

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    move-object v6, v5

    .line 73
    check-cast v6, Ls2/d;

    .line 74
    .line 75
    invoke-virtual {v6}, Ls2/d;->a()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_3f

    .line 80
    .line 81
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_3f

    .line 85
    :cond_54
    new-instance v2, Lg0/a;

    .line 86
    .line 87
    const/4 v3, 0x2

    .line 88
    invoke-direct {v2, v3}, Lg0/a;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v2}, Ls6/g;->u(Ljava/util/ArrayList;Ljava/util/Comparator;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v2, Lorg/json/JSONArray;

    .line 96
    .line 97
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    const/4 v4, 0x5

    .line 105
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    invoke-static {v1, v3}, La2/c;->m(II)Lh7/c;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lh7/a;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    :goto_74
    move-object v3, v1

    .line 118
    check-cast v3, Lh7/b;

    .line 119
    .line 120
    iget-boolean v4, v3, Lh7/b;->c:Z

    .line 121
    .line 122
    if-eqz v4, :cond_87

    .line 123
    .line 124
    invoke-virtual {v3}, Lh7/b;->nextInt()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 133
    .line 134
    .line 135
    goto :goto_74

    .line 136
    :cond_87
    new-instance v1, Lt2/b;

    .line 137
    .line 138
    const/4 v3, 0x1

    .line 139
    invoke-direct {v1, v0, v3}, Lt2/b;-><init>(Ljava/util/List;I)V

    .line 140
    .line 141
    .line 142
    const-string v0, "crash_reports"

    .line 143
    .line 144
    invoke-static {v0, v2, v1}, Landroid/support/v4/media/session/a;->j(Ljava/lang/String;Lorg/json/JSONArray;Lx1/v;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lq2/k;
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-object v0, Lq2/k;->e:Lq2/k;

    .line 3
    .line 4
    if-nez v0, :cond_e

    .line 5
    .line 6
    invoke-static {}, Lo3/a;->b()Lq2/k;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lq2/k;->e:Lq2/k;

    .line 11
    .line 12
    goto :goto_e

    .line 13
    :catchall_c
    move-exception v0

    .line 14
    goto :goto_17

    .line 15
    :cond_e
    :goto_e
    sget-object v0, Lq2/k;->e:Lq2/k;

    .line 16
    .line 17
    const-string v1, "null cannot be cast to non-null type com.facebook.internal.FacebookRequestErrorClassification"

    .line 18
    .line 19
    invoke-static {v1, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_c

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_c

    .line 25
    throw v0
.end method

.method public declared-synchronized c()Lq2/k;
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lq2/w;->b(Ljava/lang/String;)Lq2/t;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_15

    .line 11
    .line 12
    sget-object v0, Lq2/k;->d:Lo3/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lo3/a;->a()Lq2/k;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :catchall_13
    move-exception v0

    .line 21
    goto :goto_19

    .line 22
    :cond_15
    :try_start_15
    iget-object v0, v0, Lq2/t;->e:Lq2/k;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_13

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object v0

    .line 26
    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_13

    .line 27
    throw v0
.end method

.method public d()Lx1/e;
    .registers 4

    .line 1
    sget-object v0, Lx1/e;->g:Lx1/e;

    .line 2
    .line 3
    if-nez v0, :cond_2b

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_5
    sget-object v0, Lx1/e;->g:Lx1/e;

    .line 7
    .line 8
    if-nez v0, :cond_27

    .line 9
    .line 10
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ly0/b;->a(Landroid/content/Context;)Ly0/b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "getInstance(applicationContext)"

    .line 19
    .line 20
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lx1/b;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, v2}, Lx1/b;-><init>(I)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lx1/e;

    .line 30
    .line 31
    invoke-direct {v2, v0, v1}, Lx1/e;-><init>(Ly0/b;Lx1/b;)V

    .line 32
    .line 33
    .line 34
    sput-object v2, Lx1/e;->g:Lx1/e;
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_25

    .line 35
    .line 36
    move-object v0, v2

    .line 37
    goto :goto_27

    .line 38
    :catchall_25
    move-exception v0

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    :goto_27
    monitor-exit p0

    .line 41
    return-object v0

    .line 42
    :goto_29
    monitor-exit p0

    .line 43
    throw v0

    .line 44
    :cond_2b
    return-object v0
.end method

.method public e(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 4

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 8
    .line 9
    return-object p1
.end method

.method public f()J
    .registers 3

    .line 1
    iget v0, p0, Lo3/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_10

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0

    .line 11
    :pswitch_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    nop

    .line 17
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method public h(Ljava/lang/CharSequence;)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public m()Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, Lo3/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3c

    .line 4
    .line 5
    .line 6
    new-instance v0, Ls5/m;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1}, Ls5/m;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :pswitch_c
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_12
    new-instance v0, Ljava/util/TreeMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_1e
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :pswitch_24
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :pswitch_2a
    new-instance v0, Ljava/util/ArrayDeque;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :pswitch_30
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :pswitch_36
    new-instance v0, Ljava/util/TreeSet;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :pswitch_data_3c
    .packed-switch 0xd
        :pswitch_36
        :pswitch_30
        :pswitch_2a
        :pswitch_24
        :pswitch_1e
        :pswitch_18
        :pswitch_12
        :pswitch_c
    .end packed-switch
.end method

.method public n(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .registers 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_38

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lv4/b;

    .line 25
    .line 26
    iget-object v3, v1, Lv4/b;->a:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v3, :cond_34

    .line 29
    .line 30
    new-instance v8, Lb2/d;

    .line 31
    .line 32
    const/16 v2, 0x9

    .line 33
    .line 34
    invoke-direct {v8, v3, v1, v2}, Lb2/d;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lv4/b;

    .line 38
    .line 39
    iget-object v4, v1, Lv4/b;->b:Ljava/util/Set;

    .line 40
    .line 41
    iget-object v5, v1, Lv4/b;->c:Ljava/util/Set;

    .line 42
    .line 43
    iget v6, v1, Lv4/b;->d:I

    .line 44
    .line 45
    iget v7, v1, Lv4/b;->e:I

    .line 46
    .line 47
    iget-object v9, v1, Lv4/b;->g:Ljava/util/Set;

    .line 48
    .line 49
    invoke-direct/range {v2 .. v9}, Lv4/b;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILv4/d;Ljava/util/Set;)V

    .line 50
    .line 51
    .line 52
    move-object v1, v2

    .line 53
    :cond_34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_d

    .line 57
    :cond_38
    return-object v0
.end method

.method public declared-synchronized o(Ljava/lang/String;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "accessToken"

    .line 3
    .line 4
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lx1/e0;->b:Lx1/e0;

    .line 8
    .line 9
    invoke-static {v0}, Lx1/r;->h(Lx1/e0;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lo3/a;->p(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    .line 19
    throw p1
.end method

.method public declared-synchronized p(Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "ACCESS_TOKEN_REMOVED"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_3
    const-string v1, "original"

    .line 5
    .line 6
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lq2/z;->d:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    .line 18
    throw p1
.end method

.method public r(Lcom/google/android/gms/internal/measurement/y4;F)V
    .registers 8

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    check-cast v0, Lr/a;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroidx/cardview/widget/CardView;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget v4, v0, Lr/a;->e:F

    .line 20
    .line 21
    cmpl-float v4, p2, v4

    .line 22
    .line 23
    if-nez v4, :cond_21

    .line 24
    .line 25
    iget-boolean v4, v0, Lr/a;->f:Z

    .line 26
    .line 27
    if-ne v4, v2, :cond_21

    .line 28
    .line 29
    iget-boolean v4, v0, Lr/a;->g:Z

    .line 30
    .line 31
    if-ne v4, v3, :cond_21

    .line 32
    .line 33
    goto :goto_2e

    .line 34
    :cond_21
    iput p2, v0, Lr/a;->e:F

    .line 35
    .line 36
    iput-boolean v2, v0, Lr/a;->f:Z

    .line 37
    .line 38
    iput-boolean v3, v0, Lr/a;->g:Z

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    invoke-virtual {v0, p2}, Lr/a;->b(Landroid/graphics/Rect;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 45
    .line 46
    .line 47
    :goto_2e
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_39

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/google/android/gms/internal/measurement/y4;->F(IIII)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_39
    iget-object p2, p1, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    check-cast p2, Lr/a;

    .line 63
    .line 64
    iget v0, p2, Lr/a;->e:F

    .line 65
    .line 66
    iget p2, p2, Lr/a;->a:F

    .line 67
    .line 68
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-static {v0, p2, v2}, Lr/b;->a(FFZ)F

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    float-to-double v2, v2

    .line 77
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    double-to-int v2, v2

    .line 82
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-static {v0, p2, v1}, Lr/b;->b(FFZ)F

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    float-to-double v0, p2

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 92
    .line 93
    .line 94
    move-result-wide v0

    .line 95
    double-to-int p2, v0

    .line 96
    invoke-virtual {p1, v2, p2, v2, p2}, Lcom/google/android/gms/internal/measurement/y4;->F(IIII)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
