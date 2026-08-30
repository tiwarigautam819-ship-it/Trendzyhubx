###### Class q2.i (q2.i)
.class public final Lq2/i;
.super Landroidx/fragment/app/t;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public t0:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/t;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final K(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5

    .line 1
    iget-object v0, p0, Lq2/i;->t0:Landroid/app/Dialog;

    .line 2
    .line 3
    if-nez v0, :cond_28

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->c()Landroidx/fragment/app/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    goto :goto_20

    .line 12
    :cond_b
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "fragmentActivity.intent"

    .line 17
    .line 18
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v1, v2, v2}, Lq2/b0;->e(Landroid/content/Intent;Landroid/os/Bundle;Lx1/l;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, -0x1

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 31
    .line 32
    .line 33
    :goto_20
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Landroidx/fragment/app/t;->k0:Z

    .line 35
    .line 36
    invoke-super {p0, p1}, Landroidx/fragment/app/t;->K(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_28
    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    const-string v0, "newConfig"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/fragment/app/c0;->N:Z

    .line 8
    .line 9
    iget-object p1, p0, Lq2/i;->t0:Landroid/app/Dialog;

    .line 10
    .line 11
    instance-of v0, p1, Lq2/p0;

    .line 12
    .line 13
    if-eqz v0, :cond_1d

    .line 14
    .line 15
    iget v0, p0, Landroidx/fragment/app/c0;->a:I

    .line 16
    .line 17
    const/4 v1, 0x7

    .line 18
    if-lt v0, v1, :cond_1d

    .line 19
    .line 20
    const-string v0, "null cannot be cast to non-null type com.facebook.internal.WebDialog"

    .line 21
    .line 22
    invoke-static {v0, p1}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    check-cast p1, Lq2/p0;

    .line 26
    .line 27
    invoke-virtual {p1}, Lq2/p0;->d()V

    .line 28
    .line 29
    .line 30
    :cond_1d
    return-void
.end method

.method public final q(Landroid/os/Bundle;)V
    .registers 8

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/t;->q(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lq2/i;->t0:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz p1, :cond_8

    .line 7
    .line 8
    goto :goto_e

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->c()Landroidx/fragment/app/h0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_f

    .line 14
    .line 15
    :goto_e
    return-void

    .line 16
    :cond_f
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "intent"

    .line 21
    .line 22
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lq2/b0;->h(Landroid/content/Intent;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    if-eqz p1, :cond_26

    .line 31
    .line 32
    const-string v2, "is_fallback"

    .line 33
    .line 34
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v2, v0

    .line 40
    :goto_27
    const-string v3, "null cannot be cast to non-null type kotlin.String"

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    if-nez v2, :cond_8b

    .line 44
    .line 45
    if-eqz p1, :cond_35

    .line 46
    .line 47
    const-string v2, "action"

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move-object v2, v4

    .line 55
    :goto_36
    if-eqz p1, :cond_3f

    .line 56
    .line 57
    const-string v5, "params"

    .line 58
    .line 59
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move-object p1, v4

    .line 65
    :goto_40
    invoke-static {v2}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_4c

    .line 70
    .line 71
    sget-object p1, Lx1/r;->a:Lx1/r;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_4c
    invoke-static {v3, v2}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    sget-object v3, Lx1/a;->l:Ljava/util/Date;

    .line 81
    .line 82
    invoke-static {}, Lh8/b;->f()Lx1/a;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {}, Lh8/b;->i()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-nez v5, :cond_5f

    .line 91
    .line 92
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    :cond_5f
    if-eqz p1, :cond_62

    .line 97
    .line 98
    goto :goto_67

    .line 99
    :cond_62
    new-instance p1, Landroid/os/Bundle;

    .line 100
    .line 101
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 102
    .line 103
    .line 104
    :goto_67
    new-instance v5, Lq2/h;

    .line 105
    .line 106
    invoke-direct {v5, p0, v0}, Lq2/h;-><init>(Lq2/i;I)V

    .line 107
    .line 108
    .line 109
    const-string v0, "app_id"

    .line 110
    .line 111
    if-eqz v3, :cond_7d

    .line 112
    .line 113
    iget-object v4, v3, Lx1/a;->h:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v0, "access_token"

    .line 119
    .line 120
    iget-object v3, v3, Lx1/a;->e:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_80

    .line 126
    :cond_7d
    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :goto_80
    invoke-static {v1}, Lq2/p0;->b(Landroidx/fragment/app/h0;)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Lq2/p0;

    .line 133
    .line 134
    const/4 v4, 0x1

    .line 135
    move-object v3, p1

    .line 136
    invoke-direct/range {v0 .. v5}, Lq2/p0;-><init>(Landroidx/fragment/app/h0;Ljava/lang/String;Landroid/os/Bundle;ILq2/k0;)V

    .line 137
    .line 138
    .line 139
    goto :goto_d6

    .line 140
    :cond_8b
    if-eqz p1, :cond_93

    .line 141
    .line 142
    const-string v2, "url"

    .line 143
    .line 144
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    :cond_93
    invoke-static {v4}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_9f

    .line 153
    .line 154
    sget-object p1, Lx1/r;->a:Lx1/r;

    .line 155
    .line 156
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_9f
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const/4 v2, 0x1

    .line 165
    new-array v5, v2, [Ljava/lang/Object;

    .line 166
    .line 167
    aput-object p1, v5, v0

    .line 168
    .line 169
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const-string v0, "fb%s://bridge/"

    .line 174
    .line 175
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    sget v0, Lq2/m;->w:I

    .line 180
    .line 181
    invoke-static {v3, v4}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v1}, Lq2/p0;->b(Landroidx/fragment/app/h0;)V

    .line 185
    .line 186
    .line 187
    new-instance v0, Lq2/m;

    .line 188
    .line 189
    invoke-static {}, Lq2/g;->k()V

    .line 190
    .line 191
    .line 192
    sget v3, Lq2/p0;->m:I

    .line 193
    .line 194
    if-nez v3, :cond_c8

    .line 195
    .line 196
    invoke-static {}, Lq2/g;->k()V

    .line 197
    .line 198
    .line 199
    sget v3, Lq2/p0;->m:I

    .line 200
    .line 201
    :cond_c8
    invoke-direct {v0, v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 202
    .line 203
    .line 204
    iput-object v4, v0, Lq2/p0;->a:Ljava/lang/String;

    .line 205
    .line 206
    iput-object p1, v0, Lq2/p0;->b:Ljava/lang/String;

    .line 207
    .line 208
    new-instance p1, Lq2/h;

    .line 209
    .line 210
    invoke-direct {p1, p0, v2}, Lq2/h;-><init>(Lq2/i;I)V

    .line 211
    .line 212
    .line 213
    iput-object p1, v0, Lq2/p0;->c:Lq2/k0;

    .line 214
    .line 215
    :goto_d6
    iput-object v0, p0, Lq2/i;->t0:Landroid/app/Dialog;

    .line 216
    .line 217
    return-void
.end method

.method public final t()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_2b

    .line 4
    .line 5
    sget-object v1, Lt0/c;->a:Lt0/b;

    .line 6
    .line 7
    new-instance v1, Lt0/d;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "Attempting to get retain instance for fragment "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, p0, v2}, Lt0/e;-><init>(Landroidx/fragment/app/c0;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lt0/c;->b(Lt0/e;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Lt0/c;->a(Landroidx/fragment/app/c0;)Lt0/b;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-boolean v1, p0, Landroidx/fragment/app/c0;->K:Z

    .line 37
    .line 38
    if-eqz v1, :cond_2b

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 42
    .line 43
    .line 44
    :cond_2b
    invoke-super {p0}, Landroidx/fragment/app/t;->t()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final x()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    iget-object v0, p0, Lq2/i;->t0:Landroid/app/Dialog;

    .line 5
    .line 6
    instance-of v1, v0, Lq2/p0;

    .line 7
    .line 8
    if-eqz v1, :cond_13

    .line 9
    .line 10
    const-string v1, "null cannot be cast to non-null type com.facebook.internal.WebDialog"

    .line 11
    .line 12
    invoke-static {v1, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    check-cast v0, Lq2/p0;

    .line 16
    .line 17
    invoke-virtual {v0}, Lq2/p0;->d()V

    .line 18
    .line 19
    .line 20
    :cond_13
    return-void
.end method

###### Class q2.h (q2.h)
.class public final synthetic Lq2/h;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lq2/k0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lq2/i;


# direct methods
.method public synthetic constructor <init>(Lq2/i;I)V
    .registers 3

    .line 1
    iput p2, p0, Lq2/h;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq2/h;->b:Lq2/i;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Lx1/l;)V
    .registers 6

    .line 1
    iget v0, p0, Lq2/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_48

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lq2/h;->b:Lq2/i;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/fragment/app/c0;->c()Landroidx/fragment/app/h0;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-nez p2, :cond_e

    .line 13
    .line 14
    goto :goto_24

    .line 15
    :cond_e
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 18
    .line 19
    .line 20
    if-nez p1, :cond_1a

    .line 21
    .line 22
    new-instance p1, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    :cond_1a
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const/4 p1, -0x1

    .line 31
    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 35
    .line 36
    .line 37
    :goto_24
    return-void

    .line 38
    :pswitch_25
    iget-object v0, p0, Lq2/h;->b:Lq2/i;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->c()Landroidx/fragment/app/h0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-nez v0, :cond_2e

    .line 45
    .line 46
    goto :goto_46

    .line 47
    :cond_2e
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "fragmentActivity.intent"

    .line 52
    .line 53
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, p1, p2}, Lq2/b0;->e(Landroid/content/Intent;Landroid/os/Bundle;Lx1/l;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-nez p2, :cond_3f

    .line 61
    .line 62
    const/4 p2, -0x1

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    const/4 p2, 0x0

    .line 65
    :goto_40
    invoke-virtual {v0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 69
    .line 70
    .line 71
    :goto_46
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_25
    .end packed-switch
.end method
