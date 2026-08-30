###### Class e6.g (e6.g)
.class public final Le6/g;
.super Le5/e;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Le6/g;->c:I

    .line 2
    .line 3
    const/16 p1, 0xf

    .line 4
    .line 5
    invoke-direct {p0, p1}, Le5/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public k(Le6/c;)V
    .registers 6

    .line 1
    iget v0, p0, Le6/g;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3e

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Le5/e;->k(Le6/c;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    :cond_e
    invoke-virtual {p1}, Le6/c;->b()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_39

    .line 20
    .line 21
    invoke-virtual {p1}, Le6/c;->a()C

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget v2, p1, Le6/c;->d:I

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    iput v2, p1, Le6/c;->d:I

    .line 30
    .line 31
    invoke-virtual {p0, v1, v0}, Le6/g;->m(CLjava/lang/StringBuilder;)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x3

    .line 39
    rem-int/2addr v1, v2

    .line 40
    if-nez v1, :cond_e

    .line 41
    .line 42
    invoke-static {p1, v0}, Le5/e;->v(Le6/c;Ljava/lang/StringBuilder;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p1, Le6/c;->a:Ljava/lang/String;

    .line 46
    .line 47
    iget v3, p1, Le6/c;->d:I

    .line 48
    .line 49
    invoke-static {v1, v3, v2}, Lh8/b;->m(Ljava/lang/CharSequence;II)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eq v1, v2, :cond_e

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    iput v1, p1, Le6/c;->e:I

    .line 57
    .line 58
    :cond_39
    invoke-virtual {p0, p1, v0}, Le6/g;->q(Le6/c;Ljava/lang/StringBuilder;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public final m(CLjava/lang/StringBuilder;)I
    .registers 7

    .line 1
    iget v0, p0, Le6/g;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_f8

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xd

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p1, v0, :cond_47

    .line 10
    .line 11
    const/16 v0, 0x20

    .line 12
    .line 13
    if-eq p1, v0, :cond_42

    .line 14
    .line 15
    const/16 v0, 0x2a

    .line 16
    .line 17
    if-eq p1, v0, :cond_3e

    .line 18
    .line 19
    const/16 v0, 0x3e

    .line 20
    .line 21
    if-eq p1, v0, :cond_39

    .line 22
    .line 23
    const/16 v0, 0x30

    .line 24
    .line 25
    if-lt p1, v0, :cond_25

    .line 26
    .line 27
    const/16 v0, 0x39

    .line 28
    .line 29
    if-gt p1, v0, :cond_25

    .line 30
    .line 31
    add-int/lit8 p1, p1, -0x2c

    .line 32
    .line 33
    int-to-char p1, p1

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    goto :goto_4b

    .line 38
    :cond_25
    const/16 v0, 0x41

    .line 39
    .line 40
    if-lt p1, v0, :cond_34

    .line 41
    .line 42
    const/16 v0, 0x5a

    .line 43
    .line 44
    if-gt p1, v0, :cond_34

    .line 45
    .line 46
    add-int/lit8 p1, p1, -0x33

    .line 47
    .line 48
    int-to-char p1, p1

    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    goto :goto_4b

    .line 53
    :cond_34
    invoke-static {p1}, Lh8/b;->h(C)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    throw p1

    .line 58
    :cond_39
    const/4 p1, 0x2

    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    goto :goto_4b

    .line 63
    :cond_3e
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    goto :goto_4b

    .line 67
    :cond_42
    const/4 p1, 0x3

    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    goto :goto_4b

    .line 72
    :cond_47
    const/4 p1, 0x0

    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :goto_4b
    return v1

    .line 77
    :pswitch_4c
    const/4 v0, 0x1

    .line 78
    const/16 v1, 0x20

    .line 79
    .line 80
    if-ne p1, v1, :cond_57

    .line 81
    .line 82
    const/4 p1, 0x3

    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto/16 :goto_f6

    .line 87
    .line 88
    :cond_57
    const/16 v2, 0x30

    .line 89
    .line 90
    if-lt p1, v2, :cond_67

    .line 91
    .line 92
    const/16 v2, 0x39

    .line 93
    .line 94
    if-gt p1, v2, :cond_67

    .line 95
    .line 96
    add-int/lit8 p1, p1, -0x2c

    .line 97
    .line 98
    int-to-char p1, p1

    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto/16 :goto_f6

    .line 103
    .line 104
    :cond_67
    const/16 v2, 0x61

    .line 105
    .line 106
    if-lt p1, v2, :cond_77

    .line 107
    .line 108
    const/16 v2, 0x7a

    .line 109
    .line 110
    if-gt p1, v2, :cond_77

    .line 111
    .line 112
    add-int/lit8 p1, p1, -0x53

    .line 113
    .line 114
    int-to-char p1, p1

    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    goto/16 :goto_f6

    .line 119
    .line 120
    :cond_77
    const/4 v2, 0x2

    .line 121
    if-ge p1, v1, :cond_84

    .line 122
    .line 123
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    :goto_81
    move v0, v2

    .line 131
    goto/16 :goto_f6

    .line 132
    .line 133
    :cond_84
    const/16 v1, 0x21

    .line 134
    .line 135
    if-lt p1, v1, :cond_95

    .line 136
    .line 137
    const/16 v3, 0x2f

    .line 138
    .line 139
    if-gt p1, v3, :cond_95

    .line 140
    .line 141
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    sub-int/2addr p1, v1

    .line 145
    int-to-char p1, p1

    .line 146
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    goto :goto_81

    .line 150
    :cond_95
    const/16 v1, 0x3a

    .line 151
    .line 152
    const/16 v3, 0x40

    .line 153
    .line 154
    if-lt p1, v1, :cond_a7

    .line 155
    .line 156
    if-gt p1, v3, :cond_a7

    .line 157
    .line 158
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    add-int/lit8 p1, p1, -0x2b

    .line 162
    .line 163
    int-to-char p1, p1

    .line 164
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    goto :goto_81

    .line 168
    :cond_a7
    const/16 v1, 0x5b

    .line 169
    .line 170
    if-lt p1, v1, :cond_b9

    .line 171
    .line 172
    const/16 v1, 0x5f

    .line 173
    .line 174
    if-gt p1, v1, :cond_b9

    .line 175
    .line 176
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    add-int/lit8 p1, p1, -0x45

    .line 180
    .line 181
    int-to-char p1, p1

    .line 182
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    goto :goto_81

    .line 186
    :cond_b9
    const/16 v0, 0x60

    .line 187
    .line 188
    if-ne p1, v0, :cond_c6

    .line 189
    .line 190
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    sub-int/2addr p1, v0

    .line 194
    int-to-char p1, p1

    .line 195
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    goto :goto_81

    .line 199
    :cond_c6
    const/16 v1, 0x41

    .line 200
    .line 201
    if-lt p1, v1, :cond_d7

    .line 202
    .line 203
    const/16 v1, 0x5a

    .line 204
    .line 205
    if-gt p1, v1, :cond_d7

    .line 206
    .line 207
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    sub-int/2addr p1, v3

    .line 211
    int-to-char p1, p1

    .line 212
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    goto :goto_81

    .line 216
    :cond_d7
    const/16 v1, 0x7b

    .line 217
    .line 218
    if-lt p1, v1, :cond_e8

    .line 219
    .line 220
    const/16 v1, 0x7f

    .line 221
    .line 222
    if-gt p1, v1, :cond_e8

    .line 223
    .line 224
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    sub-int/2addr p1, v0

    .line 228
    int-to-char p1, p1

    .line 229
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    goto :goto_81

    .line 233
    :cond_e8
    const-string v0, "\u0001\u001e"

    .line 234
    .line 235
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    add-int/lit8 p1, p1, -0x80

    .line 239
    .line 240
    int-to-char p1, p1

    .line 241
    invoke-virtual {p0, p1, p2}, Le6/g;->m(CLjava/lang/StringBuilder;)I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    add-int/lit8 v0, p1, 0x2

    .line 246
    .line 247
    :goto_f6
    return v0

    .line 248
    nop

    .line 249
    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_4c
    .end packed-switch
.end method

.method public final p()I
    .registers 2

    .line 1
    iget v0, p0, Le6/g;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_a

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    return v0

    .line 8
    :pswitch_7
    const/4 v0, 0x2

    .line 9
    return v0

    .line 10
    nop

    .line 11
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public q(Le6/c;Ljava/lang/StringBuilder;)V
    .registers 6

    .line 1
    iget v0, p0, Le6/g;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_4e

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Le5/e;->q(Le6/c;Ljava/lang/StringBuilder;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_9
    iget-object v0, p1, Le6/c;->c:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p1, v1}, Le6/c;->c(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p1, Le6/c;->f:Le6/e;

    .line 20
    .line 21
    iget v1, v1, Le6/e;->b:I

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sub-int/2addr v1, v0

    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iget v0, p1, Le6/c;->d:I

    .line 33
    .line 34
    sub-int/2addr v0, p2

    .line 35
    iput v0, p1, Le6/c;->d:I

    .line 36
    .line 37
    iget-object p2, p1, Le6/c;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget v2, p1, Le6/c;->g:I

    .line 44
    .line 45
    sub-int/2addr v0, v2

    .line 46
    iget v2, p1, Le6/c;->d:I

    .line 47
    .line 48
    sub-int/2addr v0, v2

    .line 49
    const/4 v2, 0x1

    .line 50
    if-gt v0, v2, :cond_41

    .line 51
    .line 52
    if-gt v1, v2, :cond_41

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    iget v0, p1, Le6/c;->g:I

    .line 59
    .line 60
    sub-int/2addr p2, v0

    .line 61
    iget v0, p1, Le6/c;->d:I

    .line 62
    .line 63
    sub-int/2addr p2, v0

    .line 64
    if-eq p2, v1, :cond_46

    .line 65
    .line 66
    :cond_41
    const/16 p2, 0xfe

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Le6/c;->d(C)V

    .line 69
    .line 70
    .line 71
    :cond_46
    iget p2, p1, Le6/c;->e:I

    .line 72
    .line 73
    if-gez p2, :cond_4d

    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    iput p2, p1, Le6/c;->e:I

    .line 77
    .line 78
    :cond_4d
    return-void

    .line 79
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
