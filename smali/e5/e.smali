###### Class e5.e (e5.e)
.class public Le5/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ld1/c;
.implements Ly5/d;
.implements Lh3/b;
.implements Lf4/c;
.implements Lg/c;
.implements Lorg/apache/cordova/d0;
.implements Ll/y;


# static fields
.field public static b:Le5/e;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Le5/e;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final d([B[[BI)Ljava/lang/String;
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    .line 6
    .line 7
    array-length v2, v0

    .line 8
    const/4 v4, 0x0

    .line 9
    :goto_8
    if-ge v4, v2, :cond_91

    .line 10
    .line 11
    add-int v5, v4, v2

    .line 12
    .line 13
    div-int/lit8 v5, v5, 0x2

    .line 14
    .line 15
    :goto_e
    const/16 v6, 0xa

    .line 16
    .line 17
    const/4 v7, -0x1

    .line 18
    if-le v5, v7, :cond_1a

    .line 19
    .line 20
    aget-byte v8, v0, v5

    .line 21
    .line 22
    if-eq v8, v6, :cond_1a

    .line 23
    .line 24
    add-int/lit8 v5, v5, -0x1

    .line 25
    .line 26
    goto :goto_e

    .line 27
    :cond_1a
    add-int/lit8 v8, v5, 0x1

    .line 28
    .line 29
    const/4 v9, 0x1

    .line 30
    move v10, v9

    .line 31
    :goto_1e
    add-int v11, v8, v10

    .line 32
    .line 33
    aget-byte v12, v0, v11

    .line 34
    .line 35
    if-eq v12, v6, :cond_27

    .line 36
    .line 37
    add-int/lit8 v10, v10, 0x1

    .line 38
    .line 39
    goto :goto_1e

    .line 40
    :cond_27
    sub-int v6, v11, v8

    .line 41
    .line 42
    move/from16 v12, p2

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v13, 0x0

    .line 46
    const/4 v14, 0x0

    .line 47
    :goto_2e
    if-eqz v10, :cond_34

    .line 48
    .line 49
    const/16 v10, 0x2e

    .line 50
    .line 51
    const/4 v15, 0x0

    .line 52
    goto :goto_41

    .line 53
    :cond_34
    aget-object v15, v1, v12

    .line 54
    .line 55
    aget-byte v15, v15, v13

    .line 56
    .line 57
    sget-object v16, Ls7/b;->a:[B

    .line 58
    .line 59
    and-int/lit16 v15, v15, 0xff

    .line 60
    .line 61
    move/from16 v17, v15

    .line 62
    .line 63
    move v15, v10

    .line 64
    move/from16 v10, v17

    .line 65
    .line 66
    :goto_41
    add-int v16, v8, v14

    .line 67
    .line 68
    aget-byte v3, v0, v16

    .line 69
    .line 70
    sget-object v16, Ls7/b;->a:[B

    .line 71
    .line 72
    and-int/lit16 v3, v3, 0xff

    .line 73
    .line 74
    sub-int/2addr v10, v3

    .line 75
    if-nez v10, :cond_63

    .line 76
    .line 77
    add-int/lit8 v14, v14, 0x1

    .line 78
    .line 79
    add-int/lit8 v13, v13, 0x1

    .line 80
    .line 81
    if-eq v14, v6, :cond_63

    .line 82
    .line 83
    aget-object v3, v1, v12

    .line 84
    .line 85
    array-length v3, v3

    .line 86
    if-ne v3, v13, :cond_61

    .line 87
    .line 88
    array-length v3, v1

    .line 89
    sub-int/2addr v3, v9

    .line 90
    if-ne v12, v3, :cond_5c

    .line 91
    .line 92
    goto :goto_63

    .line 93
    :cond_5c
    add-int/lit8 v12, v12, 0x1

    .line 94
    .line 95
    move v13, v7

    .line 96
    move v10, v9

    .line 97
    goto :goto_2e

    .line 98
    :cond_61
    move v10, v15

    .line 99
    goto :goto_2e

    .line 100
    :cond_63
    :goto_63
    if-gez v10, :cond_67

    .line 101
    .line 102
    :goto_65
    move v2, v5

    .line 103
    goto :goto_8

    .line 104
    :cond_67
    if-lez v10, :cond_6c

    .line 105
    .line 106
    :goto_69
    add-int/lit8 v4, v11, 0x1

    .line 107
    .line 108
    goto :goto_8

    .line 109
    :cond_6c
    sub-int v3, v6, v14

    .line 110
    .line 111
    aget-object v7, v1, v12

    .line 112
    .line 113
    array-length v7, v7

    .line 114
    sub-int/2addr v7, v13

    .line 115
    add-int/lit8 v12, v12, 0x1

    .line 116
    .line 117
    array-length v9, v1

    .line 118
    :goto_75
    if-ge v12, v9, :cond_7e

    .line 119
    .line 120
    aget-object v10, v1, v12

    .line 121
    .line 122
    array-length v10, v10

    .line 123
    add-int/2addr v7, v10

    .line 124
    add-int/lit8 v12, v12, 0x1

    .line 125
    .line 126
    goto :goto_75

    .line 127
    :cond_7e
    if-ge v7, v3, :cond_81

    .line 128
    .line 129
    goto :goto_65

    .line 130
    :cond_81
    if-le v7, v3, :cond_84

    .line 131
    .line 132
    goto :goto_69

    .line 133
    :cond_84
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 134
    .line 135
    const-string v2, "UTF_8"

    .line 136
    .line 137
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    new-instance v2, Ljava/lang/String;

    .line 141
    .line 142
    invoke-direct {v2, v0, v8, v6, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 143
    .line 144
    .line 145
    return-object v2

    .line 146
    :cond_91
    const/4 v0, 0x0

    .line 147
    return-object v0
.end method

.method public static e([[BI)Lb6/b;
    .registers 10

    .line 1
    new-instance v0, Lb6/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v2, p0, v1

    .line 5
    .line 6
    array-length v2, v2

    .line 7
    mul-int/lit8 v3, p1, 0x2

    .line 8
    .line 9
    add-int/2addr v2, v3

    .line 10
    array-length v4, p0

    .line 11
    add-int/2addr v4, v3

    .line 12
    invoke-direct {v0, v2, v4}, Lb6/b;-><init>(II)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v0, Lb6/b;->d:[I

    .line 16
    .line 17
    array-length v3, v2

    .line 18
    move v5, v1

    .line 19
    :goto_12
    if-ge v5, v3, :cond_19

    .line 20
    .line 21
    aput v1, v2, v5

    .line 22
    .line 23
    add-int/lit8 v5, v5, 0x1

    .line 24
    .line 25
    goto :goto_12

    .line 26
    :cond_19
    sub-int/2addr v4, p1

    .line 27
    const/4 v2, 0x1

    .line 28
    sub-int/2addr v4, v2

    .line 29
    move v3, v1

    .line 30
    :goto_1d
    array-length v5, p0

    .line 31
    if-ge v3, v5, :cond_39

    .line 32
    .line 33
    aget-object v5, p0, v3

    .line 34
    .line 35
    move v6, v1

    .line 36
    :goto_23
    aget-object v7, p0, v1

    .line 37
    .line 38
    array-length v7, v7

    .line 39
    if-ge v6, v7, :cond_34

    .line 40
    .line 41
    aget-byte v7, v5, v6

    .line 42
    .line 43
    if-ne v7, v2, :cond_31

    .line 44
    .line 45
    add-int v7, v6, p1

    .line 46
    .line 47
    invoke-virtual {v0, v7, v4}, Lb6/b;->b(II)V

    .line 48
    .line 49
    .line 50
    :cond_31
    add-int/lit8 v6, v6, 0x1

    .line 51
    .line 52
    goto :goto_23

    .line 53
    :cond_34
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    add-int/lit8 v4, v4, -0x1

    .line 56
    .line 57
    goto :goto_1d

    .line 58
    :cond_39
    return-object v0
.end method

.method public static h(Ljava/lang/String;)Le8/j;
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    rem-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    if-nez v0, :cond_36

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    div-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    new-array v1, v0, [B

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_11
    if-ge v2, v0, :cond_30

    .line 19
    .line 20
    mul-int/lit8 v3, v2, 0x2

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-static {v4}, Lf8/b;->a(C)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    shl-int/lit8 v4, v4, 0x4

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Lf8/b;->a(C)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    add-int/2addr v3, v4

    .line 43
    int-to-byte v3, v3

    .line 44
    aput-byte v3, v1, v2

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_11

    .line 49
    :cond_30
    new-instance p0, Le8/j;

    .line 50
    .line 51
    invoke-direct {p0, v1}, Le8/j;-><init>([B)V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_36
    const-string v0, "Unexpected hex string: "

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method private final l(Ljava/lang/String;ILjava/util/EnumMap;)Lb6/b;
    .registers 29

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const/16 v2, 0xb

    .line 6
    .line 7
    move/from16 v3, p2

    .line 8
    .line 9
    if-ne v3, v2, :cond_4f1

    .line 10
    .line 11
    sget-object v2, Ly5/a;->g:Ly5/a;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v3, :cond_24

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v2, v4

    .line 38
    :goto_25
    sget-object v3, Ly5/a;->h:Ly5/a;

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/4 v6, 0x1

    .line 45
    if-eqz v5, :cond_74

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_6c

    .line 56
    .line 57
    const-string v5, "AUTO"

    .line 58
    .line 59
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_42

    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    goto :goto_75

    .line 67
    :cond_42
    const-string v5, "TEXT"

    .line 68
    .line 69
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_4c

    .line 74
    .line 75
    const/4 v3, 0x2

    .line 76
    goto :goto_75

    .line 77
    :cond_4c
    const-string v5, "BYTE"

    .line 78
    .line 79
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_56

    .line 84
    .line 85
    const/4 v3, 0x3

    .line 86
    goto :goto_75

    .line 87
    :cond_56
    const-string v5, "NUMERIC"

    .line 88
    .line 89
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_60

    .line 94
    .line 95
    const/4 v3, 0x4

    .line 96
    goto :goto_75

    .line 97
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    const-string v1, "No enum constant com.google.zxing.pdf417.encoder.Compaction."

    .line 100
    .line 101
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_6c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 110
    .line 111
    const-string v1, "Name is null"

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :cond_74
    move v3, v6

    .line 118
    :goto_75
    sget-object v5, Ly5/a;->i:Ly5/a;

    .line 119
    .line 120
    invoke-virtual {v1, v5}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-nez v7, :cond_4e4

    .line 125
    .line 126
    sget-object v5, Ly5/a;->f:Ly5/a;

    .line 127
    .line 128
    invoke-virtual {v1, v5}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_92

    .line 133
    .line 134
    invoke-virtual {v1, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    goto :goto_94

    .line 147
    :cond_92
    const/16 v5, 0x1e

    .line 148
    .line 149
    :goto_94
    sget-object v7, Ly5/a;->a:Ly5/a;

    .line 150
    .line 151
    invoke-virtual {v1, v7}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    const/4 v10, 0x2

    .line 156
    if-eqz v9, :cond_aa

    .line 157
    .line 158
    invoke-virtual {v1, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    goto :goto_ab

    .line 171
    :cond_aa
    move v7, v10

    .line 172
    :goto_ab
    sget-object v9, Ly5/a;->b:Ly5/a;

    .line 173
    .line 174
    invoke-virtual {v1, v9}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    if-eqz v11, :cond_c0

    .line 179
    .line 180
    invoke-virtual {v1, v9}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

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
    const-string v9, "Error correction level must be between 0 and 8!"

    .line 195
    .line 196
    if-ltz v7, :cond_4dd

    .line 197
    .line 198
    const/16 v11, 0x8

    .line 199
    .line 200
    if-gt v7, v11, :cond_4dd

    .line 201
    .line 202
    add-int/lit8 v13, v7, 0x1

    .line 203
    .line 204
    shl-int v13, v6, v13

    .line 205
    .line 206
    sget-object v14, Lh6/c;->e:Ljava/nio/charset/Charset;

    .line 207
    .line 208
    new-instance v15, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 211
    .line 212
    .line 213
    move-result v12

    .line 214
    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 215
    .line 216
    .line 217
    const/16 v12, 0x384

    .line 218
    .line 219
    if-nez v1, :cond_de

    .line 220
    .line 221
    move-object v1, v14

    .line 222
    goto :goto_13e

    .line 223
    :cond_de
    invoke-virtual {v14, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v14

    .line 227
    if-nez v14, :cond_13e

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v14

    .line 233
    sget-object v11, Lb6/c;->d:Ljava/util/HashMap;

    .line 234
    .line 235
    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v11

    .line 239
    check-cast v11, Lb6/c;

    .line 240
    .line 241
    if-eqz v11, :cond_13e

    .line 242
    .line 243
    iget-object v11, v11, Lb6/c;->a:[I

    .line 244
    .line 245
    aget v11, v11, v4

    .line 246
    .line 247
    if-ltz v11, :cond_104

    .line 248
    .line 249
    if-ge v11, v12, :cond_104

    .line 250
    .line 251
    const/16 v14, 0x39f

    .line 252
    .line 253
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    int-to-char v11, v11

    .line 257
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    goto :goto_13e

    .line 261
    :cond_104
    const v14, 0xc5f94

    .line 262
    .line 263
    .line 264
    if-ge v11, v14, :cond_11b

    .line 265
    .line 266
    const/16 v14, 0x39e

    .line 267
    .line 268
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    div-int/lit16 v14, v11, 0x384

    .line 272
    .line 273
    sub-int/2addr v14, v6

    .line 274
    int-to-char v14, v14

    .line 275
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    rem-int/2addr v11, v12

    .line 279
    int-to-char v11, v11

    .line 280
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    goto :goto_13e

    .line 284
    :cond_11b
    move/from16 v16, v14

    .line 285
    .line 286
    const v14, 0xc6318

    .line 287
    .line 288
    .line 289
    if-ge v11, v14, :cond_12e

    .line 290
    .line 291
    const/16 v14, 0x39d

    .line 292
    .line 293
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    sub-int v14, v16, v11

    .line 297
    .line 298
    int-to-char v11, v14

    .line 299
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    goto :goto_13e

    .line 303
    :cond_12e
    new-instance v0, Ly5/e;

    .line 304
    .line 305
    const-string v1, "ECI number not in valid range from 0..811799, but was "

    .line 306
    .line 307
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw v0

    .line 319
    :cond_13e
    :goto_13e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 320
    .line 321
    .line 322
    move-result v11

    .line 323
    invoke-static {v3}, Landroidx/fragment/app/m1;->e(I)I

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    const/4 v14, 0x3

    .line 328
    if-eq v3, v6, :cond_2a9

    .line 329
    .line 330
    if-eq v3, v10, :cond_298

    .line 331
    .line 332
    if-eq v3, v14, :cond_288

    .line 333
    .line 334
    move v3, v4

    .line 335
    move/from16 v18, v3

    .line 336
    .line 337
    move/from16 v17, v14

    .line 338
    .line 339
    move/from16 v14, v18

    .line 340
    .line 341
    :goto_154
    if-ge v14, v11, :cond_283

    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 344
    .line 345
    .line 346
    move-result v8

    .line 347
    const/16 v12, 0x39

    .line 348
    .line 349
    const/16 v4, 0x30

    .line 350
    .line 351
    if-ge v14, v8, :cond_17d

    .line 352
    .line 353
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    .line 354
    .line 355
    .line 356
    move-result v21

    .line 357
    move v10, v14

    .line 358
    move/from16 v6, v21

    .line 359
    .line 360
    const/16 v21, 0x0

    .line 361
    .line 362
    :cond_169
    :goto_169
    if-lt v6, v4, :cond_17a

    .line 363
    .line 364
    if-gt v6, v12, :cond_17a

    .line 365
    .line 366
    if-ge v10, v8, :cond_17a

    .line 367
    .line 368
    add-int/lit8 v21, v21, 0x1

    .line 369
    .line 370
    add-int/lit8 v10, v10, 0x1

    .line 371
    .line 372
    if-ge v10, v8, :cond_169

    .line 373
    .line 374
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 375
    .line 376
    .line 377
    move-result v6

    .line 378
    goto :goto_169

    .line 379
    :cond_17a
    move/from16 v6, v21

    .line 380
    .line 381
    goto :goto_17e

    .line 382
    :cond_17d
    const/4 v6, 0x0

    .line 383
    :goto_17e
    const/16 v8, 0xd

    .line 384
    .line 385
    if-lt v6, v8, :cond_193

    .line 386
    .line 387
    const/16 v10, 0x386

    .line 388
    .line 389
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-static {v14, v6, v0, v15}, Lh6/c;->b(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 393
    .line 394
    .line 395
    add-int/2addr v14, v6

    .line 396
    const/4 v3, 0x2

    .line 397
    const/4 v4, 0x0

    .line 398
    const/4 v6, 0x1

    .line 399
    const/16 v12, 0x384

    .line 400
    .line 401
    const/16 v18, 0x0

    .line 402
    .line 403
    goto :goto_154

    .line 404
    :cond_193
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 405
    .line 406
    .line 407
    move-result v10

    .line 408
    move v12, v14

    .line 409
    :goto_198
    if-ge v12, v10, :cond_1e2

    .line 410
    .line 411
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 412
    .line 413
    .line 414
    move-result v23

    .line 415
    move-object/from16 v24, v9

    .line 416
    .line 417
    move/from16 v9, v23

    .line 418
    .line 419
    move/from16 v23, v2

    .line 420
    .line 421
    const/4 v2, 0x0

    .line 422
    :goto_1a5
    if-ge v2, v8, :cond_1bc

    .line 423
    .line 424
    if-lt v9, v4, :cond_1bc

    .line 425
    .line 426
    const/16 v4, 0x39

    .line 427
    .line 428
    if-gt v9, v4, :cond_1bc

    .line 429
    .line 430
    if-ge v12, v10, :cond_1bc

    .line 431
    .line 432
    add-int/lit8 v2, v2, 0x1

    .line 433
    .line 434
    add-int/lit8 v12, v12, 0x1

    .line 435
    .line 436
    if-ge v12, v10, :cond_1b9

    .line 437
    .line 438
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 439
    .line 440
    .line 441
    move-result v9

    .line 442
    :cond_1b9
    const/16 v4, 0x30

    .line 443
    .line 444
    goto :goto_1a5

    .line 445
    :cond_1bc
    if-lt v2, v8, :cond_1c1

    .line 446
    .line 447
    sub-int/2addr v12, v14

    .line 448
    sub-int/2addr v12, v2

    .line 449
    goto :goto_1e7

    .line 450
    :cond_1c1
    if-gtz v2, :cond_1db

    .line 451
    .line 452
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    const/16 v4, 0x9

    .line 457
    .line 458
    if-eq v2, v4, :cond_1d9

    .line 459
    .line 460
    const/16 v4, 0xa

    .line 461
    .line 462
    if-eq v2, v4, :cond_1d9

    .line 463
    .line 464
    if-eq v2, v8, :cond_1d9

    .line 465
    .line 466
    const/16 v4, 0x20

    .line 467
    .line 468
    if-lt v2, v4, :cond_1e6

    .line 469
    .line 470
    const/16 v4, 0x7e

    .line 471
    .line 472
    if-gt v2, v4, :cond_1e6

    .line 473
    .line 474
    :cond_1d9
    add-int/lit8 v12, v12, 0x1

    .line 475
    .line 476
    :cond_1db
    move/from16 v2, v23

    .line 477
    .line 478
    move-object/from16 v9, v24

    .line 479
    .line 480
    const/16 v4, 0x30

    .line 481
    .line 482
    goto :goto_198

    .line 483
    :cond_1e2
    move/from16 v23, v2

    .line 484
    .line 485
    move-object/from16 v24, v9

    .line 486
    .line 487
    :cond_1e6
    sub-int/2addr v12, v14

    .line 488
    :goto_1e7
    const/4 v2, 0x5

    .line 489
    if-ge v12, v2, :cond_271

    .line 490
    .line 491
    if-ne v6, v11, :cond_1ee

    .line 492
    .line 493
    goto/16 :goto_271

    .line 494
    .line 495
    :cond_1ee
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    move v6, v14

    .line 504
    :goto_1f7
    if-ge v6, v4, :cond_217

    .line 505
    .line 506
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 507
    .line 508
    .line 509
    move-result v9

    .line 510
    const/4 v10, 0x0

    .line 511
    :goto_1fe
    if-ge v10, v8, :cond_213

    .line 512
    .line 513
    const/16 v12, 0x30

    .line 514
    .line 515
    if-lt v9, v12, :cond_213

    .line 516
    .line 517
    const/16 v12, 0x39

    .line 518
    .line 519
    if-gt v9, v12, :cond_215

    .line 520
    .line 521
    add-int/lit8 v10, v10, 0x1

    .line 522
    .line 523
    add-int v9, v6, v10

    .line 524
    .line 525
    if-ge v9, v4, :cond_215

    .line 526
    .line 527
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 528
    .line 529
    .line 530
    move-result v9

    .line 531
    goto :goto_1fe

    .line 532
    :cond_213
    const/16 v12, 0x39

    .line 533
    .line 534
    :cond_215
    if-lt v10, v8, :cond_219

    .line 535
    .line 536
    :cond_217
    sub-int/2addr v6, v14

    .line 537
    goto :goto_247

    .line 538
    :cond_219
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 539
    .line 540
    .line 541
    move-result v9

    .line 542
    invoke-virtual {v2, v9}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    .line 543
    .line 544
    .line 545
    move-result v10

    .line 546
    if-eqz v10, :cond_226

    .line 547
    .line 548
    add-int/lit8 v6, v6, 0x1

    .line 549
    .line 550
    goto :goto_1f7

    .line 551
    :cond_226
    new-instance v0, Ly5/e;

    .line 552
    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    const-string v2, "Non-encodable character detected: "

    .line 556
    .line 557
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v2, " (Unicode: "

    .line 564
    .line 565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    const/16 v2, 0x29

    .line 572
    .line 573
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    throw v0

    .line 584
    :goto_247
    if-nez v6, :cond_24a

    .line 585
    .line 586
    const/4 v6, 0x1

    .line 587
    :cond_24a
    add-int v2, v14, v6

    .line 588
    .line 589
    invoke-virtual {v0, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v4

    .line 593
    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    array-length v6, v4

    .line 598
    const/4 v8, 0x1

    .line 599
    if-ne v6, v8, :cond_25f

    .line 600
    .line 601
    if-nez v3, :cond_25f

    .line 602
    .line 603
    const/4 v6, 0x0

    .line 604
    invoke-static {v4, v8, v6, v15}, Lh6/c;->a([BIILjava/lang/StringBuilder;)V

    .line 605
    .line 606
    .line 607
    goto :goto_266

    .line 608
    :cond_25f
    array-length v6, v4

    .line 609
    invoke-static {v4, v6, v3, v15}, Lh6/c;->a([BIILjava/lang/StringBuilder;)V

    .line 610
    .line 611
    .line 612
    const/4 v3, 0x1

    .line 613
    const/16 v18, 0x0

    .line 614
    .line 615
    :goto_266
    move v14, v2

    .line 616
    :goto_267
    move/from16 v2, v23

    .line 617
    .line 618
    move-object/from16 v9, v24

    .line 619
    .line 620
    const/4 v4, 0x0

    .line 621
    const/4 v6, 0x1

    .line 622
    const/16 v12, 0x384

    .line 623
    .line 624
    goto/16 :goto_154

    .line 625
    .line 626
    :cond_271
    :goto_271
    if-eqz v3, :cond_27b

    .line 627
    .line 628
    const/16 v2, 0x384

    .line 629
    .line 630
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    const/4 v2, 0x0

    .line 634
    const/4 v3, 0x0

    .line 635
    goto :goto_27d

    .line 636
    :cond_27b
    move/from16 v2, v18

    .line 637
    .line 638
    :goto_27d
    invoke-static {v0, v14, v12, v15, v2}, Lh6/c;->c(Ljava/lang/String;IILjava/lang/StringBuilder;I)I

    .line 639
    .line 640
    .line 641
    move-result v18

    .line 642
    add-int/2addr v14, v12

    .line 643
    goto :goto_267

    .line 644
    :cond_283
    move/from16 v23, v2

    .line 645
    .line 646
    move-object/from16 v24, v9

    .line 647
    .line 648
    goto :goto_2b3

    .line 649
    :cond_288
    move/from16 v23, v2

    .line 650
    .line 651
    move-object/from16 v24, v9

    .line 652
    .line 653
    move/from16 v17, v14

    .line 654
    .line 655
    const/16 v10, 0x386

    .line 656
    .line 657
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    const/4 v6, 0x0

    .line 661
    invoke-static {v6, v11, v0, v15}, Lh6/c;->b(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 662
    .line 663
    .line 664
    goto :goto_2b3

    .line 665
    :cond_298
    move/from16 v23, v2

    .line 666
    .line 667
    move v6, v4

    .line 668
    move-object/from16 v24, v9

    .line 669
    .line 670
    move/from16 v17, v14

    .line 671
    .line 672
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    array-length v2, v1

    .line 677
    const/4 v8, 0x1

    .line 678
    invoke-static {v1, v2, v8, v15}, Lh6/c;->a([BIILjava/lang/StringBuilder;)V

    .line 679
    .line 680
    .line 681
    goto :goto_2b3

    .line 682
    :cond_2a9
    move/from16 v23, v2

    .line 683
    .line 684
    move v6, v4

    .line 685
    move-object/from16 v24, v9

    .line 686
    .line 687
    move/from16 v17, v14

    .line 688
    .line 689
    invoke-static {v0, v6, v11, v15, v6}, Lh6/c;->c(Ljava/lang/String;IILjava/lang/StringBuilder;I)I

    .line 690
    .line 691
    .line 692
    :goto_2b3
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 697
    .line 698
    .line 699
    move-result v2

    .line 700
    const/4 v3, 0x0

    .line 701
    const/4 v4, 0x2

    .line 702
    const/4 v12, 0x0

    .line 703
    :goto_2be
    const/16 v6, 0x1e

    .line 704
    .line 705
    if-gt v4, v6, :cond_30a

    .line 706
    .line 707
    add-int/lit8 v6, v2, 0x1

    .line 708
    .line 709
    add-int/2addr v6, v13

    .line 710
    div-int v8, v6, v4

    .line 711
    .line 712
    add-int/lit8 v9, v8, 0x1

    .line 713
    .line 714
    mul-int v10, v4, v9

    .line 715
    .line 716
    add-int/2addr v6, v4

    .line 717
    if-lt v10, v6, :cond_2d0

    .line 718
    .line 719
    :goto_2ce
    const/4 v6, 0x2

    .line 720
    goto :goto_2d2

    .line 721
    :cond_2d0
    move v8, v9

    .line 722
    goto :goto_2ce

    .line 723
    :goto_2d2
    if-lt v8, v6, :cond_30a

    .line 724
    .line 725
    const/16 v6, 0x1e

    .line 726
    .line 727
    if-gt v8, v6, :cond_307

    .line 728
    .line 729
    mul-int/lit8 v6, v4, 0x11

    .line 730
    .line 731
    add-int/lit8 v6, v6, 0x45

    .line 732
    .line 733
    int-to-float v6, v6

    .line 734
    const v9, 0x3eb6c8b4    # 0.357f

    .line 735
    .line 736
    .line 737
    mul-float/2addr v6, v9

    .line 738
    int-to-float v9, v8

    .line 739
    const/high16 v10, 0x40000000    # 2.0f

    .line 740
    .line 741
    mul-float/2addr v9, v10

    .line 742
    div-float/2addr v6, v9

    .line 743
    if-eqz v12, :cond_2fa

    .line 744
    .line 745
    const/high16 v9, 0x40400000    # 3.0f

    .line 746
    .line 747
    sub-float v10, v6, v9

    .line 748
    .line 749
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 750
    .line 751
    .line 752
    move-result v10

    .line 753
    sub-float v9, v3, v9

    .line 754
    .line 755
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 756
    .line 757
    .line 758
    move-result v9

    .line 759
    cmpl-float v9, v10, v9

    .line 760
    .line 761
    if-gtz v9, :cond_307

    .line 762
    .line 763
    :cond_2fa
    const/4 v3, 0x2

    .line 764
    new-array v9, v3, [I

    .line 765
    .line 766
    const/16 v20, 0x0

    .line 767
    .line 768
    aput v4, v9, v20

    .line 769
    .line 770
    const/16 v22, 0x1

    .line 771
    .line 772
    aput v8, v9, v22

    .line 773
    .line 774
    move v3, v6

    .line 775
    move-object v12, v9

    .line 776
    :cond_307
    add-int/lit8 v4, v4, 0x1

    .line 777
    .line 778
    goto :goto_2be

    .line 779
    :cond_30a
    if-nez v12, :cond_328

    .line 780
    .line 781
    add-int/lit8 v3, v2, 0x1

    .line 782
    .line 783
    add-int/2addr v3, v13

    .line 784
    div-int/lit8 v4, v3, 0x2

    .line 785
    .line 786
    add-int/lit8 v6, v4, 0x1

    .line 787
    .line 788
    const/4 v8, 0x2

    .line 789
    mul-int v10, v8, v6

    .line 790
    .line 791
    add-int/2addr v3, v8

    .line 792
    if-lt v10, v3, :cond_31a

    .line 793
    .line 794
    goto :goto_31b

    .line 795
    :cond_31a
    move v4, v6

    .line 796
    :goto_31b
    if-ge v4, v8, :cond_328

    .line 797
    .line 798
    new-array v12, v8, [I

    .line 799
    .line 800
    const/16 v20, 0x0

    .line 801
    .line 802
    aput v8, v12, v20

    .line 803
    .line 804
    const/16 v22, 0x1

    .line 805
    .line 806
    aput v8, v12, v22

    .line 807
    .line 808
    goto :goto_32c

    .line 809
    :cond_328
    const/16 v20, 0x0

    .line 810
    .line 811
    const/16 v22, 0x1

    .line 812
    .line 813
    :goto_32c
    if-eqz v12, :cond_4d5

    .line 814
    .line 815
    aget v3, v12, v20

    .line 816
    .line 817
    aget v4, v12, v22

    .line 818
    .line 819
    mul-int v6, v3, v4

    .line 820
    .line 821
    sub-int/2addr v6, v13

    .line 822
    add-int/lit8 v8, v2, 0x1

    .line 823
    .line 824
    if-le v6, v8, :cond_33d

    .line 825
    .line 826
    sub-int/2addr v6, v2

    .line 827
    add-int/lit8 v6, v6, -0x1

    .line 828
    .line 829
    goto :goto_33e

    .line 830
    :cond_33d
    const/4 v6, 0x0

    .line 831
    :goto_33e
    add-int v8, v2, v13

    .line 832
    .line 833
    add-int/lit8 v8, v8, 0x1

    .line 834
    .line 835
    const/16 v9, 0x3a1

    .line 836
    .line 837
    if-gt v8, v9, :cond_4b8

    .line 838
    .line 839
    add-int/2addr v2, v6

    .line 840
    add-int/lit8 v2, v2, 0x1

    .line 841
    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    .line 843
    .line 844
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 845
    .line 846
    .line 847
    int-to-char v2, v2

    .line 848
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    const/4 v1, 0x0

    .line 855
    :goto_356
    if-ge v1, v6, :cond_360

    .line 856
    .line 857
    const/16 v2, 0x384

    .line 858
    .line 859
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    add-int/lit8 v1, v1, 0x1

    .line 863
    .line 864
    goto :goto_356

    .line 865
    :cond_360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    sget-object v1, Lh6/b;->b:[[I

    .line 870
    .line 871
    if-ltz v7, :cond_4b0

    .line 872
    .line 873
    const/16 v2, 0x8

    .line 874
    .line 875
    if-gt v7, v2, :cond_4b0

    .line 876
    .line 877
    new-array v2, v13, [C

    .line 878
    .line 879
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 880
    .line 881
    .line 882
    move-result v6

    .line 883
    const/4 v8, 0x0

    .line 884
    :goto_373
    if-ge v8, v6, :cond_3a6

    .line 885
    .line 886
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 887
    .line 888
    .line 889
    move-result v10

    .line 890
    add-int/lit8 v11, v13, -0x1

    .line 891
    .line 892
    aget-char v12, v2, v11

    .line 893
    .line 894
    add-int/2addr v10, v12

    .line 895
    rem-int/2addr v10, v9

    .line 896
    :goto_37f
    if-lez v11, :cond_395

    .line 897
    .line 898
    aget-object v12, v1, v7

    .line 899
    .line 900
    aget v12, v12, v11

    .line 901
    .line 902
    mul-int/2addr v12, v10

    .line 903
    rem-int/2addr v12, v9

    .line 904
    rsub-int v12, v12, 0x3a1

    .line 905
    .line 906
    add-int/lit8 v14, v11, -0x1

    .line 907
    .line 908
    aget-char v14, v2, v14

    .line 909
    .line 910
    add-int/2addr v14, v12

    .line 911
    rem-int/2addr v14, v9

    .line 912
    int-to-char v12, v14

    .line 913
    aput-char v12, v2, v11

    .line 914
    .line 915
    add-int/lit8 v11, v11, -0x1

    .line 916
    .line 917
    goto :goto_37f

    .line 918
    :cond_395
    aget-object v11, v1, v7

    .line 919
    .line 920
    const/16 v20, 0x0

    .line 921
    .line 922
    aget v11, v11, v20

    .line 923
    .line 924
    mul-int/2addr v10, v11

    .line 925
    rem-int/2addr v10, v9

    .line 926
    rsub-int v10, v10, 0x3a1

    .line 927
    .line 928
    rem-int/2addr v10, v9

    .line 929
    int-to-char v10, v10

    .line 930
    aput-char v10, v2, v20

    .line 931
    .line 932
    add-int/lit8 v8, v8, 0x1

    .line 933
    .line 934
    goto :goto_373

    .line 935
    :cond_3a6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 936
    .line 937
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 938
    .line 939
    .line 940
    const/16 v22, 0x1

    .line 941
    .line 942
    add-int/lit8 v13, v13, -0x1

    .line 943
    .line 944
    :goto_3af
    if-ltz v13, :cond_3c2

    .line 945
    .line 946
    aget-char v6, v2, v13

    .line 947
    .line 948
    if-eqz v6, :cond_3ba

    .line 949
    .line 950
    rsub-int v6, v6, 0x3a1

    .line 951
    .line 952
    int-to-char v6, v6

    .line 953
    aput-char v6, v2, v13

    .line 954
    .line 955
    :cond_3ba
    aget-char v6, v2, v13

    .line 956
    .line 957
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    add-int/lit8 v13, v13, -0x1

    .line 961
    .line 962
    goto :goto_3af

    .line 963
    :cond_3c2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v1

    .line 967
    new-instance v2, Lh6/a;

    .line 968
    .line 969
    invoke-direct {v2, v4, v3}, Lh6/a;-><init>(II)V

    .line 970
    .line 971
    .line 972
    invoke-static {v0, v1}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    sget-object v1, Lh6/b;->a:[[I

    .line 977
    .line 978
    const/4 v6, 0x0

    .line 979
    const/4 v8, 0x0

    .line 980
    :goto_3d3
    if-ge v6, v4, :cond_46d

    .line 981
    .line 982
    rem-int/lit8 v9, v6, 0x3

    .line 983
    .line 984
    iget v10, v2, Lh6/a;->b:I

    .line 985
    .line 986
    const/16 v22, 0x1

    .line 987
    .line 988
    add-int/lit8 v10, v10, 0x1

    .line 989
    .line 990
    iput v10, v2, Lh6/a;->b:I

    .line 991
    .line 992
    const v10, 0x1fea8

    .line 993
    .line 994
    .line 995
    invoke-virtual {v2}, Lh6/a;->a()Lg/j;

    .line 996
    .line 997
    .line 998
    move-result-object v11

    .line 999
    const/16 v12, 0x11

    .line 1000
    .line 1001
    invoke-static {v10, v12, v11}, Lh6/b;->a(IILg/j;)V

    .line 1002
    .line 1003
    .line 1004
    if-nez v9, :cond_3fe

    .line 1005
    .line 1006
    div-int/lit8 v10, v6, 0x3

    .line 1007
    .line 1008
    const/16 v19, 0x1e

    .line 1009
    .line 1010
    mul-int/lit8 v10, v10, 0x1e

    .line 1011
    .line 1012
    add-int/lit8 v11, v4, -0x1

    .line 1013
    .line 1014
    div-int/lit8 v11, v11, 0x3

    .line 1015
    .line 1016
    add-int/2addr v11, v10

    .line 1017
    add-int/lit8 v13, v3, -0x1

    .line 1018
    .line 1019
    :goto_3fa
    add-int/2addr v13, v10

    .line 1020
    const/16 v19, 0x1e

    .line 1021
    .line 1022
    goto :goto_423

    .line 1023
    :cond_3fe
    const/4 v10, 0x1

    .line 1024
    if-ne v9, v10, :cond_412

    .line 1025
    .line 1026
    div-int/lit8 v10, v6, 0x3

    .line 1027
    .line 1028
    const/16 v19, 0x1e

    .line 1029
    .line 1030
    mul-int/lit8 v10, v10, 0x1e

    .line 1031
    .line 1032
    mul-int/lit8 v11, v7, 0x3

    .line 1033
    .line 1034
    add-int/2addr v11, v10

    .line 1035
    add-int/lit8 v13, v4, -0x1

    .line 1036
    .line 1037
    rem-int/lit8 v14, v13, 0x3

    .line 1038
    .line 1039
    add-int/2addr v11, v14

    .line 1040
    div-int/lit8 v13, v13, 0x3

    .line 1041
    .line 1042
    goto :goto_3fa

    .line 1043
    :cond_412
    div-int/lit8 v10, v6, 0x3

    .line 1044
    .line 1045
    const/16 v19, 0x1e

    .line 1046
    .line 1047
    mul-int/lit8 v10, v10, 0x1e

    .line 1048
    .line 1049
    add-int/lit8 v11, v3, -0x1

    .line 1050
    .line 1051
    add-int/2addr v11, v10

    .line 1052
    mul-int/lit8 v13, v7, 0x3

    .line 1053
    .line 1054
    add-int/2addr v13, v10

    .line 1055
    add-int/lit8 v10, v4, -0x1

    .line 1056
    .line 1057
    rem-int/lit8 v10, v10, 0x3

    .line 1058
    .line 1059
    add-int/2addr v13, v10

    .line 1060
    :goto_423
    aget-object v10, v1, v9

    .line 1061
    .line 1062
    aget v10, v10, v11

    .line 1063
    .line 1064
    invoke-virtual {v2}, Lh6/a;->a()Lg/j;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v11

    .line 1068
    invoke-static {v10, v12, v11}, Lh6/b;->a(IILg/j;)V

    .line 1069
    .line 1070
    .line 1071
    move v10, v8

    .line 1072
    const/4 v8, 0x0

    .line 1073
    :goto_430
    if-ge v8, v3, :cond_446

    .line 1074
    .line 1075
    aget-object v11, v1, v9

    .line 1076
    .line 1077
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 1078
    .line 1079
    .line 1080
    move-result v14

    .line 1081
    aget v11, v11, v14

    .line 1082
    .line 1083
    invoke-virtual {v2}, Lh6/a;->a()Lg/j;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v14

    .line 1087
    invoke-static {v11, v12, v14}, Lh6/b;->a(IILg/j;)V

    .line 1088
    .line 1089
    .line 1090
    add-int/lit8 v10, v10, 0x1

    .line 1091
    .line 1092
    add-int/lit8 v8, v8, 0x1

    .line 1093
    .line 1094
    goto :goto_430

    .line 1095
    :cond_446
    const v8, 0x3fa29

    .line 1096
    .line 1097
    .line 1098
    if-eqz v23, :cond_454

    .line 1099
    .line 1100
    invoke-virtual {v2}, Lh6/a;->a()Lg/j;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v9

    .line 1104
    const/4 v11, 0x1

    .line 1105
    invoke-static {v8, v11, v9}, Lh6/b;->a(IILg/j;)V

    .line 1106
    .line 1107
    .line 1108
    goto :goto_468

    .line 1109
    :cond_454
    aget-object v9, v1, v9

    .line 1110
    .line 1111
    aget v9, v9, v13

    .line 1112
    .line 1113
    invoke-virtual {v2}, Lh6/a;->a()Lg/j;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v11

    .line 1117
    invoke-static {v9, v12, v11}, Lh6/b;->a(IILg/j;)V

    .line 1118
    .line 1119
    .line 1120
    const/16 v9, 0x12

    .line 1121
    .line 1122
    invoke-virtual {v2}, Lh6/a;->a()Lg/j;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v11

    .line 1126
    invoke-static {v8, v9, v11}, Lh6/b;->a(IILg/j;)V

    .line 1127
    .line 1128
    .line 1129
    :goto_468
    add-int/lit8 v6, v6, 0x1

    .line 1130
    .line 1131
    move v8, v10

    .line 1132
    goto/16 :goto_3d3

    .line 1133
    .line 1134
    :cond_46d
    const/4 v0, 0x4

    .line 1135
    const/4 v8, 0x1

    .line 1136
    invoke-virtual {v2, v8, v0}, Lh6/a;->b(II)[[B

    .line 1137
    .line 1138
    .line 1139
    move-result-object v0

    .line 1140
    const/16 v20, 0x0

    .line 1141
    .line 1142
    aget-object v1, v0, v20

    .line 1143
    .line 1144
    array-length v1, v1

    .line 1145
    array-length v3, v0

    .line 1146
    if-ge v1, v3, :cond_47d

    .line 1147
    .line 1148
    const/4 v8, 0x1

    .line 1149
    goto :goto_47f

    .line 1150
    :cond_47d
    move/from16 v8, v20

    .line 1151
    .line 1152
    :goto_47f
    if-eqz v8, :cond_487

    .line 1153
    .line 1154
    invoke-static {v0}, Le5/e;->t([[B)[[B

    .line 1155
    .line 1156
    .line 1157
    move-result-object v0

    .line 1158
    const/4 v8, 0x1

    .line 1159
    goto :goto_489

    .line 1160
    :cond_487
    move/from16 v8, v20

    .line 1161
    .line 1162
    :goto_489
    aget-object v1, v0, v20

    .line 1163
    .line 1164
    array-length v1, v1

    .line 1165
    const/16 v3, 0xc8

    .line 1166
    .line 1167
    div-int v1, v3, v1

    .line 1168
    .line 1169
    array-length v4, v0

    .line 1170
    div-int/2addr v3, v4

    .line 1171
    if-ge v1, v3, :cond_496

    .line 1172
    .line 1173
    :goto_494
    const/4 v10, 0x1

    .line 1174
    goto :goto_498

    .line 1175
    :cond_496
    move v1, v3

    .line 1176
    goto :goto_494

    .line 1177
    :goto_498
    if-le v1, v10, :cond_4ab

    .line 1178
    .line 1179
    shl-int/lit8 v0, v1, 0x2

    .line 1180
    .line 1181
    invoke-virtual {v2, v1, v0}, Lh6/a;->b(II)[[B

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    if-eqz v8, :cond_4a6

    .line 1186
    .line 1187
    invoke-static {v0}, Le5/e;->t([[B)[[B

    .line 1188
    .line 1189
    .line 1190
    move-result-object v0

    .line 1191
    :cond_4a6
    invoke-static {v0, v5}, Le5/e;->e([[BI)Lb6/b;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    return-object v0

    .line 1196
    :cond_4ab
    invoke-static {v0, v5}, Le5/e;->e([[BI)Lb6/b;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v0

    .line 1200
    return-object v0

    .line 1201
    :cond_4b0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1202
    .line 1203
    move-object/from16 v1, v24

    .line 1204
    .line 1205
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    throw v0

    .line 1209
    :cond_4b8
    new-instance v1, Ly5/e;

    .line 1210
    .line 1211
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1212
    .line 1213
    const-string v3, "Encoded message contains too many code words, message too big ("

    .line 1214
    .line 1215
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1219
    .line 1220
    .line 1221
    move-result v0

    .line 1222
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1223
    .line 1224
    .line 1225
    const-string v0, " bytes)"

    .line 1226
    .line 1227
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v0

    .line 1234
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1235
    .line 1236
    .line 1237
    throw v1

    .line 1238
    :cond_4d5
    new-instance v0, Ly5/e;

    .line 1239
    .line 1240
    const-string v1, "Unable to fit message in columns"

    .line 1241
    .line 1242
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1243
    .line 1244
    .line 1245
    throw v0

    .line 1246
    :cond_4dd
    move-object v1, v9

    .line 1247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1248
    .line 1249
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1250
    .line 1251
    .line 1252
    throw v0

    .line 1253
    :cond_4e4
    invoke-virtual {v1, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v0

    .line 1257
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1258
    .line 1259
    .line 1260
    new-instance v0, Ljava/lang/ClassCastException;

    .line 1261
    .line 1262
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 1263
    .line 1264
    .line 1265
    throw v0

    .line 1266
    :cond_4f1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1267
    .line 1268
    const-string v1, "Can only encode PDF_417, but got "

    .line 1269
    .line 1270
    invoke-static {v3}, Lq2/x;->n(I)Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v2

    .line 1274
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v1

    .line 1278
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1279
    .line 1280
    .line 1281
    throw v0
.end method

.method public static n(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_52

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x2

    .line 13
    if-lt v0, v3, :cond_14

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v4, v1

    .line 22
    :goto_15
    const/4 v5, 0x3

    .line 23
    if-lt v0, v5, :cond_1d

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v6, v1

    .line 31
    :goto_1e
    const/4 v7, 0x4

    .line 32
    if-lt v0, v7, :cond_25

    .line 33
    .line 34
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    :cond_25
    shl-int/lit8 p0, v2, 0x12

    .line 39
    .line 40
    shl-int/lit8 v2, v4, 0xc

    .line 41
    .line 42
    add-int/2addr p0, v2

    .line 43
    shl-int/lit8 v2, v6, 0x6

    .line 44
    .line 45
    add-int/2addr p0, v2

    .line 46
    add-int/2addr p0, v1

    .line 47
    shr-int/lit8 v1, p0, 0x10

    .line 48
    .line 49
    and-int/lit16 v1, v1, 0xff

    .line 50
    .line 51
    int-to-char v1, v1

    .line 52
    shr-int/lit8 v2, p0, 0x8

    .line 53
    .line 54
    and-int/lit16 v2, v2, 0xff

    .line 55
    .line 56
    int-to-char v2, v2

    .line 57
    and-int/lit16 p0, p0, 0xff

    .line 58
    .line 59
    int-to-char p0, p0

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    if-lt v0, v3, :cond_48

    .line 69
    .line 70
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :cond_48
    if-lt v0, v5, :cond_4d

    .line 74
    .line 75
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    :cond_4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_52
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string v0, "StringBuilder must not be empty"

    .line 86
    .line 87
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public static o(Ljava/lang/String;)Le8/j;
    .registers 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Le8/j;

    .line 7
    .line 8
    sget-object v1, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "this as java.lang.String).getBytes(charset)"

    .line 15
    .line 16
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Le8/j;-><init>([B)V

    .line 20
    .line 21
    .line 22
    iput-object p0, v0, Le8/j;->c:Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method private final r()V
    .registers 1

    .line 1
    return-void
.end method

.method private final s(ILjava/lang/Object;)V
    .registers 3

    .line 1
    return-void
.end method

.method public static t([[B)[[B
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p0, v0

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    array-length v2, p0

    .line 6
    const/4 v3, 0x2

    .line 7
    new-array v3, v3, [I

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    aput v2, v3, v4

    .line 11
    .line 12
    aput v1, v3, v0

    .line 13
    .line 14
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, [[B

    .line 21
    .line 22
    move v2, v0

    .line 23
    :goto_16
    array-length v3, p0

    .line 24
    if-ge v2, v3, :cond_30

    .line 25
    .line 26
    array-length v3, p0

    .line 27
    sub-int/2addr v3, v2

    .line 28
    sub-int/2addr v3, v4

    .line 29
    move v5, v0

    .line 30
    :goto_1d
    aget-object v6, p0, v0

    .line 31
    .line 32
    array-length v6, v6

    .line 33
    if-ge v5, v6, :cond_2d

    .line 34
    .line 35
    aget-object v6, v1, v5

    .line 36
    .line 37
    aget-object v7, p0, v2

    .line 38
    .line 39
    aget-byte v7, v7, v5

    .line 40
    .line 41
    aput-byte v7, v6, v3

    .line 42
    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    goto :goto_1d

    .line 46
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_16

    .line 49
    :cond_30
    return-object v1
.end method

.method public static v(Le6/c;Ljava/lang/StringBuilder;)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x2

    .line 12
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    mul-int/lit16 v1, v1, 0x640

    .line 17
    .line 18
    mul-int/lit8 v3, v3, 0x28

    .line 19
    .line 20
    add-int/2addr v3, v1

    .line 21
    add-int/2addr v3, v5

    .line 22
    add-int/2addr v3, v2

    .line 23
    div-int/lit16 v1, v3, 0x100

    .line 24
    .line 25
    int-to-char v1, v1

    .line 26
    rem-int/lit16 v3, v3, 0x100

    .line 27
    .line 28
    int-to-char v3, v3

    .line 29
    new-instance v5, Ljava/lang/String;

    .line 30
    .line 31
    new-array v4, v4, [C

    .line 32
    .line 33
    aput-char v1, v4, v0

    .line 34
    .line 35
    aput-char v3, v4, v2

    .line 36
    .line 37
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Le6/c;->c:Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x3

    .line 46
    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lf4/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public b(Ll/n;Z)V
    .registers 3

    .line 1
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lf4/e;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public f(Ll/n;)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public g()V
    .registers 3

    .line 1
    iget v0, p0, Le5/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_e

    .line 4
    .line 5
    .line 6
    const-string v0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    .line 7
    .line 8
    const-string v1, "ProfileInstaller"

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :pswitch_c
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_e
    .packed-switch 0x8
        :pswitch_c
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .registers 12

    .line 1
    iget v0, p0, Le5/e;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_a2

    .line 5
    .line 6
    .line 7
    new-instance v0, Lo3/a;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v0, v2}, Lo3/a;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v9, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 19
    .line 20
    const-string v10, "Null flags"

    .line 21
    .line 22
    if-eqz v9, :cond_92

    .line 23
    .line 24
    new-instance v4, Ll3/b;

    .line 25
    .line 26
    const-wide/16 v5, 0x7530

    .line 27
    .line 28
    const-wide/32 v7, 0x5265c00

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v4 .. v9}, Ll3/b;-><init>(JJLjava/util/Set;)V

    .line 32
    .line 33
    .line 34
    sget-object v5, Lc3/d;->a:Lc3/d;

    .line 35
    .line 36
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    if-eqz v9, :cond_8c

    .line 40
    .line 41
    new-instance v4, Ll3/b;

    .line 42
    .line 43
    const-wide/16 v5, 0x3e8

    .line 44
    .line 45
    const-wide/32 v7, 0x5265c00

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v4 .. v9}, Ll3/b;-><init>(JJLjava/util/Set;)V

    .line 49
    .line 50
    .line 51
    sget-object v5, Lc3/d;->c:Lc3/d;

    .line 52
    .line 53
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    if-eqz v9, :cond_86

    .line 57
    .line 58
    new-array v2, v2, [Ll3/c;

    .line 59
    .line 60
    sget-object v4, Ll3/c;->b:Ll3/c;

    .line 61
    .line 62
    aput-object v4, v2, v1

    .line 63
    .line 64
    new-instance v1, Ljava/util/HashSet;

    .line 65
    .line 66
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    if-eqz v9, :cond_80

    .line 78
    .line 79
    new-instance v4, Ll3/b;

    .line 80
    .line 81
    const-wide/32 v5, 0x5265c00

    .line 82
    .line 83
    .line 84
    const-wide/32 v7, 0x5265c00

    .line 85
    .line 86
    .line 87
    invoke-direct/range {v4 .. v9}, Ll3/b;-><init>(JJLjava/util/Set;)V

    .line 88
    .line 89
    .line 90
    sget-object v1, Lc3/d;->b:Lc3/d;

    .line 91
    .line 92
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-static {}, Lc3/d;->values()[Lc3/d;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    array-length v2, v2

    .line 108
    if-lt v1, v2, :cond_78

    .line 109
    .line 110
    new-instance v1, Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 113
    .line 114
    .line 115
    new-instance v1, Ll3/a;

    .line 116
    .line 117
    invoke-direct {v1, v0, v3}, Ll3/a;-><init>(Lo3/a;Ljava/util/HashMap;)V

    .line 118
    .line 119
    .line 120
    return-object v1

    .line 121
    :cond_78
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    const-string v1, "Not all priorities have been configured"

    .line 124
    .line 125
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_80
    new-instance v0, Ljava/lang/NullPointerException;

    .line 130
    .line 131
    invoke-direct {v0, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :cond_86
    new-instance v0, Ljava/lang/NullPointerException;

    .line 136
    .line 137
    invoke-direct {v0, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_8c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 142
    .line 143
    invoke-direct {v0, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_92
    new-instance v0, Ljava/lang/NullPointerException;

    .line 148
    .line 149
    invoke-direct {v0, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :pswitch_98
    new-instance v0, Lf3/o;

    .line 154
    .line 155
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-direct {v0, v1, v2}, Lf3/o;-><init>(ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    return-object v0

    .line 163
    :pswitch_data_a2
    .packed-switch 0x12
        :pswitch_98
    .end packed-switch
.end method

.method public i(ILjava/lang/Object;)V
    .registers 6

    .line 1
    iget v0, p0, Le5/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3e

    .line 4
    .line 5
    .line 6
    packed-switch p1, :pswitch_data_44

    .line 7
    .line 8
    .line 9
    :pswitch_8
    const-string v0, ""

    .line 10
    .line 11
    goto :goto_28

    .line 12
    :pswitch_b
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    .line 13
    .line 14
    goto :goto_28

    .line 15
    :pswitch_e
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    .line 16
    .line 17
    goto :goto_28

    .line 18
    :pswitch_11
    const-string v0, "RESULT_PARSE_EXCEPTION"

    .line 19
    .line 20
    goto :goto_28

    .line 21
    :pswitch_14
    const-string v0, "RESULT_IO_EXCEPTION"

    .line 22
    .line 23
    goto :goto_28

    .line 24
    :pswitch_17
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    .line 25
    .line 26
    goto :goto_28

    .line 27
    :pswitch_1a
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    .line 28
    .line 29
    goto :goto_28

    .line 30
    :pswitch_1d
    const-string v0, "RESULT_NOT_WRITABLE"

    .line 31
    .line 32
    goto :goto_28

    .line 33
    :pswitch_20
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    .line 34
    .line 35
    goto :goto_28

    .line 36
    :pswitch_23
    const-string v0, "RESULT_ALREADY_INSTALLED"

    .line 37
    .line 38
    goto :goto_28

    .line 39
    :pswitch_26
    const-string v0, "RESULT_INSTALL_SUCCESS"

    .line 40
    .line 41
    :goto_28
    const/4 v1, 0x6

    .line 42
    const-string v2, "ProfileInstaller"

    .line 43
    .line 44
    if-eq p1, v1, :cond_38

    .line 45
    .line 46
    const/4 v1, 0x7

    .line 47
    if-eq p1, v1, :cond_38

    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    if-eq p1, v1, :cond_38

    .line 52
    .line 53
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_3d

    .line 57
    :cond_38
    check-cast p2, Ljava/lang/Throwable;

    .line 58
    .line 59
    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    :goto_3d
    :pswitch_3d
    return-void

    .line 63
    :pswitch_data_3e
    .packed-switch 0x8
        :pswitch_3d
    .end packed-switch

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_8
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public j(Ljava/lang/String;ILjava/util/EnumMap;)Lb6/b;
    .registers 32

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget v4, v2, Le5/e;->a:I

    .line 10
    .line 11
    const-string v5, "Found empty contents"

    .line 12
    .line 13
    const/16 v8, 0x81

    .line 14
    .line 15
    const/16 v16, 0x3

    .line 16
    .line 17
    sparse-switch v4, :sswitch_data_c98

    .line 18
    .line 19
    .line 20
    sget-object v4, Lk6/c;->a:[I

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v19

    .line 26
    if-nez v19, :cond_83f

    .line 27
    .line 28
    const/16 v5, 0xc

    .line 29
    .line 30
    if-ne v1, v5, :cond_82f

    .line 31
    .line 32
    sget-object v1, Ly5/a;->a:Ly5/a;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_71

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_69

    .line 49
    .line 50
    const-string v5, "L"

    .line 51
    .line 52
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_3c

    .line 57
    .line 58
    const/16 v16, 0x1

    .line 59
    .line 60
    goto :goto_5a

    .line 61
    :cond_3c
    const-string v5, "M"

    .line 62
    .line 63
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_47

    .line 68
    .line 69
    const/16 v16, 0x2

    .line 70
    .line 71
    goto :goto_5a

    .line 72
    :cond_47
    const-string v5, "Q"

    .line 73
    .line 74
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_50

    .line 79
    .line 80
    goto :goto_5a

    .line 81
    :cond_50
    const-string v5, "H"

    .line 82
    .line 83
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_5d

    .line 88
    .line 89
    const/16 v16, 0x4

    .line 90
    .line 91
    :goto_5a
    move/from16 v1, v16

    .line 92
    .line 93
    goto :goto_72

    .line 94
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    const-string v3, "No enum constant com.google.zxing.qrcode.decoder.ErrorCorrectionLevel."

    .line 97
    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_69
    new-instance v0, Ljava/lang/NullPointerException;

    .line 107
    .line 108
    const-string v1, "Name is null"

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_71
    const/4 v1, 0x1

    .line 115
    :goto_72
    sget-object v5, Ly5/a;->f:Ly5/a;

    .line 116
    .line 117
    invoke-virtual {v3, v5}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v16

    .line 121
    if-eqz v16, :cond_89

    .line 122
    .line 123
    invoke-virtual {v3, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    :goto_86
    const/16 v19, 0x0

    .line 136
    .line 137
    goto :goto_8b

    .line 138
    :cond_89
    const/4 v5, 0x4

    .line 139
    goto :goto_86

    .line 140
    :goto_8b
    sget-object v7, Ly5/a;->b:Ly5/a;

    .line 141
    .line 142
    invoke-virtual {v3, v7}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v16

    .line 146
    if-eqz v16, :cond_9c

    .line 147
    .line 148
    invoke-virtual {v3, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    goto :goto_9e

    .line 157
    :cond_9c
    const-string v7, "ISO-8859-1"

    .line 158
    .line 159
    :goto_9e
    const-string v14, "Shift_JIS"

    .line 160
    .line 161
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v21

    .line 165
    const/16 v6, 0x60

    .line 166
    .line 167
    const/16 v9, 0x30

    .line 168
    .line 169
    sget-object v13, Lj6/a;->e:Lj6/a;

    .line 170
    .line 171
    if-eqz v21, :cond_d5

    .line 172
    .line 173
    :try_start_ac
    invoke-virtual {v0, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 174
    .line 175
    .line 176
    move-result-object v11
    :try_end_b0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ac .. :try_end_b0} :catch_d5

    .line 177
    array-length v12, v11

    .line 178
    rem-int/lit8 v26, v12, 0x2

    .line 179
    .line 180
    if-eqz v26, :cond_b6

    .line 181
    .line 182
    goto :goto_d5

    .line 183
    :cond_b6
    move/from16 v15, v19

    .line 184
    .line 185
    :goto_b8
    if-ge v15, v12, :cond_d2

    .line 186
    .line 187
    aget-byte v10, v11, v15

    .line 188
    .line 189
    and-int/lit16 v10, v10, 0xff

    .line 190
    .line 191
    if-lt v10, v8, :cond_c4

    .line 192
    .line 193
    const/16 v8, 0x9f

    .line 194
    .line 195
    if-le v10, v8, :cond_cd

    .line 196
    .line 197
    :cond_c4
    const/16 v8, 0xe0

    .line 198
    .line 199
    if-lt v10, v8, :cond_d5

    .line 200
    .line 201
    const/16 v8, 0xeb

    .line 202
    .line 203
    if-le v10, v8, :cond_cd

    .line 204
    .line 205
    goto :goto_d5

    .line 206
    :cond_cd
    add-int/lit8 v15, v15, 0x2

    .line 207
    .line 208
    const/16 v8, 0x81

    .line 209
    .line 210
    goto :goto_b8

    .line 211
    :cond_d2
    sget-object v8, Lj6/a;->f:Lj6/a;

    .line 212
    .line 213
    goto :goto_104

    .line 214
    :catch_d5
    :cond_d5
    :goto_d5
    move/from16 v8, v19

    .line 215
    .line 216
    move v10, v8

    .line 217
    move v11, v10

    .line 218
    :goto_d9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    if-ge v8, v12, :cond_fb

    .line 223
    .line 224
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    if-lt v12, v9, :cond_eb

    .line 229
    .line 230
    const/16 v15, 0x39

    .line 231
    .line 232
    if-gt v12, v15, :cond_eb

    .line 233
    .line 234
    const/4 v11, 0x1

    .line 235
    goto :goto_f6

    .line 236
    :cond_eb
    if-ge v12, v6, :cond_f1

    .line 237
    .line 238
    aget v10, v4, v12

    .line 239
    .line 240
    :goto_ef
    const/4 v12, -0x1

    .line 241
    goto :goto_f3

    .line 242
    :cond_f1
    const/4 v10, -0x1

    .line 243
    goto :goto_ef

    .line 244
    :goto_f3
    if-eq v10, v12, :cond_f9

    .line 245
    .line 246
    const/4 v10, 0x1

    .line 247
    :goto_f6
    add-int/lit8 v8, v8, 0x1

    .line 248
    .line 249
    goto :goto_d9

    .line 250
    :cond_f9
    move-object v8, v13

    .line 251
    goto :goto_104

    .line 252
    :cond_fb
    if-eqz v10, :cond_100

    .line 253
    .line 254
    sget-object v8, Lj6/a;->d:Lj6/a;

    .line 255
    .line 256
    goto :goto_104

    .line 257
    :cond_100
    if-eqz v11, :cond_f9

    .line 258
    .line 259
    sget-object v8, Lj6/a;->c:Lj6/a;

    .line 260
    .line 261
    :goto_104
    iget-object v10, v8, Lj6/a;->a:[I

    .line 262
    .line 263
    new-instance v11, Lb6/a;

    .line 264
    .line 265
    invoke-direct {v11}, Lb6/a;-><init>()V

    .line 266
    .line 267
    .line 268
    if-ne v8, v13, :cond_12a

    .line 269
    .line 270
    if-eqz v16, :cond_12a

    .line 271
    .line 272
    sget-object v12, Lb6/c;->d:Ljava/util/HashMap;

    .line 273
    .line 274
    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v12

    .line 278
    check-cast v12, Lb6/c;

    .line 279
    .line 280
    if-eqz v12, :cond_12a

    .line 281
    .line 282
    move/from16 p2, v9

    .line 283
    .line 284
    const/4 v9, 0x4

    .line 285
    const/4 v15, 0x7

    .line 286
    invoke-virtual {v11, v15, v9}, Lb6/a;->b(II)V

    .line 287
    .line 288
    .line 289
    iget-object v9, v12, Lb6/c;->a:[I

    .line 290
    .line 291
    aget v9, v9, v19

    .line 292
    .line 293
    const/16 v12, 0x8

    .line 294
    .line 295
    invoke-virtual {v11, v9, v12}, Lb6/a;->b(II)V

    .line 296
    .line 297
    .line 298
    goto :goto_12c

    .line 299
    :cond_12a
    move/from16 p2, v9

    .line 300
    .line 301
    :goto_12c
    sget-object v9, Ly5/a;->l:Ly5/a;

    .line 302
    .line 303
    invoke-virtual {v3, v9}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v12

    .line 307
    if-eqz v12, :cond_14c

    .line 308
    .line 309
    invoke-virtual {v3, v9}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v9

    .line 313
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v9

    .line 317
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    if-eqz v9, :cond_14c

    .line 326
    .line 327
    const/4 v9, 0x5

    .line 328
    const/4 v12, 0x4

    .line 329
    invoke-virtual {v11, v9, v12}, Lb6/a;->b(II)V

    .line 330
    .line 331
    .line 332
    goto :goto_14d

    .line 333
    :cond_14c
    const/4 v12, 0x4

    .line 334
    :goto_14d
    iget v9, v8, Lj6/a;->b:I

    .line 335
    .line 336
    invoke-virtual {v11, v9, v12}, Lb6/a;->b(II)V

    .line 337
    .line 338
    .line 339
    new-instance v9, Lb6/a;

    .line 340
    .line 341
    invoke-direct {v9}, Lb6/a;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 345
    .line 346
    .line 347
    move-result v15

    .line 348
    const/4 v6, 0x1

    .line 349
    const/16 v24, 0xa

    .line 350
    .line 351
    if-eq v15, v6, :cond_22e

    .line 352
    .line 353
    const/4 v6, 0x2

    .line 354
    if-eq v15, v6, :cond_1e7

    .line 355
    .line 356
    if-eq v15, v12, :cond_1cd

    .line 357
    .line 358
    const/4 v4, 0x6

    .line 359
    if-ne v15, v4, :cond_1bd

    .line 360
    .line 361
    :try_start_168
    invoke-virtual {v0, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 362
    .line 363
    .line 364
    move-result-object v4
    :try_end_16c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_168 .. :try_end_16c} :catch_1b6

    .line 365
    array-length v6, v4

    .line 366
    move/from16 v7, v19

    .line 367
    .line 368
    :goto_16f
    if-ge v7, v6, :cond_276

    .line 369
    .line 370
    aget-byte v12, v4, v7

    .line 371
    .line 372
    and-int/lit16 v12, v12, 0xff

    .line 373
    .line 374
    add-int/lit8 v14, v7, 0x1

    .line 375
    .line 376
    aget-byte v14, v4, v14

    .line 377
    .line 378
    and-int/lit16 v14, v14, 0xff

    .line 379
    .line 380
    const/16 v21, 0x8

    .line 381
    .line 382
    shl-int/lit8 v12, v12, 0x8

    .line 383
    .line 384
    or-int/2addr v12, v14

    .line 385
    const v14, 0x8140

    .line 386
    .line 387
    .line 388
    if-lt v12, v14, :cond_18d

    .line 389
    .line 390
    const v15, 0x9ffc

    .line 391
    .line 392
    .line 393
    if-gt v12, v15, :cond_18d

    .line 394
    .line 395
    :goto_18a
    sub-int/2addr v12, v14

    .line 396
    :goto_18b
    const/4 v14, -0x1

    .line 397
    goto :goto_19d

    .line 398
    :cond_18d
    const v14, 0xe040

    .line 399
    .line 400
    .line 401
    if-lt v12, v14, :cond_19b

    .line 402
    .line 403
    const v14, 0xebbf

    .line 404
    .line 405
    .line 406
    if-gt v12, v14, :cond_19b

    .line 407
    .line 408
    const v14, 0xc140

    .line 409
    .line 410
    .line 411
    goto :goto_18a

    .line 412
    :cond_19b
    const/4 v12, -0x1

    .line 413
    goto :goto_18b

    .line 414
    :goto_19d
    if-eq v12, v14, :cond_1ae

    .line 415
    .line 416
    shr-int/lit8 v14, v12, 0x8

    .line 417
    .line 418
    mul-int/lit16 v14, v14, 0xc0

    .line 419
    .line 420
    and-int/lit16 v12, v12, 0xff

    .line 421
    .line 422
    add-int/2addr v14, v12

    .line 423
    const/16 v12, 0xd

    .line 424
    .line 425
    invoke-virtual {v9, v14, v12}, Lb6/a;->b(II)V

    .line 426
    .line 427
    .line 428
    add-int/lit8 v7, v7, 0x2

    .line 429
    .line 430
    goto :goto_16f

    .line 431
    :cond_1ae
    new-instance v0, Ly5/e;

    .line 432
    .line 433
    const-string v1, "Invalid byte sequence"

    .line 434
    .line 435
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    throw v0

    .line 439
    :catch_1b6
    move-exception v0

    .line 440
    new-instance v1, Ly5/e;

    .line 441
    .line 442
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 443
    .line 444
    .line 445
    throw v1

    .line 446
    :cond_1bd
    new-instance v0, Ly5/e;

    .line 447
    .line 448
    const-string v1, "Invalid mode: "

    .line 449
    .line 450
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    throw v0

    .line 462
    :cond_1cd
    :try_start_1cd
    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 463
    .line 464
    .line 465
    move-result-object v4
    :try_end_1d1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1cd .. :try_end_1d1} :catch_1e0

    .line 466
    array-length v6, v4

    .line 467
    move/from16 v7, v19

    .line 468
    .line 469
    :goto_1d4
    if-ge v7, v6, :cond_276

    .line 470
    .line 471
    aget-byte v12, v4, v7

    .line 472
    .line 473
    const/16 v14, 0x8

    .line 474
    .line 475
    invoke-virtual {v9, v12, v14}, Lb6/a;->b(II)V

    .line 476
    .line 477
    .line 478
    add-int/lit8 v7, v7, 0x1

    .line 479
    .line 480
    goto :goto_1d4

    .line 481
    :catch_1e0
    move-exception v0

    .line 482
    new-instance v1, Ly5/e;

    .line 483
    .line 484
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 485
    .line 486
    .line 487
    throw v1

    .line 488
    :cond_1e7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 489
    .line 490
    .line 491
    move-result v6

    .line 492
    move/from16 v7, v19

    .line 493
    .line 494
    :goto_1ed
    if-ge v7, v6, :cond_276

    .line 495
    .line 496
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 497
    .line 498
    .line 499
    move-result v12

    .line 500
    const/16 v14, 0x60

    .line 501
    .line 502
    if-ge v12, v14, :cond_1fb

    .line 503
    .line 504
    aget v12, v4, v12

    .line 505
    .line 506
    :goto_1f9
    const/4 v15, -0x1

    .line 507
    goto :goto_1fd

    .line 508
    :cond_1fb
    const/4 v12, -0x1

    .line 509
    goto :goto_1f9

    .line 510
    :goto_1fd
    if-eq v12, v15, :cond_228

    .line 511
    .line 512
    add-int/lit8 v15, v7, 0x1

    .line 513
    .line 514
    if-ge v15, v6, :cond_222

    .line 515
    .line 516
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    .line 517
    .line 518
    .line 519
    move-result v15

    .line 520
    if-ge v15, v14, :cond_20d

    .line 521
    .line 522
    aget v15, v4, v15

    .line 523
    .line 524
    :goto_20b
    const/4 v14, -0x1

    .line 525
    goto :goto_20f

    .line 526
    :cond_20d
    const/4 v15, -0x1

    .line 527
    goto :goto_20b

    .line 528
    :goto_20f
    if-eq v15, v14, :cond_21c

    .line 529
    .line 530
    mul-int/lit8 v12, v12, 0x2d

    .line 531
    .line 532
    add-int/2addr v12, v15

    .line 533
    const/16 v14, 0xb

    .line 534
    .line 535
    invoke-virtual {v9, v12, v14}, Lb6/a;->b(II)V

    .line 536
    .line 537
    .line 538
    add-int/lit8 v7, v7, 0x2

    .line 539
    .line 540
    goto :goto_1ed

    .line 541
    :cond_21c
    new-instance v0, Ly5/e;

    .line 542
    .line 543
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 544
    .line 545
    .line 546
    throw v0

    .line 547
    :cond_222
    const/4 v7, 0x6

    .line 548
    invoke-virtual {v9, v12, v7}, Lb6/a;->b(II)V

    .line 549
    .line 550
    .line 551
    move v7, v15

    .line 552
    goto :goto_1ed

    .line 553
    :cond_228
    new-instance v0, Ly5/e;

    .line 554
    .line 555
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 556
    .line 557
    .line 558
    throw v0

    .line 559
    :cond_22e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 560
    .line 561
    .line 562
    move-result v4

    .line 563
    move/from16 v6, v19

    .line 564
    .line 565
    :goto_234
    if-ge v6, v4, :cond_276

    .line 566
    .line 567
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 568
    .line 569
    .line 570
    move-result v7

    .line 571
    add-int/lit8 v7, v7, -0x30

    .line 572
    .line 573
    add-int/lit8 v12, v6, 0x2

    .line 574
    .line 575
    if-ge v12, v4, :cond_25e

    .line 576
    .line 577
    add-int/lit8 v14, v6, 0x1

    .line 578
    .line 579
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    .line 580
    .line 581
    .line 582
    move-result v14

    .line 583
    add-int/lit8 v14, v14, -0x30

    .line 584
    .line 585
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 586
    .line 587
    .line 588
    move-result v12

    .line 589
    add-int/lit8 v12, v12, -0x30

    .line 590
    .line 591
    mul-int/lit8 v7, v7, 0x64

    .line 592
    .line 593
    mul-int/lit8 v14, v14, 0xa

    .line 594
    .line 595
    add-int/2addr v14, v7

    .line 596
    add-int/2addr v14, v12

    .line 597
    move/from16 v7, v24

    .line 598
    .line 599
    invoke-virtual {v9, v14, v7}, Lb6/a;->b(II)V

    .line 600
    .line 601
    .line 602
    add-int/lit8 v6, v6, 0x3

    .line 603
    .line 604
    :goto_25b
    const/16 v24, 0xa

    .line 605
    .line 606
    goto :goto_234

    .line 607
    :cond_25e
    add-int/lit8 v6, v6, 0x1

    .line 608
    .line 609
    if-ge v6, v4, :cond_271

    .line 610
    .line 611
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 612
    .line 613
    .line 614
    move-result v6

    .line 615
    add-int/lit8 v6, v6, -0x30

    .line 616
    .line 617
    mul-int/lit8 v7, v7, 0xa

    .line 618
    .line 619
    add-int/2addr v7, v6

    .line 620
    const/4 v15, 0x7

    .line 621
    invoke-virtual {v9, v7, v15}, Lb6/a;->b(II)V

    .line 622
    .line 623
    .line 624
    move v6, v12

    .line 625
    goto :goto_25b

    .line 626
    :cond_271
    const/4 v12, 0x4

    .line 627
    invoke-virtual {v9, v7, v12}, Lb6/a;->b(II)V

    .line 628
    .line 629
    .line 630
    goto :goto_25b

    .line 631
    :cond_276
    sget-object v4, Ly5/a;->k:Ly5/a;

    .line 632
    .line 633
    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    move-result v6

    .line 637
    const/16 v7, 0x1a

    .line 638
    .line 639
    const/16 v12, 0x9

    .line 640
    .line 641
    if-eqz v6, :cond_2e6

    .line 642
    .line 643
    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 652
    .line 653
    .line 654
    move-result v3

    .line 655
    invoke-static {v3}, Lj6/b;->a(I)Lj6/b;

    .line 656
    .line 657
    .line 658
    move-result-object v3

    .line 659
    iget v4, v11, Lb6/a;->b:I

    .line 660
    .line 661
    iget v6, v3, Lj6/b;->a:I

    .line 662
    .line 663
    if-gt v6, v12, :cond_29b

    .line 664
    .line 665
    move/from16 v6, v19

    .line 666
    .line 667
    goto :goto_2a0

    .line 668
    :cond_29b
    if-gt v6, v7, :cond_29f

    .line 669
    .line 670
    const/4 v6, 0x1

    .line 671
    goto :goto_2a0

    .line 672
    :cond_29f
    const/4 v6, 0x2

    .line 673
    :goto_2a0
    aget v6, v10, v6

    .line 674
    .line 675
    add-int/2addr v6, v4

    .line 676
    iget v4, v9, Lb6/a;->b:I

    .line 677
    .line 678
    add-int/2addr v6, v4

    .line 679
    iget v4, v3, Lj6/b;->c:I

    .line 680
    .line 681
    iget-object v14, v3, Lj6/b;->b:[Lg/j;

    .line 682
    .line 683
    invoke-static {v1}, Landroidx/fragment/app/m1;->e(I)I

    .line 684
    .line 685
    .line 686
    move-result v15

    .line 687
    aget-object v14, v14, v15

    .line 688
    .line 689
    iget v15, v14, Lg/j;->a:I

    .line 690
    .line 691
    iget-object v14, v14, Lg/j;->b:Ljava/lang/Object;

    .line 692
    .line 693
    check-cast v14, [Lj0/q;

    .line 694
    .line 695
    array-length v7, v14

    .line 696
    move/from16 v12, v19

    .line 697
    .line 698
    move/from16 v18, v12

    .line 699
    .line 700
    :goto_2bb
    if-ge v12, v7, :cond_2c8

    .line 701
    .line 702
    aget-object v2, v14, v12

    .line 703
    .line 704
    iget v2, v2, Lj0/q;->a:I

    .line 705
    .line 706
    add-int v18, v18, v2

    .line 707
    .line 708
    add-int/lit8 v12, v12, 0x1

    .line 709
    .line 710
    move-object/from16 v2, p0

    .line 711
    .line 712
    goto :goto_2bb

    .line 713
    :cond_2c8
    mul-int v18, v18, v15

    .line 714
    .line 715
    sub-int v4, v4, v18

    .line 716
    .line 717
    const/16 v25, 0x7

    .line 718
    .line 719
    add-int/lit8 v6, v6, 0x7

    .line 720
    .line 721
    const/16 v21, 0x8

    .line 722
    .line 723
    div-int/lit8 v6, v6, 0x8

    .line 724
    .line 725
    if-lt v4, v6, :cond_2d8

    .line 726
    .line 727
    const/4 v2, 0x1

    .line 728
    goto :goto_2da

    .line 729
    :cond_2d8
    move/from16 v2, v19

    .line 730
    .line 731
    :goto_2da
    if-eqz v2, :cond_2de

    .line 732
    .line 733
    goto/16 :goto_395

    .line 734
    .line 735
    :cond_2de
    new-instance v0, Ly5/e;

    .line 736
    .line 737
    const-string v1, "Data too big for requested version"

    .line 738
    .line 739
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    throw v0

    .line 743
    :cond_2e6
    const/16 v23, 0x1

    .line 744
    .line 745
    invoke-static/range {v23 .. v23}, Lj6/b;->a(I)Lj6/b;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    iget v3, v11, Lb6/a;->b:I

    .line 750
    .line 751
    iget v2, v2, Lj6/b;->a:I

    .line 752
    .line 753
    const/16 v4, 0x9

    .line 754
    .line 755
    if-gt v2, v4, :cond_2f7

    .line 756
    .line 757
    move/from16 v2, v19

    .line 758
    .line 759
    goto :goto_2fe

    .line 760
    :cond_2f7
    const/16 v4, 0x1a

    .line 761
    .line 762
    if-gt v2, v4, :cond_2fd

    .line 763
    .line 764
    const/4 v2, 0x1

    .line 765
    goto :goto_2fe

    .line 766
    :cond_2fd
    const/4 v2, 0x2

    .line 767
    :goto_2fe
    aget v2, v10, v2

    .line 768
    .line 769
    add-int/2addr v2, v3

    .line 770
    iget v3, v9, Lb6/a;->b:I

    .line 771
    .line 772
    add-int/2addr v2, v3

    .line 773
    const/4 v3, 0x1

    .line 774
    :goto_305
    const-string v4, "Data too big"

    .line 775
    .line 776
    const/16 v6, 0x28

    .line 777
    .line 778
    if-gt v3, v6, :cond_829

    .line 779
    .line 780
    invoke-static {v3}, Lj6/b;->a(I)Lj6/b;

    .line 781
    .line 782
    .line 783
    move-result-object v7

    .line 784
    iget v12, v7, Lj6/b;->c:I

    .line 785
    .line 786
    iget-object v14, v7, Lj6/b;->b:[Lg/j;

    .line 787
    .line 788
    invoke-static {v1}, Landroidx/fragment/app/m1;->e(I)I

    .line 789
    .line 790
    .line 791
    move-result v15

    .line 792
    aget-object v14, v14, v15

    .line 793
    .line 794
    iget v15, v14, Lg/j;->a:I

    .line 795
    .line 796
    iget-object v14, v14, Lg/j;->b:Ljava/lang/Object;

    .line 797
    .line 798
    check-cast v14, [Lj0/q;

    .line 799
    .line 800
    array-length v6, v14

    .line 801
    move/from16 v18, v2

    .line 802
    .line 803
    move/from16 v2, v19

    .line 804
    .line 805
    move/from16 v20, v2

    .line 806
    .line 807
    :goto_326
    if-ge v2, v6, :cond_333

    .line 808
    .line 809
    move/from16 v27, v2

    .line 810
    .line 811
    aget-object v2, v14, v27

    .line 812
    .line 813
    iget v2, v2, Lj0/q;->a:I

    .line 814
    .line 815
    add-int v20, v20, v2

    .line 816
    .line 817
    add-int/lit8 v2, v27, 0x1

    .line 818
    .line 819
    goto :goto_326

    .line 820
    :cond_333
    mul-int v20, v20, v15

    .line 821
    .line 822
    sub-int v12, v12, v20

    .line 823
    .line 824
    const/16 v25, 0x7

    .line 825
    .line 826
    add-int/lit8 v2, v18, 0x7

    .line 827
    .line 828
    const/16 v21, 0x8

    .line 829
    .line 830
    div-int/lit8 v2, v2, 0x8

    .line 831
    .line 832
    if-lt v12, v2, :cond_819

    .line 833
    .line 834
    iget v2, v11, Lb6/a;->b:I

    .line 835
    .line 836
    iget v3, v7, Lj6/b;->a:I

    .line 837
    .line 838
    const/16 v6, 0x9

    .line 839
    .line 840
    if-gt v3, v6, :cond_34c

    .line 841
    .line 842
    move/from16 v3, v19

    .line 843
    .line 844
    goto :goto_353

    .line 845
    :cond_34c
    const/16 v6, 0x1a

    .line 846
    .line 847
    if-gt v3, v6, :cond_352

    .line 848
    .line 849
    const/4 v3, 0x1

    .line 850
    goto :goto_353

    .line 851
    :cond_352
    const/4 v3, 0x2

    .line 852
    :goto_353
    aget v3, v10, v3

    .line 853
    .line 854
    add-int/2addr v3, v2

    .line 855
    iget v2, v9, Lb6/a;->b:I

    .line 856
    .line 857
    add-int/2addr v3, v2

    .line 858
    const/4 v2, 0x1

    .line 859
    :goto_35a
    const/16 v6, 0x28

    .line 860
    .line 861
    if-gt v2, v6, :cond_813

    .line 862
    .line 863
    invoke-static {v2}, Lj6/b;->a(I)Lj6/b;

    .line 864
    .line 865
    .line 866
    move-result-object v7

    .line 867
    iget v12, v7, Lj6/b;->c:I

    .line 868
    .line 869
    iget-object v14, v7, Lj6/b;->b:[Lg/j;

    .line 870
    .line 871
    invoke-static {v1}, Landroidx/fragment/app/m1;->e(I)I

    .line 872
    .line 873
    .line 874
    move-result v15

    .line 875
    aget-object v14, v14, v15

    .line 876
    .line 877
    iget v15, v14, Lg/j;->a:I

    .line 878
    .line 879
    iget-object v14, v14, Lg/j;->b:Ljava/lang/Object;

    .line 880
    .line 881
    check-cast v14, [Lj0/q;

    .line 882
    .line 883
    array-length v6, v14

    .line 884
    move/from16 v18, v2

    .line 885
    .line 886
    move/from16 v2, v19

    .line 887
    .line 888
    move/from16 v20, v2

    .line 889
    .line 890
    :goto_379
    if-ge v2, v6, :cond_386

    .line 891
    .line 892
    move/from16 v27, v2

    .line 893
    .line 894
    aget-object v2, v14, v27

    .line 895
    .line 896
    iget v2, v2, Lj0/q;->a:I

    .line 897
    .line 898
    add-int v20, v20, v2

    .line 899
    .line 900
    add-int/lit8 v2, v27, 0x1

    .line 901
    .line 902
    goto :goto_379

    .line 903
    :cond_386
    mul-int v20, v20, v15

    .line 904
    .line 905
    sub-int v12, v12, v20

    .line 906
    .line 907
    const/16 v25, 0x7

    .line 908
    .line 909
    add-int/lit8 v2, v3, 0x7

    .line 910
    .line 911
    const/16 v21, 0x8

    .line 912
    .line 913
    div-int/lit8 v2, v2, 0x8

    .line 914
    .line 915
    if-lt v12, v2, :cond_805

    .line 916
    .line 917
    move-object v3, v7

    .line 918
    :goto_395
    iget v2, v3, Lj6/b;->a:I

    .line 919
    .line 920
    iget v4, v3, Lj6/b;->c:I

    .line 921
    .line 922
    new-instance v6, Lb6/a;

    .line 923
    .line 924
    invoke-direct {v6}, Lb6/a;-><init>()V

    .line 925
    .line 926
    .line 927
    iget v7, v11, Lb6/a;->b:I

    .line 928
    .line 929
    invoke-virtual {v6, v7}, Lb6/a;->c(I)V

    .line 930
    .line 931
    .line 932
    move/from16 v12, v19

    .line 933
    .line 934
    :goto_3a5
    if-ge v12, v7, :cond_3b1

    .line 935
    .line 936
    invoke-virtual {v11, v12}, Lb6/a;->d(I)Z

    .line 937
    .line 938
    .line 939
    move-result v14

    .line 940
    invoke-virtual {v6, v14}, Lb6/a;->a(Z)V

    .line 941
    .line 942
    .line 943
    add-int/lit8 v12, v12, 0x1

    .line 944
    .line 945
    goto :goto_3a5

    .line 946
    :cond_3b1
    if-ne v8, v13, :cond_3ba

    .line 947
    .line 948
    invoke-virtual {v9}, Lb6/a;->e()I

    .line 949
    .line 950
    .line 951
    move-result v0

    .line 952
    :goto_3b7
    const/16 v7, 0x9

    .line 953
    .line 954
    goto :goto_3bf

    .line 955
    :cond_3ba
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 956
    .line 957
    .line 958
    move-result v0

    .line 959
    goto :goto_3b7

    .line 960
    :goto_3bf
    if-gt v2, v7, :cond_3c4

    .line 961
    .line 962
    move/from16 v7, v19

    .line 963
    .line 964
    goto :goto_3cb

    .line 965
    :cond_3c4
    const/16 v12, 0x1a

    .line 966
    .line 967
    if-gt v2, v12, :cond_3ca

    .line 968
    .line 969
    const/4 v7, 0x1

    .line 970
    goto :goto_3cb

    .line 971
    :cond_3ca
    const/4 v7, 0x2

    .line 972
    :goto_3cb
    aget v7, v10, v7

    .line 973
    .line 974
    const/16 v23, 0x1

    .line 975
    .line 976
    shl-int v8, v23, v7

    .line 977
    .line 978
    if-ge v0, v8, :cond_7e7

    .line 979
    .line 980
    invoke-virtual {v6, v0, v7}, Lb6/a;->b(II)V

    .line 981
    .line 982
    .line 983
    iget v0, v9, Lb6/a;->b:I

    .line 984
    .line 985
    iget v7, v6, Lb6/a;->b:I

    .line 986
    .line 987
    add-int/2addr v7, v0

    .line 988
    invoke-virtual {v6, v7}, Lb6/a;->c(I)V

    .line 989
    .line 990
    .line 991
    move/from16 v7, v19

    .line 992
    .line 993
    :goto_3e0
    if-ge v7, v0, :cond_3ec

    .line 994
    .line 995
    invoke-virtual {v9, v7}, Lb6/a;->d(I)Z

    .line 996
    .line 997
    .line 998
    move-result v8

    .line 999
    invoke-virtual {v6, v8}, Lb6/a;->a(Z)V

    .line 1000
    .line 1001
    .line 1002
    add-int/lit8 v7, v7, 0x1

    .line 1003
    .line 1004
    goto :goto_3e0

    .line 1005
    :cond_3ec
    iget-object v0, v3, Lj6/b;->b:[Lg/j;

    .line 1006
    .line 1007
    invoke-static {v1}, Landroidx/fragment/app/m1;->e(I)I

    .line 1008
    .line 1009
    .line 1010
    move-result v7

    .line 1011
    aget-object v0, v0, v7

    .line 1012
    .line 1013
    iget v7, v0, Lg/j;->a:I

    .line 1014
    .line 1015
    iget-object v0, v0, Lg/j;->b:Ljava/lang/Object;

    .line 1016
    .line 1017
    check-cast v0, [Lj0/q;

    .line 1018
    .line 1019
    array-length v8, v0

    .line 1020
    move/from16 v9, v19

    .line 1021
    .line 1022
    move v10, v9

    .line 1023
    :goto_3fe
    if-ge v9, v8, :cond_408

    .line 1024
    .line 1025
    aget-object v11, v0, v9

    .line 1026
    .line 1027
    iget v11, v11, Lj0/q;->a:I

    .line 1028
    .line 1029
    add-int/2addr v10, v11

    .line 1030
    add-int/lit8 v9, v9, 0x1

    .line 1031
    .line 1032
    goto :goto_3fe

    .line 1033
    :cond_408
    mul-int/2addr v10, v7

    .line 1034
    sub-int v7, v4, v10

    .line 1035
    .line 1036
    shl-int/lit8 v8, v7, 0x3

    .line 1037
    .line 1038
    iget v9, v6, Lb6/a;->b:I

    .line 1039
    .line 1040
    if-gt v9, v8, :cond_7c9

    .line 1041
    .line 1042
    move/from16 v9, v19

    .line 1043
    .line 1044
    :goto_413
    const/4 v12, 0x4

    .line 1045
    if-ge v9, v12, :cond_422

    .line 1046
    .line 1047
    iget v10, v6, Lb6/a;->b:I

    .line 1048
    .line 1049
    if-ge v10, v8, :cond_422

    .line 1050
    .line 1051
    move/from16 v10, v19

    .line 1052
    .line 1053
    invoke-virtual {v6, v10}, Lb6/a;->a(Z)V

    .line 1054
    .line 1055
    .line 1056
    add-int/lit8 v9, v9, 0x1

    .line 1057
    .line 1058
    goto :goto_413

    .line 1059
    :cond_422
    move/from16 v10, v19

    .line 1060
    .line 1061
    iget v9, v6, Lb6/a;->b:I

    .line 1062
    .line 1063
    const/16 v25, 0x7

    .line 1064
    .line 1065
    and-int/lit8 v9, v9, 0x7

    .line 1066
    .line 1067
    if-lez v9, :cond_437

    .line 1068
    .line 1069
    :goto_42c
    const/16 v12, 0x8

    .line 1070
    .line 1071
    if-ge v9, v12, :cond_437

    .line 1072
    .line 1073
    invoke-virtual {v6, v10}, Lb6/a;->a(Z)V

    .line 1074
    .line 1075
    .line 1076
    add-int/lit8 v9, v9, 0x1

    .line 1077
    .line 1078
    const/4 v10, 0x0

    .line 1079
    goto :goto_42c

    .line 1080
    :cond_437
    invoke-virtual {v6}, Lb6/a;->e()I

    .line 1081
    .line 1082
    .line 1083
    move-result v9

    .line 1084
    sub-int v9, v7, v9

    .line 1085
    .line 1086
    const/4 v10, 0x0

    .line 1087
    :goto_43e
    if-ge v10, v9, :cond_452

    .line 1088
    .line 1089
    and-int/lit8 v12, v10, 0x1

    .line 1090
    .line 1091
    if-nez v12, :cond_449

    .line 1092
    .line 1093
    const/16 v11, 0xec

    .line 1094
    .line 1095
    :goto_446
    const/16 v12, 0x8

    .line 1096
    .line 1097
    goto :goto_44c

    .line 1098
    :cond_449
    const/16 v11, 0x11

    .line 1099
    .line 1100
    goto :goto_446

    .line 1101
    :goto_44c
    invoke-virtual {v6, v11, v12}, Lb6/a;->b(II)V

    .line 1102
    .line 1103
    .line 1104
    add-int/lit8 v10, v10, 0x1

    .line 1105
    .line 1106
    goto :goto_43e

    .line 1107
    :cond_452
    iget v9, v6, Lb6/a;->b:I

    .line 1108
    .line 1109
    if-ne v9, v8, :cond_7c1

    .line 1110
    .line 1111
    array-length v8, v0

    .line 1112
    const/4 v9, 0x0

    .line 1113
    const/4 v10, 0x0

    .line 1114
    :goto_459
    if-ge v9, v8, :cond_463

    .line 1115
    .line 1116
    aget-object v12, v0, v9

    .line 1117
    .line 1118
    iget v12, v12, Lj0/q;->a:I

    .line 1119
    .line 1120
    add-int/2addr v10, v12

    .line 1121
    add-int/lit8 v9, v9, 0x1

    .line 1122
    .line 1123
    goto :goto_459

    .line 1124
    :cond_463
    invoke-virtual {v6}, Lb6/a;->e()I

    .line 1125
    .line 1126
    .line 1127
    move-result v0

    .line 1128
    if-ne v0, v7, :cond_7b9

    .line 1129
    .line 1130
    new-instance v0, Ljava/util/ArrayList;

    .line 1131
    .line 1132
    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1133
    .line 1134
    .line 1135
    const/4 v8, 0x0

    .line 1136
    const/4 v9, 0x0

    .line 1137
    const/4 v12, 0x0

    .line 1138
    const/4 v13, 0x0

    .line 1139
    :goto_472
    if-ge v8, v10, :cond_55a

    .line 1140
    .line 1141
    const/4 v14, 0x1

    .line 1142
    new-array v15, v14, [I

    .line 1143
    .line 1144
    const/16 p1, 0x11

    .line 1145
    .line 1146
    new-array v11, v14, [I

    .line 1147
    .line 1148
    if-ge v8, v10, :cond_552

    .line 1149
    .line 1150
    rem-int v14, v4, v10

    .line 1151
    .line 1152
    move/from16 v16, v2

    .line 1153
    .line 1154
    sub-int v2, v10, v14

    .line 1155
    .line 1156
    div-int v17, v4, v10

    .line 1157
    .line 1158
    add-int/lit8 v18, v17, 0x1

    .line 1159
    .line 1160
    div-int v20, v7, v10

    .line 1161
    .line 1162
    add-int/lit8 v25, v20, 0x1

    .line 1163
    .line 1164
    move/from16 p2, v5

    .line 1165
    .line 1166
    sub-int v5, v17, v20

    .line 1167
    .line 1168
    move-object/from16 v17, v11

    .line 1169
    .line 1170
    sub-int v11, v18, v25

    .line 1171
    .line 1172
    if-ne v5, v11, :cond_54a

    .line 1173
    .line 1174
    move/from16 p3, v5

    .line 1175
    .line 1176
    add-int v5, v2, v14

    .line 1177
    .line 1178
    if-ne v10, v5, :cond_542

    .line 1179
    .line 1180
    add-int v5, v20, p3

    .line 1181
    .line 1182
    mul-int/2addr v5, v2

    .line 1183
    add-int v18, v25, v11

    .line 1184
    .line 1185
    mul-int v18, v18, v14

    .line 1186
    .line 1187
    add-int v5, v18, v5

    .line 1188
    .line 1189
    if-ne v4, v5, :cond_53a

    .line 1190
    .line 1191
    if-ge v8, v2, :cond_4af

    .line 1192
    .line 1193
    const/16 v19, 0x0

    .line 1194
    .line 1195
    aput v20, v15, v19

    .line 1196
    .line 1197
    aput p3, v17, v19

    .line 1198
    .line 1199
    goto :goto_4b5

    .line 1200
    :cond_4af
    const/16 v19, 0x0

    .line 1201
    .line 1202
    aput v25, v15, v19

    .line 1203
    .line 1204
    aput v11, v17, v19

    .line 1205
    .line 1206
    :goto_4b5
    aget v2, v15, v19

    .line 1207
    .line 1208
    new-array v5, v2, [B

    .line 1209
    .line 1210
    shl-int/lit8 v11, v9, 0x3

    .line 1211
    .line 1212
    const/4 v14, 0x0

    .line 1213
    :goto_4bc
    if-ge v14, v2, :cond_4e6

    .line 1214
    .line 1215
    move/from16 v18, v8

    .line 1216
    .line 1217
    move/from16 p3, v10

    .line 1218
    .line 1219
    move/from16 v20, v14

    .line 1220
    .line 1221
    const/4 v8, 0x0

    .line 1222
    const/4 v10, 0x0

    .line 1223
    :goto_4c6
    const/16 v14, 0x8

    .line 1224
    .line 1225
    if-ge v8, v14, :cond_4dc

    .line 1226
    .line 1227
    invoke-virtual {v6, v11}, Lb6/a;->d(I)Z

    .line 1228
    .line 1229
    .line 1230
    move-result v14

    .line 1231
    if-eqz v14, :cond_4d7

    .line 1232
    .line 1233
    rsub-int/lit8 v14, v8, 0x7

    .line 1234
    .line 1235
    const/16 v23, 0x1

    .line 1236
    .line 1237
    shl-int v14, v23, v14

    .line 1238
    .line 1239
    or-int/2addr v10, v14

    .line 1240
    :cond_4d7
    add-int/lit8 v11, v11, 0x1

    .line 1241
    .line 1242
    add-int/lit8 v8, v8, 0x1

    .line 1243
    .line 1244
    goto :goto_4c6

    .line 1245
    :cond_4dc
    int-to-byte v8, v10

    .line 1246
    aput-byte v8, v5, v20

    .line 1247
    .line 1248
    add-int/lit8 v14, v20, 0x1

    .line 1249
    .line 1250
    move/from16 v10, p3

    .line 1251
    .line 1252
    move/from16 v8, v18

    .line 1253
    .line 1254
    goto :goto_4bc

    .line 1255
    :cond_4e6
    move/from16 v18, v8

    .line 1256
    .line 1257
    move/from16 p3, v10

    .line 1258
    .line 1259
    const/16 v19, 0x0

    .line 1260
    .line 1261
    aget v8, v17, v19

    .line 1262
    .line 1263
    add-int v10, v2, v8

    .line 1264
    .line 1265
    new-array v10, v10, [I

    .line 1266
    .line 1267
    const/4 v11, 0x0

    .line 1268
    :goto_4f3
    if-ge v11, v2, :cond_4fe

    .line 1269
    .line 1270
    aget-byte v14, v5, v11

    .line 1271
    .line 1272
    and-int/lit16 v14, v14, 0xff

    .line 1273
    .line 1274
    aput v14, v10, v11

    .line 1275
    .line 1276
    add-int/lit8 v11, v11, 0x1

    .line 1277
    .line 1278
    goto :goto_4f3

    .line 1279
    :cond_4fe
    new-instance v11, Lcom/google/android/gms/internal/measurement/y4;

    .line 1280
    .line 1281
    sget-object v14, Lc6/a;->k:Lc6/a;

    .line 1282
    .line 1283
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Lc6/a;)V

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v11, v10, v8}, Lcom/google/android/gms/internal/measurement/y4;->w([II)V

    .line 1287
    .line 1288
    .line 1289
    new-array v11, v8, [B

    .line 1290
    .line 1291
    const/4 v14, 0x0

    .line 1292
    :goto_50b
    if-ge v14, v8, :cond_51b

    .line 1293
    .line 1294
    add-int v17, v2, v14

    .line 1295
    .line 1296
    move-object/from16 v20, v10

    .line 1297
    .line 1298
    aget v10, v20, v17

    .line 1299
    .line 1300
    int-to-byte v10, v10

    .line 1301
    aput-byte v10, v11, v14

    .line 1302
    .line 1303
    add-int/lit8 v14, v14, 0x1

    .line 1304
    .line 1305
    move-object/from16 v10, v20

    .line 1306
    .line 1307
    goto :goto_50b

    .line 1308
    :cond_51b
    new-instance v10, Lk6/a;

    .line 1309
    .line 1310
    invoke-direct {v10, v5, v11}, Lk6/a;-><init>([B[B)V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    .line 1315
    .line 1316
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    .line 1317
    .line 1318
    .line 1319
    move-result v12

    .line 1320
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    .line 1321
    .line 1322
    .line 1323
    move-result v13

    .line 1324
    const/16 v19, 0x0

    .line 1325
    .line 1326
    aget v2, v15, v19

    .line 1327
    .line 1328
    add-int/2addr v9, v2

    .line 1329
    add-int/lit8 v8, v18, 0x1

    .line 1330
    .line 1331
    move/from16 v5, p2

    .line 1332
    .line 1333
    move/from16 v10, p3

    .line 1334
    .line 1335
    move/from16 v2, v16

    .line 1336
    .line 1337
    goto/16 :goto_472

    .line 1338
    .line 1339
    :cond_53a
    new-instance v0, Ly5/e;

    .line 1340
    .line 1341
    const-string v1, "Total bytes mismatch"

    .line 1342
    .line 1343
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1344
    .line 1345
    .line 1346
    throw v0

    .line 1347
    :cond_542
    new-instance v0, Ly5/e;

    .line 1348
    .line 1349
    const-string v1, "RS blocks mismatch"

    .line 1350
    .line 1351
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1352
    .line 1353
    .line 1354
    throw v0

    .line 1355
    :cond_54a
    new-instance v0, Ly5/e;

    .line 1356
    .line 1357
    const-string v1, "EC bytes mismatch"

    .line 1358
    .line 1359
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1360
    .line 1361
    .line 1362
    throw v0

    .line 1363
    :cond_552
    new-instance v0, Ly5/e;

    .line 1364
    .line 1365
    const-string v1, "Block ID too large"

    .line 1366
    .line 1367
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1368
    .line 1369
    .line 1370
    throw v0

    .line 1371
    :cond_55a
    move/from16 v16, v2

    .line 1372
    .line 1373
    move/from16 p2, v5

    .line 1374
    .line 1375
    const/16 p1, 0x11

    .line 1376
    .line 1377
    if-ne v7, v9, :cond_7b1

    .line 1378
    .line 1379
    new-instance v2, Lb6/a;

    .line 1380
    .line 1381
    invoke-direct {v2}, Lb6/a;-><init>()V

    .line 1382
    .line 1383
    .line 1384
    const/4 v5, 0x0

    .line 1385
    :goto_568
    if-ge v5, v12, :cond_589

    .line 1386
    .line 1387
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1388
    .line 1389
    .line 1390
    move-result v6

    .line 1391
    const/4 v7, 0x0

    .line 1392
    :cond_56f
    :goto_56f
    if-ge v7, v6, :cond_586

    .line 1393
    .line 1394
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v8

    .line 1398
    add-int/lit8 v7, v7, 0x1

    .line 1399
    .line 1400
    check-cast v8, Lk6/a;

    .line 1401
    .line 1402
    iget-object v8, v8, Lk6/a;->a:[B

    .line 1403
    .line 1404
    array-length v9, v8

    .line 1405
    if-ge v5, v9, :cond_56f

    .line 1406
    .line 1407
    aget-byte v8, v8, v5

    .line 1408
    .line 1409
    const/16 v14, 0x8

    .line 1410
    .line 1411
    invoke-virtual {v2, v8, v14}, Lb6/a;->b(II)V

    .line 1412
    .line 1413
    .line 1414
    goto :goto_56f

    .line 1415
    :cond_586
    add-int/lit8 v5, v5, 0x1

    .line 1416
    .line 1417
    goto :goto_568

    .line 1418
    :cond_589
    const/4 v5, 0x0

    .line 1419
    :goto_58a
    if-ge v5, v13, :cond_5ab

    .line 1420
    .line 1421
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1422
    .line 1423
    .line 1424
    move-result v6

    .line 1425
    const/4 v7, 0x0

    .line 1426
    :cond_591
    :goto_591
    if-ge v7, v6, :cond_5a8

    .line 1427
    .line 1428
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v8

    .line 1432
    add-int/lit8 v7, v7, 0x1

    .line 1433
    .line 1434
    check-cast v8, Lk6/a;

    .line 1435
    .line 1436
    iget-object v8, v8, Lk6/a;->b:[B

    .line 1437
    .line 1438
    array-length v9, v8

    .line 1439
    if-ge v5, v9, :cond_591

    .line 1440
    .line 1441
    aget-byte v8, v8, v5

    .line 1442
    .line 1443
    const/16 v12, 0x8

    .line 1444
    .line 1445
    invoke-virtual {v2, v8, v12}, Lb6/a;->b(II)V

    .line 1446
    .line 1447
    .line 1448
    goto :goto_591

    .line 1449
    :cond_5a8
    add-int/lit8 v5, v5, 0x1

    .line 1450
    .line 1451
    goto :goto_58a

    .line 1452
    :cond_5ab
    invoke-virtual {v2}, Lb6/a;->e()I

    .line 1453
    .line 1454
    .line 1455
    move-result v0

    .line 1456
    if-ne v4, v0, :cond_78c

    .line 1457
    .line 1458
    const/16 v26, 0x4

    .line 1459
    .line 1460
    mul-int/lit8 v0, v16, 0x4

    .line 1461
    .line 1462
    add-int/lit8 v0, v0, 0x11

    .line 1463
    .line 1464
    new-instance v4, Lk6/b;

    .line 1465
    .line 1466
    const/4 v10, 0x0

    .line 1467
    invoke-direct {v4, v0, v0, v10}, Lk6/b;-><init>(III)V

    .line 1468
    .line 1469
    .line 1470
    iget v0, v4, Lk6/b;->c:I

    .line 1471
    .line 1472
    iget v5, v4, Lk6/b;->b:I

    .line 1473
    .line 1474
    const v6, 0x7fffffff

    .line 1475
    .line 1476
    .line 1477
    move v8, v10

    .line 1478
    const/4 v7, -0x1

    .line 1479
    :goto_5c6
    const/16 v12, 0x8

    .line 1480
    .line 1481
    if-ge v8, v12, :cond_743

    .line 1482
    .line 1483
    invoke-static {v2, v1, v3, v8, v4}, Lk6/c;->b(Lb6/a;ILj6/b;ILk6/b;)V

    .line 1484
    .line 1485
    .line 1486
    const/4 v14, 0x1

    .line 1487
    invoke-static {v4, v14}, Lk6/c;->a(Lk6/b;Z)I

    .line 1488
    .line 1489
    .line 1490
    move-result v9

    .line 1491
    invoke-static {v4, v10}, Lk6/c;->a(Lk6/b;Z)I

    .line 1492
    .line 1493
    .line 1494
    move-result v11

    .line 1495
    add-int/2addr v11, v9

    .line 1496
    iget-object v9, v4, Lk6/b;->d:Ljava/lang/Object;

    .line 1497
    .line 1498
    check-cast v9, [[B

    .line 1499
    .line 1500
    const/4 v10, 0x0

    .line 1501
    const/4 v12, 0x0

    .line 1502
    :goto_5dd
    add-int/lit8 v13, v0, -0x1

    .line 1503
    .line 1504
    if-ge v10, v13, :cond_60a

    .line 1505
    .line 1506
    aget-object v13, v9, v10

    .line 1507
    .line 1508
    const/4 v14, 0x0

    .line 1509
    :goto_5e4
    add-int/lit8 v15, v5, -0x1

    .line 1510
    .line 1511
    if-ge v14, v15, :cond_605

    .line 1512
    .line 1513
    aget-byte v15, v13, v14

    .line 1514
    .line 1515
    add-int/lit8 v16, v14, 0x1

    .line 1516
    .line 1517
    move/from16 v17, v8

    .line 1518
    .line 1519
    aget-byte v8, v13, v16

    .line 1520
    .line 1521
    if-ne v15, v8, :cond_600

    .line 1522
    .line 1523
    add-int/lit8 v8, v10, 0x1

    .line 1524
    .line 1525
    aget-object v8, v9, v8

    .line 1526
    .line 1527
    aget-byte v14, v8, v14

    .line 1528
    .line 1529
    if-ne v15, v14, :cond_600

    .line 1530
    .line 1531
    aget-byte v8, v8, v16

    .line 1532
    .line 1533
    if-ne v15, v8, :cond_600

    .line 1534
    .line 1535
    add-int/lit8 v12, v12, 0x1

    .line 1536
    .line 1537
    :cond_600
    move/from16 v14, v16

    .line 1538
    .line 1539
    move/from16 v8, v17

    .line 1540
    .line 1541
    goto :goto_5e4

    .line 1542
    :cond_605
    move/from16 v17, v8

    .line 1543
    .line 1544
    add-int/lit8 v10, v10, 0x1

    .line 1545
    .line 1546
    goto :goto_5dd

    .line 1547
    :cond_60a
    move/from16 v17, v8

    .line 1548
    .line 1549
    mul-int/lit8 v12, v12, 0x3

    .line 1550
    .line 1551
    add-int/2addr v12, v11

    .line 1552
    const/4 v8, 0x0

    .line 1553
    const/4 v10, 0x0

    .line 1554
    :goto_611
    if-ge v8, v0, :cond_70f

    .line 1555
    .line 1556
    const/4 v11, 0x0

    .line 1557
    :goto_614
    if-ge v11, v5, :cond_709

    .line 1558
    .line 1559
    aget-object v13, v9, v8

    .line 1560
    .line 1561
    add-int/lit8 v14, v11, 0x6

    .line 1562
    .line 1563
    if-ge v14, v5, :cond_689

    .line 1564
    .line 1565
    aget-byte v15, v13, v11

    .line 1566
    .line 1567
    move/from16 p1, v10

    .line 1568
    .line 1569
    const/4 v10, 0x1

    .line 1570
    if-ne v15, v10, :cond_686

    .line 1571
    .line 1572
    add-int/lit8 v15, v11, 0x1

    .line 1573
    .line 1574
    aget-byte v15, v13, v15

    .line 1575
    .line 1576
    if-nez v15, :cond_686

    .line 1577
    .line 1578
    add-int/lit8 v15, v11, 0x2

    .line 1579
    .line 1580
    aget-byte v15, v13, v15

    .line 1581
    .line 1582
    if-ne v15, v10, :cond_686

    .line 1583
    .line 1584
    add-int/lit8 v15, v11, 0x3

    .line 1585
    .line 1586
    aget-byte v15, v13, v15

    .line 1587
    .line 1588
    if-ne v15, v10, :cond_686

    .line 1589
    .line 1590
    add-int/lit8 v15, v11, 0x4

    .line 1591
    .line 1592
    aget-byte v15, v13, v15

    .line 1593
    .line 1594
    if-ne v15, v10, :cond_686

    .line 1595
    .line 1596
    add-int/lit8 v15, v11, 0x5

    .line 1597
    .line 1598
    aget-byte v15, v13, v15

    .line 1599
    .line 1600
    if-nez v15, :cond_686

    .line 1601
    .line 1602
    aget-byte v14, v13, v14

    .line 1603
    .line 1604
    if-ne v14, v10, :cond_686

    .line 1605
    .line 1606
    add-int/lit8 v14, v11, -0x4

    .line 1607
    .line 1608
    const/4 v15, 0x0

    .line 1609
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 1610
    .line 1611
    .line 1612
    move-result v14

    .line 1613
    array-length v15, v13

    .line 1614
    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    .line 1615
    .line 1616
    .line 1617
    move-result v15

    .line 1618
    :goto_651
    if-ge v14, v15, :cond_661

    .line 1619
    .line 1620
    move/from16 v16, v11

    .line 1621
    .line 1622
    aget-byte v11, v13, v14

    .line 1623
    .line 1624
    if-ne v11, v10, :cond_65b

    .line 1625
    .line 1626
    const/4 v10, 0x0

    .line 1627
    goto :goto_664

    .line 1628
    :cond_65b
    add-int/lit8 v14, v14, 0x1

    .line 1629
    .line 1630
    move/from16 v11, v16

    .line 1631
    .line 1632
    const/4 v10, 0x1

    .line 1633
    goto :goto_651

    .line 1634
    :cond_661
    move/from16 v16, v11

    .line 1635
    .line 1636
    const/4 v10, 0x1

    .line 1637
    :goto_664
    if-nez v10, :cond_683

    .line 1638
    .line 1639
    add-int/lit8 v11, v16, 0x7

    .line 1640
    .line 1641
    add-int/lit8 v10, v16, 0xb

    .line 1642
    .line 1643
    const/4 v15, 0x0

    .line 1644
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    .line 1645
    .line 1646
    .line 1647
    move-result v11

    .line 1648
    array-length v14, v13

    .line 1649
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    .line 1650
    .line 1651
    .line 1652
    move-result v10

    .line 1653
    :goto_674
    if-ge v11, v10, :cond_680

    .line 1654
    .line 1655
    aget-byte v14, v13, v11

    .line 1656
    .line 1657
    const/4 v15, 0x1

    .line 1658
    if-ne v14, v15, :cond_67d

    .line 1659
    .line 1660
    const/4 v10, 0x0

    .line 1661
    goto :goto_681

    .line 1662
    :cond_67d
    add-int/lit8 v11, v11, 0x1

    .line 1663
    .line 1664
    goto :goto_674

    .line 1665
    :cond_680
    const/4 v10, 0x1

    .line 1666
    :goto_681
    if-eqz v10, :cond_68c

    .line 1667
    .line 1668
    :cond_683
    add-int/lit8 v10, p1, 0x1

    .line 1669
    .line 1670
    goto :goto_68e

    .line 1671
    :cond_686
    :goto_686
    move/from16 v16, v11

    .line 1672
    .line 1673
    goto :goto_68c

    .line 1674
    :cond_689
    move/from16 p1, v10

    .line 1675
    .line 1676
    goto :goto_686

    .line 1677
    :cond_68c
    :goto_68c
    move/from16 v10, p1

    .line 1678
    .line 1679
    :goto_68e
    add-int/lit8 v11, v8, 0x6

    .line 1680
    .line 1681
    if-ge v11, v0, :cond_705

    .line 1682
    .line 1683
    aget-object v13, v9, v8

    .line 1684
    .line 1685
    aget-byte v13, v13, v16

    .line 1686
    .line 1687
    const/4 v14, 0x1

    .line 1688
    if-ne v13, v14, :cond_705

    .line 1689
    .line 1690
    add-int/lit8 v13, v8, 0x1

    .line 1691
    .line 1692
    aget-object v13, v9, v13

    .line 1693
    .line 1694
    aget-byte v13, v13, v16

    .line 1695
    .line 1696
    if-nez v13, :cond_705

    .line 1697
    .line 1698
    add-int/lit8 v13, v8, 0x2

    .line 1699
    .line 1700
    aget-object v13, v9, v13

    .line 1701
    .line 1702
    aget-byte v13, v13, v16

    .line 1703
    .line 1704
    if-ne v13, v14, :cond_705

    .line 1705
    .line 1706
    add-int/lit8 v13, v8, 0x3

    .line 1707
    .line 1708
    aget-object v13, v9, v13

    .line 1709
    .line 1710
    aget-byte v13, v13, v16

    .line 1711
    .line 1712
    if-ne v13, v14, :cond_705

    .line 1713
    .line 1714
    add-int/lit8 v13, v8, 0x4

    .line 1715
    .line 1716
    aget-object v13, v9, v13

    .line 1717
    .line 1718
    aget-byte v13, v13, v16

    .line 1719
    .line 1720
    if-ne v13, v14, :cond_705

    .line 1721
    .line 1722
    add-int/lit8 v13, v8, 0x5

    .line 1723
    .line 1724
    aget-object v13, v9, v13

    .line 1725
    .line 1726
    aget-byte v13, v13, v16

    .line 1727
    .line 1728
    if-nez v13, :cond_705

    .line 1729
    .line 1730
    aget-object v11, v9, v11

    .line 1731
    .line 1732
    aget-byte v11, v11, v16

    .line 1733
    .line 1734
    if-ne v11, v14, :cond_705

    .line 1735
    .line 1736
    add-int/lit8 v11, v8, -0x4

    .line 1737
    .line 1738
    const/4 v15, 0x0

    .line 1739
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    .line 1740
    .line 1741
    .line 1742
    move-result v11

    .line 1743
    array-length v13, v9

    .line 1744
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    .line 1745
    .line 1746
    .line 1747
    move-result v13

    .line 1748
    :goto_6d3
    if-ge v11, v13, :cond_6e1

    .line 1749
    .line 1750
    aget-object v15, v9, v11

    .line 1751
    .line 1752
    aget-byte v15, v15, v16

    .line 1753
    .line 1754
    if-ne v15, v14, :cond_6dd

    .line 1755
    .line 1756
    const/4 v11, 0x0

    .line 1757
    goto :goto_6e2

    .line 1758
    :cond_6dd
    add-int/lit8 v11, v11, 0x1

    .line 1759
    .line 1760
    const/4 v14, 0x1

    .line 1761
    goto :goto_6d3

    .line 1762
    :cond_6e1
    const/4 v11, 0x1

    .line 1763
    :goto_6e2
    if-nez v11, :cond_703

    .line 1764
    .line 1765
    add-int/lit8 v11, v8, 0x7

    .line 1766
    .line 1767
    add-int/lit8 v13, v8, 0xb

    .line 1768
    .line 1769
    const/4 v15, 0x0

    .line 1770
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    .line 1771
    .line 1772
    .line 1773
    move-result v11

    .line 1774
    array-length v14, v9

    .line 1775
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    .line 1776
    .line 1777
    .line 1778
    move-result v13

    .line 1779
    :goto_6f2
    if-ge v11, v13, :cond_700

    .line 1780
    .line 1781
    aget-object v14, v9, v11

    .line 1782
    .line 1783
    aget-byte v14, v14, v16

    .line 1784
    .line 1785
    const/4 v15, 0x1

    .line 1786
    if-ne v14, v15, :cond_6fd

    .line 1787
    .line 1788
    const/4 v11, 0x0

    .line 1789
    goto :goto_701

    .line 1790
    :cond_6fd
    add-int/lit8 v11, v11, 0x1

    .line 1791
    .line 1792
    goto :goto_6f2

    .line 1793
    :cond_700
    const/4 v11, 0x1

    .line 1794
    :goto_701
    if-eqz v11, :cond_705

    .line 1795
    .line 1796
    :cond_703
    add-int/lit8 v10, v10, 0x1

    .line 1797
    .line 1798
    :cond_705
    add-int/lit8 v11, v16, 0x1

    .line 1799
    .line 1800
    goto/16 :goto_614

    .line 1801
    .line 1802
    :cond_709
    move/from16 p1, v10

    .line 1803
    .line 1804
    add-int/lit8 v8, v8, 0x1

    .line 1805
    .line 1806
    goto/16 :goto_611

    .line 1807
    .line 1808
    :cond_70f
    mul-int/lit8 v10, v10, 0x28

    .line 1809
    .line 1810
    add-int/2addr v10, v12

    .line 1811
    const/4 v8, 0x0

    .line 1812
    const/4 v11, 0x0

    .line 1813
    :goto_714
    if-ge v8, v0, :cond_728

    .line 1814
    .line 1815
    aget-object v12, v9, v8

    .line 1816
    .line 1817
    const/4 v13, 0x0

    .line 1818
    :goto_719
    if-ge v13, v5, :cond_725

    .line 1819
    .line 1820
    aget-byte v14, v12, v13

    .line 1821
    .line 1822
    const/4 v15, 0x1

    .line 1823
    if-ne v14, v15, :cond_722

    .line 1824
    .line 1825
    add-int/lit8 v11, v11, 0x1

    .line 1826
    .line 1827
    :cond_722
    add-int/lit8 v13, v13, 0x1

    .line 1828
    .line 1829
    goto :goto_719

    .line 1830
    :cond_725
    add-int/lit8 v8, v8, 0x1

    .line 1831
    .line 1832
    goto :goto_714

    .line 1833
    :cond_728
    mul-int v8, v0, v5

    .line 1834
    .line 1835
    shl-int/lit8 v9, v11, 0x1

    .line 1836
    .line 1837
    sub-int/2addr v9, v8

    .line 1838
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 1839
    .line 1840
    .line 1841
    move-result v9

    .line 1842
    const/16 v24, 0xa

    .line 1843
    .line 1844
    mul-int/lit8 v9, v9, 0xa

    .line 1845
    .line 1846
    div-int/2addr v9, v8

    .line 1847
    mul-int/lit8 v9, v9, 0xa

    .line 1848
    .line 1849
    add-int/2addr v9, v10

    .line 1850
    if-ge v9, v6, :cond_73e

    .line 1851
    .line 1852
    move v6, v9

    .line 1853
    move/from16 v7, v17

    .line 1854
    .line 1855
    :cond_73e
    add-int/lit8 v8, v17, 0x1

    .line 1856
    .line 1857
    const/4 v10, 0x0

    .line 1858
    goto/16 :goto_5c6

    .line 1859
    .line 1860
    :cond_743
    invoke-static {v2, v1, v3, v7, v4}, Lk6/c;->b(Lb6/a;ILj6/b;ILk6/b;)V

    .line 1861
    .line 1862
    .line 1863
    const/16 v23, 0x1

    .line 1864
    .line 1865
    shl-int/lit8 v1, p2, 0x1

    .line 1866
    .line 1867
    add-int v2, v5, v1

    .line 1868
    .line 1869
    add-int/2addr v1, v0

    .line 1870
    const/16 v3, 0xc8

    .line 1871
    .line 1872
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 1873
    .line 1874
    .line 1875
    move-result v6

    .line 1876
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 1877
    .line 1878
    .line 1879
    move-result v3

    .line 1880
    div-int v2, v6, v2

    .line 1881
    .line 1882
    div-int v1, v3, v1

    .line 1883
    .line 1884
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 1885
    .line 1886
    .line 1887
    move-result v1

    .line 1888
    mul-int v2, v5, v1

    .line 1889
    .line 1890
    sub-int v2, v6, v2

    .line 1891
    .line 1892
    const/16 v22, 0x2

    .line 1893
    .line 1894
    div-int/lit8 v2, v2, 0x2

    .line 1895
    .line 1896
    mul-int v7, v0, v1

    .line 1897
    .line 1898
    sub-int v7, v3, v7

    .line 1899
    .line 1900
    div-int/lit8 v7, v7, 0x2

    .line 1901
    .line 1902
    new-instance v8, Lb6/b;

    .line 1903
    .line 1904
    invoke-direct {v8, v6, v3}, Lb6/b;-><init>(II)V

    .line 1905
    .line 1906
    .line 1907
    const/4 v3, 0x0

    .line 1908
    :goto_773
    if-ge v3, v0, :cond_78b

    .line 1909
    .line 1910
    move v9, v2

    .line 1911
    const/4 v6, 0x0

    .line 1912
    :goto_777
    if-ge v6, v5, :cond_787

    .line 1913
    .line 1914
    invoke-virtual {v4, v6, v3}, Lk6/b;->a(II)B

    .line 1915
    .line 1916
    .line 1917
    move-result v10

    .line 1918
    const/4 v14, 0x1

    .line 1919
    if-ne v10, v14, :cond_783

    .line 1920
    .line 1921
    invoke-virtual {v8, v9, v7, v1, v1}, Lb6/b;->c(IIII)V

    .line 1922
    .line 1923
    .line 1924
    :cond_783
    add-int/lit8 v6, v6, 0x1

    .line 1925
    .line 1926
    add-int/2addr v9, v1

    .line 1927
    goto :goto_777

    .line 1928
    :cond_787
    add-int/lit8 v3, v3, 0x1

    .line 1929
    .line 1930
    add-int/2addr v7, v1

    .line 1931
    goto :goto_773

    .line 1932
    :cond_78b
    return-object v8

    .line 1933
    :cond_78c
    new-instance v0, Ly5/e;

    .line 1934
    .line 1935
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1936
    .line 1937
    const-string v3, "Interleaving error: "

    .line 1938
    .line 1939
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1940
    .line 1941
    .line 1942
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1943
    .line 1944
    .line 1945
    const-string v3, " and "

    .line 1946
    .line 1947
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1948
    .line 1949
    .line 1950
    invoke-virtual {v2}, Lb6/a;->e()I

    .line 1951
    .line 1952
    .line 1953
    move-result v2

    .line 1954
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1955
    .line 1956
    .line 1957
    const-string v2, " differ."

    .line 1958
    .line 1959
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1960
    .line 1961
    .line 1962
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1963
    .line 1964
    .line 1965
    move-result-object v1

    .line 1966
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1967
    .line 1968
    .line 1969
    throw v0

    .line 1970
    :cond_7b1
    new-instance v0, Ly5/e;

    .line 1971
    .line 1972
    const-string v1, "Data bytes does not match offset"

    .line 1973
    .line 1974
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1975
    .line 1976
    .line 1977
    throw v0

    .line 1978
    :cond_7b9
    new-instance v0, Ly5/e;

    .line 1979
    .line 1980
    const-string v1, "Number of bits and data bytes does not match"

    .line 1981
    .line 1982
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1983
    .line 1984
    .line 1985
    throw v0

    .line 1986
    :cond_7c1
    new-instance v0, Ly5/e;

    .line 1987
    .line 1988
    const-string v1, "Bits size does not equal capacity"

    .line 1989
    .line 1990
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1991
    .line 1992
    .line 1993
    throw v0

    .line 1994
    :cond_7c9
    new-instance v0, Ly5/e;

    .line 1995
    .line 1996
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1997
    .line 1998
    const-string v2, "data bits cannot fit in the QR Code"

    .line 1999
    .line 2000
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2001
    .line 2002
    .line 2003
    iget v2, v6, Lb6/a;->b:I

    .line 2004
    .line 2005
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2006
    .line 2007
    .line 2008
    const-string v2, " > "

    .line 2009
    .line 2010
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2011
    .line 2012
    .line 2013
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2014
    .line 2015
    .line 2016
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2017
    .line 2018
    .line 2019
    move-result-object v1

    .line 2020
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2021
    .line 2022
    .line 2023
    throw v0

    .line 2024
    :cond_7e7
    new-instance v1, Ly5/e;

    .line 2025
    .line 2026
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2027
    .line 2028
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2029
    .line 2030
    .line 2031
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2032
    .line 2033
    .line 2034
    const-string v0, " is bigger than "

    .line 2035
    .line 2036
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2037
    .line 2038
    .line 2039
    const/16 v23, 0x1

    .line 2040
    .line 2041
    add-int/lit8 v8, v8, -0x1

    .line 2042
    .line 2043
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2044
    .line 2045
    .line 2046
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2047
    .line 2048
    .line 2049
    move-result-object v0

    .line 2050
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2051
    .line 2052
    .line 2053
    throw v1

    .line 2054
    :cond_805
    move/from16 p2, v5

    .line 2055
    .line 2056
    const/16 v7, 0x9

    .line 2057
    .line 2058
    const/16 v12, 0x1a

    .line 2059
    .line 2060
    const/16 v24, 0xa

    .line 2061
    .line 2062
    add-int/lit8 v2, v18, 0x1

    .line 2063
    .line 2064
    const/16 v19, 0x0

    .line 2065
    .line 2066
    goto/16 :goto_35a

    .line 2067
    .line 2068
    :cond_813
    new-instance v0, Ly5/e;

    .line 2069
    .line 2070
    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2071
    .line 2072
    .line 2073
    throw v0

    .line 2074
    :cond_819
    move/from16 p2, v5

    .line 2075
    .line 2076
    const/16 v7, 0x9

    .line 2077
    .line 2078
    const/16 v12, 0x1a

    .line 2079
    .line 2080
    const/16 v24, 0xa

    .line 2081
    .line 2082
    add-int/lit8 v3, v3, 0x1

    .line 2083
    .line 2084
    move/from16 v2, v18

    .line 2085
    .line 2086
    const/16 v19, 0x0

    .line 2087
    .line 2088
    goto/16 :goto_305

    .line 2089
    .line 2090
    :cond_829
    new-instance v0, Ly5/e;

    .line 2091
    .line 2092
    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2093
    .line 2094
    .line 2095
    throw v0

    .line 2096
    :cond_82f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2097
    .line 2098
    const-string v2, "Can only encode QR_CODE, but got "

    .line 2099
    .line 2100
    invoke-static {v1}, Lq2/x;->n(I)Ljava/lang/String;

    .line 2101
    .line 2102
    .line 2103
    move-result-object v1

    .line 2104
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2105
    .line 2106
    .line 2107
    move-result-object v1

    .line 2108
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2109
    .line 2110
    .line 2111
    throw v0

    .line 2112
    :cond_83f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2113
    .line 2114
    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2115
    .line 2116
    .line 2117
    throw v0

    .line 2118
    :sswitch_845
    invoke-direct/range {p0 .. p3}, Le5/e;->l(Ljava/lang/String;ILjava/util/EnumMap;)Lb6/b;

    .line 2119
    .line 2120
    .line 2121
    move-result-object v0

    .line 2122
    return-object v0

    .line 2123
    :sswitch_84a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 2124
    .line 2125
    .line 2126
    move-result v2

    .line 2127
    if-nez v2, :cond_c91

    .line 2128
    .line 2129
    const/4 v4, 0x6

    .line 2130
    if-ne v1, v4, :cond_c81

    .line 2131
    .line 2132
    sget-object v1, Ly5/a;->c:Ly5/a;

    .line 2133
    .line 2134
    invoke-virtual {v3, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    .line 2136
    .line 2137
    move-result-object v1

    .line 2138
    check-cast v1, Le6/f;

    .line 2139
    .line 2140
    if-eqz v1, :cond_85e

    .line 2141
    .line 2142
    goto :goto_860

    .line 2143
    :cond_85e
    sget-object v1, Le6/f;->a:Le6/f;

    .line 2144
    .line 2145
    :goto_860
    sget-object v2, Ly5/a;->d:Ly5/a;

    .line 2146
    .line 2147
    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2148
    .line 2149
    .line 2150
    move-result-object v2

    .line 2151
    if-nez v2, :cond_c7b

    .line 2152
    .line 2153
    sget-object v2, Ly5/a;->e:Ly5/a;

    .line 2154
    .line 2155
    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    .line 2157
    .line 2158
    move-result-object v2

    .line 2159
    if-nez v2, :cond_c75

    .line 2160
    .line 2161
    new-instance v2, Le5/e;

    .line 2162
    .line 2163
    const/16 v12, 0xd

    .line 2164
    .line 2165
    invoke-direct {v2, v12}, Le5/e;-><init>(I)V

    .line 2166
    .line 2167
    .line 2168
    new-instance v3, Le5/e;

    .line 2169
    .line 2170
    const/16 v4, 0xf

    .line 2171
    .line 2172
    invoke-direct {v3, v4}, Le5/e;-><init>(I)V

    .line 2173
    .line 2174
    .line 2175
    new-instance v4, Le6/g;

    .line 2176
    .line 2177
    const/4 v15, 0x0

    .line 2178
    invoke-direct {v4, v15}, Le6/g;-><init>(I)V

    .line 2179
    .line 2180
    .line 2181
    new-instance v5, Le6/g;

    .line 2182
    .line 2183
    const/4 v14, 0x1

    .line 2184
    invoke-direct {v5, v14}, Le6/g;-><init>(I)V

    .line 2185
    .line 2186
    .line 2187
    new-instance v6, Le5/e;

    .line 2188
    .line 2189
    const/16 v7, 0x10

    .line 2190
    .line 2191
    invoke-direct {v6, v7}, Le5/e;-><init>(I)V

    .line 2192
    .line 2193
    .line 2194
    new-instance v7, Le5/e;

    .line 2195
    .line 2196
    const/16 v8, 0xe

    .line 2197
    .line 2198
    invoke-direct {v7, v8}, Le5/e;-><init>(I)V

    .line 2199
    .line 2200
    .line 2201
    const/4 v8, 0x6

    .line 2202
    new-array v9, v8, [Le5/e;

    .line 2203
    .line 2204
    aput-object v2, v9, v15

    .line 2205
    .line 2206
    aput-object v3, v9, v14

    .line 2207
    .line 2208
    const/16 v22, 0x2

    .line 2209
    .line 2210
    aput-object v4, v9, v22

    .line 2211
    .line 2212
    aput-object v5, v9, v16

    .line 2213
    .line 2214
    const/16 v26, 0x4

    .line 2215
    .line 2216
    aput-object v6, v9, v26

    .line 2217
    .line 2218
    const/16 v24, 0x5

    .line 2219
    .line 2220
    aput-object v7, v9, v24

    .line 2221
    .line 2222
    new-instance v2, Le6/c;

    .line 2223
    .line 2224
    invoke-direct {v2, v0}, Le6/c;-><init>(Ljava/lang/String;)V

    .line 2225
    .line 2226
    .line 2227
    iput-object v1, v2, Le6/c;->b:Le6/f;

    .line 2228
    .line 2229
    const-string v3, "[)>\u001e05\u001d"

    .line 2230
    .line 2231
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2232
    .line 2233
    .line 2234
    move-result v3

    .line 2235
    const-string v4, "\u001e\u0004"

    .line 2236
    .line 2237
    if-eqz v3, :cond_8d5

    .line 2238
    .line 2239
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 2240
    .line 2241
    .line 2242
    move-result v3

    .line 2243
    if-eqz v3, :cond_8d5

    .line 2244
    .line 2245
    const/16 v3, 0xec

    .line 2246
    .line 2247
    invoke-virtual {v2, v3}, Le6/c;->d(C)V

    .line 2248
    .line 2249
    .line 2250
    const/4 v6, 0x2

    .line 2251
    iput v6, v2, Le6/c;->g:I

    .line 2252
    .line 2253
    iget v0, v2, Le6/c;->d:I

    .line 2254
    .line 2255
    const/16 v25, 0x7

    .line 2256
    .line 2257
    add-int/lit8 v0, v0, 0x7

    .line 2258
    .line 2259
    iput v0, v2, Le6/c;->d:I

    .line 2260
    .line 2261
    goto :goto_8f3

    .line 2262
    :cond_8d5
    const-string v3, "[)>\u001e06\u001d"

    .line 2263
    .line 2264
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2265
    .line 2266
    .line 2267
    move-result v3

    .line 2268
    if-eqz v3, :cond_8f3

    .line 2269
    .line 2270
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 2271
    .line 2272
    .line 2273
    move-result v0

    .line 2274
    if-eqz v0, :cond_8f3

    .line 2275
    .line 2276
    const/16 v0, 0xed

    .line 2277
    .line 2278
    invoke-virtual {v2, v0}, Le6/c;->d(C)V

    .line 2279
    .line 2280
    .line 2281
    const/4 v6, 0x2

    .line 2282
    iput v6, v2, Le6/c;->g:I

    .line 2283
    .line 2284
    iget v0, v2, Le6/c;->d:I

    .line 2285
    .line 2286
    const/16 v25, 0x7

    .line 2287
    .line 2288
    add-int/lit8 v0, v0, 0x7

    .line 2289
    .line 2290
    iput v0, v2, Le6/c;->d:I

    .line 2291
    .line 2292
    :cond_8f3
    :goto_8f3
    const/4 v0, 0x0

    .line 2293
    :cond_8f4
    :goto_8f4
    invoke-virtual {v2}, Le6/c;->b()Z

    .line 2294
    .line 2295
    .line 2296
    move-result v3

    .line 2297
    if-eqz v3, :cond_908

    .line 2298
    .line 2299
    aget-object v3, v9, v0

    .line 2300
    .line 2301
    invoke-virtual {v3, v2}, Le5/e;->k(Le6/c;)V

    .line 2302
    .line 2303
    .line 2304
    iget v3, v2, Le6/c;->e:I

    .line 2305
    .line 2306
    if-ltz v3, :cond_8f4

    .line 2307
    .line 2308
    const/4 v14, -0x1

    .line 2309
    iput v14, v2, Le6/c;->e:I

    .line 2310
    .line 2311
    move v0, v3

    .line 2312
    goto :goto_8f4

    .line 2313
    :cond_908
    iget-object v3, v2, Le6/c;->c:Ljava/lang/StringBuilder;

    .line 2314
    .line 2315
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 2316
    .line 2317
    .line 2318
    move-result v4

    .line 2319
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 2320
    .line 2321
    .line 2322
    move-result v5

    .line 2323
    invoke-virtual {v2, v5}, Le6/c;->c(I)V

    .line 2324
    .line 2325
    .line 2326
    iget-object v5, v2, Le6/c;->f:Le6/e;

    .line 2327
    .line 2328
    iget v5, v5, Le6/e;->b:I

    .line 2329
    .line 2330
    const/16 v6, 0xfe

    .line 2331
    .line 2332
    if-ge v4, v5, :cond_928

    .line 2333
    .line 2334
    if-eqz v0, :cond_928

    .line 2335
    .line 2336
    const/4 v9, 0x5

    .line 2337
    if-eq v0, v9, :cond_928

    .line 2338
    .line 2339
    const/4 v12, 0x4

    .line 2340
    if-eq v0, v12, :cond_928

    .line 2341
    .line 2342
    invoke-virtual {v2, v6}, Le6/c;->d(C)V

    .line 2343
    .line 2344
    .line 2345
    :cond_928
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 2346
    .line 2347
    .line 2348
    move-result v0

    .line 2349
    if-ge v0, v5, :cond_933

    .line 2350
    .line 2351
    const/16 v0, 0x81

    .line 2352
    .line 2353
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2354
    .line 2355
    .line 2356
    :cond_933
    :goto_933
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 2357
    .line 2358
    .line 2359
    move-result v0

    .line 2360
    if-ge v0, v5, :cond_951

    .line 2361
    .line 2362
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 2363
    .line 2364
    .line 2365
    move-result v0

    .line 2366
    const/16 v23, 0x1

    .line 2367
    .line 2368
    add-int/lit8 v0, v0, 0x1

    .line 2369
    .line 2370
    mul-int/lit16 v0, v0, 0x95

    .line 2371
    .line 2372
    rem-int/lit16 v0, v0, 0xfd

    .line 2373
    .line 2374
    add-int/lit16 v2, v0, 0x82

    .line 2375
    .line 2376
    if-gt v2, v6, :cond_94a

    .line 2377
    .line 2378
    goto :goto_94c

    .line 2379
    :cond_94a
    add-int/lit8 v2, v0, -0x7c

    .line 2380
    .line 2381
    :goto_94c
    int-to-char v0, v2

    .line 2382
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2383
    .line 2384
    .line 2385
    goto :goto_933

    .line 2386
    :cond_951
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2387
    .line 2388
    .line 2389
    move-result-object v0

    .line 2390
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 2391
    .line 2392
    .line 2393
    move-result v2

    .line 2394
    invoke-static {v2, v1}, Le6/e;->e(ILe6/f;)Le6/e;

    .line 2395
    .line 2396
    .line 2397
    move-result-object v1

    .line 2398
    iget v2, v1, Le6/e;->e:I

    .line 2399
    .line 2400
    iget v3, v1, Le6/e;->d:I

    .line 2401
    .line 2402
    sget-object v4, Le6/d;->a:[I

    .line 2403
    .line 2404
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 2405
    .line 2406
    .line 2407
    move-result v4

    .line 2408
    iget v5, v1, Le6/e;->b:I

    .line 2409
    .line 2410
    iget v6, v1, Le6/e;->c:I

    .line 2411
    .line 2412
    if-ne v4, v5, :cond_c6d

    .line 2413
    .line 2414
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2415
    .line 2416
    add-int v7, v5, v6

    .line 2417
    .line 2418
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2419
    .line 2420
    .line 2421
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    .line 2423
    .line 2424
    invoke-virtual {v1}, Le6/e;->c()I

    .line 2425
    .line 2426
    .line 2427
    move-result v7

    .line 2428
    const/4 v14, 0x1

    .line 2429
    if-ne v7, v14, :cond_986

    .line 2430
    .line 2431
    invoke-static {v6, v0}, Le6/d;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 2432
    .line 2433
    .line 2434
    move-result-object v0

    .line 2435
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2436
    .line 2437
    .line 2438
    goto :goto_9eb

    .line 2439
    :cond_986
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->capacity()I

    .line 2440
    .line 2441
    .line 2442
    move-result v6

    .line 2443
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2444
    .line 2445
    .line 2446
    new-array v6, v7, [I

    .line 2447
    .line 2448
    new-array v8, v7, [I

    .line 2449
    .line 2450
    new-array v9, v7, [I

    .line 2451
    .line 2452
    const/4 v10, 0x0

    .line 2453
    :goto_994
    if-ge v10, v7, :cond_9b3

    .line 2454
    .line 2455
    add-int/lit8 v11, v10, 0x1

    .line 2456
    .line 2457
    invoke-virtual {v1, v11}, Le6/e;->a(I)I

    .line 2458
    .line 2459
    .line 2460
    move-result v12

    .line 2461
    aput v12, v6, v10

    .line 2462
    .line 2463
    iget v12, v1, Le6/e;->h:I

    .line 2464
    .line 2465
    aput v12, v8, v10

    .line 2466
    .line 2467
    const/16 v19, 0x0

    .line 2468
    .line 2469
    aput v19, v9, v10

    .line 2470
    .line 2471
    if-lez v10, :cond_9b1

    .line 2472
    .line 2473
    add-int/lit8 v12, v10, -0x1

    .line 2474
    .line 2475
    aget v12, v9, v12

    .line 2476
    .line 2477
    aget v13, v6, v10

    .line 2478
    .line 2479
    add-int/2addr v12, v13

    .line 2480
    aput v12, v9, v10

    .line 2481
    .line 2482
    :cond_9b1
    move v10, v11

    .line 2483
    goto :goto_994

    .line 2484
    :cond_9b3
    const/4 v9, 0x0

    .line 2485
    :goto_9b4
    if-ge v9, v7, :cond_9eb

    .line 2486
    .line 2487
    new-instance v10, Ljava/lang/StringBuilder;

    .line 2488
    .line 2489
    aget v11, v6, v9

    .line 2490
    .line 2491
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2492
    .line 2493
    .line 2494
    move v11, v9

    .line 2495
    :goto_9be
    if-ge v11, v5, :cond_9c9

    .line 2496
    .line 2497
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 2498
    .line 2499
    .line 2500
    move-result v12

    .line 2501
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2502
    .line 2503
    .line 2504
    add-int/2addr v11, v7

    .line 2505
    goto :goto_9be

    .line 2506
    :cond_9c9
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2507
    .line 2508
    .line 2509
    move-result-object v10

    .line 2510
    aget v11, v8, v9

    .line 2511
    .line 2512
    invoke-static {v11, v10}, Le6/d;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 2513
    .line 2514
    .line 2515
    move-result-object v10

    .line 2516
    move v12, v9

    .line 2517
    const/4 v11, 0x0

    .line 2518
    :goto_9d5
    aget v13, v8, v9

    .line 2519
    .line 2520
    mul-int/2addr v13, v7

    .line 2521
    if-ge v12, v13, :cond_9e8

    .line 2522
    .line 2523
    add-int v13, v5, v12

    .line 2524
    .line 2525
    add-int/lit8 v14, v11, 0x1

    .line 2526
    .line 2527
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    .line 2528
    .line 2529
    .line 2530
    move-result v11

    .line 2531
    invoke-virtual {v4, v13, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2532
    .line 2533
    .line 2534
    add-int/2addr v12, v7

    .line 2535
    move v11, v14

    .line 2536
    goto :goto_9d5

    .line 2537
    :cond_9e8
    add-int/lit8 v9, v9, 0x1

    .line 2538
    .line 2539
    goto :goto_9b4

    .line 2540
    :cond_9eb
    :goto_9eb
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2541
    .line 2542
    .line 2543
    move-result-object v0

    .line 2544
    new-instance v4, Le6/b;

    .line 2545
    .line 2546
    invoke-virtual {v1}, Le6/e;->b()I

    .line 2547
    .line 2548
    .line 2549
    move-result v5

    .line 2550
    mul-int/2addr v5, v3

    .line 2551
    invoke-virtual {v1}, Le6/e;->d()I

    .line 2552
    .line 2553
    .line 2554
    move-result v6

    .line 2555
    mul-int/2addr v6, v2

    .line 2556
    invoke-direct {v4, v0, v5, v6}, Le6/b;-><init>(Ljava/lang/String;II)V

    .line 2557
    .line 2558
    .line 2559
    iget-object v0, v4, Le6/b;->d:Ljava/lang/Object;

    .line 2560
    .line 2561
    check-cast v0, [B

    .line 2562
    .line 2563
    const/4 v7, 0x0

    .line 2564
    const/4 v8, 0x0

    .line 2565
    const/4 v9, 0x4

    .line 2566
    :goto_a05
    if-ne v9, v6, :cond_a36

    .line 2567
    .line 2568
    if-nez v7, :cond_a36

    .line 2569
    .line 2570
    add-int/lit8 v10, v8, 0x1

    .line 2571
    .line 2572
    add-int/lit8 v11, v6, -0x1

    .line 2573
    .line 2574
    const/4 v14, 0x1

    .line 2575
    const/4 v15, 0x0

    .line 2576
    invoke-virtual {v4, v11, v15, v8, v14}, Le6/b;->b(IIII)V

    .line 2577
    .line 2578
    .line 2579
    const/4 v12, 0x2

    .line 2580
    invoke-virtual {v4, v11, v14, v8, v12}, Le6/b;->b(IIII)V

    .line 2581
    .line 2582
    .line 2583
    move/from16 v13, v16

    .line 2584
    .line 2585
    invoke-virtual {v4, v11, v12, v8, v13}, Le6/b;->b(IIII)V

    .line 2586
    .line 2587
    .line 2588
    add-int/lit8 v11, v5, -0x2

    .line 2589
    .line 2590
    const/4 v13, 0x4

    .line 2591
    invoke-virtual {v4, v15, v11, v8, v13}, Le6/b;->b(IIII)V

    .line 2592
    .line 2593
    .line 2594
    add-int/lit8 v11, v5, -0x1

    .line 2595
    .line 2596
    const/4 v13, 0x5

    .line 2597
    invoke-virtual {v4, v15, v11, v8, v13}, Le6/b;->b(IIII)V

    .line 2598
    .line 2599
    .line 2600
    const/4 v13, 0x6

    .line 2601
    invoke-virtual {v4, v14, v11, v8, v13}, Le6/b;->b(IIII)V

    .line 2602
    .line 2603
    .line 2604
    const/4 v15, 0x7

    .line 2605
    invoke-virtual {v4, v12, v11, v8, v15}, Le6/b;->b(IIII)V

    .line 2606
    .line 2607
    .line 2608
    const/16 v12, 0x8

    .line 2609
    .line 2610
    const/4 v13, 0x3

    .line 2611
    invoke-virtual {v4, v13, v11, v8, v12}, Le6/b;->b(IIII)V

    .line 2612
    .line 2613
    .line 2614
    move v8, v10

    .line 2615
    :cond_a36
    add-int/lit8 v10, v6, -0x2

    .line 2616
    .line 2617
    if-ne v9, v10, :cond_a72

    .line 2618
    .line 2619
    if-nez v7, :cond_a72

    .line 2620
    .line 2621
    rem-int/lit8 v11, v5, 0x4

    .line 2622
    .line 2623
    if-eqz v11, :cond_a72

    .line 2624
    .line 2625
    add-int/lit8 v11, v8, 0x1

    .line 2626
    .line 2627
    add-int/lit8 v12, v6, -0x3

    .line 2628
    .line 2629
    const/4 v14, 0x1

    .line 2630
    const/4 v15, 0x0

    .line 2631
    invoke-virtual {v4, v12, v15, v8, v14}, Le6/b;->b(IIII)V

    .line 2632
    .line 2633
    .line 2634
    const/4 v12, 0x2

    .line 2635
    invoke-virtual {v4, v10, v15, v8, v12}, Le6/b;->b(IIII)V

    .line 2636
    .line 2637
    .line 2638
    add-int/lit8 v12, v6, -0x1

    .line 2639
    .line 2640
    const/4 v13, 0x3

    .line 2641
    invoke-virtual {v4, v12, v15, v8, v13}, Le6/b;->b(IIII)V

    .line 2642
    .line 2643
    .line 2644
    add-int/lit8 v12, v5, -0x4

    .line 2645
    .line 2646
    const/4 v13, 0x4

    .line 2647
    invoke-virtual {v4, v15, v12, v8, v13}, Le6/b;->b(IIII)V

    .line 2648
    .line 2649
    .line 2650
    add-int/lit8 v12, v5, -0x3

    .line 2651
    .line 2652
    const/4 v13, 0x5

    .line 2653
    invoke-virtual {v4, v15, v12, v8, v13}, Le6/b;->b(IIII)V

    .line 2654
    .line 2655
    .line 2656
    add-int/lit8 v12, v5, -0x2

    .line 2657
    .line 2658
    const/4 v13, 0x6

    .line 2659
    invoke-virtual {v4, v15, v12, v8, v13}, Le6/b;->b(IIII)V

    .line 2660
    .line 2661
    .line 2662
    add-int/lit8 v12, v5, -0x1

    .line 2663
    .line 2664
    const/4 v13, 0x7

    .line 2665
    invoke-virtual {v4, v15, v12, v8, v13}, Le6/b;->b(IIII)V

    .line 2666
    .line 2667
    .line 2668
    const/16 v14, 0x8

    .line 2669
    .line 2670
    const/4 v15, 0x1

    .line 2671
    invoke-virtual {v4, v15, v12, v8, v14}, Le6/b;->b(IIII)V

    .line 2672
    .line 2673
    .line 2674
    move v8, v11

    .line 2675
    :cond_a72
    if-ne v9, v10, :cond_aab

    .line 2676
    .line 2677
    if-nez v7, :cond_aab

    .line 2678
    .line 2679
    rem-int/lit8 v11, v5, 0x8

    .line 2680
    .line 2681
    const/4 v12, 0x4

    .line 2682
    if-ne v11, v12, :cond_aab

    .line 2683
    .line 2684
    add-int/lit8 v11, v8, 0x1

    .line 2685
    .line 2686
    add-int/lit8 v12, v6, -0x3

    .line 2687
    .line 2688
    const/4 v14, 0x1

    .line 2689
    const/4 v15, 0x0

    .line 2690
    invoke-virtual {v4, v12, v15, v8, v14}, Le6/b;->b(IIII)V

    .line 2691
    .line 2692
    .line 2693
    const/4 v12, 0x2

    .line 2694
    invoke-virtual {v4, v10, v15, v8, v12}, Le6/b;->b(IIII)V

    .line 2695
    .line 2696
    .line 2697
    add-int/lit8 v13, v6, -0x1

    .line 2698
    .line 2699
    const/4 v12, 0x3

    .line 2700
    invoke-virtual {v4, v13, v15, v8, v12}, Le6/b;->b(IIII)V

    .line 2701
    .line 2702
    .line 2703
    add-int/lit8 v13, v5, -0x2

    .line 2704
    .line 2705
    const/4 v12, 0x4

    .line 2706
    invoke-virtual {v4, v15, v13, v8, v12}, Le6/b;->b(IIII)V

    .line 2707
    .line 2708
    .line 2709
    add-int/lit8 v12, v5, -0x1

    .line 2710
    .line 2711
    const/4 v13, 0x5

    .line 2712
    invoke-virtual {v4, v15, v12, v8, v13}, Le6/b;->b(IIII)V

    .line 2713
    .line 2714
    .line 2715
    const/4 v13, 0x6

    .line 2716
    invoke-virtual {v4, v14, v12, v8, v13}, Le6/b;->b(IIII)V

    .line 2717
    .line 2718
    .line 2719
    const/4 v13, 0x2

    .line 2720
    const/4 v15, 0x7

    .line 2721
    invoke-virtual {v4, v13, v12, v8, v15}, Le6/b;->b(IIII)V

    .line 2722
    .line 2723
    .line 2724
    const/16 v14, 0x8

    .line 2725
    .line 2726
    const/4 v15, 0x3

    .line 2727
    invoke-virtual {v4, v15, v12, v8, v14}, Le6/b;->b(IIII)V

    .line 2728
    .line 2729
    .line 2730
    move v8, v11

    .line 2731
    goto :goto_aac

    .line 2732
    :cond_aab
    const/4 v13, 0x2

    .line 2733
    :goto_aac
    add-int/lit8 v11, v6, 0x4

    .line 2734
    .line 2735
    if-ne v9, v11, :cond_ae6

    .line 2736
    .line 2737
    if-ne v7, v13, :cond_ae6

    .line 2738
    .line 2739
    rem-int/lit8 v11, v5, 0x8

    .line 2740
    .line 2741
    if-nez v11, :cond_ae6

    .line 2742
    .line 2743
    add-int/lit8 v11, v8, 0x1

    .line 2744
    .line 2745
    add-int/lit8 v12, v6, -0x1

    .line 2746
    .line 2747
    const/4 v14, 0x1

    .line 2748
    const/4 v15, 0x0

    .line 2749
    invoke-virtual {v4, v12, v15, v8, v14}, Le6/b;->b(IIII)V

    .line 2750
    .line 2751
    .line 2752
    add-int/lit8 v14, v5, -0x1

    .line 2753
    .line 2754
    invoke-virtual {v4, v12, v14, v8, v13}, Le6/b;->b(IIII)V

    .line 2755
    .line 2756
    .line 2757
    add-int/lit8 v12, v5, -0x3

    .line 2758
    .line 2759
    const/4 v13, 0x3

    .line 2760
    invoke-virtual {v4, v15, v12, v8, v13}, Le6/b;->b(IIII)V

    .line 2761
    .line 2762
    .line 2763
    add-int/lit8 v13, v5, -0x2

    .line 2764
    .line 2765
    move-object/from16 p1, v0

    .line 2766
    .line 2767
    const/4 v0, 0x4

    .line 2768
    invoke-virtual {v4, v15, v13, v8, v0}, Le6/b;->b(IIII)V

    .line 2769
    .line 2770
    .line 2771
    const/4 v0, 0x5

    .line 2772
    invoke-virtual {v4, v15, v14, v8, v0}, Le6/b;->b(IIII)V

    .line 2773
    .line 2774
    .line 2775
    const/4 v0, 0x1

    .line 2776
    const/4 v15, 0x6

    .line 2777
    invoke-virtual {v4, v0, v12, v8, v15}, Le6/b;->b(IIII)V

    .line 2778
    .line 2779
    .line 2780
    const/4 v12, 0x7

    .line 2781
    invoke-virtual {v4, v0, v13, v8, v12}, Le6/b;->b(IIII)V

    .line 2782
    .line 2783
    .line 2784
    const/16 v13, 0x8

    .line 2785
    .line 2786
    invoke-virtual {v4, v0, v14, v8, v13}, Le6/b;->b(IIII)V

    .line 2787
    .line 2788
    .line 2789
    move v8, v11

    .line 2790
    goto :goto_aec

    .line 2791
    :cond_ae6
    move-object/from16 p1, v0

    .line 2792
    .line 2793
    const/4 v12, 0x7

    .line 2794
    const/16 v13, 0x8

    .line 2795
    .line 2796
    const/4 v15, 0x6

    .line 2797
    :goto_aec
    iget v0, v4, Le6/b;->b:I

    .line 2798
    .line 2799
    if-ge v9, v6, :cond_b00

    .line 2800
    .line 2801
    if-ltz v7, :cond_b00

    .line 2802
    .line 2803
    mul-int v11, v9, v0

    .line 2804
    .line 2805
    add-int/2addr v11, v7

    .line 2806
    aget-byte v11, p1, v11

    .line 2807
    .line 2808
    if-ltz v11, :cond_afa

    .line 2809
    .line 2810
    goto :goto_b00

    .line 2811
    :cond_afa
    add-int/lit8 v11, v8, 0x1

    .line 2812
    .line 2813
    invoke-virtual {v4, v9, v7, v8}, Le6/b;->d(III)V

    .line 2814
    .line 2815
    .line 2816
    move v8, v11

    .line 2817
    :cond_b00
    :goto_b00
    add-int/lit8 v11, v9, -0x2

    .line 2818
    .line 2819
    add-int/lit8 v14, v7, 0x2

    .line 2820
    .line 2821
    if-ltz v11, :cond_b0c

    .line 2822
    .line 2823
    if-lt v14, v5, :cond_b09

    .line 2824
    .line 2825
    goto :goto_b0c

    .line 2826
    :cond_b09
    move v9, v11

    .line 2827
    move v7, v14

    .line 2828
    goto :goto_aec

    .line 2829
    :cond_b0c
    :goto_b0c
    add-int/lit8 v9, v9, -0x1

    .line 2830
    .line 2831
    add-int/lit8 v7, v7, 0x5

    .line 2832
    .line 2833
    :goto_b10
    if-ltz v9, :cond_b22

    .line 2834
    .line 2835
    if-ge v7, v5, :cond_b22

    .line 2836
    .line 2837
    mul-int v11, v9, v0

    .line 2838
    .line 2839
    add-int/2addr v11, v7

    .line 2840
    aget-byte v11, p1, v11

    .line 2841
    .line 2842
    if-ltz v11, :cond_b1c

    .line 2843
    .line 2844
    goto :goto_b22

    .line 2845
    :cond_b1c
    add-int/lit8 v11, v8, 0x1

    .line 2846
    .line 2847
    invoke-virtual {v4, v9, v7, v8}, Le6/b;->d(III)V

    .line 2848
    .line 2849
    .line 2850
    move v8, v11

    .line 2851
    :cond_b22
    :goto_b22
    add-int/lit8 v11, v9, 0x2

    .line 2852
    .line 2853
    add-int/lit8 v14, v7, -0x2

    .line 2854
    .line 2855
    if-ge v11, v6, :cond_b2e

    .line 2856
    .line 2857
    if-gez v14, :cond_b2b

    .line 2858
    .line 2859
    goto :goto_b2e

    .line 2860
    :cond_b2b
    move v9, v11

    .line 2861
    move v7, v14

    .line 2862
    goto :goto_b10

    .line 2863
    :cond_b2e
    :goto_b2e
    add-int/lit8 v9, v9, 0x5

    .line 2864
    .line 2865
    add-int/lit8 v7, v7, -0x1

    .line 2866
    .line 2867
    if-lt v9, v6, :cond_c60

    .line 2868
    .line 2869
    if-lt v7, v5, :cond_c60

    .line 2870
    .line 2871
    add-int/lit8 v4, v5, -0x1

    .line 2872
    .line 2873
    const/4 v14, 0x1

    .line 2874
    sub-int/2addr v6, v14

    .line 2875
    mul-int v7, v6, v0

    .line 2876
    .line 2877
    add-int/2addr v7, v4

    .line 2878
    aget-byte v7, p1, v7

    .line 2879
    .line 2880
    if-ltz v7, :cond_b42

    .line 2881
    .line 2882
    goto :goto_b4f

    .line 2883
    :cond_b42
    mul-int/2addr v6, v0

    .line 2884
    add-int/2addr v6, v4

    .line 2885
    int-to-byte v4, v14

    .line 2886
    aput-byte v4, p1, v6

    .line 2887
    .line 2888
    const/16 v22, 0x2

    .line 2889
    .line 2890
    add-int/lit8 v5, v5, -0x2

    .line 2891
    .line 2892
    mul-int/2addr v10, v0

    .line 2893
    add-int/2addr v10, v5

    .line 2894
    aput-byte v4, p1, v10

    .line 2895
    .line 2896
    :goto_b4f
    invoke-virtual {v1}, Le6/e;->b()I

    .line 2897
    .line 2898
    .line 2899
    move-result v4

    .line 2900
    mul-int/2addr v4, v3

    .line 2901
    invoke-virtual {v1}, Le6/e;->d()I

    .line 2902
    .line 2903
    .line 2904
    move-result v5

    .line 2905
    mul-int/2addr v5, v2

    .line 2906
    new-instance v6, Lk6/b;

    .line 2907
    .line 2908
    invoke-virtual {v1}, Le6/e;->b()I

    .line 2909
    .line 2910
    .line 2911
    move-result v7

    .line 2912
    mul-int/2addr v7, v3

    .line 2913
    invoke-virtual {v1}, Le6/e;->b()I

    .line 2914
    .line 2915
    .line 2916
    move-result v8

    .line 2917
    const/16 v23, 0x1

    .line 2918
    .line 2919
    shl-int/lit8 v8, v8, 0x1

    .line 2920
    .line 2921
    add-int/2addr v7, v8

    .line 2922
    invoke-virtual {v1}, Le6/e;->d()I

    .line 2923
    .line 2924
    .line 2925
    move-result v8

    .line 2926
    mul-int/2addr v8, v2

    .line 2927
    invoke-virtual {v1}, Le6/e;->d()I

    .line 2928
    .line 2929
    .line 2930
    move-result v9

    .line 2931
    shl-int/lit8 v9, v9, 0x1

    .line 2932
    .line 2933
    add-int/2addr v8, v9

    .line 2934
    const/4 v15, 0x0

    .line 2935
    invoke-direct {v6, v7, v8, v15}, Lk6/b;-><init>(III)V

    .line 2936
    .line 2937
    .line 2938
    const/4 v7, 0x0

    .line 2939
    const/4 v10, 0x0

    .line 2940
    :goto_b7b
    if-ge v10, v5, :cond_bfe

    .line 2941
    .line 2942
    rem-int v8, v10, v2

    .line 2943
    .line 2944
    if-nez v8, :cond_ba5

    .line 2945
    .line 2946
    const/4 v9, 0x0

    .line 2947
    const/4 v11, 0x0

    .line 2948
    :goto_b83
    invoke-virtual {v1}, Le6/e;->b()I

    .line 2949
    .line 2950
    .line 2951
    move-result v12

    .line 2952
    mul-int/2addr v12, v3

    .line 2953
    invoke-virtual {v1}, Le6/e;->b()I

    .line 2954
    .line 2955
    .line 2956
    move-result v13

    .line 2957
    shl-int/lit8 v13, v13, 0x1

    .line 2958
    .line 2959
    add-int/2addr v12, v13

    .line 2960
    if-ge v9, v12, :cond_ba3

    .line 2961
    .line 2962
    rem-int/lit8 v12, v9, 0x2

    .line 2963
    .line 2964
    if-nez v12, :cond_b98

    .line 2965
    .line 2966
    move/from16 v12, v23

    .line 2967
    .line 2968
    goto :goto_b99

    .line 2969
    :cond_b98
    const/4 v12, 0x0

    .line 2970
    :goto_b99
    invoke-virtual {v6, v11, v7, v12}, Lk6/b;->c(IIZ)V

    .line 2971
    .line 2972
    .line 2973
    add-int/lit8 v11, v11, 0x1

    .line 2974
    .line 2975
    add-int/lit8 v9, v9, 0x1

    .line 2976
    .line 2977
    const/16 v23, 0x1

    .line 2978
    .line 2979
    goto :goto_b83

    .line 2980
    :cond_ba3
    add-int/lit8 v7, v7, 0x1

    .line 2981
    .line 2982
    :cond_ba5
    const/4 v9, 0x0

    .line 2983
    const/4 v11, 0x0

    .line 2984
    :goto_ba7
    if-ge v9, v4, :cond_bd7

    .line 2985
    .line 2986
    rem-int v12, v9, v3

    .line 2987
    .line 2988
    const/4 v14, 0x1

    .line 2989
    if-nez v12, :cond_bb3

    .line 2990
    .line 2991
    invoke-virtual {v6, v11, v7, v14}, Lk6/b;->c(IIZ)V

    .line 2992
    .line 2993
    .line 2994
    add-int/lit8 v11, v11, 0x1

    .line 2995
    .line 2996
    :cond_bb3
    mul-int v13, v10, v0

    .line 2997
    .line 2998
    add-int/2addr v13, v9

    .line 2999
    aget-byte v13, p1, v13

    .line 3000
    .line 3001
    if-ne v13, v14, :cond_bbc

    .line 3002
    .line 3003
    const/4 v13, 0x1

    .line 3004
    goto :goto_bbd

    .line 3005
    :cond_bbc
    const/4 v13, 0x0

    .line 3006
    :goto_bbd
    invoke-virtual {v6, v11, v7, v13}, Lk6/b;->c(IIZ)V

    .line 3007
    .line 3008
    .line 3009
    add-int/lit8 v13, v11, 0x1

    .line 3010
    .line 3011
    add-int/lit8 v14, v3, -0x1

    .line 3012
    .line 3013
    if-ne v12, v14, :cond_bd3

    .line 3014
    .line 3015
    rem-int/lit8 v12, v10, 0x2

    .line 3016
    .line 3017
    if-nez v12, :cond_bcc

    .line 3018
    .line 3019
    const/4 v12, 0x1

    .line 3020
    goto :goto_bcd

    .line 3021
    :cond_bcc
    const/4 v12, 0x0

    .line 3022
    :goto_bcd
    invoke-virtual {v6, v13, v7, v12}, Lk6/b;->c(IIZ)V

    .line 3023
    .line 3024
    .line 3025
    add-int/lit8 v11, v11, 0x2

    .line 3026
    .line 3027
    goto :goto_bd4

    .line 3028
    :cond_bd3
    move v11, v13

    .line 3029
    :goto_bd4
    add-int/lit8 v9, v9, 0x1

    .line 3030
    .line 3031
    goto :goto_ba7

    .line 3032
    :cond_bd7
    add-int/lit8 v9, v7, 0x1

    .line 3033
    .line 3034
    add-int/lit8 v11, v2, -0x1

    .line 3035
    .line 3036
    if-ne v8, v11, :cond_bf7

    .line 3037
    .line 3038
    const/4 v8, 0x0

    .line 3039
    const/4 v11, 0x0

    .line 3040
    :goto_bdf
    invoke-virtual {v1}, Le6/e;->b()I

    .line 3041
    .line 3042
    .line 3043
    move-result v12

    .line 3044
    mul-int/2addr v12, v3

    .line 3045
    invoke-virtual {v1}, Le6/e;->b()I

    .line 3046
    .line 3047
    .line 3048
    move-result v13

    .line 3049
    const/4 v14, 0x1

    .line 3050
    shl-int/2addr v13, v14

    .line 3051
    add-int/2addr v12, v13

    .line 3052
    if-ge v8, v12, :cond_bf4

    .line 3053
    .line 3054
    invoke-virtual {v6, v11, v9, v14}, Lk6/b;->c(IIZ)V

    .line 3055
    .line 3056
    .line 3057
    add-int/2addr v11, v14

    .line 3058
    add-int/lit8 v8, v8, 0x1

    .line 3059
    .line 3060
    goto :goto_bdf

    .line 3061
    :cond_bf4
    add-int/lit8 v7, v7, 0x2

    .line 3062
    .line 3063
    goto :goto_bf8

    .line 3064
    :cond_bf7
    move v7, v9

    .line 3065
    :goto_bf8
    add-int/lit8 v10, v10, 0x1

    .line 3066
    .line 3067
    const/16 v23, 0x1

    .line 3068
    .line 3069
    goto/16 :goto_b7b

    .line 3070
    .line 3071
    :cond_bfe
    iget v0, v6, Lk6/b;->b:I

    .line 3072
    .line 3073
    iget v1, v6, Lk6/b;->c:I

    .line 3074
    .line 3075
    const/16 v10, 0xc8

    .line 3076
    .line 3077
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    .line 3078
    .line 3079
    .line 3080
    move-result v2

    .line 3081
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 3082
    .line 3083
    .line 3084
    move-result v3

    .line 3085
    div-int v4, v2, v0

    .line 3086
    .line 3087
    div-int v5, v3, v1

    .line 3088
    .line 3089
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 3090
    .line 3091
    .line 3092
    move-result v4

    .line 3093
    mul-int v5, v0, v4

    .line 3094
    .line 3095
    sub-int/2addr v2, v5

    .line 3096
    const/16 v22, 0x2

    .line 3097
    .line 3098
    div-int/lit8 v2, v2, 0x2

    .line 3099
    .line 3100
    mul-int v5, v1, v4

    .line 3101
    .line 3102
    sub-int/2addr v3, v5

    .line 3103
    div-int/lit8 v3, v3, 0x2

    .line 3104
    .line 3105
    if-lt v10, v1, :cond_c2c

    .line 3106
    .line 3107
    if-ge v10, v0, :cond_c25

    .line 3108
    .line 3109
    goto :goto_c2c

    .line 3110
    :cond_c25
    new-instance v5, Lb6/b;

    .line 3111
    .line 3112
    invoke-direct {v5, v10, v10}, Lb6/b;-><init>(II)V

    .line 3113
    .line 3114
    .line 3115
    move v10, v3

    .line 3116
    goto :goto_c33

    .line 3117
    :cond_c2c
    :goto_c2c
    new-instance v5, Lb6/b;

    .line 3118
    .line 3119
    invoke-direct {v5, v0, v1}, Lb6/b;-><init>(II)V

    .line 3120
    .line 3121
    .line 3122
    const/4 v2, 0x0

    .line 3123
    const/4 v10, 0x0

    .line 3124
    :goto_c33
    iget-object v3, v5, Lb6/b;->d:[I

    .line 3125
    .line 3126
    array-length v7, v3

    .line 3127
    const/4 v8, 0x0

    .line 3128
    :goto_c37
    if-ge v8, v7, :cond_c40

    .line 3129
    .line 3130
    const/16 v19, 0x0

    .line 3131
    .line 3132
    aput v19, v3, v8

    .line 3133
    .line 3134
    add-int/lit8 v8, v8, 0x1

    .line 3135
    .line 3136
    goto :goto_c37

    .line 3137
    :cond_c40
    const/16 v19, 0x0

    .line 3138
    .line 3139
    move v3, v10

    .line 3140
    move/from16 v10, v19

    .line 3141
    .line 3142
    :goto_c45
    if-ge v10, v1, :cond_c5f

    .line 3143
    .line 3144
    move v8, v2

    .line 3145
    move/from16 v7, v19

    .line 3146
    .line 3147
    :goto_c4a
    if-ge v7, v0, :cond_c5a

    .line 3148
    .line 3149
    invoke-virtual {v6, v7, v10}, Lk6/b;->a(II)B

    .line 3150
    .line 3151
    .line 3152
    move-result v9

    .line 3153
    const/4 v14, 0x1

    .line 3154
    if-ne v9, v14, :cond_c56

    .line 3155
    .line 3156
    invoke-virtual {v5, v8, v3, v4, v4}, Lb6/b;->c(IIII)V

    .line 3157
    .line 3158
    .line 3159
    :cond_c56
    add-int/lit8 v7, v7, 0x1

    .line 3160
    .line 3161
    add-int/2addr v8, v4

    .line 3162
    goto :goto_c4a

    .line 3163
    :cond_c5a
    const/4 v14, 0x1

    .line 3164
    add-int/lit8 v10, v10, 0x1

    .line 3165
    .line 3166
    add-int/2addr v3, v4

    .line 3167
    goto :goto_c45

    .line 3168
    :cond_c5f
    return-object v5

    .line 3169
    :cond_c60
    const/16 v10, 0xc8

    .line 3170
    .line 3171
    const/4 v14, 0x1

    .line 3172
    const/16 v19, 0x0

    .line 3173
    .line 3174
    const/16 v22, 0x2

    .line 3175
    .line 3176
    move-object/from16 v0, p1

    .line 3177
    .line 3178
    const/16 v16, 0x3

    .line 3179
    .line 3180
    goto/16 :goto_a05

    .line 3181
    .line 3182
    :cond_c6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3183
    .line 3184
    const-string v1, "The number of codewords does not match the selected symbol"

    .line 3185
    .line 3186
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3187
    .line 3188
    .line 3189
    throw v0

    .line 3190
    :cond_c75
    new-instance v0, Ljava/lang/ClassCastException;

    .line 3191
    .line 3192
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 3193
    .line 3194
    .line 3195
    throw v0

    .line 3196
    :cond_c7b
    new-instance v0, Ljava/lang/ClassCastException;

    .line 3197
    .line 3198
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 3199
    .line 3200
    .line 3201
    throw v0

    .line 3202
    :cond_c81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3203
    .line 3204
    const-string v2, "Can only encode DATA_MATRIX, but got "

    .line 3205
    .line 3206
    invoke-static {v1}, Lq2/x;->n(I)Ljava/lang/String;

    .line 3207
    .line 3208
    .line 3209
    move-result-object v1

    .line 3210
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 3211
    .line 3212
    .line 3213
    move-result-object v1

    .line 3214
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3215
    .line 3216
    .line 3217
    throw v0

    .line 3218
    :cond_c91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3219
    .line 3220
    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3221
    .line 3222
    .line 3223
    throw v0

    .line 3224
    nop

    :sswitch_data_c98
    .sparse-switch
        0xc -> :sswitch_84a
        0x17 -> :sswitch_845
    .end sparse-switch
.end method

.method public k(Le6/c;)V
    .registers 13

    .line 1
    iget v0, p0, Le5/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_30c

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Le6/c;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p1, Le6/c;->c:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    :cond_e
    invoke-virtual {p1}, Le6/c;->b()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x4

    .line 23
    if-eqz v3, :cond_5a

    .line 24
    .line 25
    invoke-virtual {p1}, Le6/c;->a()C

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/16 v8, 0x20

    .line 30
    .line 31
    if-lt v3, v8, :cond_28

    .line 32
    .line 33
    const/16 v8, 0x3f

    .line 34
    .line 35
    if-gt v3, v8, :cond_28

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_36

    .line 41
    :cond_28
    const/16 v8, 0x40

    .line 42
    .line 43
    if-lt v3, v8, :cond_56

    .line 44
    .line 45
    const/16 v8, 0x5e

    .line 46
    .line 47
    if-gt v3, v8, :cond_56

    .line 48
    .line 49
    add-int/lit8 v3, v3, -0x40

    .line 50
    .line 51
    int-to-char v3, v3

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :goto_36
    iget v3, p1, Le6/c;->d:I

    .line 56
    .line 57
    add-int/2addr v3, v4

    .line 58
    iput v3, p1, Le6/c;->d:I

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-lt v3, v7, :cond_e

    .line 65
    .line 66
    invoke-static {v2}, Le5/e;->n(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget v3, p1, Le6/c;->d:I

    .line 77
    .line 78
    invoke-static {v0, v3, v7}, Lh8/b;->m(Ljava/lang/CharSequence;II)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eq v3, v7, :cond_e

    .line 83
    .line 84
    iput v6, p1, Le6/c;->e:I

    .line 85
    .line 86
    goto :goto_5a

    .line 87
    :cond_56
    invoke-static {v3}, Lh8/b;->h(C)V

    .line 88
    .line 89
    .line 90
    throw v5

    .line 91
    :cond_5a
    :goto_5a
    const/16 v3, 0x1f

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    :try_start_5f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 97
    .line 98
    .line 99
    move-result v3
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_9a

    .line 100
    if-nez v3, :cond_69

    .line 101
    .line 102
    iput v6, p1, Le6/c;->e:I

    .line 103
    .line 104
    goto/16 :goto_e5

    .line 105
    .line 106
    :cond_69
    const/4 v8, 0x2

    .line 107
    if-ne v3, v4, :cond_a3

    .line 108
    .line 109
    :try_start_6c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    invoke-virtual {p1, v9}, Le6/c;->c(I)V

    .line 114
    .line 115
    .line 116
    iget-object v9, p1, Le6/c;->f:Le6/e;

    .line 117
    .line 118
    iget v9, v9, Le6/e;->b:I

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    sub-int/2addr v9, v10

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iget v10, p1, Le6/c;->g:I

    .line 130
    .line 131
    sub-int/2addr v0, v10

    .line 132
    iget v10, p1, Le6/c;->d:I

    .line 133
    .line 134
    sub-int/2addr v0, v10

    .line 135
    if-le v0, v9, :cond_9c

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    add-int/2addr v9, v4

    .line 142
    invoke-virtual {p1, v9}, Le6/c;->c(I)V

    .line 143
    .line 144
    .line 145
    iget-object v9, p1, Le6/c;->f:Le6/e;

    .line 146
    .line 147
    iget v9, v9, Le6/e;->b:I

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 150
    .line 151
    .line 152
    move-result v10
    :try_end_98
    .catchall {:try_start_6c .. :try_end_98} :catchall_9a

    .line 153
    sub-int/2addr v9, v10

    .line 154
    goto :goto_9c

    .line 155
    :catchall_9a
    move-exception v0

    .line 156
    goto :goto_ee

    .line 157
    :cond_9c
    :goto_9c
    if-gt v0, v9, :cond_a3

    .line 158
    .line 159
    if-gt v9, v8, :cond_a3

    .line 160
    .line 161
    :goto_a0
    iput v6, p1, Le6/c;->e:I

    .line 162
    .line 163
    goto :goto_e5

    .line 164
    :cond_a3
    if-gt v3, v7, :cond_e6

    .line 165
    .line 166
    sub-int/2addr v3, v4

    .line 167
    :try_start_a6
    invoke-static {v2}, Le5/e;->n(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p1}, Le6/c;->b()Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-nez v2, :cond_b3

    .line 176
    .line 177
    if-gt v3, v8, :cond_b3

    .line 178
    .line 179
    goto :goto_b4

    .line 180
    :cond_b3
    move v4, v6

    .line 181
    :goto_b4
    if-gt v3, v8, :cond_d7

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    add-int/2addr v2, v3

    .line 188
    invoke-virtual {p1, v2}, Le6/c;->c(I)V

    .line 189
    .line 190
    .line 191
    iget-object v2, p1, Le6/c;->f:Le6/e;

    .line 192
    .line 193
    iget v2, v2, Le6/e;->b:I

    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    sub-int/2addr v2, v7

    .line 200
    const/4 v7, 0x3

    .line 201
    if-lt v2, v7, :cond_d7

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    add-int/2addr v2, v4

    .line 212
    invoke-virtual {p1, v2}, Le6/c;->c(I)V

    .line 213
    .line 214
    .line 215
    move v4, v6

    .line 216
    :cond_d7
    if-eqz v4, :cond_e1

    .line 217
    .line 218
    iput-object v5, p1, Le6/c;->f:Le6/e;

    .line 219
    .line 220
    iget v0, p1, Le6/c;->d:I

    .line 221
    .line 222
    sub-int/2addr v0, v3

    .line 223
    iput v0, p1, Le6/c;->d:I

    .line 224
    .line 225
    goto :goto_a0

    .line 226
    :cond_e1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    goto :goto_a0

    .line 230
    :goto_e5
    return-void

    .line 231
    :cond_e6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 232
    .line 233
    const-string v1, "Count must not exceed 4"

    .line 234
    .line 235
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v0
    :try_end_ee
    .catchall {:try_start_a6 .. :try_end_ee} :catchall_9a

    .line 239
    :goto_ee
    iput v6, p1, Le6/c;->e:I

    .line 240
    .line 241
    throw v0

    .line 242
    :pswitch_f1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    :cond_f6
    invoke-virtual {p1}, Le6/c;->b()Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-eqz v1, :cond_192

    .line 252
    .line 253
    invoke-virtual {p1}, Le6/c;->a()C

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    iget v2, p1, Le6/c;->d:I

    .line 258
    .line 259
    const/4 v3, 0x1

    .line 260
    add-int/2addr v2, v3

    .line 261
    iput v2, p1, Le6/c;->d:I

    .line 262
    .line 263
    invoke-virtual {p0, v1, v0}, Le5/e;->m(CLjava/lang/StringBuilder;)I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    const/4 v4, 0x3

    .line 272
    div-int/2addr v2, v4

    .line 273
    shl-int/2addr v2, v3

    .line 274
    iget-object v5, p1, Le6/c;->c:Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    add-int/2addr v5, v2

    .line 281
    invoke-virtual {p1, v5}, Le6/c;->c(I)V

    .line 282
    .line 283
    .line 284
    iget-object v2, p1, Le6/c;->f:Le6/e;

    .line 285
    .line 286
    iget v2, v2, Le6/e;->b:I

    .line 287
    .line 288
    sub-int/2addr v2, v5

    .line 289
    invoke-virtual {p1}, Le6/c;->b()Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-nez v5, :cond_176

    .line 294
    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    rem-int/2addr v6, v4

    .line 305
    const/4 v7, 0x0

    .line 306
    const/4 v8, 0x2

    .line 307
    if-ne v6, v8, :cond_150

    .line 308
    .line 309
    if-lt v2, v8, :cond_138

    .line 310
    .line 311
    if-le v2, v8, :cond_150

    .line 312
    .line 313
    :cond_138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 314
    .line 315
    .line 316
    move-result v6

    .line 317
    sub-int v1, v6, v1

    .line 318
    .line 319
    invoke-virtual {v0, v1, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    iget v1, p1, Le6/c;->d:I

    .line 323
    .line 324
    sub-int/2addr v1, v3

    .line 325
    iput v1, p1, Le6/c;->d:I

    .line 326
    .line 327
    invoke-virtual {p1}, Le6/c;->a()C

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    invoke-virtual {p0, v1, v5}, Le5/e;->m(CLjava/lang/StringBuilder;)I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    iput-object v7, p1, Le6/c;->f:Le6/e;

    .line 336
    .line 337
    :cond_150
    :goto_150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 338
    .line 339
    .line 340
    move-result v6

    .line 341
    rem-int/2addr v6, v4

    .line 342
    if-ne v6, v3, :cond_192

    .line 343
    .line 344
    if-gt v1, v4, :cond_15b

    .line 345
    .line 346
    if-ne v2, v3, :cond_15d

    .line 347
    .line 348
    :cond_15b
    if-le v1, v4, :cond_192

    .line 349
    .line 350
    :cond_15d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    sub-int v1, v6, v1

    .line 355
    .line 356
    invoke-virtual {v0, v1, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    iget v1, p1, Le6/c;->d:I

    .line 360
    .line 361
    sub-int/2addr v1, v3

    .line 362
    iput v1, p1, Le6/c;->d:I

    .line 363
    .line 364
    invoke-virtual {p1}, Le6/c;->a()C

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    invoke-virtual {p0, v1, v5}, Le5/e;->m(CLjava/lang/StringBuilder;)I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    iput-object v7, p1, Le6/c;->f:Le6/e;

    .line 373
    .line 374
    goto :goto_150

    .line 375
    :cond_176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    rem-int/2addr v1, v4

    .line 380
    if-nez v1, :cond_f6

    .line 381
    .line 382
    iget-object v1, p1, Le6/c;->a:Ljava/lang/String;

    .line 383
    .line 384
    iget v2, p1, Le6/c;->d:I

    .line 385
    .line 386
    invoke-virtual {p0}, Le5/e;->p()I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    invoke-static {v1, v2, v3}, Lh8/b;->m(Ljava/lang/CharSequence;II)I

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    invoke-virtual {p0}, Le5/e;->p()I

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    if-eq v1, v2, :cond_f6

    .line 399
    .line 400
    const/4 v1, 0x0

    .line 401
    iput v1, p1, Le6/c;->e:I

    .line 402
    .line 403
    :cond_192
    invoke-virtual {p0, p1, v0}, Le5/e;->q(Le6/c;Ljava/lang/StringBuilder;)V

    .line 404
    .line 405
    .line 406
    return-void

    .line 407
    :pswitch_196
    new-instance v0, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    const/4 v1, 0x0

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    :cond_19f
    invoke-virtual {p1}, Le6/c;->b()Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    iget-object v3, p1, Le6/c;->c:Ljava/lang/StringBuilder;

    .line 421
    .line 422
    const/4 v4, 0x1

    .line 423
    if-eqz v2, :cond_1bf

    .line 424
    .line 425
    invoke-virtual {p1}, Le6/c;->a()C

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    iget v2, p1, Le6/c;->d:I

    .line 433
    .line 434
    add-int/2addr v2, v4

    .line 435
    iput v2, p1, Le6/c;->d:I

    .line 436
    .line 437
    iget-object v5, p1, Le6/c;->a:Ljava/lang/String;

    .line 438
    .line 439
    const/4 v6, 0x5

    .line 440
    invoke-static {v5, v2, v6}, Lh8/b;->m(Ljava/lang/CharSequence;II)I

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    if-eq v2, v6, :cond_19f

    .line 445
    .line 446
    iput v1, p1, Le6/c;->e:I

    .line 447
    .line 448
    :cond_1bf
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    sub-int/2addr v2, v4

    .line 453
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 454
    .line 455
    .line 456
    move-result v5

    .line 457
    add-int/2addr v5, v2

    .line 458
    add-int/2addr v5, v4

    .line 459
    invoke-virtual {p1, v5}, Le6/c;->c(I)V

    .line 460
    .line 461
    .line 462
    iget-object v6, p1, Le6/c;->f:Le6/e;

    .line 463
    .line 464
    iget v6, v6, Le6/e;->b:I

    .line 465
    .line 466
    sub-int/2addr v6, v5

    .line 467
    if-lez v6, :cond_1d6

    .line 468
    .line 469
    move v5, v4

    .line 470
    goto :goto_1d7

    .line 471
    :cond_1d6
    move v5, v1

    .line 472
    :goto_1d7
    invoke-virtual {p1}, Le6/c;->b()Z

    .line 473
    .line 474
    .line 475
    move-result v6

    .line 476
    if-nez v6, :cond_1df

    .line 477
    .line 478
    if-eqz v5, :cond_1f9

    .line 479
    .line 480
    :cond_1df
    const/16 v5, 0xf9

    .line 481
    .line 482
    if-gt v2, v5, :cond_1e8

    .line 483
    .line 484
    int-to-char v2, v2

    .line 485
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 486
    .line 487
    .line 488
    goto :goto_1f9

    .line 489
    :cond_1e8
    const/16 v6, 0x613

    .line 490
    .line 491
    if-gt v2, v6, :cond_21d

    .line 492
    .line 493
    div-int/lit16 v6, v2, 0xfa

    .line 494
    .line 495
    add-int/2addr v6, v5

    .line 496
    int-to-char v5, v6

    .line 497
    invoke-virtual {v0, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 498
    .line 499
    .line 500
    rem-int/lit16 v2, v2, 0xfa

    .line 501
    .line 502
    int-to-char v2, v2

    .line 503
    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    :cond_1f9
    :goto_1f9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    :goto_1fd
    if-ge v1, v2, :cond_21c

    .line 511
    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 513
    .line 514
    .line 515
    move-result v5

    .line 516
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 517
    .line 518
    .line 519
    move-result v6

    .line 520
    add-int/2addr v6, v4

    .line 521
    mul-int/lit16 v6, v6, 0x95

    .line 522
    .line 523
    const/16 v7, 0xff

    .line 524
    .line 525
    rem-int/2addr v6, v7

    .line 526
    add-int/2addr v6, v4

    .line 527
    add-int/2addr v6, v5

    .line 528
    if-gt v6, v7, :cond_213

    .line 529
    .line 530
    :goto_211
    int-to-char v5, v6

    .line 531
    goto :goto_216

    .line 532
    :cond_213
    add-int/lit16 v6, v6, -0x100

    .line 533
    .line 534
    goto :goto_211

    .line 535
    :goto_216
    invoke-virtual {p1, v5}, Le6/c;->d(C)V

    .line 536
    .line 537
    .line 538
    add-int/lit8 v1, v1, 0x1

    .line 539
    .line 540
    goto :goto_1fd

    .line 541
    :cond_21c
    return-void

    .line 542
    :cond_21d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 543
    .line 544
    const-string v0, "Message length not in valid ranges: "

    .line 545
    .line 546
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    throw p1

    .line 558
    :pswitch_22d
    iget-object v0, p1, Le6/c;->a:Ljava/lang/String;

    .line 559
    .line 560
    iget v1, p1, Le6/c;->d:I

    .line 561
    .line 562
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 563
    .line 564
    .line 565
    move-result v2

    .line 566
    const/4 v3, 0x0

    .line 567
    if-ge v1, v2, :cond_250

    .line 568
    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    move v5, v3

    .line 574
    :cond_23d
    :goto_23d
    invoke-static {v4}, Lh8/b;->j(C)Z

    .line 575
    .line 576
    .line 577
    move-result v6

    .line 578
    if-eqz v6, :cond_251

    .line 579
    .line 580
    if-ge v1, v2, :cond_251

    .line 581
    .line 582
    add-int/lit8 v5, v5, 0x1

    .line 583
    .line 584
    add-int/lit8 v1, v1, 0x1

    .line 585
    .line 586
    if-ge v1, v2, :cond_23d

    .line 587
    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 589
    .line 590
    .line 591
    move-result v4

    .line 592
    goto :goto_23d

    .line 593
    :cond_250
    move v5, v3

    .line 594
    :cond_251
    const/4 v1, 0x2

    .line 595
    const/4 v2, 0x1

    .line 596
    if-lt v5, v1, :cond_299

    .line 597
    .line 598
    iget v3, p1, Le6/c;->d:I

    .line 599
    .line 600
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 601
    .line 602
    .line 603
    move-result v3

    .line 604
    iget v4, p1, Le6/c;->d:I

    .line 605
    .line 606
    add-int/2addr v4, v2

    .line 607
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    invoke-static {v3}, Lh8/b;->j(C)Z

    .line 612
    .line 613
    .line 614
    move-result v2

    .line 615
    if-eqz v2, :cond_282

    .line 616
    .line 617
    invoke-static {v0}, Lh8/b;->j(C)Z

    .line 618
    .line 619
    .line 620
    move-result v2

    .line 621
    if-eqz v2, :cond_282

    .line 622
    .line 623
    add-int/lit8 v3, v3, -0x30

    .line 624
    .line 625
    mul-int/lit8 v3, v3, 0xa

    .line 626
    .line 627
    add-int/lit8 v0, v0, -0x30

    .line 628
    .line 629
    add-int/2addr v0, v3

    .line 630
    add-int/lit16 v0, v0, 0x82

    .line 631
    .line 632
    int-to-char v0, v0

    .line 633
    invoke-virtual {p1, v0}, Le6/c;->d(C)V

    .line 634
    .line 635
    .line 636
    iget v0, p1, Le6/c;->d:I

    .line 637
    .line 638
    add-int/2addr v0, v1

    .line 639
    iput v0, p1, Le6/c;->d:I

    .line 640
    .line 641
    goto/16 :goto_30b

    .line 642
    .line 643
    :cond_282
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 644
    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    .line 646
    .line 647
    const-string v2, "not digits: "

    .line 648
    .line 649
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    throw p1

    .line 666
    :cond_299
    invoke-virtual {p1}, Le6/c;->a()C

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    iget v5, p1, Le6/c;->d:I

    .line 671
    .line 672
    invoke-static {v0, v5, v3}, Lh8/b;->m(Ljava/lang/CharSequence;II)I

    .line 673
    .line 674
    .line 675
    move-result v0

    .line 676
    if-eqz v0, :cond_2ea

    .line 677
    .line 678
    if-eq v0, v2, :cond_2e2

    .line 679
    .line 680
    if-eq v0, v1, :cond_2da

    .line 681
    .line 682
    const/4 v1, 0x3

    .line 683
    if-eq v0, v1, :cond_2d2

    .line 684
    .line 685
    const/4 v1, 0x4

    .line 686
    if-eq v0, v1, :cond_2ca

    .line 687
    .line 688
    const/4 v1, 0x5

    .line 689
    if-ne v0, v1, :cond_2ba

    .line 690
    .line 691
    const/16 v0, 0xe7

    .line 692
    .line 693
    invoke-virtual {p1, v0}, Le6/c;->d(C)V

    .line 694
    .line 695
    .line 696
    iput v1, p1, Le6/c;->e:I

    .line 697
    .line 698
    goto :goto_30b

    .line 699
    :cond_2ba
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 700
    .line 701
    const-string v1, "Illegal mode: "

    .line 702
    .line 703
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    throw p1

    .line 715
    :cond_2ca
    const/16 v0, 0xf0

    .line 716
    .line 717
    invoke-virtual {p1, v0}, Le6/c;->d(C)V

    .line 718
    .line 719
    .line 720
    iput v1, p1, Le6/c;->e:I

    .line 721
    .line 722
    goto :goto_30b

    .line 723
    :cond_2d2
    const/16 v0, 0xee

    .line 724
    .line 725
    invoke-virtual {p1, v0}, Le6/c;->d(C)V

    .line 726
    .line 727
    .line 728
    iput v1, p1, Le6/c;->e:I

    .line 729
    .line 730
    goto :goto_30b

    .line 731
    :cond_2da
    const/16 v0, 0xef

    .line 732
    .line 733
    invoke-virtual {p1, v0}, Le6/c;->d(C)V

    .line 734
    .line 735
    .line 736
    iput v1, p1, Le6/c;->e:I

    .line 737
    .line 738
    goto :goto_30b

    .line 739
    :cond_2e2
    const/16 v0, 0xe6

    .line 740
    .line 741
    invoke-virtual {p1, v0}, Le6/c;->d(C)V

    .line 742
    .line 743
    .line 744
    iput v2, p1, Le6/c;->e:I

    .line 745
    .line 746
    goto :goto_30b

    .line 747
    :cond_2ea
    invoke-static {v4}, Lh8/b;->k(C)Z

    .line 748
    .line 749
    .line 750
    move-result v0

    .line 751
    if-eqz v0, :cond_301

    .line 752
    .line 753
    const/16 v0, 0xeb

    .line 754
    .line 755
    invoke-virtual {p1, v0}, Le6/c;->d(C)V

    .line 756
    .line 757
    .line 758
    add-int/lit8 v4, v4, -0x7f

    .line 759
    .line 760
    int-to-char v0, v4

    .line 761
    invoke-virtual {p1, v0}, Le6/c;->d(C)V

    .line 762
    .line 763
    .line 764
    iget v0, p1, Le6/c;->d:I

    .line 765
    .line 766
    add-int/2addr v0, v2

    .line 767
    iput v0, p1, Le6/c;->d:I

    .line 768
    .line 769
    goto :goto_30b

    .line 770
    :cond_301
    add-int/2addr v4, v2

    .line 771
    int-to-char v0, v4

    .line 772
    invoke-virtual {p1, v0}, Le6/c;->d(C)V

    .line 773
    .line 774
    .line 775
    iget v0, p1, Le6/c;->d:I

    .line 776
    .line 777
    add-int/2addr v0, v2

    .line 778
    iput v0, p1, Le6/c;->d:I

    .line 779
    .line 780
    :goto_30b
    return-void

    .line 781
    :pswitch_data_30c
    .packed-switch 0xd
        :pswitch_22d
        :pswitch_196
        :pswitch_f1
    .end packed-switch
.end method

.method public m(CLjava/lang/StringBuilder;)I
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x20

    .line 3
    .line 4
    if-ne p1, v1, :cond_a

    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    return v0

    .line 11
    :cond_a
    const/16 v2, 0x30

    .line 12
    .line 13
    if-lt p1, v2, :cond_19

    .line 14
    .line 15
    const/16 v2, 0x39

    .line 16
    .line 17
    if-gt p1, v2, :cond_19

    .line 18
    .line 19
    add-int/lit8 p1, p1, -0x2c

    .line 20
    .line 21
    int-to-char p1, p1

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_19
    const/16 v2, 0x41

    .line 27
    .line 28
    if-lt p1, v2, :cond_28

    .line 29
    .line 30
    const/16 v2, 0x5a

    .line 31
    .line 32
    if-gt p1, v2, :cond_28

    .line 33
    .line 34
    add-int/lit8 p1, p1, -0x33

    .line 35
    .line 36
    int-to-char p1, p1

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    return v0

    .line 41
    :cond_28
    const/4 v2, 0x2

    .line 42
    if-ge p1, v1, :cond_33

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :cond_33
    const/16 v1, 0x21

    .line 53
    .line 54
    if-lt p1, v1, :cond_44

    .line 55
    .line 56
    const/16 v3, 0x2f

    .line 57
    .line 58
    if-gt p1, v3, :cond_44

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    sub-int/2addr p1, v1

    .line 64
    int-to-char p1, p1

    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    return v2

    .line 69
    :cond_44
    const/16 v1, 0x3a

    .line 70
    .line 71
    if-lt p1, v1, :cond_56

    .line 72
    .line 73
    const/16 v1, 0x40

    .line 74
    .line 75
    if-gt p1, v1, :cond_56

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    add-int/lit8 p1, p1, -0x2b

    .line 81
    .line 82
    int-to-char p1, p1

    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    return v2

    .line 87
    :cond_56
    const/16 v1, 0x5b

    .line 88
    .line 89
    if-lt p1, v1, :cond_68

    .line 90
    .line 91
    const/16 v1, 0x5f

    .line 92
    .line 93
    if-gt p1, v1, :cond_68

    .line 94
    .line 95
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    add-int/lit8 p1, p1, -0x45

    .line 99
    .line 100
    int-to-char p1, p1

    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    return v2

    .line 105
    :cond_68
    const/16 v0, 0x60

    .line 106
    .line 107
    if-lt p1, v0, :cond_79

    .line 108
    .line 109
    const/16 v1, 0x7f

    .line 110
    .line 111
    if-gt p1, v1, :cond_79

    .line 112
    .line 113
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    sub-int/2addr p1, v0

    .line 117
    int-to-char p1, p1

    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    return v2

    .line 122
    :cond_79
    const-string v0, "\u0001\u001e"

    .line 123
    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    add-int/lit8 p1, p1, -0x80

    .line 128
    .line 129
    int-to-char p1, p1

    .line 130
    invoke-virtual {p0, p1, p2}, Le5/e;->m(CLjava/lang/StringBuilder;)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    add-int/2addr p1, v2

    .line 135
    return p1
.end method

.method public p()I
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public q(Le6/c;Ljava/lang/StringBuilder;)V
    .registers 10

    .line 1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    div-int/2addr v0, v1

    .line 7
    const/4 v2, 0x1

    .line 8
    shl-int/2addr v0, v2

    .line 9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    rem-int/2addr v3, v1

    .line 14
    iget-object v4, p1, Le6/c;->c:Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    add-int/2addr v4, v0

    .line 21
    invoke-virtual {p1, v4}, Le6/c;->c(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Le6/c;->f:Le6/e;

    .line 25
    .line 26
    iget v0, v0, Le6/e;->b:I

    .line 27
    .line 28
    sub-int/2addr v0, v4

    .line 29
    const/4 v4, 0x2

    .line 30
    const/4 v5, 0x0

    .line 31
    const/16 v6, 0xfe

    .line 32
    .line 33
    if-ne v3, v4, :cond_39

    .line 34
    .line 35
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :goto_25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-lt v0, v1, :cond_2f

    .line 43
    .line 44
    invoke-static {p1, p2}, Le5/e;->v(Le6/c;Ljava/lang/StringBuilder;)V

    .line 45
    .line 46
    .line 47
    goto :goto_25

    .line 48
    :cond_2f
    invoke-virtual {p1}, Le6/c;->b()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_6d

    .line 53
    .line 54
    invoke-virtual {p1, v6}, Le6/c;->d(C)V

    .line 55
    .line 56
    .line 57
    goto :goto_6d

    .line 58
    :cond_39
    if-ne v0, v2, :cond_56

    .line 59
    .line 60
    if-ne v3, v2, :cond_56

    .line 61
    .line 62
    :goto_3d
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-lt v0, v1, :cond_47

    .line 67
    .line 68
    invoke-static {p1, p2}, Le5/e;->v(Le6/c;Ljava/lang/StringBuilder;)V

    .line 69
    .line 70
    .line 71
    goto :goto_3d

    .line 72
    :cond_47
    invoke-virtual {p1}, Le6/c;->b()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_50

    .line 77
    .line 78
    invoke-virtual {p1, v6}, Le6/c;->d(C)V

    .line 79
    .line 80
    .line 81
    :cond_50
    iget p2, p1, Le6/c;->d:I

    .line 82
    .line 83
    sub-int/2addr p2, v2

    .line 84
    iput p2, p1, Le6/c;->d:I

    .line 85
    .line 86
    goto :goto_6d

    .line 87
    :cond_56
    if-nez v3, :cond_70

    .line 88
    .line 89
    :goto_58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-lt v2, v1, :cond_62

    .line 94
    .line 95
    invoke-static {p1, p2}, Le5/e;->v(Le6/c;Ljava/lang/StringBuilder;)V

    .line 96
    .line 97
    .line 98
    goto :goto_58

    .line 99
    :cond_62
    if-gtz v0, :cond_6a

    .line 100
    .line 101
    invoke-virtual {p1}, Le6/c;->b()Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_6d

    .line 106
    .line 107
    :cond_6a
    invoke-virtual {p1, v6}, Le6/c;->d(C)V

    .line 108
    .line 109
    .line 110
    :cond_6d
    :goto_6d
    iput v5, p1, Le6/c;->e:I

    .line 111
    .line 112
    return-void

    .line 113
    :cond_70
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    const-string p2, "Unexpected case. Please report!"

    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1
.end method

.method public u(Landroid/content/Context;Ljava/lang/String;Lf4/c;)Lf4/d;
    .registers 8

    .line 1
    iget v0, p0, Le5/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_52

    .line 4
    .line 5
    .line 6
    new-instance v0, Lf4/d;

    .line 7
    .line 8
    invoke-direct {v0}, Lf4/d;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, p1, p2}, Lf4/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v1, v0, Lf4/d;->a:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_1b

    .line 20
    .line 21
    invoke-interface {p3, p1, p2, v3}, Lf4/c;->c(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, v0, Lf4/d;->b:I

    .line 26
    .line 27
    goto :goto_21

    .line 28
    :cond_1b
    invoke-interface {p3, p1, p2, v2}, Lf4/c;->c(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, v0, Lf4/d;->b:I

    .line 33
    .line 34
    :goto_21
    iget p2, v0, Lf4/d;->a:I

    .line 35
    .line 36
    if-nez p2, :cond_29

    .line 37
    .line 38
    if-nez p1, :cond_2a

    .line 39
    .line 40
    move v2, v3

    .line 41
    goto :goto_2d

    .line 42
    :cond_29
    move v3, p2

    .line 43
    :cond_2a
    if-lt v3, p1, :cond_2d

    .line 44
    .line 45
    const/4 v2, -0x1

    .line 46
    :cond_2d
    :goto_2d
    iput v2, v0, Lf4/d;->c:I

    .line 47
    .line 48
    return-object v0

    .line 49
    :pswitch_30
    new-instance v0, Lf4/d;

    .line 50
    .line 51
    invoke-direct {v0}, Lf4/d;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-interface {p3, p1, p2}, Lf4/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iput v1, v0, Lf4/d;->a:I

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-interface {p3, p1, p2, v1}, Lf4/c;->c(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, v0, Lf4/d;->b:I

    .line 66
    .line 67
    iget p2, v0, Lf4/d;->a:I

    .line 68
    .line 69
    if-nez p2, :cond_4b

    .line 70
    .line 71
    const/4 p2, 0x0

    .line 72
    if-nez p1, :cond_4b

    .line 73
    .line 74
    move v1, p2

    .line 75
    goto :goto_4e

    .line 76
    :cond_4b
    if-lt p2, p1, :cond_4e

    .line 77
    .line 78
    const/4 v1, -0x1

    .line 79
    :cond_4e
    :goto_4e
    iput v1, v0, Lf4/d;->c:I

    .line 80
    .line 81
    return-object v0

    .line 82
    nop

    .line 83
    :pswitch_data_52
    .packed-switch 0x14
        :pswitch_30
    .end packed-switch
.end method
