###### Class a2.k (a2.k)
.class public final enum La2/k;
.super Ljava/lang/Enum;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final enum b:La2/k;

.field public static final enum c:La2/k;

.field public static final enum d:La2/k;

.field public static final enum e:La2/k;

.field public static final enum f:La2/k;

.field public static final enum g:La2/k;

.field public static final enum h:La2/k;

.field public static final enum i:La2/k;

.field public static final enum j:La2/k;

.field public static final enum k:La2/k;

.field public static final enum l:La2/k;

.field public static final enum m:La2/k;

.field public static final enum v:La2/k;

.field public static final enum w:La2/k;

.field public static final synthetic x:[La2/k;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 30

    .line 1
    new-instance v0, La2/k;

    .line 2
    .line 3
    const-string v1, "AchievementUnlocked"

    .line 4
    .line 5
    const-string v2, "UNLOCKED_ACHIEVEMENT"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, La2/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, La2/k;->b:La2/k;

    .line 12
    .line 13
    new-instance v1, La2/k;

    .line 14
    .line 15
    const-string v2, "ActivateApp"

    .line 16
    .line 17
    const-string v4, "ACTIVATED_APP"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v2}, La2/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, La2/k;->c:La2/k;

    .line 24
    .line 25
    new-instance v2, La2/k;

    .line 26
    .line 27
    const-string v4, "AddPaymentInfo"

    .line 28
    .line 29
    const-string v6, "ADDED_PAYMENT_INFO"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v7, v4}, La2/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, La2/k;->d:La2/k;

    .line 36
    .line 37
    new-instance v4, La2/k;

    .line 38
    .line 39
    const-string v6, "AddToCart"

    .line 40
    .line 41
    const-string v8, "ADDED_TO_CART"

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    invoke-direct {v4, v8, v9, v6}, La2/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v4, La2/k;->e:La2/k;

    .line 48
    .line 49
    new-instance v6, La2/k;

    .line 50
    .line 51
    const-string v8, "AddToWishlist"

    .line 52
    .line 53
    const-string v10, "ADDED_TO_WISHLIST"

    .line 54
    .line 55
    const/4 v11, 0x4

    .line 56
    invoke-direct {v6, v10, v11, v8}, La2/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v6, La2/k;->f:La2/k;

    .line 60
    .line 61
    new-instance v8, La2/k;

    .line 62
    .line 63
    const-string v10, "CompleteRegistration"

    .line 64
    .line 65
    const-string v12, "COMPLETED_REGISTRATION"

    .line 66
    .line 67
    const/4 v13, 0x5

    .line 68
    invoke-direct {v8, v12, v13, v10}, La2/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v8, La2/k;->g:La2/k;

    .line 72
    .line 73
    new-instance v10, La2/k;

    .line 74
    .line 75
    const-string v12, "ViewContent"

    .line 76
    .line 77
    const-string v14, "VIEWED_CONTENT"

    .line 78
    .line 79
    const/4 v15, 0x6

    .line 80
    invoke-direct {v10, v14, v15, v12}, La2/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v10, La2/k;->h:La2/k;

    .line 84
    .line 85
    new-instance v12, La2/k;

    .line 86
    .line 87
    const-string v14, "InitiateCheckout"

    .line 88
    .line 89
    move/from16 v16, v3

    .line 90
    .line 91
    const-string v3, "INITIATED_CHECKOUT"

    .line 92
    .line 93
    move/from16 v17, v5

    .line 94
    .line 95
    const/4 v5, 0x7

    .line 96
    invoke-direct {v12, v3, v5, v14}, La2/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sput-object v12, La2/k;->i:La2/k;

    .line 100
    .line 101
    new-instance v3, La2/k;

    .line 102
    .line 103
    const-string v14, "LevelAchieved"

    .line 104
    .line 105
    move/from16 v18, v5

    .line 106
    .line 107
    const-string v5, "ACHIEVED_LEVEL"

    .line 108
    .line 109
    move/from16 v19, v7

    .line 110
    .line 111
    const/16 v7, 0x8

    .line 112
    .line 113
    invoke-direct {v3, v5, v7, v14}, La2/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sput-object v3, La2/k;->j:La2/k;

    .line 117
    .line 118
    new-instance v5, La2/k;

    .line 119
    .line 120
    const-string v14, "Purchase"

    .line 121
    .line 122
    move/from16 v20, v7

    .line 123
    .line 124
    const-string v7, "PURCHASED"

    .line 125
    .line 126
    move/from16 v21, v9

    .line 127
    .line 128
    const/16 v9, 0x9

    .line 129
    .line 130
    invoke-direct {v5, v7, v9, v14}, La2/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    sput-object v5, La2/k;->k:La2/k;

    .line 134
    .line 135
    new-instance v7, La2/k;

    .line 136
    .line 137
    const-string v14, "Rate"

    .line 138
    .line 139
    move/from16 v22, v9

    .line 140
    .line 141
    const-string v9, "RATED"

    .line 142
    .line 143
    move/from16 v23, v11

    .line 144
    .line 145
    const/16 v11, 0xa

    .line 146
    .line 147
    invoke-direct {v7, v9, v11, v14}, La2/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    sput-object v7, La2/k;->l:La2/k;

    .line 151
    .line 152
    new-instance v9, La2/k;

    .line 153
    .line 154
    const-string v14, "Search"

    .line 155
    .line 156
    move/from16 v24, v11

    .line 157
    .line 158
    const-string v11, "SEARCHED"

    .line 159
    .line 160
    move/from16 v25, v13

    .line 161
    .line 162
    const/16 v13, 0xb

    .line 163
    .line 164
    invoke-direct {v9, v11, v13, v14}, La2/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    sput-object v9, La2/k;->m:La2/k;

    .line 168
    .line 169
    new-instance v11, La2/k;

    .line 170
    .line 171
    const-string v14, "SpentCredits"

    .line 172
    .line 173
    move/from16 v26, v13

    .line 174
    .line 175
    const-string v13, "SPENT_CREDITS"

    .line 176
    .line 177
    move/from16 v27, v15

    .line 178
    .line 179
    const/16 v15, 0xc

    .line 180
    .line 181
    invoke-direct {v11, v13, v15, v14}, La2/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    sput-object v11, La2/k;->v:La2/k;

    .line 185
    .line 186
    new-instance v13, La2/k;

    .line 187
    .line 188
    const-string v14, "TutorialCompletion"

    .line 189
    .line 190
    move/from16 v28, v15

    .line 191
    .line 192
    const-string v15, "COMPLETED_TUTORIAL"

    .line 193
    .line 194
    move-object/from16 v29, v0

    .line 195
    .line 196
    const/16 v0, 0xd

    .line 197
    .line 198
    invoke-direct {v13, v15, v0, v14}, La2/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    sput-object v13, La2/k;->w:La2/k;

    .line 202
    .line 203
    const/16 v14, 0xe

    .line 204
    .line 205
    new-array v14, v14, [La2/k;

    .line 206
    .line 207
    aput-object v29, v14, v16

    .line 208
    .line 209
    aput-object v1, v14, v17

    .line 210
    .line 211
    aput-object v2, v14, v19

    .line 212
    .line 213
    aput-object v4, v14, v21

    .line 214
    .line 215
    aput-object v6, v14, v23

    .line 216
    .line 217
    aput-object v8, v14, v25

    .line 218
    .line 219
    aput-object v10, v14, v27

    .line 220
    .line 221
    aput-object v12, v14, v18

    .line 222
    .line 223
    aput-object v3, v14, v20

    .line 224
    .line 225
    aput-object v5, v14, v22

    .line 226
    .line 227
    aput-object v7, v14, v24

    .line 228
    .line 229
    aput-object v9, v14, v26

    .line 230
    .line 231
    aput-object v11, v14, v28

    .line 232
    .line 233
    aput-object v13, v14, v0

    .line 234
    .line 235
    sput-object v14, La2/k;->x:[La2/k;

    .line 236
    .line 237
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, La2/k;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La2/k;
    .registers 2

    .line 1
    const-class v0, La2/k;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, La2/k;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[La2/k;
    .registers 1

    .line 1
    sget-object v0, La2/k;->x:[La2/k;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [La2/k;

    .line 8
    .line 9
    return-object v0
.end method
