###### Class g2.b (g2.b)
.class public final Lg2/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lg2/b;

.field public static final b:Ljava/lang/String;

.field public static c:Z

.field public static d:Z

.field public static e:Landroid/adservices/customaudience/CustomAudienceManager;

.field public static f:Le2/a;

.field public static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lg2/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lg2/b;->a:Lg2/b;

    .line 7
    .line 8
    const-class v0, Lg2/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "Fledge: "

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lg2/b;->b:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public static final a()V
    .registers 7

    .line 1
    const-string v0, "Failed to get CustomAudienceManager: "

    .line 2
    .line 3
    const-string v1, "https://www."

    .line 4
    .line 5
    const-class v2, Lg2/b;

    .line 6
    .line 7
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_e

    .line 12
    .line 13
    goto/16 :goto_8e

    .line 14
    .line 15
    :cond_e
    const/4 v3, 0x1

    .line 16
    :try_start_f
    sput-boolean v3, Lg2/b;->d:Z

    .line 17
    .line 18
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    new-instance v5, Le2/a;

    .line 23
    .line 24
    invoke-direct {v5, v4}, Le2/a;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    sput-object v5, Lg2/b;->f:Le2/a;

    .line 28
    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lx1/r;->q:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "/privacy_sandbox/pa/logic"

    .line 40
    .line 41
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sput-object v1, Lg2/b;->g:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_3d

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    :try_start_32
    invoke-static {v4}, Lc1/b;->j(Landroid/content/Context;)Landroid/adservices/customaudience/CustomAudienceManager;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    sput-object v4, Lg2/b;->e:Landroid/adservices/customaudience/CustomAudienceManager;

    .line 56
    .line 57
    if-eqz v4, :cond_43

    .line 58
    .line 59
    sput-boolean v3, Lg2/b;->c:Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3c} :catch_41
    .catch Ljava/lang/Error; {:try_start_32 .. :try_end_3c} :catch_3f
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3d

    .line 60
    .line 61
    goto :goto_43

    .line 62
    :catchall_3d
    move-exception v0

    .line 63
    goto :goto_8f

    .line 64
    :catch_3f
    move-exception v3

    .line 65
    goto :goto_45

    .line 66
    :catch_41
    move-exception v3

    .line 67
    goto :goto_5b

    .line 68
    :cond_43
    :goto_43
    move-object v4, v1

    .line 69
    goto :goto_70

    .line 70
    :goto_45
    :try_start_45
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    sget-object v5, Lg2/b;->b:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    goto :goto_70

    .line 92
    :goto_5b
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    sget-object v5, Lg2/b;->b:Ljava/lang/String;

    .line 97
    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :goto_70
    sget-boolean v0, Lg2/b;->c:Z

    .line 114
    .line 115
    if-nez v0, :cond_8e

    .line 116
    .line 117
    sget-object v0, Lg2/b;->f:Le2/a;

    .line 118
    .line 119
    if-eqz v0, :cond_88

    .line 120
    .line 121
    const-string v1, "gps_pa_failed"

    .line 122
    .line 123
    new-instance v3, Landroid/os/Bundle;

    .line 124
    .line 125
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v5, "gps_pa_failed_reason"

    .line 129
    .line 130
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3, v1}, Le2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_8e

    .line 137
    :cond_88
    const-string v0, "gpsDebugLogger"

    .line 138
    .line 139
    invoke-static {v0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v1
    :try_end_8e
    .catchall {:try_start_45 .. :try_end_8e} :catchall_3d

    .line 143
    :cond_8e
    :goto_8e
    return-void

    .line 144
    :goto_8f
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    .line 1
    const-string v0, "?bidding"

    .line 2
    .line 3
    const-string v1, "?trusted_bidding"

    .line 4
    .line 5
    const-string v2, "/ad"

    .line 6
    .line 7
    const-string v3, "gps_pa_failed_reason"

    .line 8
    .line 9
    const-string v4, "gps_pa_failed"

    .line 10
    .line 11
    const-string v5, "gpsDebugLogger"

    .line 12
    .line 13
    sget-object v6, Lg2/b;->b:Ljava/lang/String;

    .line 14
    .line 15
    const-string v7, "Builder()\n              \u2026\n                .build()"

    .line 16
    .line 17
    const-string v8, "Failed to join Custom Audience: "

    .line 18
    .line 19
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v9

    .line 23
    if-eqz v9, :cond_1a

    .line 24
    .line 25
    goto/16 :goto_162

    .line 26
    .line 27
    :cond_1a
    :try_start_1a
    invoke-virtual/range {p0 .. p2}, Lg2/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v9
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_103

    .line 31
    if-nez v9, :cond_22

    .line 32
    .line 33
    goto/16 :goto_162

    .line 34
    .line 35
    :cond_22
    const/4 v10, 0x0

    .line 36
    :try_start_23
    new-instance v11, Lf2/c;

    .line 37
    .line 38
    const/4 v12, 0x1

    .line 39
    invoke-direct {v11, v12}, Lf2/c;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lc1/b;->A()V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lc1/b;->a()Landroid/adservices/common/AdData$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v12

    .line 49
    sget-object v13, Lg2/b;->g:Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_32} :catch_107
    .catch Ljava/lang/Error; {:try_start_23 .. :try_end_32} :catch_105
    .catchall {:try_start_23 .. :try_end_32} :catchall_103

    .line 50
    .line 51
    const-string v14, "baseUri"

    .line 52
    .line 53
    if-eqz v13, :cond_115

    .line 54
    .line 55
    :try_start_36
    invoke-virtual {v13, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2}, Ld7/g;->b(Landroid/net/Uri;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v12, v2}, Lc1/b;->c(Landroid/adservices/common/AdData$Builder;Landroid/net/Uri;)Landroid/adservices/common/AdData$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, Lc1/b;->b(Landroid/adservices/common/AdData$Builder;)Landroid/adservices/common/AdData$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2}, Lc1/b;->d(Landroid/adservices/common/AdData$Builder;)Landroid/adservices/common/AdData;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v7, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lc1/b;->B()V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lc1/b;->l()Landroid/adservices/customaudience/TrustedBiddingData$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    sget-object v13, Lg2/b;->g:Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v13, :cond_111

    .line 91
    .line 92
    invoke-virtual {v13, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1}, Ld7/g;->b(Landroid/net/Uri;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v12, v1}, Lc1/b;->m(Landroid/adservices/customaudience/TrustedBiddingData$Builder;Landroid/net/Uri;)Landroid/adservices/customaudience/TrustedBiddingData$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v12, ""

    .line 108
    .line 109
    invoke-static {v12}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-static {v1, v12}, Lc1/b;->n(Landroid/adservices/customaudience/TrustedBiddingData$Builder;Ljava/util/List;)Landroid/adservices/customaudience/TrustedBiddingData$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v1}, Lc1/b;->o(Landroid/adservices/customaudience/TrustedBiddingData$Builder;)Landroid/adservices/customaudience/TrustedBiddingData;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v7, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lc1/b;->C()V

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lc1/b;->f()Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-static {v7, v9}, Lc1/b;->i(Landroid/adservices/customaudience/CustomAudience$Builder;Ljava/lang/String;)Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-static {}, Lc1/b;->e()Landroid/adservices/common/AdTechIdentifier;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-static {v7, v9}, Lc1/b;->g(Landroid/adservices/customaudience/CustomAudience$Builder;Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    new-instance v9, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    sget-object v12, Lg2/b;->g:Ljava/lang/String;

    .line 149
    .line 150
    if-eqz v12, :cond_10d

    .line 151
    .line 152
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v12, "?daily&app_id="

    .line 156
    .line 157
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    move-object/from16 v12, p1

    .line 161
    .line 162
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    invoke-static {v9}, Ld7/g;->b(Landroid/net/Uri;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v7, v9}, Lc1/b;->h(Landroid/adservices/customaudience/CustomAudience$Builder;Landroid/net/Uri;)Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    sget-object v9, Lg2/b;->g:Ljava/lang/String;

    .line 181
    .line 182
    if-eqz v9, :cond_109

    .line 183
    .line 184
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v0}, Ld7/g;->b(Landroid/net/Uri;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v7, v0}, Lg2/a;->d(Landroid/adservices/customaudience/CustomAudience$Builder;Landroid/net/Uri;)Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-static {v0, v1}, Lg2/a;->c(Landroid/adservices/customaudience/CustomAudience$Builder;Landroid/adservices/customaudience/TrustedBiddingData;)Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {}, Lg2/a;->a()Landroid/adservices/common/AdSelectionSignals;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Lg2/a;->b(Landroid/adservices/customaudience/CustomAudience$Builder;Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v2}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v0, v1}, Lg2/a;->e(Landroid/adservices/customaudience/CustomAudience$Builder;Ljava/util/List;)Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static {v0}, Lg2/a;->f(Landroid/adservices/customaudience/CustomAudience$Builder;)Landroid/adservices/customaudience/CustomAudience;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const-string v1, "Builder()\n              \u2026(listOf(dummyAd)).build()"

    .line 224
    .line 225
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    invoke-static {}, Lc1/b;->D()V

    .line 229
    .line 230
    .line 231
    invoke-static {}, Lc1/b;->k()Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-static {v1, v0}, Lg2/a;->g(Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;Landroid/adservices/customaudience/CustomAudience;)Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {v0}, Lg2/a;->h(Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;)Landroid/adservices/customaudience/JoinCustomAudienceRequest;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const-string v1, "Builder().setCustomAudience(ca).build()"

    .line 244
    .line 245
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    sget-object v1, Lg2/b;->e:Landroid/adservices/customaudience/CustomAudienceManager;

    .line 249
    .line 250
    if-eqz v1, :cond_162

    .line 251
    .line 252
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-static {v1, v0, v2, v11}, Lc1/b;->t(Landroid/adservices/customaudience/CustomAudienceManager;Landroid/adservices/customaudience/JoinCustomAudienceRequest;Ljava/util/concurrent/ExecutorService;Landroid/os/OutcomeReceiver;)V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :catchall_103
    move-exception v0

    .line 261
    goto :goto_167

    .line 262
    :catch_105
    move-exception v0

    .line 263
    goto :goto_119

    .line 264
    :catch_107
    move-exception v0

    .line 265
    goto :goto_140

    .line 266
    :cond_109
    invoke-static {v14}, Ld7/g;->i(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v10

    .line 270
    :cond_10d
    invoke-static {v14}, Ld7/g;->i(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v10

    .line 274
    :cond_111
    invoke-static {v14}, Ld7/g;->i(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v10

    .line 278
    :cond_115
    invoke-static {v14}, Ld7/g;->i(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw v10
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_119} :catch_107
    .catch Ljava/lang/Error; {:try_start_36 .. :try_end_119} :catch_105
    .catchall {:try_start_36 .. :try_end_119} :catchall_103

    .line 282
    :goto_119
    :try_start_119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    sget-object v1, Lg2/b;->f:Le2/a;

    .line 298
    .line 299
    if-eqz v1, :cond_13c

    .line 300
    .line 301
    new-instance v2, Landroid/os/Bundle;

    .line 302
    .line 303
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v2, v4}, Le2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    goto :goto_162

    .line 317
    :cond_13c
    invoke-static {v5}, Ld7/g;->i(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw v10

    .line 321
    :goto_140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    sget-object v1, Lg2/b;->f:Le2/a;

    .line 337
    .line 338
    if-eqz v1, :cond_163

    .line 339
    .line 340
    new-instance v2, Landroid/os/Bundle;

    .line 341
    .line 342
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v2, v4}, Le2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    :cond_162
    :goto_162
    return-void

    .line 356
    :cond_163
    invoke-static {v5}, Ld7/g;->i(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    throw v10
    :try_end_167
    .catchall {:try_start_119 .. :try_end_167} :catchall_103

    .line 360
    :goto_167
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    goto :goto_46

    .line 9
    :cond_8
    if-nez p2, :cond_b

    .line 10
    .line 11
    goto :goto_46

    .line 12
    :cond_b
    :try_start_b
    const-string v0, "_removed_"

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_46

    .line 19
    .line 20
    const-string v0, "gps"

    .line 21
    .line 22
    invoke-static {p2, v0}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1c

    .line 27
    .line 28
    goto :goto_46

    .line 29
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    const/16 v0, 0x3e8

    .line 34
    .line 35
    int-to-long v4, v0

    .line 36
    div-long/2addr v2, v4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 p1, 0x40

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, "@1"

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1
    :try_end_43
    .catchall {:try_start_b .. :try_end_43} :catchall_44

    .line 68
    return-object p1

    .line 69
    :catchall_44
    move-exception p1

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    :goto_46
    return-object v1

    .line 72
    :goto_47
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-object v1
.end method
