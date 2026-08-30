###### Class androidx.core.graphics.drawable.IconCompatParcelizer (androidx.core.graphics.drawable.IconCompatParcelizer)
.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static read(Li1/a;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 6

    .line 1
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v1, v2}, Li1/a;->f(II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {p0, v2}, Li1/a;->e(I)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_18

    .line 23
    .line 24
    goto :goto_2b

    .line 25
    :cond_18
    move-object v1, p0

    .line 26
    check-cast v1, Li1/b;

    .line 27
    .line 28
    iget-object v1, v1, Li1/b;->e:Landroid/os/Parcel;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-gez v3, :cond_25

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    goto :goto_2b

    .line 38
    :cond_25
    new-array v3, v3, [B

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 41
    .line 42
    .line 43
    move-object v1, v3

    .line 44
    :goto_2b
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 45
    .line 46
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 47
    .line 48
    const/4 v3, 0x3

    .line 49
    invoke-virtual {p0, v1, v3}, Li1/a;->g(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 54
    .line 55
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 56
    .line 57
    const/4 v4, 0x4

    .line 58
    invoke-virtual {p0, v1, v4}, Li1/a;->f(II)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 63
    .line 64
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 65
    .line 66
    const/4 v4, 0x5

    .line 67
    invoke-virtual {p0, v1, v4}, Li1/a;->f(II)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 72
    .line 73
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 74
    .line 75
    const/4 v4, 0x6

    .line 76
    invoke-virtual {p0, v1, v4}, Li1/a;->g(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/content/res/ColorStateList;

    .line 81
    .line 82
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 83
    .line 84
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 85
    .line 86
    const/4 v4, 0x7

    .line 87
    invoke-virtual {p0, v4}, Li1/a;->e(I)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-nez v4, :cond_5d

    .line 92
    .line 93
    goto :goto_66

    .line 94
    :cond_5d
    move-object v1, p0

    .line 95
    check-cast v1, Li1/b;

    .line 96
    .line 97
    iget-object v1, v1, Li1/b;->e:Landroid/os/Parcel;

    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    :goto_66
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 106
    .line 107
    const/16 v4, 0x8

    .line 108
    .line 109
    invoke-virtual {p0, v4}, Li1/a;->e(I)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_73

    .line 114
    .line 115
    goto :goto_7b

    .line 116
    :cond_73
    check-cast p0, Li1/b;

    .line 117
    .line 118
    iget-object p0, p0, Li1/b;->e:Landroid/os/Parcel;

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :goto_7b
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 125
    .line 126
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {p0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 133
    .line 134
    iget p0, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 135
    .line 136
    const/4 v1, 0x0

    .line 137
    packed-switch p0, :pswitch_data_d6

    .line 138
    .line 139
    .line 140
    :pswitch_8b
    goto :goto_b3

    .line 141
    :pswitch_8c
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 142
    .line 143
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 144
    .line 145
    return-object v0

    .line 146
    :pswitch_91
    new-instance p0, Ljava/lang/String;

    .line 147
    .line 148
    iget-object v3, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 149
    .line 150
    const-string v4, "UTF-16"

    .line 151
    .line 152
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-direct {p0, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 157
    .line 158
    .line 159
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 160
    .line 161
    iget v3, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 162
    .line 163
    if-ne v3, v2, :cond_b3

    .line 164
    .line 165
    iget-object v2, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 166
    .line 167
    if-nez v2, :cond_b3

    .line 168
    .line 169
    const-string v2, ":"

    .line 170
    .line 171
    const/4 v3, -0x1

    .line 172
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    aget-object p0, p0, v1

    .line 177
    .line 178
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 179
    .line 180
    :cond_b3
    :goto_b3
    return-object v0

    .line 181
    :pswitch_b4
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 182
    .line 183
    if-eqz p0, :cond_bb

    .line 184
    .line 185
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 186
    .line 187
    return-object v0

    .line 188
    :cond_bb
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 189
    .line 190
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 191
    .line 192
    iput v3, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 193
    .line 194
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 195
    .line 196
    array-length p0, p0

    .line 197
    iput p0, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 198
    .line 199
    return-object v0

    .line 200
    :pswitch_c7
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 201
    .line 202
    if-eqz p0, :cond_ce

    .line 203
    .line 204
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 205
    .line 206
    return-object v0

    .line 207
    :cond_ce
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 208
    .line 209
    const-string v0, "Invalid icon"

    .line 210
    .line 211
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p0

    .line 215
    :pswitch_data_d6
    .packed-switch -0x1
        :pswitch_c7
        :pswitch_8b
        :pswitch_b4
        :pswitch_91
        :pswitch_8c
        :pswitch_91
        :pswitch_b4
        :pswitch_91
    .end packed-switch
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;Li1/a;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 11
    .line 12
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 13
    .line 14
    const-string v1, "UTF-16"

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_b6

    .line 17
    .line 18
    .line 19
    :pswitch_12
    goto :goto_47

    .line 20
    :pswitch_13
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 35
    .line 36
    goto :goto_47

    .line 37
    :pswitch_24
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, [B

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 42
    .line 43
    goto :goto_47

    .line 44
    :pswitch_2b
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 57
    .line 58
    goto :goto_47

    .line 59
    :pswitch_3a
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Landroid/os/Parcelable;

    .line 62
    .line 63
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 64
    .line 65
    goto :goto_47

    .line 66
    :pswitch_41
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Landroid/os/Parcelable;

    .line 69
    .line 70
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 71
    .line 72
    :goto_47
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 73
    .line 74
    const/4 v1, -0x1

    .line 75
    if-eq v1, v0, :cond_50

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-virtual {p1, v0, v1}, Li1/a;->j(II)V

    .line 79
    .line 80
    .line 81
    :cond_50
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 82
    .line 83
    if-eqz v0, :cond_64

    .line 84
    .line 85
    const/4 v1, 0x2

    .line 86
    invoke-virtual {p1, v1}, Li1/a;->i(I)V

    .line 87
    .line 88
    .line 89
    move-object v1, p1

    .line 90
    check-cast v1, Li1/b;

    .line 91
    .line 92
    iget-object v1, v1, Li1/b;->e:Landroid/os/Parcel;

    .line 93
    .line 94
    array-length v2, v0

    .line 95
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    .line 100
    .line 101
    :cond_64
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    if-eqz v0, :cond_75

    .line 105
    .line 106
    const/4 v2, 0x3

    .line 107
    invoke-virtual {p1, v2}, Li1/a;->i(I)V

    .line 108
    .line 109
    .line 110
    move-object v2, p1

    .line 111
    check-cast v2, Li1/b;

    .line 112
    .line 113
    iget-object v2, v2, Li1/b;->e:Landroid/os/Parcel;

    .line 114
    .line 115
    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    .line 117
    .line 118
    :cond_75
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 119
    .line 120
    if-eqz v0, :cond_7d

    .line 121
    .line 122
    const/4 v2, 0x4

    .line 123
    invoke-virtual {p1, v0, v2}, Li1/a;->j(II)V

    .line 124
    .line 125
    .line 126
    :cond_7d
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 127
    .line 128
    if-eqz v0, :cond_85

    .line 129
    .line 130
    const/4 v2, 0x5

    .line 131
    invoke-virtual {p1, v0, v2}, Li1/a;->j(II)V

    .line 132
    .line 133
    .line 134
    :cond_85
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 135
    .line 136
    if-eqz v0, :cond_95

    .line 137
    .line 138
    const/4 v2, 0x6

    .line 139
    invoke-virtual {p1, v2}, Li1/a;->i(I)V

    .line 140
    .line 141
    .line 142
    move-object v2, p1

    .line 143
    check-cast v2, Li1/b;

    .line 144
    .line 145
    iget-object v2, v2, Li1/b;->e:Landroid/os/Parcel;

    .line 146
    .line 147
    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    .line 149
    .line 150
    :cond_95
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 151
    .line 152
    if-eqz v0, :cond_a5

    .line 153
    .line 154
    const/4 v1, 0x7

    .line 155
    invoke-virtual {p1, v1}, Li1/a;->i(I)V

    .line 156
    .line 157
    .line 158
    move-object v1, p1

    .line 159
    check-cast v1, Li1/b;

    .line 160
    .line 161
    iget-object v1, v1, Li1/b;->e:Landroid/os/Parcel;

    .line 162
    .line 163
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_a5
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 167
    .line 168
    if-eqz p0, :cond_b5

    .line 169
    .line 170
    const/16 v0, 0x8

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Li1/a;->i(I)V

    .line 173
    .line 174
    .line 175
    check-cast p1, Li1/b;

    .line 176
    .line 177
    iget-object p1, p1, Li1/b;->e:Landroid/os/Parcel;

    .line 178
    .line 179
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_b5
    return-void

    .line 183
    :pswitch_data_b6
    .packed-switch -0x1
        :pswitch_41
        :pswitch_12
        :pswitch_3a
        :pswitch_2b
        :pswitch_24
        :pswitch_13
        :pswitch_3a
        :pswitch_13
    .end packed-switch
.end method
