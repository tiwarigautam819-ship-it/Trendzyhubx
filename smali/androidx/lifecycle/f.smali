###### Class androidx.lifecycle.f (androidx.lifecycle.f)
.class public final Landroidx/lifecycle/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/s;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Landroidx/lifecycle/f;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/lifecycle/f;->b:Ljava/lang/Object;

    .line 4
    sget-object v0, Landroidx/lifecycle/d;->c:Landroidx/lifecycle/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 5
    iget-object v1, v0, Landroidx/lifecycle/d;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/b;

    if-eqz v1, :cond_19

    goto :goto_1e

    :cond_19
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/d;->a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/b;

    move-result-object v1

    .line 7
    :goto_1e
    iput-object v1, p0, Landroidx/lifecycle/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 1
    iput p2, p0, Landroidx/lifecycle/f;->a:I

    iput-object p1, p0, Landroidx/lifecycle/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .registers 8

    .line 1
    iget v0, p0, Landroidx/lifecycle/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_c2

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/f;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/lifecycle/b;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/lifecycle/f;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroidx/lifecycle/s;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/lifecycle/b;->a:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/util/List;

    .line 21
    .line 22
    invoke-static {v2, p1, p2, v1}, Landroidx/lifecycle/b;->a(Ljava/util/List;Landroidx/lifecycle/t;Landroidx/lifecycle/m;Landroidx/lifecycle/s;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Landroidx/lifecycle/m;->ON_ANY:Landroidx/lifecycle/m;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/List;

    .line 32
    .line 33
    invoke-static {v0, p1, p2, v1}, Landroidx/lifecycle/b;->a(Ljava/util/List;Landroidx/lifecycle/t;Landroidx/lifecycle/m;Landroidx/lifecycle/s;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_24
    sget-object p1, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 38
    .line 39
    if-ne p2, p1, :cond_36

    .line 40
    .line 41
    iget-object p1, p0, Landroidx/lifecycle/f;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Landroidx/lifecycle/o;

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Landroidx/lifecycle/f;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Le1/e;

    .line 51
    .line 52
    invoke-virtual {p1}, Le1/e;->d()V

    .line 53
    .line 54
    .line 55
    :cond_36
    return-void

    .line 56
    :pswitch_37
    iget-object v0, p0, Landroidx/lifecycle/f;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Ll6/a;

    .line 59
    .line 60
    sget-object v1, Landroidx/lifecycle/e;->a:[I

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    aget v1, v1, v2

    .line 67
    .line 68
    packed-switch v1, :pswitch_data_ca

    .line 69
    .line 70
    .line 71
    goto/16 :goto_b7

    .line 72
    .line 73
    :pswitch_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string p2, "ON_ANY must not been send by anybody"

    .line 76
    .line 77
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :pswitch_50
    iget v0, v0, Ll6/a;->a:I

    .line 82
    .line 83
    packed-switch v0, :pswitch_data_dc

    .line 84
    .line 85
    .line 86
    goto :goto_b7

    .line 87
    :pswitch_56
    iget v0, v0, Ll6/a;->a:I

    .line 88
    .line 89
    packed-switch v0, :pswitch_data_e2

    .line 90
    .line 91
    .line 92
    goto :goto_b7

    .line 93
    :pswitch_5c
    iget v0, v0, Ll6/a;->a:I

    .line 94
    .line 95
    packed-switch v0, :pswitch_data_e8

    .line 96
    .line 97
    .line 98
    goto :goto_b7

    .line 99
    :pswitch_62
    iget v1, v0, Ll6/a;->a:I

    .line 100
    .line 101
    packed-switch v1, :pswitch_data_ee

    .line 102
    .line 103
    .line 104
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 105
    .line 106
    const/16 v2, 0x1c

    .line 107
    .line 108
    if-lt v1, v2, :cond_76

    .line 109
    .line 110
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v1}, Lp0/b;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    goto :goto_7f

    .line 119
    :cond_76
    new-instance v1, Landroid/os/Handler;

    .line 120
    .line 121
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    .line 127
    .line 128
    :goto_7f
    new-instance v2, Lp0/m;

    .line 129
    .line 130
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 131
    .line 132
    .line 133
    const-wide/16 v3, 0x1f4

    .line 134
    .line 135
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    .line 137
    .line 138
    iget-object v1, v0, Ll6/a;->b:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v1, Landroidx/lifecycle/o;

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    .line 143
    .line 144
    .line 145
    goto :goto_b7

    .line 146
    :pswitch_91
    iget v1, v0, Ll6/a;->a:I

    .line 147
    .line 148
    packed-switch v1, :pswitch_data_f4

    .line 149
    .line 150
    .line 151
    goto :goto_b7

    .line 152
    :pswitch_97
    iget-object v0, v0, Ll6/a;->b:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, Lcom/lottery/app/App;

    .line 155
    .line 156
    iget-object v1, v0, Lcom/lottery/app/App;->c:Ljava/lang/ref/WeakReference;

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Landroid/app/Activity;

    .line 163
    .line 164
    if-eqz v1, :cond_b7

    .line 165
    .line 166
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-nez v2, :cond_b7

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/lottery/app/App;->b()V

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v1}, Lcom/lottery/app/App;->a(Lcom/lottery/app/App;Landroid/app/Activity;)V

    .line 176
    .line 177
    .line 178
    goto :goto_b7

    .line 179
    :pswitch_b2
    iget v0, v0, Ll6/a;->a:I

    .line 180
    .line 181
    packed-switch v0, :pswitch_data_fa

    .line 182
    .line 183
    .line 184
    :cond_b7
    :goto_b7
    :pswitch_b7
    iget-object v0, p0, Landroidx/lifecycle/f;->c:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v0, Landroidx/lifecycle/r;

    .line 187
    .line 188
    if-eqz v0, :cond_c0

    .line 189
    .line 190
    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V

    .line 191
    .line 192
    .line 193
    :cond_c0
    return-void

    .line 194
    nop

    .line 195
    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_37
        :pswitch_24
    .end packed-switch

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_b2
        :pswitch_91
        :pswitch_62
        :pswitch_5c
        :pswitch_56
        :pswitch_50
        :pswitch_48
    .end packed-switch

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
    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_b7
    .end packed-switch

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_b7
    .end packed-switch

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_b7
    .end packed-switch

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_b7
    .end packed-switch

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_97
    .end packed-switch

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_b7
    .end packed-switch
.end method
