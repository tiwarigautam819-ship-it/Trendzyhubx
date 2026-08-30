###### Class i2.o (i2.o)
.class public final Li2/o;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Li2/o;

.field public static final b:Ljava/util/HashMap;

.field public static final c:Ljava/util/HashMap;

.field public static final d:Ljava/lang/String;

.field public static final e:Landroid/content/SharedPreferences;

.field public static final f:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Li2/o;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li2/o;->a:Li2/o;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Li2/o;->b:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Li2/o;->c:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Li2/o;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "com.facebook.internal.SKU_DETAILS"

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Li2/o;->e:Landroid/content/SharedPreferences;

    .line 44
    .line 45
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "com.facebook.internal.PURCHASE"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Li2/o;->f:Landroid/content/SharedPreferences;

    .line 56
    .line 57
    return-void
.end method

.method public static final f(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 6

    .line 1
    const-class v0, Li2/o;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    sget-object v1, Li2/o;->a:Li2/o;

    .line 12
    .line 13
    const-string v3, "inapp"

    .line 14
    .line 15
    invoke-virtual {v1, p0, p1, v3}, Li2/o;->e(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v1, p0}, Li2/o;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_17

    .line 23
    return-object p0

    .line 24
    :catchall_17
    move-exception p0

    .line 25
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object v2
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 21

    .line 1
    sget-object v0, Li2/o;->f:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-static/range {p0 .. p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    const-wide/16 v6, 0x3e8

    .line 25
    .line 26
    div-long/2addr v4, v6

    .line 27
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    const/4 v9, 0x0

    .line 32
    :goto_1f
    if-ge v9, v8, :cond_70

    .line 33
    .line 34
    move-object/from16 v10, p1

    .line 35
    .line 36
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v11

    .line 40
    add-int/lit8 v9, v9, 0x1

    .line 41
    .line 42
    check-cast v11, Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_69

    .line 43
    .line 44
    :try_start_2b
    new-instance v12, Lorg/json/JSONObject;

    .line 45
    .line 46
    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v13, "productId"

    .line 50
    .line 51
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    const-string v14, "purchaseTime"

    .line 56
    .line 57
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v14
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_3c} :catch_6d
    .catchall {:try_start_2b .. :try_end_3c} :catchall_69

    .line 61
    move-object/from16 v16, v2

    .line 62
    .line 63
    :try_start_3e
    const-string v2, "purchaseToken"

    .line 64
    .line 65
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    div-long/2addr v14, v6

    .line 70
    sub-long v14, v4, v14

    .line 71
    .line 72
    const-wide/32 v17, 0x15180

    .line 73
    .line 74
    .line 75
    cmp-long v12, v14, v17

    .line 76
    .line 77
    if-lez v12, :cond_51

    .line 78
    .line 79
    :catch_4e
    :goto_4e
    move-object/from16 v2, v16

    .line 80
    .line 81
    goto :goto_1f

    .line 82
    :cond_51
    const-string v12, ""

    .line 83
    .line 84
    invoke-interface {v0, v13, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    invoke-static {v12, v2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    if-eqz v12, :cond_5e

    .line 93
    .line 94
    goto :goto_4e

    .line 95
    :cond_5e
    invoke-interface {v3, v13, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_64} :catch_4e
    .catchall {:try_start_3e .. :try_end_64} :catchall_65

    .line 99
    .line 100
    .line 101
    goto :goto_4e

    .line 102
    :catchall_65
    move-exception v0

    .line 103
    :goto_66
    move-object/from16 v1, p0

    .line 104
    .line 105
    goto :goto_76

    .line 106
    :catchall_69
    move-exception v0

    .line 107
    move-object/from16 v16, v2

    .line 108
    .line 109
    goto :goto_66

    .line 110
    :catch_6d
    move-object/from16 v16, v2

    .line 111
    .line 112
    goto :goto_4e

    .line 113
    :cond_70
    move-object/from16 v16, v2

    .line 114
    .line 115
    :try_start_72
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_65

    .line 116
    .line 117
    .line 118
    return-object v1

    .line 119
    :goto_76
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-object v16
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .registers 7

    .line 1
    sget-object v0, Li2/o;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Class;

    .line 16
    .line 17
    if-eqz v1, :cond_13

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_13
    const-class v1, Li2/t;

    .line 21
    .line 22
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_31

    .line 26
    if-eqz v3, :cond_1d

    .line 27
    .line 28
    :catch_1b
    :goto_1b
    move-object p1, v2

    .line 29
    goto :goto_2b

    .line 30
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d .. :try_end_25} :catch_1b
    .catchall {:try_start_1d .. :try_end_25} :catchall_26

    .line 38
    goto :goto_2b

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    :try_start_27
    invoke-static {p1, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1b

    .line 44
    :goto_2b
    if-eqz p1, :cond_33

    .line 45
    .line 46
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_31

    .line 47
    .line 48
    .line 49
    goto :goto_33

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    :goto_33
    return-object p1

    .line 53
    :goto_34
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-object v2
.end method

.method public final c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 15

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
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    sget-object v0, Li2/o;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/reflect/Method;

    .line 16
    .line 17
    if-eqz v2, :cond_13

    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_13
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_3f

    .line 24
    const/4 v3, 0x4

    .line 25
    const/4 v4, 0x3

    .line 26
    const/4 v5, 0x2

    .line 27
    const/4 v6, 0x1

    .line 28
    const/4 v7, 0x0

    .line 29
    const-class v8, Landroid/os/Bundle;

    .line 30
    .line 31
    const-string v9, "TYPE"

    .line 32
    .line 33
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 34
    .line 35
    const-class v11, Ljava/lang/String;

    .line 36
    .line 37
    sparse-switch v2, :sswitch_data_b8

    .line 38
    .line 39
    .line 40
    goto :goto_89

    .line 41
    :sswitch_28
    :try_start_28
    const-string v2, "getSkuDetails"

    .line 42
    .line 43
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_31

    .line 48
    .line 49
    goto :goto_89

    .line 50
    :cond_31
    invoke-static {v9, v10}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-array v2, v3, [Ljava/lang/Class;

    .line 54
    .line 55
    aput-object v10, v2, v7

    .line 56
    .line 57
    aput-object v11, v2, v6

    .line 58
    .line 59
    aput-object v11, v2, v5

    .line 60
    .line 61
    aput-object v8, v2, v4

    .line 62
    .line 63
    goto :goto_98

    .line 64
    :catchall_3f
    move-exception p1

    .line 65
    goto/16 :goto_b4

    .line 66
    .line 67
    :sswitch_42
    const-string v2, "getPurchaseHistory"

    .line 68
    .line 69
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_4b

    .line 74
    .line 75
    goto :goto_89

    .line 76
    :cond_4b
    invoke-static {v9, v10}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    const/4 v2, 0x5

    .line 80
    new-array v2, v2, [Ljava/lang/Class;

    .line 81
    .line 82
    aput-object v10, v2, v7

    .line 83
    .line 84
    aput-object v11, v2, v6

    .line 85
    .line 86
    aput-object v11, v2, v5

    .line 87
    .line 88
    aput-object v11, v2, v4

    .line 89
    .line 90
    aput-object v8, v2, v3

    .line 91
    .line 92
    goto :goto_98

    .line 93
    :sswitch_5c
    const-string v2, "asInterface"

    .line 94
    .line 95
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_65

    .line 100
    .line 101
    goto :goto_89

    .line 102
    :cond_65
    new-array v2, v6, [Ljava/lang/Class;

    .line 103
    .line 104
    const-class v3, Landroid/os/IBinder;

    .line 105
    .line 106
    aput-object v3, v2, v7

    .line 107
    .line 108
    goto :goto_98

    .line 109
    :sswitch_6c
    const-string v2, "isBillingSupported"

    .line 110
    .line 111
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-nez v2, :cond_75

    .line 116
    .line 117
    goto :goto_89

    .line 118
    :cond_75
    invoke-static {v9, v10}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    new-array v2, v4, [Ljava/lang/Class;

    .line 122
    .line 123
    aput-object v10, v2, v7

    .line 124
    .line 125
    aput-object v11, v2, v6

    .line 126
    .line 127
    aput-object v11, v2, v5

    .line 128
    .line 129
    goto :goto_98

    .line 130
    :sswitch_81
    const-string v2, "getPurchases"

    .line 131
    .line 132
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_8b

    .line 137
    .line 138
    :goto_89
    move-object v2, v1

    .line 139
    goto :goto_98

    .line 140
    :cond_8b
    invoke-static {v9, v10}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    new-array v2, v3, [Ljava/lang/Class;

    .line 144
    .line 145
    aput-object v10, v2, v7

    .line 146
    .line 147
    aput-object v11, v2, v6

    .line 148
    .line 149
    aput-object v11, v2, v5

    .line 150
    .line 151
    aput-object v11, v2, v4

    .line 152
    .line 153
    :goto_98
    if-nez v2, :cond_a3

    .line 154
    .line 155
    new-array v2, v6, [Ljava/lang/Class;

    .line 156
    .line 157
    aput-object v1, v2, v7

    .line 158
    .line 159
    invoke-static {p1, p2, v2}, Li2/t;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    goto :goto_ae

    .line 164
    :cond_a3
    array-length v3, v2

    .line 165
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    check-cast v2, [Ljava/lang/Class;

    .line 170
    .line 171
    invoke-static {p1, p2, v2}, Li2/t;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    :goto_ae
    if-eqz p1, :cond_b3

    .line 176
    .line 177
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b3
    .catchall {:try_start_28 .. :try_end_b3} :catchall_3f

    .line 178
    .line 179
    .line 180
    :cond_b3
    return-object p1

    .line 181
    :goto_b4
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    return-object v1

    .line 185
    :sswitch_data_b8
    .sparse-switch
        -0x6b5af324 -> :sswitch_81
        -0x5677d643 -> :sswitch_6c
        -0x42f2e6d9 -> :sswitch_5c
        -0x236d29e3 -> :sswitch_42
        -0x222c05a5 -> :sswitch_28
    .end sparse-switch
.end method

.method public final d(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "inapp"

    .line 4
    .line 5
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v7, 0x0

    .line 10
    if-eqz v2, :cond_c

    .line 11
    .line 12
    return-object v7

    .line 13
    :cond_c
    :try_start_c
    new-instance v8, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    move-object/from16 v2, p1

    .line 19
    .line 20
    move-object/from16 v5, p2

    .line 21
    .line 22
    invoke-virtual {v1, v2, v5, v0}, Li2/o;->i(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_bb

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    move-object v3, v7

    .line 30
    move v10, v9

    .line 31
    move v11, v10

    .line 32
    :goto_1f
    const/4 v4, 0x6

    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    new-instance v6, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    const/4 v12, 0x5

    .line 43
    new-array v12, v12, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object v4, v12, v9

    .line 46
    .line 47
    sget-object v4, Li2/o;->d:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v13, 0x1

    .line 50
    aput-object v4, v12, v13

    .line 51
    .line 52
    const/4 v4, 0x2

    .line 53
    aput-object v0, v12, v4

    .line 54
    .line 55
    const/4 v4, 0x3

    .line 56
    aput-object v3, v12, v4

    .line 57
    .line 58
    const/4 v3, 0x4

    .line 59
    aput-object v6, v12, v3

    .line 60
    .line 61
    const-string v3, "com.android.vending.billing.IInAppBillingService"

    .line 62
    .line 63
    const-string v4, "getPurchaseHistory"

    .line 64
    .line 65
    move-object v6, v12

    .line 66
    invoke-virtual/range {v1 .. v6}, Li2/o;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_60

    .line 71
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    const-wide/16 v14, 0x3e8

    .line 77
    .line 78
    div-long/2addr v4, v14

    .line 79
    check-cast v3, Landroid/os/Bundle;

    .line 80
    .line 81
    const-string v2, "RESPONSE_CODE"

    .line 82
    .line 83
    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_60

    .line 88
    .line 89
    const-string v2, "INAPP_PURCHASE_DATA_LIST"

    .line 90
    .line 91
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    if-nez v2, :cond_63

    .line 96
    .line 97
    :cond_60
    move-object/from16 v17, v7

    .line 98
    .line 99
    goto :goto_a7

    .line 100
    :cond_63
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    move v12, v9

    .line 105
    :goto_68
    if-ge v12, v6, :cond_9d

    .line 106
    .line 107
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v16
    :try_end_6e
    .catchall {:try_start_c .. :try_end_6e} :catchall_99

    .line 111
    add-int/lit8 v12, v12, 0x1

    .line 112
    .line 113
    move-object/from16 v17, v7

    .line 114
    .line 115
    :try_start_72
    move-object/from16 v7, v16

    .line 116
    .line 117
    check-cast v7, Ljava/lang/String;
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_97

    .line 118
    .line 119
    :try_start_76
    new-instance v9, Lorg/json/JSONObject;

    .line 120
    .line 121
    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string v13, "purchaseTime"

    .line 125
    .line 126
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v18

    .line 130
    div-long v18, v18, v14

    .line 131
    .line 132
    sub-long v18, v4, v18

    .line 133
    .line 134
    const-wide/16 v20, 0x4b0

    .line 135
    .line 136
    cmp-long v9, v18, v20

    .line 137
    .line 138
    if-lez v9, :cond_8d

    .line 139
    .line 140
    const/4 v11, 0x1

    .line 141
    goto :goto_9f

    .line 142
    :cond_8d
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_76 .. :try_end_90} :catch_92
    .catchall {:try_start_76 .. :try_end_90} :catchall_97

    .line 143
    .line 144
    .line 145
    add-int/lit8 v10, v10, 0x1

    .line 146
    .line 147
    :catch_92
    move-object/from16 v7, v17

    .line 148
    .line 149
    const/4 v9, 0x0

    .line 150
    const/4 v13, 0x1

    .line 151
    goto :goto_68

    .line 152
    :catchall_97
    move-exception v0

    .line 153
    goto :goto_bc

    .line 154
    :catchall_99
    move-exception v0

    .line 155
    move-object/from16 v17, v7

    .line 156
    .line 157
    goto :goto_bc

    .line 158
    :cond_9d
    move-object/from16 v17, v7

    .line 159
    .line 160
    :goto_9f
    :try_start_9f
    const-string v2, "INAPP_CONTINUATION_TOKEN"

    .line 161
    .line 162
    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2
    :try_end_a5
    .catchall {:try_start_9f .. :try_end_a5} :catchall_97

    .line 166
    move-object v3, v2

    .line 167
    goto :goto_a9

    .line 168
    :goto_a7
    move-object/from16 v3, v17

    .line 169
    .line 170
    :goto_a9
    const/16 v2, 0x1e

    .line 171
    .line 172
    if-ge v10, v2, :cond_bb

    .line 173
    .line 174
    if-eqz v3, :cond_bb

    .line 175
    .line 176
    if-eqz v11, :cond_b2

    .line 177
    .line 178
    goto :goto_bb

    .line 179
    :cond_b2
    move-object/from16 v2, p1

    .line 180
    .line 181
    move-object/from16 v5, p2

    .line 182
    .line 183
    move-object/from16 v7, v17

    .line 184
    .line 185
    const/4 v9, 0x0

    .line 186
    goto/16 :goto_1f

    .line 187
    .line 188
    :cond_bb
    :goto_bb
    return-object v8

    .line 189
    :goto_bc
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    return-object v17
.end method

.method public final e(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 18

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
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    if-nez p2, :cond_10

    .line 15
    .line 16
    goto :goto_66

    .line 17
    :cond_10
    invoke-virtual/range {p0 .. p3}, Li2/o;->i(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_66

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    move-object v3, v1

    .line 25
    move v4, v2

    .line 26
    :cond_19
    const/4 v5, 0x3

    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    const/4 v7, 0x4

    .line 32
    new-array v13, v7, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object v6, v13, v2

    .line 35
    .line 36
    sget-object v6, Li2/o;->d:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v7, 0x1

    .line 39
    aput-object v6, v13, v7

    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    aput-object p3, v13, v6

    .line 43
    .line 44
    aput-object v3, v13, v5

    .line 45
    .line 46
    const-string v10, "com.android.vending.billing.IInAppBillingService"

    .line 47
    .line 48
    const-string v11, "getPurchases"

    .line 49
    .line 50
    move-object v8, p0

    .line 51
    move-object v9, p1

    .line 52
    move-object/from16 v12, p2

    .line 53
    .line 54
    invoke-virtual/range {v8 .. v13}, Li2/o;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-eqz v3, :cond_5f

    .line 59
    .line 60
    check-cast v3, Landroid/os/Bundle;

    .line 61
    .line 62
    const-string v5, "RESPONSE_CODE"

    .line 63
    .line 64
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_5f

    .line 69
    .line 70
    const-string v5, "INAPP_PURCHASE_DATA_LIST"

    .line 71
    .line 72
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    if-eqz v5, :cond_66

    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    add-int/2addr v4, v6

    .line 83
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    .line 85
    .line 86
    const-string v5, "INAPP_CONTINUATION_TOKEN"

    .line 87
    .line 88
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3
    :try_end_5b
    .catchall {:try_start_8 .. :try_end_5b} :catchall_5c

    .line 92
    goto :goto_60

    .line 93
    :catchall_5c
    move-exception v0

    .line 94
    move-object p1, v0

    .line 95
    goto :goto_67

    .line 96
    :cond_5f
    move-object v3, v1

    .line 97
    :goto_60
    const/16 v5, 0x1e

    .line 98
    .line 99
    if-ge v4, v5, :cond_66

    .line 100
    .line 101
    if-nez v3, :cond_19

    .line 102
    .line 103
    :cond_66
    :goto_66
    return-object v0

    .line 104
    :goto_67
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-object v1
.end method

.method public final g(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/LinkedHashMap;
    .registers 15

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    const/4 v7, 0x0

    .line 6
    if-eqz v1, :cond_8

    .line 7
    .line 8
    return-object v7

    .line 9
    :cond_8
    :try_start_8
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    if-eqz p3, :cond_89

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_17

    .line 21
    .line 22
    goto/16 :goto_89

    .line 23
    .line 24
    :cond_17
    new-instance v1, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "ITEM_ID_LIST"

    .line 30
    .line 31
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz p4, :cond_2d

    .line 40
    .line 41
    const-string v4, "subs"

    .line 42
    .line 43
    goto :goto_2f

    .line 44
    :catchall_2b
    move-exception v0

    .line 45
    goto :goto_8a

    .line 46
    :cond_2d
    const-string v4, "inapp"

    .line 47
    .line 48
    :goto_2f
    const/4 v5, 0x4

    .line 49
    new-array v6, v5, [Ljava/lang/Object;

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    aput-object v3, v6, v9

    .line 53
    .line 54
    sget-object v3, Li2/o;->d:Ljava/lang/String;

    .line 55
    .line 56
    const/4 v5, 0x1

    .line 57
    aput-object v3, v6, v5

    .line 58
    .line 59
    const/4 v3, 0x2

    .line 60
    aput-object v4, v6, v3

    .line 61
    .line 62
    aput-object v1, v6, v2

    .line 63
    .line 64
    const-string v3, "com.android.vending.billing.IInAppBillingService"

    .line 65
    .line 66
    const-string v4, "getSkuDetails"

    .line 67
    .line 68
    move-object v1, p0

    .line 69
    move-object v2, p1

    .line 70
    move-object v5, p3

    .line 71
    invoke-virtual/range {v1 .. v6}, Li2/o;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_89

    .line 76
    .line 77
    check-cast v2, Landroid/os/Bundle;

    .line 78
    .line 79
    const-string v3, "RESPONSE_CODE"

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_89

    .line 86
    .line 87
    const-string v3, "DETAILS_LIST"

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    if-eqz v2, :cond_86

    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-ne v3, v4, :cond_86

    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    :goto_6c
    if-ge v9, v3, :cond_86

    .line 110
    .line 111
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const-string v5, "skuList[i]"

    .line 116
    .line 117
    invoke-static {v5, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const-string v6, "skuDetailsList[i]"

    .line 125
    .line 126
    invoke-static {v6, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v8, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    add-int/lit8 v9, v9, 0x1

    .line 133
    .line 134
    goto :goto_6c

    .line 135
    :cond_86
    invoke-virtual {p0, v8}, Li2/o;->k(Ljava/util/LinkedHashMap;)V
    :try_end_89
    .catchall {:try_start_8 .. :try_end_89} :catchall_2b

    .line 136
    .line 137
    .line 138
    :cond_89
    :goto_89
    return-object v8

    .line 139
    :goto_8a
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    return-object v7
.end method

.method public final h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

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
    goto :goto_15

    .line 9
    :cond_8
    :try_start_8
    invoke-virtual {p0, p1, p2}, Li2/o;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_f

    .line 14
    .line 15
    goto :goto_15

    .line 16
    :cond_f
    invoke-virtual {p0, p1, p3}, Li2/o;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-nez p2, :cond_16

    .line 21
    .line 22
    :goto_15
    return-object v1

    .line 23
    :cond_16
    array-length p3, p5

    .line 24
    invoke-static {p5, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-static {p1, p2, p4, p3}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_20

    .line 32
    return-object p1

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method

.method public final i(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 13

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    :goto_7
    move-object v3, p0

    .line 9
    goto :goto_36

    .line 10
    :cond_9
    if-nez p2, :cond_c

    .line 11
    .line 12
    goto :goto_7

    .line 13
    :cond_c
    const/4 v0, 0x3

    .line 14
    :try_start_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-array v8, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    aput-object v2, v8, v1

    .line 21
    .line 22
    sget-object v0, Li2/o;->d:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    aput-object v0, v8, v2

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    aput-object p3, v8, v0

    .line 29
    .line 30
    const-string v5, "com.android.vending.billing.IInAppBillingService"

    .line 31
    .line 32
    const-string v6, "isBillingSupported"
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_37

    .line 33
    .line 34
    move-object v3, p0

    .line 35
    move-object v4, p1

    .line 36
    move-object v7, p2

    .line 37
    :try_start_24
    invoke-virtual/range {v3 .. v8}, Li2/o;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_36

    .line 42
    .line 43
    check-cast p1, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p1
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_33

    .line 49
    if-nez p1, :cond_36

    .line 50
    .line 51
    return v2

    .line 52
    :catchall_33
    move-exception v0

    .line 53
    :goto_34
    move-object p1, v0

    .line 54
    goto :goto_3a

    .line 55
    :cond_36
    :goto_36
    return v1

    .line 56
    :catchall_37
    move-exception v0

    .line 57
    move-object v3, p0

    .line 58
    goto :goto_34

    .line 59
    :goto_3a
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return v1
.end method

.method public final j(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;
    .registers 15

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
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    const-wide/16 v4, 0x3e8

    .line 19
    .line 20
    div-long/2addr v2, v4

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x0

    .line 26
    move v6, v5

    .line 27
    :cond_1a
    :goto_1a
    if-ge v6, v4, :cond_5a

    .line 28
    .line 29
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    add-int/lit8 v6, v6, 0x1

    .line 34
    .line 35
    check-cast v7, Ljava/lang/String;

    .line 36
    .line 37
    sget-object v8, Li2/o;->e:Landroid/content/SharedPreferences;

    .line 38
    .line 39
    invoke-interface {v8, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    if-eqz v8, :cond_1a

    .line 44
    .line 45
    const-string v9, ";"

    .line 46
    .line 47
    filled-new-array {v9}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    const/4 v10, 0x2

    .line 52
    invoke-static {v8, v9, v10, v10}, Lk7/g;->J(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    check-cast v9, Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v9

    .line 66
    sub-long v9, v2, v9

    .line 67
    .line 68
    const-wide/32 v11, 0xa8c0

    .line 69
    .line 70
    .line 71
    cmp-long v9, v9, v11

    .line 72
    .line 73
    if-gez v9, :cond_1a

    .line 74
    .line 75
    const-string v9, "sku"

    .line 76
    .line 77
    invoke-static {v9, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const/4 v9, 0x1

    .line 81
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_8 .. :try_end_57} :catchall_58

    .line 86
    .line 87
    .line 88
    goto :goto_1a

    .line 89
    :catchall_58
    move-exception p1

    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    return-object v0

    .line 92
    :goto_5b
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-object v1
.end method

.method public final k(Ljava/util/LinkedHashMap;)V
    .registers 9

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, 0x3e8

    .line 13
    .line 14
    div-long/2addr v0, v2

    .line 15
    sget-object v2, Li2/o;->e:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_4e

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/util/Map$Entry;

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/lang/String;

    .line 52
    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/16 v6, 0x3b

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    .line 75
    .line 76
    goto :goto_1c

    .line 77
    :catchall_4c
    move-exception p1

    .line 78
    goto :goto_52

    .line 79
    :cond_4e
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_4c

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_52
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
