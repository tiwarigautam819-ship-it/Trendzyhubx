###### Class y2.q (y2.q)
.class public Ly2/q;
.super Landroidx/fragment/app/c0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public f0:Ljava/lang/String;

.field public g0:Ly2/m;

.field public h0:Ly2/o;

.field public i0:Landroidx/fragment/app/v;

.field public j0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final K()Ly2/o;
    .registers 2

    .line 1
    iget-object v0, p0, Ly2/q;->h0:Ly2/o;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    const-string v0, "loginClient"

    .line 7
    .line 8
    invoke-static {v0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public final o(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/c0;->o(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ly2/q;->K()Ly2/o;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Ly2/o;->i(IILandroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final q(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c0;->q(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_e

    .line 5
    .line 6
    const-string v0, "loginClient"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ly2/o;

    .line 13
    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    const-string v0, "Can\'t set fragment once it is already set."

    .line 17
    .line 18
    if-eqz p1, :cond_20

    .line 19
    .line 20
    iget-object v1, p1, Ly2/o;->c:Ly2/q;

    .line 21
    .line 22
    if-nez v1, :cond_1a

    .line 23
    .line 24
    iput-object p0, p1, Ly2/o;->c:Ly2/q;

    .line 25
    .line 26
    goto :goto_2e

    .line 27
    :cond_1a
    new-instance p1, Lx1/l;

    .line 28
    .line 29
    invoke-direct {p1, v0}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_20
    new-instance p1, Ly2/o;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    iput v1, p1, Ly2/o;->b:I

    .line 40
    .line 41
    iget-object v1, p1, Ly2/o;->c:Ly2/q;

    .line 42
    .line 43
    if-nez v1, :cond_85

    .line 44
    .line 45
    iput-object p0, p1, Ly2/o;->c:Ly2/q;

    .line 46
    .line 47
    :goto_2e
    iput-object p1, p0, Ly2/q;->h0:Ly2/o;

    .line 48
    .line 49
    invoke-virtual {p0}, Ly2/q;->K()Ly2/o;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v0, Lcom/google/firebase/messaging/j0;

    .line 54
    .line 55
    const/16 v1, 0xd

    .line 56
    .line 57
    invoke-direct {v0, v1, p0}, Lcom/google/firebase/messaging/j0;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p1, Ly2/o;->d:Lcom/google/firebase/messaging/j0;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->c()Landroidx/fragment/app/h0;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-nez p1, :cond_44

    .line 67
    .line 68
    return-void

    .line 69
    :cond_44
    invoke-virtual {p1}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-nez v0, :cond_4b

    .line 74
    .line 75
    goto :goto_51

    .line 76
    :cond_4b
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Ly2/q;->f0:Ljava/lang/String;

    .line 81
    .line 82
    :goto_51
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_69

    .line 87
    .line 88
    const-string v1, "com.facebook.LoginFragment:Request"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_69

    .line 95
    .line 96
    const-string v1, "request"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Ly2/m;

    .line 103
    .line 104
    iput-object v0, p0, Ly2/q;->g0:Ly2/m;

    .line 105
    .line 106
    :cond_69
    new-instance v0, Landroidx/fragment/app/t0;

    .line 107
    .line 108
    const/4 v1, 0x2

    .line 109
    invoke-direct {v0, v1}, Landroidx/fragment/app/t0;-><init>(I)V

    .line 110
    .line 111
    .line 112
    new-instance v1, La1/b;

    .line 113
    .line 114
    const/4 v2, 0x1

    .line 115
    invoke-direct {v1, p0, v2, p1}, La1/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    new-instance p1, Lcom/google/firebase/messaging/j0;

    .line 119
    .line 120
    const/16 v2, 0xe

    .line 121
    .line 122
    invoke-direct {p1, v2, v1}, Lcom/google/firebase/messaging/j0;-><init>(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/c0;->D(Le/a;Ld/b;)Ld/c;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Landroidx/fragment/app/v;

    .line 130
    .line 131
    iput-object p1, p0, Ly2/q;->i0:Landroidx/fragment/app/v;

    .line 132
    .line 133
    return-void

    .line 134
    :cond_85
    new-instance p1, Lx1/l;

    .line 135
    .line 136
    invoke-direct {p1, v0}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1
.end method

.method public final r(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p3, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const p3, 0x7f0c0024

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const p2, 0x7f090062

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string p3, "view.findViewById<View>(\u2026in_fragment_progress_bar)"

    .line 22
    .line 23
    invoke-static {p3, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Ly2/q;->j0:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {p0}, Ly2/q;->K()Ly2/o;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    new-instance p3, Ly2/p;

    .line 33
    .line 34
    invoke-direct {p3, p0}, Ly2/p;-><init>(Ly2/q;)V

    .line 35
    .line 36
    .line 37
    iput-object p3, p2, Ly2/o;->e:Ly2/p;

    .line 38
    .line 39
    return-object p1
.end method

.method public final s()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ly2/q;->K()Ly2/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ly2/o;->f()Ly2/t;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_d

    .line 10
    .line 11
    invoke-virtual {v0}, Ly2/t;->b()V

    .line 12
    .line 13
    .line 14
    :cond_d
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 16
    .line 17
    return-void
.end method

.method public final w()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_f

    .line 7
    .line 8
    const v1, 0x7f090062

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    if-eqz v0, :cond_17

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_17
    return-void
.end method

.method public final x()V
    .registers 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    iget-object v1, p0, Ly2/q;->f0:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v1, :cond_18

    .line 7
    .line 8
    const-string v0, "LoginFragment"

    .line 9
    .line 10
    const-string v1, "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->c()Landroidx/fragment/app/h0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_3c

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_18
    invoke-virtual {p0}, Ly2/q;->K()Ly2/o;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Ly2/q;->g0:Ly2/m;

    .line 30
    .line 31
    iget-object v3, v1, Ly2/o;->g:Ly2/m;

    .line 32
    .line 33
    if-eqz v3, :cond_27

    .line 34
    .line 35
    iget v4, v1, Ly2/o;->b:I

    .line 36
    .line 37
    if-ltz v4, :cond_27

    .line 38
    .line 39
    goto :goto_3c

    .line 40
    :cond_27
    if-nez v2, :cond_2a

    .line 41
    .line 42
    goto :goto_3c

    .line 43
    :cond_2a
    iget v4, v2, Ly2/m;->l:I

    .line 44
    .line 45
    if-nez v3, :cond_c6

    .line 46
    .line 47
    sget-object v3, Lx1/a;->l:Ljava/util/Date;

    .line 48
    .line 49
    invoke-static {}, Lh8/b;->i()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_3d

    .line 54
    .line 55
    invoke-virtual {v1}, Ly2/o;->b()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_3d

    .line 60
    .line 61
    :cond_3c
    :goto_3c
    return-void

    .line 62
    :cond_3d
    iput-object v2, v1, Ly2/o;->g:Ly2/m;

    .line 63
    .line 64
    new-instance v3, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iget v2, v2, Ly2/m;->a:I

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    const/4 v6, 0x0

    .line 73
    const/4 v7, 0x2

    .line 74
    if-ne v4, v7, :cond_61

    .line 75
    .line 76
    sget-boolean v8, Lx1/r;->n:Z

    .line 77
    .line 78
    if-nez v8, :cond_87

    .line 79
    .line 80
    packed-switch v2, :pswitch_data_ce

    .line 81
    .line 82
    .line 83
    throw v5

    .line 84
    :pswitch_53
    move v8, v6

    .line 85
    goto :goto_56

    .line 86
    :pswitch_55
    move v8, v0

    .line 87
    :goto_56
    if-eqz v8, :cond_87

    .line 88
    .line 89
    new-instance v8, Ly2/k;

    .line 90
    .line 91
    invoke-direct {v8, v1}, Ly2/k;-><init>(Ly2/o;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_87

    .line 98
    :cond_61
    packed-switch v2, :pswitch_data_de

    .line 99
    .line 100
    .line 101
    throw v5

    .line 102
    :pswitch_65
    move v8, v6

    .line 103
    goto :goto_68

    .line 104
    :pswitch_67
    move v8, v0

    .line 105
    :goto_68
    if-eqz v8, :cond_72

    .line 106
    .line 107
    new-instance v8, Ly2/j;

    .line 108
    .line 109
    invoke-direct {v8, v1}, Ly2/j;-><init>(Ly2/o;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :cond_72
    sget-boolean v8, Lx1/r;->n:Z

    .line 116
    .line 117
    if-nez v8, :cond_87

    .line 118
    .line 119
    packed-switch v2, :pswitch_data_ee

    .line 120
    .line 121
    .line 122
    throw v5

    .line 123
    :pswitch_7a
    move v8, v6

    .line 124
    goto :goto_7d

    .line 125
    :pswitch_7c
    move v8, v0

    .line 126
    :goto_7d
    if-eqz v8, :cond_87

    .line 127
    .line 128
    new-instance v8, Ly2/l;

    .line 129
    .line 130
    invoke-direct {v8, v1}, Ly2/l;-><init>(Ly2/o;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    :cond_87
    :goto_87
    invoke-static {v2}, Lq2/x;->a(I)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-eqz v8, :cond_95

    .line 141
    .line 142
    new-instance v8, Ly2/a;

    .line 143
    .line 144
    invoke-direct {v8, v1}, Ly2/a;-><init>(Ly2/o;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :cond_95
    packed-switch v2, :pswitch_data_fe

    .line 151
    .line 152
    .line 153
    throw v5

    .line 154
    :pswitch_99
    move v8, v6

    .line 155
    goto :goto_9c

    .line 156
    :pswitch_9b
    move v8, v0

    .line 157
    :goto_9c
    if-eqz v8, :cond_a6

    .line 158
    .line 159
    new-instance v8, Ly2/v;

    .line 160
    .line 161
    invoke-direct {v8, v1}, Ly2/v;-><init>(Ly2/o;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    :cond_a6
    if-ne v4, v7, :cond_a9

    .line 168
    .line 169
    goto :goto_b8

    .line 170
    :cond_a9
    packed-switch v2, :pswitch_data_10e

    .line 171
    .line 172
    .line 173
    throw v5

    .line 174
    :pswitch_ad
    move v0, v6

    .line 175
    :pswitch_ae
    if-eqz v0, :cond_b8

    .line 176
    .line 177
    new-instance v0, Ly2/h;

    .line 178
    .line 179
    invoke-direct {v0, v1}, Ly2/h;-><init>(Ly2/o;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :cond_b8
    :goto_b8
    new-array v0, v6, [Ly2/t;

    .line 186
    .line 187
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, [Ly2/t;

    .line 192
    .line 193
    iput-object v0, v1, Ly2/o;->a:[Ly2/t;

    .line 194
    .line 195
    invoke-virtual {v1}, Ly2/o;->j()V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_c6
    new-instance v0, Lx1/l;

    .line 200
    .line 201
    const-string v1, "Attempted to authorize while a request is pending."

    .line 202
    .line 203
    invoke-direct {v0, v1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v0

    .line 207
    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_55
        :pswitch_55
        :pswitch_53
        :pswitch_53
        :pswitch_55
        :pswitch_53
    .end packed-switch

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
    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_67
        :pswitch_67
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
    .end packed-switch

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
    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7a
        :pswitch_7c
        :pswitch_7a
    .end packed-switch

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_99
        :pswitch_99
        :pswitch_9b
        :pswitch_9b
        :pswitch_99
    .end packed-switch

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ae
    .end packed-switch
.end method

.method public final y(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    const-string v0, "loginClient"

    .line 2
    .line 3
    invoke-virtual {p0}, Ly2/q;->K()Ly2/o;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
