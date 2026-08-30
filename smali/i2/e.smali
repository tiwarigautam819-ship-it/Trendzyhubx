###### Class i2.e (i2.e)
.class public final Li2/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static b:Ljava/lang/Boolean;

.field public static c:Ljava/lang/Boolean;

.field public static d:Li2/b;

.field public static e:Li2/d;

.field public static f:Landroid/content/Intent;

.field public static g:Ljava/lang/Object;

.field public static h:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Li2/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .registers 15

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    goto/16 :goto_b3

    .line 8
    .line 9
    :cond_8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_18
    if-ge v4, v2, :cond_47

    .line 26
    .line 27
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    check-cast v5, Ljava/lang/String;

    .line 34
    .line 35
    :try_start_22
    new-instance v6, Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v7, "productId"

    .line 41
    .line 42
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const-string v7, "sku"

    .line 47
    .line 48
    invoke-static {v7, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const-string v7, "purchase"

    .line 52
    .line 53
    invoke-static {v7, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_3d} :catch_3e

    .line 60
    .line 61
    .line 62
    goto :goto_18

    .line 63
    :catch_3e
    move-exception v5

    .line 64
    const-string v6, "i2.e"

    .line 65
    .line 66
    const-string v7, "Error parsing in-app purchase data."

    .line 67
    .line 68
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    goto :goto_18

    .line 72
    :cond_47
    sget-object p1, Li2/e;->g:Ljava/lang/Object;

    .line 73
    .line 74
    sget-object v2, Li2/o;->a:Li2/o;

    .line 75
    .line 76
    const-class v4, Li2/o;

    .line 77
    .line 78
    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    const/4 v6, 0x0

    .line 83
    if-eqz v5, :cond_55

    .line 84
    .line 85
    goto :goto_85

    .line 86
    :cond_55
    :try_start_55
    invoke-virtual {v2, v1}, Li2/o;->j(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    new-instance v7, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    move v9, v3

    .line 100
    :cond_63
    :goto_63
    if-ge v9, v8, :cond_79

    .line 101
    .line 102
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    add-int/lit8 v9, v9, 0x1

    .line 107
    .line 108
    check-cast v10, Ljava/lang/String;

    .line 109
    .line 110
    invoke-interface {v5, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    if-nez v11, :cond_63

    .line 115
    .line 116
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_63

    .line 120
    :catchall_77
    move-exception p0

    .line 121
    goto :goto_82

    .line 122
    :cond_79
    invoke-virtual {v2, p0, v7, p1, p2}, Li2/o;->g(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/LinkedHashMap;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-interface {v5, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_80
    .catchall {:try_start_55 .. :try_end_80} :catchall_77

    .line 127
    .line 128
    .line 129
    move-object v6, v5

    .line 130
    goto :goto_85

    .line 131
    :goto_82
    invoke-static {p0, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :goto_85
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    :cond_8d
    :goto_8d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_b3

    .line 147
    .line 148
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Ljava/util/Map$Entry;

    .line 153
    .line 154
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Ljava/lang/String;

    .line 159
    .line 160
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Ljava/lang/String;

    .line 171
    .line 172
    if-eqz v1, :cond_8d

    .line 173
    .line 174
    sget v2, Li2/e;->h:I

    .line 175
    .line 176
    invoke-static {v1, p1, p2, v2, v3}, Lk2/k;->e(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 177
    .line 178
    .line 179
    goto :goto_8d

    .line 180
    :cond_b3
    :goto_b3
    return-void
.end method

.method public static final b(I)V
    .registers 12

    .line 1
    const-string v0, "billingClientVersion"

    .line 2
    .line 3
    invoke-static {p0, v0}, La1/a;->n(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Li2/e;->b:Ljava/lang/Boolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_d

    .line 11
    .line 12
    goto/16 :goto_a5

    .line 13
    .line 14
    :cond_d
    const-string v0, "com.android.vending.billing.IInAppBillingService$Stub"

    .line 15
    .line 16
    invoke-static {v0}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_17

    .line 21
    .line 22
    move v0, v2

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v0, v1

    .line 25
    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Li2/e;->b:Ljava/lang/Boolean;

    .line 30
    .line 31
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_28

    .line 38
    .line 39
    goto/16 :goto_a5

    .line 40
    .line 41
    :cond_28
    const-string v0, "com.android.billingclient.api.ProxyBillingActivity"

    .line 42
    .line 43
    invoke-static {v0}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_32

    .line 48
    .line 49
    move v0, v2

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move v0, v1

    .line 52
    :goto_33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Li2/e;->c:Ljava/lang/Boolean;

    .line 57
    .line 58
    sget-object v0, Li2/o;->a:Li2/o;

    .line 59
    .line 60
    const-string v0, "LAST_CLEARED_TIME"

    .line 61
    .line 62
    const-class v3, Li2/o;

    .line 63
    .line 64
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_46

    .line 69
    .line 70
    goto :goto_83

    .line 71
    :cond_46
    :try_start_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    const-wide/16 v6, 0x3e8

    .line 76
    .line 77
    div-long/2addr v4, v6

    .line 78
    sget-object v6, Li2/o;->e:Landroid/content/SharedPreferences;

    .line 79
    .line 80
    const-wide/16 v7, 0x0

    .line 81
    .line 82
    invoke-interface {v6, v0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v9

    .line 86
    cmp-long v7, v9, v7

    .line 87
    .line 88
    if-nez v7, :cond_67

    .line 89
    .line 90
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-interface {v6, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    .line 100
    .line 101
    goto :goto_83

    .line 102
    :catchall_65
    move-exception v0

    .line 103
    goto :goto_80

    .line 104
    :cond_67
    sub-long v7, v4, v9

    .line 105
    .line 106
    const-wide/32 v9, 0x93a80

    .line 107
    .line 108
    .line 109
    cmp-long v7, v7, v9

    .line 110
    .line 111
    if-lez v7, :cond_83

    .line 112
    .line 113
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-interface {v6, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_7f
    .catchall {:try_start_46 .. :try_end_7f} :catchall_65

    .line 126
    .line 127
    .line 128
    goto :goto_83

    .line 129
    :goto_80
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_83
    :goto_83
    new-instance v0, Landroid/content/Intent;

    .line 133
    .line 134
    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    .line 135
    .line 136
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v3, "com.android.vending"

    .line 140
    .line 141
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v3, "Intent(\"com.android.vend\u2026ge(\"com.android.vending\")"

    .line 146
    .line 147
    invoke-static {v3, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    sput-object v0, Li2/e;->f:Landroid/content/Intent;

    .line 151
    .line 152
    new-instance v0, Li2/b;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 155
    .line 156
    .line 157
    sput-object v0, Li2/e;->d:Li2/b;

    .line 158
    .line 159
    new-instance v0, Li2/d;

    .line 160
    .line 161
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 162
    .line 163
    .line 164
    sput-object v0, Li2/e;->e:Li2/d;

    .line 165
    .line 166
    :goto_a5
    sget-object v0, Li2/e;->b:Ljava/lang/Boolean;

    .line 167
    .line 168
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 169
    .line 170
    invoke-static {v0, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_b0

    .line 175
    .line 176
    goto :goto_f2

    .line 177
    :cond_b0
    invoke-static {}, Lk2/k;->d()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_f2

    .line 182
    .line 183
    sput p0, Li2/e;->h:I

    .line 184
    .line 185
    sget-object p0, Li2/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    .line 187
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    if-nez p0, :cond_c1

    .line 192
    .line 193
    goto :goto_f2

    .line 194
    :cond_c1
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    instance-of v0, p0, Landroid/app/Application;

    .line 199
    .line 200
    if-eqz v0, :cond_f2

    .line 201
    .line 202
    move-object v0, p0

    .line 203
    check-cast v0, Landroid/app/Application;

    .line 204
    .line 205
    sget-object v1, Li2/e;->e:Li2/d;

    .line 206
    .line 207
    const/4 v3, 0x0

    .line 208
    if-eqz v1, :cond_ec

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 211
    .line 212
    .line 213
    sget-object v0, Li2/e;->f:Landroid/content/Intent;

    .line 214
    .line 215
    if-eqz v0, :cond_e6

    .line 216
    .line 217
    sget-object v1, Li2/e;->d:Li2/b;

    .line 218
    .line 219
    if-eqz v1, :cond_e0

    .line 220
    .line 221
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 222
    .line 223
    .line 224
    goto :goto_f2

    .line 225
    :cond_e0
    const-string p0, "serviceConnection"

    .line 226
    .line 227
    invoke-static {p0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw v3

    .line 231
    :cond_e6
    const-string p0, "intent"

    .line 232
    .line 233
    invoke-static {p0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v3

    .line 237
    :cond_ec
    const-string p0, "callbacks"

    .line 238
    .line 239
    invoke-static {p0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v3

    .line 243
    :cond_f2
    :goto_f2
    return-void
.end method
