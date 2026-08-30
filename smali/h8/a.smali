###### Class h8.a (h8.a)
.class public final Lh8/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lh8/a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lh8/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    iget v0, p0, Lh8/a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lh8/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch v0, :pswitch_data_e2

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v0, :cond_11

    .line 15
    .line 16
    goto/16 :goto_9e

    .line 17
    .line 18
    :cond_11
    :try_start_11
    const-string v0, "proxy"

    .line 19
    .line 20
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "m"

    .line 24
    .line 25
    invoke-static {p1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "onBillingSetupFinished"

    .line 33
    .line 34
    invoke-static {p1, v0}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_31

    .line 38
    const-class v0, Li2/l;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    if-eqz p1, :cond_74

    .line 42
    .line 43
    if-eqz p3, :cond_34

    .line 44
    .line 45
    :try_start_2c
    invoke-static {v4, p3}, Ls6/f;->p(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_35

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    goto/16 :goto_9b

    .line 52
    .line 53
    :cond_34
    move-object p1, v3

    .line 54
    :goto_35
    const-string p2, "com.android.billingclient.api.BillingResult"

    .line 55
    .line 56
    invoke-static {p2}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    if-nez p2, :cond_3e

    .line 61
    .line 62
    goto :goto_9e

    .line 63
    :cond_3e
    const-string p3, "getResponseCode"

    .line 64
    .line 65
    new-array v5, v4, [Ljava/lang/Class;

    .line 66
    .line 67
    invoke-static {p2, p3, v5}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    if-nez p3, :cond_49

    .line 72
    .line 73
    goto :goto_9e

    .line 74
    :cond_49
    new-array v5, v4, [Ljava/lang/Object;

    .line 75
    .line 76
    invoke-static {p2, p3, p1, v5}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {p1, p2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_9e

    .line 89
    .line 90
    sget-object p1, Li2/l;->l:Li2/p;

    .line 91
    .line 92
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p1
    :try_end_5f
    .catchall {:try_start_2c .. :try_end_5f} :catchall_31

    .line 96
    if-eqz p1, :cond_63

    .line 97
    .line 98
    :goto_61
    move-object p1, v3

    .line 99
    goto :goto_6b

    .line 100
    :cond_63
    :try_start_63
    sget-object p1, Li2/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_65
    .catchall {:try_start_63 .. :try_end_65} :catchall_66

    .line 101
    .line 102
    goto :goto_6b

    .line 103
    :catchall_66
    move-exception p1

    .line 104
    :try_start_67
    invoke-static {p1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_61

    .line 108
    :goto_6b
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    .line 110
    .line 111
    check-cast v1, Ljava/lang/Runnable;

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 114
    .line 115
    .line 116
    goto :goto_9e

    .line 117
    :cond_74
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string p2, "m.name"

    .line 122
    .line 123
    invoke-static {p2, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    const-string p2, "onBillingServiceDisconnected"

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_9e

    .line 133
    .line 134
    sget-object p1, Li2/l;->l:Li2/p;

    .line 135
    .line 136
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p1
    :try_end_8b
    .catchall {:try_start_67 .. :try_end_8b} :catchall_31

    .line 140
    if-eqz p1, :cond_8f

    .line 141
    .line 142
    :goto_8d
    move-object p1, v3

    .line 143
    goto :goto_97

    .line 144
    :cond_8f
    :try_start_8f
    sget-object p1, Li2/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_91
    .catchall {:try_start_8f .. :try_end_91} :catchall_92

    .line 145
    .line 146
    goto :goto_97

    .line 147
    :catchall_92
    move-exception p1

    .line 148
    :try_start_93
    invoke-static {p1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    goto :goto_8d

    .line 152
    :goto_97
    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_31

    .line 153
    .line 154
    .line 155
    goto :goto_9e

    .line 156
    :goto_9b
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_9e
    :goto_9e
    return-object v3

    .line 160
    :pswitch_9f
    check-cast v1, Lk1/h;

    .line 161
    .line 162
    const-class p1, Lk1/h;

    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    :try_start_a7
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v0, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1
    :try_end_c3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a7 .. :try_end_c3} :catch_c6
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_a7 .. :try_end_c3} :catch_c4

    .line 196
    return-object p1

    .line 197
    :catch_c4
    move-exception p1

    .line 198
    goto :goto_c8

    .line 199
    :catch_c6
    move-exception p1

    .line 200
    goto :goto_dc

    .line 201
    :goto_c8
    new-instance p3, Ljava/lang/RuntimeException;

    .line 202
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v1, "Reflection failed for method "

    .line 206
    .line 207
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    invoke-direct {p3, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    throw p3

    .line 221
    :goto_dc
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    throw p1

    .line 226
    nop

    .line 227
    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_9f
    .end packed-switch
.end method
