###### Class k2.k (k2.k)
.class public abstract Lk2/k;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ly1/n;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ly1/n;

    .line 2
    .line 3
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ly1/n;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lk2/k;->a:Ly1/n;

    .line 11
    .line 12
    return-void
.end method

.method public static final declared-synchronized a(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 7

    .line 1
    const-class v0, Lk2/k;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lk2/j;

    .line 10
    .line 11
    new-instance v1, Li2/a;

    .line 12
    .line 13
    const-string v2, "fb_mobile_purchase"

    .line 14
    .line 15
    iget-object v3, p0, Lk2/j;->a:Ljava/math/BigDecimal;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    iget-object v5, p0, Lk2/j;->b:Ljava/util/Currency;

    .line 22
    .line 23
    invoke-direct {v1, v2, v3, v4, v5}, Li2/a;-><init>(Ljava/lang/String;DLjava/util/Currency;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    new-instance v4, Lr6/d;

    .line 35
    .line 36
    iget-object v5, p0, Lk2/j;->c:Landroid/os/Bundle;

    .line 37
    .line 38
    iget-object p0, p0, Lk2/j;->d:Ly1/o;

    .line 39
    .line 40
    invoke-direct {v4, v5, p0}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v4}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const/4 v4, 0x1

    .line 48
    invoke-static {v1, v2, v3, v4, p0}, Li2/q;->c(Ljava/util/List;JZLjava/util/List;)Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object p0
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_35

    .line 52
    monitor-exit v0

    .line 53
    return-object p0

    .line 54
    :catchall_35
    move-exception p0

    .line 55
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    .line 56
    throw p0
.end method

.method public static b(Ljava/lang/String;Landroid/os/Bundle;Ly1/o;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lk2/j;
    .registers 9

    .line 1
    const-string v0, "subs"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_7b

    .line 8
    .line 9
    sget-object p0, Ly1/o;->b:Ljava/util/Map;

    .line 10
    .line 11
    const-string p0, "autoRenewing"

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p3, p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p3, "toString(\n              \u2026      )\n                )"

    .line 23
    .line 24
    invoke-static {p3, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const-string p3, "fb_iap_subs_auto_renewing"

    .line 28
    .line 29
    invoke-static {p3, p0, p1, p2}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 30
    .line 31
    .line 32
    const-string p0, "subscriptionPeriod"

    .line 33
    .line 34
    invoke-virtual {p4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string p3, "skuDetailsJSON.optString\u2026_IAP_SUBSCRIPTION_PERIOD)"

    .line 39
    .line 40
    invoke-static {p3, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const-string p3, "fb_iap_subs_period"

    .line 44
    .line 45
    invoke-static {p3, p0, p1, p2}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 46
    .line 47
    .line 48
    const-string p0, "freeTrialPeriod"

    .line 49
    .line 50
    invoke-virtual {p4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string p3, "skuDetailsJSON.optString\u2026GP_IAP_FREE_TRIAL_PERIOD)"

    .line 55
    .line 56
    invoke-static {p3, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const-string p3, "fb_free_trial_period"

    .line 60
    .line 61
    invoke-static {p3, p0, p1, p2}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 62
    .line 63
    .line 64
    const-string p0, "introductoryPriceCycles"

    .line 65
    .line 66
    invoke-virtual {p4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-static {p0, p3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-lez p0, :cond_53

    .line 78
    .line 79
    const-string p0, "fb_intro_price_cycles"

    .line 80
    .line 81
    invoke-static {p0, p3, p1, p2}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 82
    .line 83
    .line 84
    :cond_53
    const-string p0, "introductoryPricePeriod"

    .line 85
    .line 86
    invoke-virtual {p4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-static {p0, p3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-lez p0, :cond_67

    .line 98
    .line 99
    const-string p0, "fb_intro_period"

    .line 100
    .line 101
    invoke-static {p0, p3, p1, p2}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 102
    .line 103
    .line 104
    :cond_67
    const-string p0, "introductoryPriceAmountMicros"

    .line 105
    .line 106
    invoke-virtual {p4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-static {p0, p3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-lez p0, :cond_7b

    .line 118
    .line 119
    const-string p0, "fb_intro_price_amount_micros"

    .line 120
    .line 121
    invoke-static {p0, p3, p1, p2}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 122
    .line 123
    .line 124
    :cond_7b
    new-instance p0, Lk2/j;

    .line 125
    .line 126
    new-instance p3, Ljava/math/BigDecimal;

    .line 127
    .line 128
    const-string v0, "price_amount_micros"

    .line 129
    .line 130
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    long-to-double v0, v0

    .line 135
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    div-double/2addr v0, v2

    .line 141
    invoke-direct {p3, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 142
    .line 143
    .line 144
    const-string v0, "price_currency_code"

    .line 145
    .line 146
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p4

    .line 150
    invoke-static {p4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 151
    .line 152
    .line 153
    move-result-object p4

    .line 154
    const-string v0, "getInstance(skuDetailsJS\u2026RICE_CURRENCY_CODE_V2V4))"

    .line 155
    .line 156
    invoke-static {v0, p4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, p3, p4, p1, p2}, Lk2/j;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Ly1/o;)V

    .line 160
    .line 161
    .line 162
    return-object p0
.end method

.method public static c(Ljava/lang/String;Landroid/os/Bundle;Ly1/o;Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .registers 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "subs"

    .line 8
    .line 9
    move-object/from16 v4, p0

    .line 10
    .line 11
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    const-string v5, "priceCurrencyCode"

    .line 17
    .line 18
    const-string v8, "priceAmountMicros"

    .line 19
    .line 20
    if-eqz v3, :cond_10d

    .line 21
    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v10, "subscriptionOfferDetails"

    .line 28
    .line 29
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 30
    .line 31
    .line 32
    move-result-object v11

    .line 33
    if-nez v11, :cond_24

    .line 34
    .line 35
    goto/16 :goto_11c

    .line 36
    .line 37
    :cond_24
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    :goto_28
    if-ge v4, v11, :cond_10c

    .line 42
    .line 43
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 44
    .line 45
    .line 46
    move-result-object v12

    .line 47
    invoke-virtual {v12, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    if-nez v12, :cond_36

    .line 52
    .line 53
    goto/16 :goto_11c

    .line 54
    .line 55
    :cond_36
    new-instance v13, Landroid/os/Bundle;

    .line 56
    .line 57
    invoke-direct {v13, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    new-instance v14, Ly1/o;

    .line 61
    .line 62
    invoke-direct {v14}, Ly1/o;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v15, v1, Ly1/o;->a:Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v16

    .line 71
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v16

    .line 75
    :cond_4a
    :goto_4a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v17

    .line 79
    if-eqz v17, :cond_8d

    .line 80
    .line 81
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v17

    .line 85
    const-wide v18, 0x412e848000000000L    # 1000000.0

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    move-object/from16 v6, v17

    .line 91
    .line 92
    check-cast v6, Ly1/p;

    .line 93
    .line 94
    invoke-virtual {v15, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Ljava/util/Map;

    .line 99
    .line 100
    if-nez v7, :cond_66

    .line 101
    .line 102
    goto :goto_4a

    .line 103
    :cond_66
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    move-result-object v17

    .line 107
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v17

    .line 111
    :goto_6e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v20

    .line 115
    if-eqz v20, :cond_4a

    .line 116
    .line 117
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v20

    .line 121
    const/16 p0, 0x1

    .line 122
    .line 123
    move-object/from16 v9, v20

    .line 124
    .line 125
    check-cast v9, Ljava/lang/String;

    .line 126
    .line 127
    move/from16 v20, v4

    .line 128
    .line 129
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    if-nez v4, :cond_89

    .line 134
    .line 135
    :goto_86
    move/from16 v4, v20

    .line 136
    .line 137
    goto :goto_6e

    .line 138
    :cond_89
    invoke-virtual {v14, v6, v9, v4}, Ly1/o;->a(Ly1/p;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_86

    .line 142
    :cond_8d
    move/from16 v20, v4

    .line 143
    .line 144
    const/16 p0, 0x1

    .line 145
    .line 146
    const-wide v18, 0x412e848000000000L    # 1000000.0

    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    const-string v4, "basePlanId"

    .line 152
    .line 153
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    sget-object v7, Ly1/o;->b:Ljava/util/Map;

    .line 158
    .line 159
    invoke-static {v4, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    const-string v4, "fb_iap_base_plan"

    .line 163
    .line 164
    invoke-static {v4, v6, v13, v14}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 165
    .line 166
    .line 167
    const-string v4, "pricingPhases"

    .line 168
    .line 169
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    add-int/lit8 v6, v6, -0x1

    .line 178
    .line 179
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    if-nez v4, :cond_b9

    .line 184
    .line 185
    goto :goto_11c

    .line 186
    :cond_b9
    const-string v6, "billingPeriod"

    .line 187
    .line 188
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    const-string v7, "subscriptionJSON.optStri\u2026IOD\n                    )"

    .line 193
    .line 194
    invoke-static {v7, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    const-string v7, "fb_iap_subs_period"

    .line 198
    .line 199
    invoke-static {v7, v6, v13, v14}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 200
    .line 201
    .line 202
    const-string v6, "recurrenceMode"

    .line 203
    .line 204
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    const-string v9, "fb_iap_subs_auto_renewing"

    .line 209
    .line 210
    if-eqz v7, :cond_e0

    .line 211
    .line 212
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    const/4 v7, 0x3

    .line 217
    if-eq v6, v7, :cond_e0

    .line 218
    .line 219
    const-string v6, "true"

    .line 220
    .line 221
    invoke-static {v9, v6, v13, v14}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 222
    .line 223
    .line 224
    goto :goto_e5

    .line 225
    :cond_e0
    const-string v6, "false"

    .line 226
    .line 227
    invoke-static {v9, v6, v13, v14}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 228
    .line 229
    .line 230
    :goto_e5
    new-instance v6, Lk2/j;

    .line 231
    .line 232
    new-instance v7, Ljava/math/BigDecimal;

    .line 233
    .line 234
    move-object v12, v10

    .line 235
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 236
    .line 237
    .line 238
    move-result-wide v9

    .line 239
    long-to-double v9, v9

    .line 240
    div-double v9, v9, v18

    .line 241
    .line 242
    invoke-direct {v7, v9, v10}, Ljava/math/BigDecimal;-><init>(D)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    const-string v9, "getInstance(subscription\u2026RICE_CURRENCY_CODE_V5V7))"

    .line 254
    .line 255
    invoke-static {v9, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-direct {v6, v7, v4, v13, v14}, Lk2/j;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Ly1/o;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    add-int/lit8 v4, v20, 0x1

    .line 265
    .line 266
    move-object v10, v12

    .line 267
    goto/16 :goto_28

    .line 268
    .line 269
    :cond_10c
    return-object v3

    .line 270
    :cond_10d
    const/16 p0, 0x1

    .line 271
    .line 272
    const-wide v18, 0x412e848000000000L    # 1000000.0

    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    const-string v3, "oneTimePurchaseOfferDetails"

    .line 278
    .line 279
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    if-nez v2, :cond_11e

    .line 284
    .line 285
    :goto_11c
    const/4 v0, 0x0

    .line 286
    return-object v0

    .line 287
    :cond_11e
    new-instance v3, Lk2/j;

    .line 288
    .line 289
    new-instance v6, Ljava/math/BigDecimal;

    .line 290
    .line 291
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 292
    .line 293
    .line 294
    move-result-wide v7

    .line 295
    long-to-double v7, v7

    .line 296
    div-double v7, v7, v18

    .line 297
    .line 298
    invoke-direct {v6, v7, v8}, Ljava/math/BigDecimal;-><init>(D)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    const-string v5, "getInstance(oneTimePurch\u2026RICE_CURRENCY_CODE_V5V7))"

    .line 310
    .line 311
    invoke-static {v5, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    invoke-direct {v3, v6, v2, v0, v1}, Lk2/j;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Ly1/o;)V

    .line 315
    .line 316
    .line 317
    move/from16 v0, p0

    .line 318
    .line 319
    new-array v0, v0, [Lk2/j;

    .line 320
    .line 321
    aput-object v3, v0, v4

    .line 322
    .line 323
    invoke-static {v0}, Ls6/h;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    return-object v0
.end method

.method public static final d()Z
    .registers 2

    .line 1
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lq2/w;->b(Ljava/lang/String;)Lq2/t;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_16

    .line 10
    .line 11
    invoke-static {}, Lx1/j0;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_16

    .line 16
    .line 17
    iget-boolean v0, v0, Lq2/t;->f:Z

    .line 18
    .line 19
    if-eqz v0, :cond_16

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .registers 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "purchase"

    .line 8
    .line 9
    invoke-static {v3, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "skuDetails"

    .line 13
    .line 14
    invoke-static {v3, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lk2/k;->d()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_18

    .line 22
    .line 23
    goto/16 :goto_32a

    .line 24
    .line 25
    :cond_18
    new-instance v3, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "k2.k"

    .line 31
    .line 32
    const-string v5, "type"

    .line 33
    .line 34
    const-string v6, "purchaseJSON.getString(C\u2026stants.GP_IAP_PRODUCT_ID)"

    .line 35
    .line 36
    const-string v7, "productId"

    .line 37
    .line 38
    const/4 v8, 0x2

    .line 39
    const/4 v9, 0x1

    .line 40
    const/4 v11, 0x0

    .line 41
    :try_start_28
    new-instance v12, Lorg/json/JSONObject;

    .line 42
    .line 43
    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v13, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-direct {v13, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v14, Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-direct {v14, v9}, Landroid/os/Bundle;-><init>(I)V

    .line 54
    .line 55
    .line 56
    new-instance v15, Ly1/o;

    .line 57
    .line 58
    invoke-direct {v15}, Ly1/o;-><init>()V

    .line 59
    .line 60
    .line 61
    if-eqz v2, :cond_70

    .line 62
    .line 63
    const-string v0, "fb_iap_sdk_supported_library_versions"
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_40} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_40} :catch_66

    .line 64
    .line 65
    if-eq v2, v9, :cond_58

    .line 66
    .line 67
    if-eq v2, v8, :cond_53

    .line 68
    .line 69
    const/16 v16, 0x0

    .line 70
    .line 71
    const/4 v10, 0x3

    .line 72
    if-eq v2, v10, :cond_50

    .line 73
    .line 74
    const/4 v10, 0x4

    .line 75
    if-ne v2, v10, :cond_4f

    .line 76
    .line 77
    :try_start_4c
    const-string v2, "Android-GPBL-V5-V7"

    .line 78
    .line 79
    goto :goto_5c

    .line 80
    :cond_4f
    throw v16

    .line 81
    :cond_50
    const-string v2, "Android-GPBL-V2-V4"

    .line 82
    .line 83
    goto :goto_5c

    .line 84
    :cond_53
    const/16 v16, 0x0

    .line 85
    .line 86
    const-string v2, "Android-GPBL-V1"

    .line 87
    .line 88
    goto :goto_5c

    .line 89
    :cond_58
    const/16 v16, 0x0

    .line 90
    .line 91
    const-string v2, "none"

    .line 92
    .line 93
    :goto_5c
    invoke-static {v0, v2, v14, v15}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 94
    .line 95
    .line 96
    goto :goto_72

    .line 97
    :catch_60
    move-exception v0

    .line 98
    goto/16 :goto_160

    .line 99
    .line 100
    :catch_63
    move-exception v0

    .line 101
    goto/16 :goto_168

    .line 102
    .line 103
    :catch_66
    move-exception v0

    .line 104
    const/16 v16, 0x0

    .line 105
    .line 106
    goto/16 :goto_160

    .line 107
    .line 108
    :catch_6b
    move-exception v0

    .line 109
    const/16 v16, 0x0

    .line 110
    .line 111
    goto/16 :goto_168

    .line 112
    .line 113
    :cond_70
    const/16 v16, 0x0

    .line 114
    .line 115
    :goto_72
    const-string v0, "fb_iap_product_id"

    .line 116
    .line 117
    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v6, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v2, v14, v15}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 125
    .line 126
    .line 127
    const-string v0, "fb_content_id"

    .line 128
    .line 129
    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {v6, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v0, v2, v14, v15}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 137
    .line 138
    .line 139
    const-string v0, "android_dynamic_ads_content_id"

    .line 140
    .line 141
    const-string v2, "client_implicit"

    .line 142
    .line 143
    invoke-static {v0, v2, v14, v15}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 144
    .line 145
    .line 146
    const-string v0, "fb_iap_purchase_time"

    .line 147
    .line 148
    const-string v2, "purchaseTime"

    .line 149
    .line 150
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const-string v6, "purchaseJSON.getString(C\u2026nts.GP_IAP_PURCHASE_TIME)"

    .line 155
    .line 156
    invoke-static {v6, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v0, v2, v14, v15}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 160
    .line 161
    .line 162
    const-string v0, "fb_iap_purchase_token"

    .line 163
    .line 164
    const-string v2, "purchaseToken"

    .line 165
    .line 166
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    const-string v6, "purchaseJSON.getString(C\u2026ts.GP_IAP_PURCHASE_TOKEN)"

    .line 171
    .line 172
    invoke-static {v6, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v2, v14, v15}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 176
    .line 177
    .line 178
    const-string v0, "fb_iap_package_name"

    .line 179
    .line 180
    const-string v2, "packageName"

    .line 181
    .line 182
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const-string v6, "purchaseJSON.optString(C\u2026ants.GP_IAP_PACKAGE_NAME)"

    .line 187
    .line 188
    invoke-static {v6, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v0, v2, v14, v15}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 192
    .line 193
    .line 194
    const-string v0, "fb_iap_product_title"

    .line 195
    .line 196
    const-string v2, "title"

    .line 197
    .line 198
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    const-string v6, "skuDetailsJSON.optString(Constants.GP_IAP_TITLE)"

    .line 203
    .line 204
    invoke-static {v6, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v0, v2, v14, v15}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 208
    .line 209
    .line 210
    const-string v0, "fb_iap_product_description"

    .line 211
    .line 212
    const-string v2, "description"

    .line 213
    .line 214
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    const-string v6, "skuDetailsJSON.optString\u2026tants.GP_IAP_DESCRIPTION)"

    .line 219
    .line 220
    invoke-static {v6, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v0, v2, v14, v15}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    const-string v0, "fb_iap_product_type"

    .line 231
    .line 232
    invoke-static {v5, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v0, v2, v14, v15}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 236
    .line 237
    .line 238
    sget-object v0, Li2/q;->a:Li2/q;

    .line 239
    .line 240
    const-class v5, Li2/q;

    .line 241
    .line 242
    invoke-static {v5}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v0
    :try_end_f5
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_f5} :catch_63
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_f5} :catch_60

    .line 246
    if-eqz v0, :cond_fa

    .line 247
    .line 248
    :goto_f7
    move-object/from16 v0, v16

    .line 249
    .line 250
    goto :goto_102

    .line 251
    :cond_fa
    :try_start_fa
    sget-object v0, Li2/q;->d:Ljava/lang/String;
    :try_end_fc
    .catchall {:try_start_fa .. :try_end_fc} :catchall_fd

    .line 252
    .line 253
    goto :goto_102

    .line 254
    :catchall_fd
    move-exception v0

    .line 255
    :try_start_fe
    invoke-static {v0, v5}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    goto :goto_f7

    .line 259
    :goto_102
    if-eqz v0, :cond_10b

    .line 260
    .line 261
    sget-object v5, Ly1/o;->b:Ljava/util/Map;

    .line 262
    .line 263
    const-string v5, "fb_iap_client_library_version"

    .line 264
    .line 265
    invoke-static {v5, v0, v14, v15}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 266
    .line 267
    .line 268
    :cond_10b
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    :goto_113
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    if-eqz v3, :cond_131

    .line 281
    .line 282
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    check-cast v3, Ljava/util/Map$Entry;

    .line 287
    .line 288
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    check-cast v5, Ljava/lang/String;

    .line 293
    .line 294
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    check-cast v3, Ljava/lang/String;

    .line 299
    .line 300
    sget-object v6, Ly1/o;->b:Ljava/util/Map;

    .line 301
    .line 302
    invoke-static {v5, v3, v14, v15}, Ly1/g;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)V

    .line 303
    .line 304
    .line 305
    goto :goto_113

    .line 306
    :cond_131
    const-string v0, "price_amount_micros"

    .line 307
    .line 308
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_146

    .line 313
    .line 314
    invoke-static {v2, v14, v15, v12, v13}, Lk2/k;->b(Ljava/lang/String;Landroid/os/Bundle;Ly1/o;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lk2/j;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    new-array v2, v9, [Lk2/j;

    .line 319
    .line 320
    aput-object v0, v2, v11

    .line 321
    .line 322
    invoke-static {v2}, Ls6/h;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    goto :goto_15e

    .line 327
    :cond_146
    const-string v0, "subscriptionOfferDetails"

    .line 328
    .line 329
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-nez v0, :cond_15a

    .line 334
    .line 335
    const-string v0, "oneTimePurchaseOfferDetails"

    .line 336
    .line 337
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_157

    .line 342
    .line 343
    goto :goto_15a

    .line 344
    :cond_157
    move-object/from16 v0, v16

    .line 345
    .line 346
    goto :goto_15e

    .line 347
    :cond_15a
    :goto_15a
    invoke-static {v2, v14, v15, v13}, Lk2/k;->c(Ljava/lang/String;Landroid/os/Bundle;Ly1/o;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    .line 348
    .line 349
    .line 350
    move-result-object v0
    :try_end_15e
    .catch Lorg/json/JSONException; {:try_start_fe .. :try_end_15e} :catch_63
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_15e} :catch_60

    .line 351
    :goto_15e
    move-object v2, v0

    .line 352
    goto :goto_16e

    .line 353
    :goto_160
    const-string v2, "Failed to get purchase logging parameters,"

    .line 354
    .line 355
    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    .line 357
    .line 358
    :goto_165
    move-object/from16 v2, v16

    .line 359
    .line 360
    goto :goto_16e

    .line 361
    :goto_168
    const-string v2, "Error parsing in-app purchase/subscription data."

    .line 362
    .line 363
    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    .line 365
    .line 366
    goto :goto_165

    .line 367
    :goto_16e
    if-nez v2, :cond_172

    .line 368
    .line 369
    goto/16 :goto_32a

    .line 370
    .line 371
    :cond_172
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_17a

    .line 376
    .line 377
    goto/16 :goto_32a

    .line 378
    .line 379
    :cond_17a
    if-eqz p2, :cond_1b3

    .line 380
    .line 381
    const-string v0, "app_events_if_auto_log_subs"

    .line 382
    .line 383
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    invoke-static {v0, v3, v11}, Lq2/s;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_1b3

    .line 392
    .line 393
    if-eqz p4, :cond_18d

    .line 394
    .line 395
    const-string v0, "SubscriptionRestore"

    .line 396
    .line 397
    goto :goto_1ba

    .line 398
    :cond_18d
    sget-object v3, Li2/o;->a:Li2/o;

    .line 399
    .line 400
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-eqz v0, :cond_196

    .line 405
    .line 406
    goto :goto_1b0

    .line 407
    :cond_196
    :try_start_196
    new-instance v0, Lorg/json/JSONObject;

    .line 408
    .line 409
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    const-string v1, "freeTrialPeriod"

    .line 413
    .line 414
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    if-eqz v0, :cond_1b0

    .line 419
    .line 420
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 421
    .line 422
    .line 423
    move-result v0
    :try_end_1a7
    .catch Lorg/json/JSONException; {:try_start_196 .. :try_end_1a7} :catch_1b0
    .catchall {:try_start_196 .. :try_end_1a7} :catchall_1ac

    .line 424
    if-lez v0, :cond_1b0

    .line 425
    .line 426
    const-string v0, "StartTrial"

    .line 427
    .line 428
    goto :goto_1ba

    .line 429
    :catchall_1ac
    move-exception v0

    .line 430
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    :catch_1b0
    :cond_1b0
    :goto_1b0
    const-string v0, "Subscribe"

    .line 434
    .line 435
    goto :goto_1ba

    .line 436
    :cond_1b3
    if-eqz p4, :cond_1b8

    .line 437
    .line 438
    const-string v0, "fb_mobile_purchase_restored"

    .line 439
    .line 440
    goto :goto_1ba

    .line 441
    :cond_1b8
    const-string v0, "fb_mobile_purchase"

    .line 442
    .line 443
    :goto_1ba
    if-eqz p2, :cond_21f

    .line 444
    .line 445
    sget-object v1, Lq2/o;->I:Lq2/o;

    .line 446
    .line 447
    invoke-static {v1}, Lq2/q;->b(Lq2/o;)Z

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    if-eqz v1, :cond_21f

    .line 452
    .line 453
    const-class v1, Lk2/k;

    .line 454
    .line 455
    monitor-enter v1

    .line 456
    :try_start_1c7
    new-instance v3, Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 462
    .line 463
    .line 464
    move-result v4

    .line 465
    move v5, v11

    .line 466
    :goto_1d1
    if-ge v5, v4, :cond_1ee

    .line 467
    .line 468
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v6

    .line 472
    add-int/lit8 v5, v5, 0x1

    .line 473
    .line 474
    check-cast v6, Lk2/j;

    .line 475
    .line 476
    new-instance v7, Li2/a;

    .line 477
    .line 478
    iget-object v10, v6, Lk2/j;->a:Ljava/math/BigDecimal;

    .line 479
    .line 480
    invoke-virtual {v10}, Ljava/math/BigDecimal;->doubleValue()D

    .line 481
    .line 482
    .line 483
    move-result-wide v12

    .line 484
    iget-object v6, v6, Lk2/j;->b:Ljava/util/Currency;

    .line 485
    .line 486
    invoke-direct {v7, v0, v12, v13, v6}, Li2/a;-><init>(Ljava/lang/String;DLjava/util/Currency;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    goto :goto_1d1

    .line 493
    :catchall_1ec
    move-exception v0

    .line 494
    goto :goto_21d

    .line 495
    :cond_1ee
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 496
    .line 497
    .line 498
    move-result-wide v4

    .line 499
    new-instance v6, Ljava/util/ArrayList;

    .line 500
    .line 501
    invoke-static {v2}, Ls6/i;->n(Ljava/lang/Iterable;)I

    .line 502
    .line 503
    .line 504
    move-result v7

    .line 505
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 509
    .line 510
    .line 511
    move-result v7

    .line 512
    move v10, v11

    .line 513
    :goto_200
    if-ge v10, v7, :cond_217

    .line 514
    .line 515
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v12

    .line 519
    add-int/lit8 v10, v10, 0x1

    .line 520
    .line 521
    check-cast v12, Lk2/j;

    .line 522
    .line 523
    new-instance v13, Lr6/d;

    .line 524
    .line 525
    iget-object v14, v12, Lk2/j;->c:Landroid/os/Bundle;

    .line 526
    .line 527
    iget-object v12, v12, Lk2/j;->d:Ly1/o;

    .line 528
    .line 529
    invoke-direct {v13, v14, v12}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    goto :goto_200

    .line 536
    :cond_217
    invoke-static {v3, v4, v5, v9, v6}, Li2/q;->c(Ljava/util/List;JZLjava/util/List;)Landroid/os/Bundle;

    .line 537
    .line 538
    .line 539
    move-result-object v10
    :try_end_21b
    .catchall {:try_start_1c7 .. :try_end_21b} :catchall_1ec

    .line 540
    monitor-exit v1

    .line 541
    goto :goto_230

    .line 542
    :goto_21d
    :try_start_21d
    monitor-exit v1
    :try_end_21e
    .catchall {:try_start_21d .. :try_end_21e} :catchall_1ec

    .line 543
    throw v0

    .line 544
    :cond_21f
    if-nez p2, :cond_22e

    .line 545
    .line 546
    sget-object v1, Lq2/o;->H:Lq2/o;

    .line 547
    .line 548
    invoke-static {v1}, Lq2/q;->b(Lq2/o;)Z

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    if-eqz v1, :cond_22e

    .line 553
    .line 554
    invoke-static {v2}, Lk2/k;->a(Ljava/util/ArrayList;)Landroid/os/Bundle;

    .line 555
    .line 556
    .line 557
    move-result-object v10

    .line 558
    goto :goto_230

    .line 559
    :cond_22e
    move-object/from16 v10, v16

    .line 560
    .line 561
    :goto_230
    sget-object v1, Li2/n;->a:Ljava/util/List;

    .line 562
    .line 563
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    check-cast v1, Lk2/j;

    .line 568
    .line 569
    iget-object v1, v1, Lk2/j;->c:Landroid/os/Bundle;

    .line 570
    .line 571
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    check-cast v3, Lk2/j;

    .line 576
    .line 577
    iget-object v3, v3, Lk2/j;->d:Ly1/o;

    .line 578
    .line 579
    invoke-static {v10, v1, v3}, Li2/n;->a(Landroid/os/Bundle;Landroid/os/Bundle;Ly1/o;)Lr6/d;

    .line 580
    .line 581
    .line 582
    const-string v1, "fb_mobile_purchase"

    .line 583
    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    if-nez v1, :cond_2b5

    .line 589
    .line 590
    sget-object v1, Lk2/k;->a:Ly1/n;

    .line 591
    .line 592
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    check-cast v3, Lk2/j;

    .line 597
    .line 598
    iget-object v3, v3, Lk2/j;->a:Ljava/math/BigDecimal;

    .line 599
    .line 600
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v4

    .line 604
    check-cast v4, Lk2/j;

    .line 605
    .line 606
    iget-object v4, v4, Lk2/j;->b:Ljava/util/Currency;

    .line 607
    .line 608
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v5

    .line 612
    check-cast v5, Lk2/j;

    .line 613
    .line 614
    iget-object v5, v5, Lk2/j;->c:Landroid/os/Bundle;

    .line 615
    .line 616
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    check-cast v2, Lk2/j;

    .line 621
    .line 622
    iget-object v2, v2, Lk2/j;->d:Ly1/o;

    .line 623
    .line 624
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 625
    .line 626
    .line 627
    sget-object v6, Lx1/r;->a:Lx1/r;

    .line 628
    .line 629
    invoke-static {}, Lx1/j0;->c()Z

    .line 630
    .line 631
    .line 632
    move-result v6

    .line 633
    if-eqz v6, :cond_32a

    .line 634
    .line 635
    iget-object v1, v1, Ly1/n;->a:Ljava/lang/Object;

    .line 636
    .line 637
    move-object/from16 v17, v1

    .line 638
    .line 639
    check-cast v17, Ly1/k;

    .line 640
    .line 641
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    invoke-static/range {v17 .. v17}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    if-eqz v1, :cond_28b

    .line 649
    .line 650
    goto/16 :goto_32a

    .line 651
    .line 652
    :cond_28b
    :try_start_28b
    const-string v1, "fb_currency"

    .line 653
    .line 654
    invoke-virtual {v4}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v4

    .line 658
    invoke-virtual {v5, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    .line 662
    .line 663
    .line 664
    move-result-wide v3

    .line 665
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 666
    .line 667
    .line 668
    move-result-object v19

    .line 669
    invoke-static {}, Lk2/d;->b()Ljava/util/UUID;

    .line 670
    .line 671
    .line 672
    move-result-object v22

    .line 673
    const/16 v21, 0x1

    .line 674
    .line 675
    move-object/from16 v18, v0

    .line 676
    .line 677
    move-object/from16 v23, v2

    .line 678
    .line 679
    move-object/from16 v20, v5

    .line 680
    .line 681
    invoke-virtual/range {v17 .. v23}, Ly1/k;->e(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;Ly1/o;)V
    :try_end_2ab
    .catchall {:try_start_28b .. :try_end_2ab} :catchall_2ad

    .line 682
    .line 683
    .line 684
    goto/16 :goto_32a

    .line 685
    .line 686
    :catchall_2ad
    move-exception v0

    .line 687
    move-object/from16 v1, v17

    .line 688
    .line 689
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 690
    .line 691
    .line 692
    goto/16 :goto_32a

    .line 693
    .line 694
    :cond_2b5
    sget-object v0, Lk2/k;->a:Ly1/n;

    .line 695
    .line 696
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v1

    .line 700
    check-cast v1, Lk2/j;

    .line 701
    .line 702
    iget-object v1, v1, Lk2/j;->a:Ljava/math/BigDecimal;

    .line 703
    .line 704
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v3

    .line 708
    check-cast v3, Lk2/j;

    .line 709
    .line 710
    iget-object v3, v3, Lk2/j;->b:Ljava/util/Currency;

    .line 711
    .line 712
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    check-cast v4, Lk2/j;

    .line 717
    .line 718
    iget-object v15, v4, Lk2/j;->c:Landroid/os/Bundle;

    .line 719
    .line 720
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    check-cast v2, Lk2/j;

    .line 725
    .line 726
    iget-object v2, v2, Lk2/j;->d:Ly1/o;

    .line 727
    .line 728
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 729
    .line 730
    .line 731
    sget-object v4, Lx1/r;->a:Lx1/r;

    .line 732
    .line 733
    invoke-static {}, Lx1/j0;->c()Z

    .line 734
    .line 735
    .line 736
    move-result v4

    .line 737
    if-eqz v4, :cond_32a

    .line 738
    .line 739
    iget-object v0, v0, Ly1/n;->a:Ljava/lang/Object;

    .line 740
    .line 741
    move-object v12, v0

    .line 742
    check-cast v12, Ly1/k;

    .line 743
    .line 744
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 745
    .line 746
    .line 747
    invoke-static {v12}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-result v0

    .line 751
    if-eqz v0, :cond_2f1

    .line 752
    .line 753
    goto :goto_32a

    .line 754
    :cond_2f1
    :try_start_2f1
    invoke-static {v12}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v0
    :try_end_2f5
    .catchall {:try_start_2f1 .. :try_end_2f5} :catchall_326

    .line 758
    if-eqz v0, :cond_2f8

    .line 759
    .line 760
    goto :goto_32a

    .line 761
    :cond_2f8
    :try_start_2f8
    const-string v0, "fb_currency"

    .line 762
    .line 763
    invoke-virtual {v3}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v3

    .line 767
    invoke-virtual {v15, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    const-string v13, "fb_mobile_purchase"

    .line 771
    .line 772
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 773
    .line 774
    .line 775
    move-result-wide v0

    .line 776
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 777
    .line 778
    .line 779
    move-result-object v14

    .line 780
    invoke-static {}, Lk2/d;->b()Ljava/util/UUID;

    .line 781
    .line 782
    .line 783
    move-result-object v17

    .line 784
    const/16 v16, 0x1

    .line 785
    .line 786
    move-object/from16 v18, v2

    .line 787
    .line 788
    invoke-virtual/range {v12 .. v18}, Ly1/k;->e(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;Ly1/o;)V

    .line 789
    .line 790
    .line 791
    invoke-static {}, Lx1/w;->n()I

    .line 792
    .line 793
    .line 794
    move-result v0

    .line 795
    if-eq v0, v8, :cond_32a

    .line 796
    .line 797
    const/4 v0, 0x6

    .line 798
    invoke-static {v0}, Ly1/i;->c(I)V
    :try_end_320
    .catchall {:try_start_2f8 .. :try_end_320} :catchall_321

    .line 799
    .line 800
    .line 801
    goto :goto_32a

    .line 802
    :catchall_321
    move-exception v0

    .line 803
    :try_start_322
    invoke-static {v0, v12}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_325
    .catchall {:try_start_322 .. :try_end_325} :catchall_326

    .line 804
    .line 805
    .line 806
    goto :goto_32a

    .line 807
    :catchall_326
    move-exception v0

    .line 808
    invoke-static {v0, v12}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 809
    .line 810
    .line 811
    :cond_32a
    :goto_32a
    return-void
.end method
