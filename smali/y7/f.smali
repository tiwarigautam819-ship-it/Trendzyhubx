###### Class y7.f (y7.f)
.class public abstract Ly7/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Le8/j;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1
    sget-object v0, Le8/j;->d:Le8/j;

    .line 2
    .line 3
    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 4
    .line 5
    invoke-static {v0}, Le5/e;->o(Ljava/lang/String;)Le8/j;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Ly7/f;->a:Le8/j;

    .line 10
    .line 11
    const-string v9, "WINDOW_UPDATE"

    .line 12
    .line 13
    const-string v10, "CONTINUATION"

    .line 14
    .line 15
    const-string v1, "DATA"

    .line 16
    .line 17
    const-string v2, "HEADERS"

    .line 18
    .line 19
    const-string v3, "PRIORITY"

    .line 20
    .line 21
    const-string v4, "RST_STREAM"

    .line 22
    .line 23
    const-string v5, "SETTINGS"

    .line 24
    .line 25
    const-string v6, "PUSH_PROMISE"

    .line 26
    .line 27
    const-string v7, "PING"

    .line 28
    .line 29
    const-string v8, "GOAWAY"

    .line 30
    .line 31
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Ly7/f;->b:[Ljava/lang/String;

    .line 36
    .line 37
    const/16 v0, 0x40

    .line 38
    .line 39
    new-array v0, v0, [Ljava/lang/String;

    .line 40
    .line 41
    sput-object v0, Ly7/f;->c:[Ljava/lang/String;

    .line 42
    .line 43
    const/16 v0, 0x100

    .line 44
    .line 45
    new-array v1, v0, [Ljava/lang/String;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    move v3, v2

    .line 49
    :goto_30
    const/16 v4, 0x20

    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    if-ge v3, v0, :cond_58

    .line 53
    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    const-string v7, "toBinaryString(it)"

    .line 59
    .line 60
    invoke-static {v7, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-array v5, v5, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v6, v5, v2

    .line 66
    .line 67
    const-string v6, "%8s"

    .line 68
    .line 69
    invoke-static {v6, v5}, Ls7/b;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const/16 v6, 0x30

    .line 74
    .line 75
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const-string v5, "replace(...)"

    .line 80
    .line 81
    invoke-static {v5, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    aput-object v4, v1, v3

    .line 85
    .line 86
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_30

    .line 89
    :cond_58
    sput-object v1, Ly7/f;->d:[Ljava/lang/String;

    .line 90
    .line 91
    sget-object v0, Ly7/f;->c:[Ljava/lang/String;

    .line 92
    .line 93
    const-string v1, ""

    .line 94
    .line 95
    aput-object v1, v0, v2

    .line 96
    .line 97
    const-string v1, "END_STREAM"

    .line 98
    .line 99
    aput-object v1, v0, v5

    .line 100
    .line 101
    filled-new-array {v5}, [I

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v3, "PADDED"

    .line 106
    .line 107
    const/16 v5, 0x8

    .line 108
    .line 109
    aput-object v3, v0, v5

    .line 110
    .line 111
    aget v3, v1, v2

    .line 112
    .line 113
    or-int/lit8 v6, v3, 0x8

    .line 114
    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    aget-object v3, v0, v3

    .line 121
    .line 122
    const-string v8, "|PADDED"

    .line 123
    .line 124
    invoke-static {v7, v3, v8}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    aput-object v3, v0, v6

    .line 129
    .line 130
    const-string v3, "END_HEADERS"

    .line 131
    .line 132
    const/4 v6, 0x4

    .line 133
    aput-object v3, v0, v6

    .line 134
    .line 135
    const-string v3, "PRIORITY"

    .line 136
    .line 137
    aput-object v3, v0, v4

    .line 138
    .line 139
    const-string v3, "END_HEADERS|PRIORITY"

    .line 140
    .line 141
    const/16 v7, 0x24

    .line 142
    .line 143
    aput-object v3, v0, v7

    .line 144
    .line 145
    filled-new-array {v6, v4, v7}, [I

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    move v3, v2

    .line 150
    :goto_95
    const/4 v4, 0x3

    .line 151
    if-ge v3, v4, :cond_d3

    .line 152
    .line 153
    aget v4, v0, v3

    .line 154
    .line 155
    aget v6, v1, v2

    .line 156
    .line 157
    sget-object v7, Ly7/f;->c:[Ljava/lang/String;

    .line 158
    .line 159
    or-int v9, v6, v4

    .line 160
    .line 161
    new-instance v10, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    aget-object v11, v7, v6

    .line 167
    .line 168
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const/16 v11, 0x7c

    .line 172
    .line 173
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    aget-object v12, v7, v4

    .line 177
    .line 178
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    aput-object v10, v7, v9

    .line 186
    .line 187
    or-int/2addr v9, v5

    .line 188
    new-instance v10, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    aget-object v6, v7, v6

    .line 194
    .line 195
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    aget-object v4, v7, v4

    .line 202
    .line 203
    invoke-static {v10, v4, v8}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    aput-object v4, v7, v9

    .line 208
    .line 209
    add-int/lit8 v3, v3, 0x1

    .line 210
    .line 211
    goto :goto_95

    .line 212
    :cond_d3
    sget-object v0, Ly7/f;->c:[Ljava/lang/String;

    .line 213
    .line 214
    array-length v0, v0

    .line 215
    :goto_d6
    if-ge v2, v0, :cond_e7

    .line 216
    .line 217
    sget-object v1, Ly7/f;->c:[Ljava/lang/String;

    .line 218
    .line 219
    aget-object v3, v1, v2

    .line 220
    .line 221
    if-nez v3, :cond_e4

    .line 222
    .line 223
    sget-object v3, Ly7/f;->d:[Ljava/lang/String;

    .line 224
    .line 225
    aget-object v3, v3, v2

    .line 226
    .line 227
    aput-object v3, v1, v2

    .line 228
    .line 229
    :cond_e4
    add-int/lit8 v2, v2, 0x1

    .line 230
    .line 231
    goto :goto_d6

    .line 232
    :cond_e7
    return-void
.end method

.method public static a(ZIIII)Ljava/lang/String;
    .registers 15

    .line 1
    sget-object v0, Ly7/f;->b:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ge p3, v1, :cond_a

    .line 7
    .line 8
    aget-object v0, v0, p3

    .line 9
    .line 10
    goto :goto_18

    .line 11
    :cond_a
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-array v1, v3, [Ljava/lang/Object;

    .line 16
    .line 17
    aput-object v0, v1, v2

    .line 18
    .line 19
    const-string v0, "0x%02x"

    .line 20
    .line 21
    invoke-static {v0, v1}, Ls7/b;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_18
    const/4 v1, 0x5

    .line 26
    const/4 v4, 0x3

    .line 27
    const/4 v5, 0x2

    .line 28
    const/4 v6, 0x4

    .line 29
    if-nez p4, :cond_21

    .line 30
    .line 31
    const-string p3, ""

    .line 32
    .line 33
    goto :goto_6a

    .line 34
    :cond_21
    sget-object v7, Ly7/f;->d:[Ljava/lang/String;

    .line 35
    .line 36
    if-eq p3, v5, :cond_68

    .line 37
    .line 38
    if-eq p3, v4, :cond_68

    .line 39
    .line 40
    if-eq p3, v6, :cond_60

    .line 41
    .line 42
    const/4 v8, 0x6

    .line 43
    if-eq p3, v8, :cond_60

    .line 44
    .line 45
    const/4 v8, 0x7

    .line 46
    if-eq p3, v8, :cond_68

    .line 47
    .line 48
    const/16 v8, 0x8

    .line 49
    .line 50
    if-eq p3, v8, :cond_68

    .line 51
    .line 52
    sget-object v8, Ly7/f;->c:[Ljava/lang/String;

    .line 53
    .line 54
    array-length v9, v8

    .line 55
    if-ge p4, v9, :cond_3e

    .line 56
    .line 57
    aget-object v7, v8, p4

    .line 58
    .line 59
    invoke-static {v7}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_40

    .line 63
    :cond_3e
    aget-object v7, v7, p4

    .line 64
    .line 65
    :goto_40
    if-ne p3, v1, :cond_4f

    .line 66
    .line 67
    and-int/lit8 v8, p4, 0x4

    .line 68
    .line 69
    if-eqz v8, :cond_4f

    .line 70
    .line 71
    const-string p3, "HEADERS"

    .line 72
    .line 73
    const-string p4, "PUSH_PROMISE"

    .line 74
    .line 75
    invoke-static {v7, p3, p4}, Lk7/o;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    goto :goto_6a

    .line 80
    :cond_4f
    if-nez p3, :cond_5e

    .line 81
    .line 82
    and-int/lit8 p3, p4, 0x20

    .line 83
    .line 84
    if-eqz p3, :cond_5e

    .line 85
    .line 86
    const-string p3, "PRIORITY"

    .line 87
    .line 88
    const-string p4, "COMPRESSED"

    .line 89
    .line 90
    invoke-static {v7, p3, p4}, Lk7/o;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    goto :goto_6a

    .line 95
    :cond_5e
    move-object p3, v7

    .line 96
    goto :goto_6a

    .line 97
    :cond_60
    if-ne p4, v3, :cond_65

    .line 98
    .line 99
    const-string p3, "ACK"

    .line 100
    .line 101
    goto :goto_6a

    .line 102
    :cond_65
    aget-object p3, v7, p4

    .line 103
    .line 104
    goto :goto_6a

    .line 105
    :cond_68
    aget-object p3, v7, p4

    .line 106
    .line 107
    :goto_6a
    if-eqz p0, :cond_6f

    .line 108
    .line 109
    const-string p0, "<<"

    .line 110
    .line 111
    goto :goto_71

    .line 112
    :cond_6f
    const-string p0, ">>"

    .line 113
    .line 114
    :goto_71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    new-array p4, v1, [Ljava/lang/Object;

    .line 123
    .line 124
    aput-object p0, p4, v2

    .line 125
    .line 126
    aput-object p1, p4, v3

    .line 127
    .line 128
    aput-object p2, p4, v5

    .line 129
    .line 130
    aput-object v0, p4, v4

    .line 131
    .line 132
    aput-object p3, p4, v6

    .line 133
    .line 134
    const-string p0, "%s 0x%08x %5d %-13s %s"

    .line 135
    .line 136
    invoke-static {p0, p4}, Ls7/b;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0
.end method
