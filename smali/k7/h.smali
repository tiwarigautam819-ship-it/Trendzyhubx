###### Class k7.h (k7.h)
.class public abstract Lk7/h;
.super Landroid/support/v4/media/session/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "|"

    .line 7
    .line 8
    invoke-static {v0}, Lk7/o;->r(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_be

    .line 13
    .line 14
    const-string v1, "\n"

    .line 15
    .line 16
    const-string v2, "\r"

    .line 17
    .line 18
    const-string v3, "\r\n"

    .line 19
    .line 20
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {p0, v1, v2}, Lk7/g;->E(Ljava/lang/CharSequence;[Ljava/lang/String;I)Lk7/c;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v3, Lf2/b;

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-direct {v3, v4, p0}, Lf2/b;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lj7/k;

    .line 36
    .line 37
    invoke-direct {v4, v1, v3}, Lj7/k;-><init>(Lj7/e;Lc7/l;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v4}, Lj7/f;->A(Lj7/e;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Ls6/h;->j(Ljava/util/List;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    check-cast v1, Ljava/lang/Iterable;

    .line 56
    .line 57
    new-instance v4, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    move v5, v2

    .line 67
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_a4

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    add-int/lit8 v7, v5, 0x1

    .line 78
    .line 79
    if-ltz v5, :cond_9c

    .line 80
    .line 81
    check-cast v6, Ljava/lang/String;

    .line 82
    .line 83
    const/4 v8, 0x0

    .line 84
    if-eqz v5, :cond_57

    .line 85
    .line 86
    if-ne v5, v3, :cond_5f

    .line 87
    .line 88
    :cond_57
    invoke-static {v6}, Lk7/o;->r(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_5f

    .line 93
    .line 94
    :goto_5d
    move-object v6, v8

    .line 95
    goto :goto_95

    .line 96
    :cond_5f
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    move v9, v2

    .line 101
    :goto_64
    const/4 v10, -0x1

    .line 102
    if-ge v9, v5, :cond_7a

    .line 103
    .line 104
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 109
    .line 110
    .line 111
    move-result v12

    .line 112
    if-nez v12, :cond_77

    .line 113
    .line 114
    invoke-static {v11}, Ljava/lang/Character;->isSpaceChar(C)Z

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    if-eqz v11, :cond_7b

    .line 119
    .line 120
    :cond_77
    add-int/lit8 v9, v9, 0x1

    .line 121
    .line 122
    goto :goto_64

    .line 123
    :cond_7a
    move v9, v10

    .line 124
    :cond_7b
    if-ne v9, v10, :cond_7e

    .line 125
    .line 126
    goto :goto_92

    .line 127
    :cond_7e
    invoke-static {v6, v0, v9, v2}, Lk7/o;->u(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_92

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    add-int/2addr v5, v9

    .line 138
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    const-string v5, "substring(...)"

    .line 143
    .line 144
    invoke-static {v5, v8}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_92
    :goto_92
    if-eqz v8, :cond_95

    .line 148
    .line 149
    goto :goto_5d

    .line 150
    :cond_95
    :goto_95
    if-eqz v6, :cond_9a

    .line 151
    .line 152
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :cond_9a
    move v5, v7

    .line 156
    goto :goto_42

    .line 157
    :cond_9c
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 158
    .line 159
    const-string v0, "Index overflow has happened."

    .line 160
    .line 161
    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :cond_a4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 168
    .line 169
    .line 170
    const-string v7, ""

    .line 171
    .line 172
    const-string v9, "..."

    .line 173
    .line 174
    const-string v6, "\n"

    .line 175
    .line 176
    const/4 v10, 0x0

    .line 177
    move-object v8, v7

    .line 178
    invoke-static/range {v4 .. v10}, Ls6/g;->r(Ljava/util/Collection;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lf2/b;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    const-string v0, "toString(...)"

    .line 186
    .line 187
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    return-object p0

    .line 191
    :cond_be
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 192
    .line 193
    const-string v0, "marginPrefix must be non-blank string."

    .line 194
    .line 195
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0
.end method
