###### Class i2.k (i2.k)
.class public final Li2/k;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Li2/h;


# direct methods
.method public synthetic constructor <init>(Li2/h;Ljava/lang/Object;I)V
    .registers 4

    .line 1
    iput p3, p0, Li2/k;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Li2/k;->c:Li2/h;

    .line 4
    .line 5
    iput-object p2, p0, Li2/k;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 10

    .line 1
    const-string v0, "productId"

    .line 2
    .line 3
    const-class v1, Li2/l;

    .line 4
    .line 5
    iget-object v2, p0, Li2/k;->c:Li2/h;

    .line 6
    .line 7
    check-cast v2, Li2/l;

    .line 8
    .line 9
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_10

    .line 14
    .line 15
    goto/16 :goto_a5

    .line 16
    .line 17
    :cond_10
    :try_start_10
    const-string v3, "proxy"

    .line 18
    .line 19
    invoke-static {v3, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "m"

    .line 23
    .line 24
    invoke-static {p1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string p2, "onSkuDetailsResponse"

    .line 32
    .line 33
    invoke-static {p1, p2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_28

    .line 38
    .line 39
    goto/16 :goto_a5

    .line 40
    .line 41
    :cond_28
    const/4 p1, 0x0

    .line 42
    if-eqz p3, :cond_34

    .line 43
    .line 44
    const/4 p2, 0x1

    .line 45
    invoke-static {p2, p3}, Ls6/f;->p(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    goto :goto_35

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    goto/16 :goto_a6

    .line 52
    .line 53
    :cond_34
    move-object p2, p1

    .line 54
    :goto_35
    if-eqz p2, :cond_a5

    .line 55
    .line 56
    instance-of p3, p2, Ljava/util/List;

    .line 57
    .line 58
    if-nez p3, :cond_3d

    .line 59
    .line 60
    goto/16 :goto_a5

    .line 61
    .line 62
    :cond_3d
    check-cast p2, Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    :catch_43
    :goto_43
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-eqz p3, :cond_9e

    .line 73
    .line 74
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p3
    :try_end_4d
    .catchall {:try_start_10 .. :try_end_4d} :catchall_31

    .line 78
    :try_start_4d
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_51} :catch_43
    .catchall {:try_start_4d .. :try_end_51} :catchall_31

    .line 82
    if-eqz v3, :cond_55

    .line 83
    .line 84
    :goto_53
    move-object v3, p1

    .line 85
    goto :goto_5d

    .line 86
    :cond_55
    :try_start_55
    iget-object v3, v2, Li2/l;->c:Ljava/lang/Class;
    :try_end_57
    .catchall {:try_start_55 .. :try_end_57} :catchall_58

    .line 87
    .line 88
    goto :goto_5d

    .line 89
    :catchall_58
    move-exception v3

    .line 90
    :try_start_59
    invoke-static {v3, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_53

    .line 94
    :goto_5d
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_61} :catch_43
    .catchall {:try_start_59 .. :try_end_61} :catchall_31

    .line 98
    if-eqz v4, :cond_65

    .line 99
    .line 100
    :goto_63
    move-object v4, p1

    .line 101
    goto :goto_6d

    .line 102
    :cond_65
    :try_start_65
    iget-object v4, v2, Li2/l;->g:Ljava/lang/reflect/Method;
    :try_end_67
    .catchall {:try_start_65 .. :try_end_67} :catchall_68

    .line 103
    .line 104
    goto :goto_6d

    .line 105
    :catchall_68
    move-exception v4

    .line 106
    :try_start_69
    invoke-static {v4, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_63

    .line 110
    :goto_6d
    const/4 v5, 0x0

    .line 111
    new-array v5, v5, [Ljava/lang/Object;

    .line 112
    .line 113
    invoke-static {v3, v4, p3, v5}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    instance-of v3, p3, Ljava/lang/String;

    .line 118
    .line 119
    if-eqz v3, :cond_7b

    .line 120
    .line 121
    check-cast p3, Ljava/lang/String;

    .line 122
    .line 123
    goto :goto_7c

    .line 124
    :cond_7b
    move-object p3, p1

    .line 125
    :goto_7c
    if-nez p3, :cond_7f

    .line 126
    .line 127
    goto :goto_43

    .line 128
    :cond_7f
    new-instance v3, Lorg/json/JSONObject;

    .line 129
    .line 130
    invoke-direct {v3, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result p3

    .line 137
    if-nez p3, :cond_8b

    .line 138
    .line 139
    goto :goto_43

    .line 140
    :cond_8b
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    sget-object v4, Li2/l;->l:Li2/p;

    .line 145
    .line 146
    invoke-static {}, Li2/p;->i()Ljava/util/concurrent/ConcurrentHashMap;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    const-string v5, "skuID"

    .line 151
    .line 152
    invoke-static {v5, p3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, p3, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_9d} :catch_43
    .catchall {:try_start_69 .. :try_end_9d} :catchall_31

    .line 156
    .line 157
    .line 158
    goto :goto_43

    .line 159
    :cond_9e
    :try_start_9e
    iget-object p1, p0, Li2/k;->b:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p1, Ljava/lang/Runnable;

    .line 162
    .line 163
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_a5
    .catchall {:try_start_9e .. :try_end_a5} :catchall_31

    .line 164
    .line 165
    .line 166
    :cond_a5
    :goto_a5
    return-void

    .line 167
    :goto_a6
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    iget v0, p0, Li2/k;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_d0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li2/k;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, [Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v1, p0, Li2/k;->c:Li2/h;

    .line 11
    .line 12
    check-cast v1, Li2/m;

    .line 13
    .line 14
    const-string v2, "proxy"

    .line 15
    .line 16
    invoke-static {v2, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "m"

    .line 20
    .line 21
    invoke-static {p1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_ba

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    const-class v2, Li2/m;

    .line 35
    .line 36
    sparse-switch p2, :sswitch_data_d6

    .line 37
    .line 38
    .line 39
    goto/16 :goto_ba

    .line 40
    .line 41
    :sswitch_28
    const-string p2, "onProductDetailsResponse"

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_32

    .line 48
    .line 49
    goto/16 :goto_ba

    .line 50
    .line 51
    :cond_32
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3a

    .line 56
    .line 57
    goto/16 :goto_ba

    .line 58
    .line 59
    :cond_3a
    :try_start_3a
    invoke-virtual {v1, v0, p3}, Li2/m;->g([Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3f

    .line 60
    .line 61
    .line 62
    goto/16 :goto_ba

    .line 63
    .line 64
    :catchall_3f
    move-exception p1

    .line 65
    invoke-static {p1, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_ba

    .line 69
    .line 70
    :sswitch_45
    const-string p2, "onBillingServiceDisconnected"

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_4f

    .line 77
    .line 78
    goto/16 :goto_ba

    .line 79
    .line 80
    :cond_4f
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_57

    .line 85
    .line 86
    goto/16 :goto_ba

    .line 87
    .line 88
    :cond_57
    :try_start_57
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_6b

    .line 92
    if-eqz p1, :cond_5f

    .line 93
    .line 94
    goto/16 :goto_ba

    .line 95
    .line 96
    :cond_5f
    :try_start_5f
    sget-object p1, Li2/m;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    .line 98
    const/4 p2, 0x0

    .line 99
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_66

    .line 100
    .line 101
    .line 102
    goto :goto_ba

    .line 103
    :catchall_66
    move-exception p1

    .line 104
    :try_start_67
    invoke-static {p1, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    .line 105
    .line 106
    .line 107
    goto :goto_ba

    .line 108
    :catchall_6b
    move-exception p1

    .line 109
    invoke-static {p1, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_ba

    .line 113
    :sswitch_70
    const-string p2, "onBillingSetupFinished"

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_79

    .line 120
    .line 121
    goto :goto_ba

    .line 122
    :cond_79
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_80

    .line 127
    .line 128
    goto :goto_ba

    .line 129
    :cond_80
    :try_start_80
    invoke-virtual {v1, v0, p3}, Li2/m;->f([Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    .line 130
    .line 131
    .line 132
    goto :goto_ba

    .line 133
    :catchall_84
    move-exception p1

    .line 134
    invoke-static {p1, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto :goto_ba

    .line 138
    :sswitch_89
    const-string p2, "onQueryPurchasesResponse"

    .line 139
    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_92

    .line 145
    .line 146
    goto :goto_ba

    .line 147
    :cond_92
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_99

    .line 152
    .line 153
    goto :goto_ba

    .line 154
    :cond_99
    :try_start_99
    invoke-virtual {v1, v0, p3}, Li2/m;->i([Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9d

    .line 155
    .line 156
    .line 157
    goto :goto_ba

    .line 158
    :catchall_9d
    move-exception p1

    .line 159
    invoke-static {p1, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto :goto_ba

    .line 163
    :sswitch_a2
    const-string p2, "onPurchaseHistoryResponse"

    .line 164
    .line 165
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_ab

    .line 170
    .line 171
    goto :goto_ba

    .line 172
    :cond_ab
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_b2

    .line 177
    .line 178
    goto :goto_ba

    .line 179
    :cond_b2
    :try_start_b2
    invoke-virtual {v1, v0, p3}, Li2/m;->h([Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b6

    .line 180
    .line 181
    .line 182
    goto :goto_ba

    .line 183
    :catchall_b6
    move-exception p1

    .line 184
    invoke-static {p1, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_ba
    :goto_ba
    const/4 p1, 0x0

    .line 188
    return-object p1

    .line 189
    :pswitch_bc
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    const/4 v1, 0x0

    .line 194
    if-eqz v0, :cond_c4

    .line 195
    .line 196
    goto :goto_ce

    .line 197
    :cond_c4
    :try_start_c4
    invoke-virtual {p0, p1, p2, p3}, Li2/k;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    sget-object v1, Lr6/j;->a:Lr6/j;
    :try_end_c9
    .catchall {:try_start_c4 .. :try_end_c9} :catchall_ca

    .line 201
    .line 202
    goto :goto_ce

    .line 203
    :catchall_ca
    move-exception p1

    .line 204
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :goto_ce
    return-object v1

    .line 208
    nop

    .line 209
    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_bc
    .end packed-switch

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :sswitch_data_d6
    .sparse-switch
        -0x61e7e72b -> :sswitch_a2
        -0x5f545536 -> :sswitch_89
        -0x4bba42d -> :sswitch_70
        0x492ac854 -> :sswitch_45
        0x73a41073 -> :sswitch_28
    .end sparse-switch
.end method
