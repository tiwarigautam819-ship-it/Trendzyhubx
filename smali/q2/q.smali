###### Class q2.q (q2.q)
.class public final Lq2/q;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lq2/q;

.field public static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lq2/q;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lq2/q;->a:Lq2/q;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lq2/q;->b:Ljava/util/HashMap;

    .line 14
    .line 15
    return-void
.end method

.method public static final a(Lq2/n;Lq2/o;)V
    .registers 3

    .line 1
    const-string v0, "feature"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lq2/p;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lq2/p;-><init>(Lq2/n;Lq2/o;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lq2/s;->c(Lq2/p;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final b(Lq2/o;)Z
    .registers 7

    .line 1
    const-string v0, "feature"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lq2/o;->b:Lq2/o;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-ne v0, p0, :cond_c

    .line 10
    .line 11
    goto/16 :goto_ae

    .line 12
    .line 13
    :cond_c
    sget-object v0, Lq2/o;->c:Lq2/o;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v0, p0, :cond_13

    .line 17
    .line 18
    goto/16 :goto_ad

    .line 19
    .line 20
    :cond_13
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v3, "com.facebook.internal.FEATURE_MANAGER"

    .line 25
    .line 26
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v4, "FBSDKFeature"

    .line 33
    .line 34
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_3c

    .line 50
    .line 51
    const-string v3, "18.1.3"

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3c

    .line 58
    .line 59
    goto/16 :goto_ae

    .line 60
    .line 61
    :cond_3c
    iget v0, p0, Lq2/o;->a:I

    .line 62
    .line 63
    and-int/lit16 v3, v0, 0xff

    .line 64
    .line 65
    if-lez v3, :cond_49

    .line 66
    .line 67
    and-int/lit16 v0, v0, -0x100

    .line 68
    .line 69
    invoke-static {v0}, Lq2/g;->a(I)Lq2/o;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto :goto_68

    .line 74
    :cond_49
    const v3, 0xff00

    .line 75
    .line 76
    .line 77
    and-int/2addr v3, v0

    .line 78
    if-lez v3, :cond_57

    .line 79
    .line 80
    const/high16 v3, -0x10000

    .line 81
    .line 82
    and-int/2addr v0, v3

    .line 83
    invoke-static {v0}, Lq2/g;->a(I)Lq2/o;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_68

    .line 88
    :cond_57
    const/high16 v3, 0xff0000

    .line 89
    .line 90
    and-int/2addr v3, v0

    .line 91
    if-lez v3, :cond_64

    .line 92
    .line 93
    const/high16 v3, -0x1000000

    .line 94
    .line 95
    and-int/2addr v0, v3

    .line 96
    invoke-static {v0}, Lq2/g;->a(I)Lq2/o;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    goto :goto_68

    .line 101
    :cond_64
    invoke-static {v1}, Lq2/g;->a(I)Lq2/o;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :goto_68
    if-ne v0, p0, :cond_87

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    packed-switch v0, :pswitch_data_b0

    .line 112
    .line 113
    .line 114
    :pswitch_71
    move v1, v2

    .line 115
    :pswitch_72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {p0, v0, v1}, Lq2/s;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    return p0

    .line 136
    :cond_87
    invoke-static {v0}, Lq2/q;->b(Lq2/o;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_ae

    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    packed-switch v0, :pswitch_data_104

    .line 147
    .line 148
    .line 149
    :pswitch_94
    move v0, v2

    .line 150
    goto :goto_97

    .line 151
    :pswitch_96
    move v0, v1

    .line 152
    :goto_97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-static {p0, v3, v0}, Lq2/s;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    if-eqz p0, :cond_ae

    .line 173
    .line 174
    :goto_ad
    return v2

    .line 175
    :cond_ae
    :goto_ae
    return v1

    .line 176
    nop

    .line 177
    :pswitch_data_b0
    .packed-switch 0x4
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_71
        :pswitch_72
        :pswitch_72
        :pswitch_72
    .end packed-switch

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :pswitch_data_104
    .packed-switch 0x4
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_94
        :pswitch_94
        :pswitch_94
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_94
        :pswitch_96
        :pswitch_96
        :pswitch_96
    .end packed-switch
.end method
