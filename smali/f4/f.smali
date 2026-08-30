###### Class f4.f (f4.f)
.class public abstract Lf4/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static a:Ljava/lang/ClassLoader;

.field public static b:Ljava/lang/Thread;


# direct methods
.method public static a(Landroid/view/Window;ZZZ)V
    .registers 12

    .line 1
    if-nez p0, :cond_4

    .line 2
    .line 3
    goto/16 :goto_d9

    .line 4
    .line 5
    :cond_4
    const/high16 v0, 0xc000000

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 8
    .line 9
    .line 10
    const/high16 v0, -0x80000000

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 13
    .line 14
    .line 15
    const/high16 v0, -0x1000000

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 21
    .line 22
    .line 23
    xor-int/lit8 v0, p1, 0x1

    .line 24
    .line 25
    :try_start_18
    invoke-static {p0, v0}, Lt4/b;->k(Landroid/view/Window;Z)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1b

    .line 26
    .line 27
    .line 28
    :catchall_1b
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const/16 v3, 0x400

    .line 36
    .line 37
    const/16 v4, 0x1e

    .line 38
    .line 39
    if-lt v1, v4, :cond_69

    .line 40
    .line 41
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/a;->d(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_9f

    .line 46
    .line 47
    invoke-static {}, Lcom/google/android/gms/measurement/internal/a;->j()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-static {}, Lcom/google/android/gms/measurement/internal/a;->n()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    or-int v7, v5, v6

    .line 56
    .line 57
    if-nez p2, :cond_5c

    .line 58
    .line 59
    if-eqz p3, :cond_3d

    .line 60
    .line 61
    goto :goto_5c

    .line 62
    :cond_3d
    invoke-virtual {p0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/a;->l(Landroid/view/WindowInsetsController;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v5}, Lcom/google/android/gms/measurement/internal/a;->m(Landroid/view/WindowInsetsController;I)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v6}, Lcom/google/android/gms/measurement/internal/a;->m(Landroid/view/WindowInsetsController;I)V

    .line 72
    .line 73
    .line 74
    new-instance p0, Li8/g;

    .line 75
    .line 76
    invoke-direct {p0, p1, v5, v6}, Li8/g;-><init>(Landroid/view/WindowInsetsController;II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    new-instance p0, Li2/f;

    .line 83
    .line 84
    invoke-direct {p0, p1, v7}, Li2/f;-><init>(Landroid/view/WindowInsetsController;I)V

    .line 85
    .line 86
    .line 87
    const-wide/16 p1, 0x20

    .line 88
    .line 89
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    .line 91
    .line 92
    goto :goto_9f

    .line 93
    :cond_5c
    :goto_5c
    if-eqz p2, :cond_5f

    .line 94
    .line 95
    move v2, v5

    .line 96
    :cond_5f
    if-eqz p3, :cond_62

    .line 97
    .line 98
    or-int/2addr v2, v6

    .line 99
    :cond_62
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/a;->g(Landroid/view/WindowInsetsController;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p1, v2}, Lcom/google/android/gms/measurement/internal/a;->h(Landroid/view/WindowInsetsController;I)V

    .line 103
    .line 104
    .line 105
    goto :goto_9f

    .line 106
    :cond_69
    if-eqz p1, :cond_6e

    .line 107
    .line 108
    const/16 p1, 0x700

    .line 109
    .line 110
    goto :goto_70

    .line 111
    :cond_6e
    const/16 p1, 0x100

    .line 112
    .line 113
    :goto_70
    if-eqz p2, :cond_74

    .line 114
    .line 115
    or-int/lit8 p1, p1, 0x4

    .line 116
    .line 117
    :cond_74
    if-eqz p3, :cond_78

    .line 118
    .line 119
    or-int/lit8 p1, p1, 0x2

    .line 120
    .line 121
    :cond_78
    if-nez p2, :cond_7c

    .line 122
    .line 123
    if-eqz p3, :cond_7e

    .line 124
    .line 125
    :cond_7c
    or-int/lit16 p1, p1, 0x1000

    .line 126
    .line 127
    :cond_7e
    if-nez p2, :cond_9c

    .line 128
    .line 129
    if-nez p3, :cond_9c

    .line 130
    .line 131
    invoke-virtual {p0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 135
    .line 136
    .line 137
    new-instance p0, Li8/f;

    .line 138
    .line 139
    invoke-direct {p0, v0, p1, v2}, Li8/f;-><init>(Landroid/view/View;II)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 143
    .line 144
    .line 145
    new-instance p0, Li8/f;

    .line 146
    .line 147
    const/4 p2, 0x1

    .line 148
    invoke-direct {p0, v0, p1, p2}, Li8/f;-><init>(Landroid/view/View;II)V

    .line 149
    .line 150
    .line 151
    const-wide/16 p1, 0x40

    .line 152
    .line 153
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    .line 155
    .line 156
    goto :goto_9f

    .line 157
    :cond_9c
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 158
    .line 159
    .line 160
    :cond_9f
    :goto_9f
    :try_start_9f
    sget-object p0, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 161
    .line 162
    if-lt v1, v4, :cond_a8

    .line 163
    .line 164
    invoke-static {v0}, Lj0/h0;->b(Landroid/view/View;)Lj0/g1;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    goto :goto_cd

    .line 169
    :cond_a8
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    :goto_ac
    instance-of p1, p0, Landroid/content/ContextWrapper;

    .line 174
    .line 175
    const/4 p2, 0x0

    .line 176
    if-eqz p1, :cond_c4

    .line 177
    .line 178
    instance-of p1, p0, Landroid/app/Activity;

    .line 179
    .line 180
    if-eqz p1, :cond_c6

    .line 181
    .line 182
    check-cast p0, Landroid/app/Activity;

    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    if-eqz p0, :cond_c4

    .line 189
    .line 190
    new-instance p1, Lj0/g1;

    .line 191
    .line 192
    invoke-direct {p1, p0}, Lj0/g1;-><init>(Landroid/view/Window;)V

    .line 193
    .line 194
    .line 195
    move-object p0, p1

    .line 196
    goto :goto_cd

    .line 197
    :cond_c4
    move-object p0, p2

    .line 198
    goto :goto_cd

    .line 199
    :cond_c6
    check-cast p0, Landroid/content/ContextWrapper;

    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    goto :goto_ac

    .line 206
    :goto_cd
    if-eqz p0, :cond_d9

    .line 207
    .line 208
    iget-object p1, p0, Lj0/g1;->a:Lx2/a;

    .line 209
    .line 210
    invoke-virtual {p1}, Lx2/a;->o()V

    .line 211
    .line 212
    .line 213
    iget-object p0, p0, Lj0/g1;->a:Lx2/a;

    .line 214
    .line 215
    invoke-virtual {p0}, Lx2/a;->n()V
    :try_end_d9
    .catchall {:try_start_9f .. :try_end_d9} :catchall_d9

    .line 216
    .line 217
    .line 218
    :catchall_d9
    :cond_d9
    :goto_d9
    return-void
.end method

.method public static b(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "singletonList(...)"

    .line 6
    .line 7
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lb0/d;
    .registers 9

    .line 1
    const-string v0, "statusLine"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "HTTP/1."

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p0, v0, v1}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x4

    .line 14
    sget-object v3, Lr7/s;->b:Lr7/s;

    .line 15
    .line 16
    const/16 v4, 0x20

    .line 17
    .line 18
    const-string v5, "Unexpected status line: "

    .line 19
    .line 20
    if-eqz v0, :cond_48

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/16 v1, 0x9

    .line 27
    .line 28
    if-lt v0, v1, :cond_3e

    .line 29
    .line 30
    const/16 v0, 0x8

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ne v0, v4, :cond_3e

    .line 37
    .line 38
    const/4 v0, 0x7

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/lit8 v0, v0, -0x30

    .line 44
    .line 45
    if-eqz v0, :cond_51

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    if-ne v0, v3, :cond_34

    .line 49
    .line 50
    sget-object v3, Lr7/s;->c:Lr7/s;

    .line 51
    .line 52
    goto :goto_51

    .line 53
    :cond_34
    new-instance v0, Ljava/net/ProtocolException;

    .line 54
    .line 55
    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_3e
    new-instance v0, Ljava/net/ProtocolException;

    .line 64
    .line 65
    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_48
    const-string v0, "ICY "

    .line 74
    .line 75
    invoke-static {p0, v0, v1}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_a4

    .line 80
    .line 81
    move v1, v2

    .line 82
    :cond_51
    :goto_51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    add-int/lit8 v6, v1, 0x3

    .line 87
    .line 88
    if-lt v0, v6, :cond_9a

    .line 89
    .line 90
    :try_start_59
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v7, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 95
    .line 96
    invoke-static {v7, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v0
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_66} :catch_90

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-le v7, v6, :cond_87

    .line 108
    .line 109
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-ne v6, v4, :cond_7d

    .line 114
    .line 115
    add-int/2addr v1, v2

    .line 116
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const-string v1, "this as java.lang.String).substring(startIndex)"

    .line 121
    .line 122
    invoke-static {v1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_89

    .line 126
    :cond_7d
    new-instance v0, Ljava/net/ProtocolException;

    .line 127
    .line 128
    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_87
    const-string p0, ""

    .line 137
    .line 138
    :goto_89
    new-instance v1, Lb0/d;

    .line 139
    .line 140
    const/4 v2, 0x4

    .line 141
    invoke-direct {v1, v3, v0, p0, v2}, Lb0/d;-><init>(Ljava/lang/Object;ILjava/io/Serializable;I)V

    .line 142
    .line 143
    .line 144
    return-object v1

    .line 145
    :catch_90
    new-instance v0, Ljava/net/ProtocolException;

    .line 146
    .line 147
    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :cond_9a
    new-instance v0, Ljava/net/ProtocolException;

    .line 156
    .line 157
    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_a4
    new-instance v0, Ljava/net/ProtocolException;

    .line 166
    .line 167
    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v0
.end method

.method public static final d(Landroid/view/View;Le1/g;)V
    .registers 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0900f9

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static e(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_a

    .line 6
    .line 7
    invoke-static {p0, p1}, Lm/e3;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    sget-object v0, Lm/g3;->k:Lm/g3;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_16

    .line 15
    .line 16
    iget-object v0, v0, Lm/g3;->a:Landroid/view/View;

    .line 17
    .line 18
    if-ne v0, p0, :cond_16

    .line 19
    .line 20
    invoke-static {v1}, Lm/g3;->b(Lm/g3;)V

    .line 21
    .line 22
    .line 23
    :cond_16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_32

    .line 28
    .line 29
    sget-object p1, Lm/g3;->l:Lm/g3;

    .line 30
    .line 31
    if-eqz p1, :cond_27

    .line 32
    .line 33
    iget-object v0, p1, Lm/g3;->a:Landroid/view/View;

    .line 34
    .line 35
    if-ne v0, p0, :cond_27

    .line 36
    .line 37
    invoke-virtual {p1}, Lm/g3;->a()V

    .line 38
    .line 39
    .line 40
    :cond_27
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_32
    new-instance v0, Lm/g3;

    .line 52
    .line 53
    invoke-direct {v0, p0, p1}, Lm/g3;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static f(I)I
    .registers 5

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide/32 v2, -0x3361d2af

    .line 3
    .line 4
    .line 5
    mul-long/2addr v0, v2

    .line 6
    long-to-int p0, v0

    .line 7
    const/16 v0, 0xf

    .line 8
    .line 9
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    int-to-long v0, p0

    .line 14
    const-wide/32 v2, 0x1b873593

    .line 15
    .line 16
    .line 17
    mul-long/2addr v0, v2

    .line 18
    long-to-int p0, v0

    .line 19
    return p0
.end method

.method public static g(Landroid/content/Context;I)I
    .registers 3

    .line 1
    const v0, 0x1030001

    .line 2
    .line 3
    .line 4
    filled-new-array {p1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x0

    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    .line 20
    .line 21
    return p1
.end method

.method public static declared-synchronized h()Ljava/lang/ClassLoader;
    .registers 11

    .line 1
    const-class v0, Lf4/f;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lf4/f;->a:Ljava/lang/ClassLoader;

    .line 5
    .line 6
    if-nez v1, :cond_d6

    .line 7
    .line 8
    sget-object v1, Lf4/f;->b:Ljava/lang/Thread;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_ab

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_1d

    .line 26
    .line 27
    move-object v1, v2

    .line 28
    goto/16 :goto_a2

    .line 29
    .line 30
    :cond_1d
    const-class v3, Ljava/lang/Void;

    .line 31
    .line 32
    monitor-enter v3
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_a7

    .line 33
    :try_start_20
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    new-array v5, v4, [Ljava/lang/ThreadGroup;

    .line 38
    .line 39
    invoke-virtual {v1, v5}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;)I

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    move v7, v6

    .line 44
    :goto_2b
    if-ge v7, v4, :cond_44

    .line 45
    .line 46
    aget-object v8, v5, v7

    .line 47
    .line 48
    const-string v9, "dynamiteLoader"

    .line 49
    .line 50
    invoke-virtual {v8}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-eqz v9, :cond_3c

    .line 59
    .line 60
    goto :goto_45

    .line 61
    :cond_3c
    add-int/lit8 v7, v7, 0x1

    .line 62
    .line 63
    goto :goto_2b

    .line 64
    :catchall_3f
    move-exception v1

    .line 65
    goto/16 :goto_a9

    .line 66
    .line 67
    :catch_42
    move-exception v1

    .line 68
    goto :goto_84

    .line 69
    :cond_44
    move-object v8, v2

    .line 70
    :goto_45
    if-nez v8, :cond_4e

    .line 71
    .line 72
    new-instance v8, Ljava/lang/ThreadGroup;

    .line 73
    .line 74
    const-string v4, "dynamiteLoader"

    .line 75
    .line 76
    invoke-direct {v8, v1, v4}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_4e
    invoke-virtual {v8}, Ljava/lang/ThreadGroup;->activeCount()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    new-array v4, v1, [Ljava/lang/Thread;

    .line 84
    .line 85
    invoke-virtual {v8, v4}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    .line 86
    .line 87
    .line 88
    :goto_57
    if-ge v6, v1, :cond_6b

    .line 89
    .line 90
    aget-object v5, v4, v6

    .line 91
    .line 92
    const-string v7, "GmsDynamite"

    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v7
    :try_end_65
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_65} :catch_42
    .catchall {:try_start_20 .. :try_end_65} :catchall_3f

    .line 102
    if-eqz v7, :cond_68

    .line 103
    .line 104
    goto :goto_6c

    .line 105
    :cond_68
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    goto :goto_57

    .line 108
    :cond_6b
    move-object v5, v2

    .line 109
    :goto_6c
    if-nez v5, :cond_a0

    .line 110
    .line 111
    :try_start_6e
    new-instance v1, Le8/b;

    .line 112
    .line 113
    const-string v4, "GmsDynamite"

    .line 114
    .line 115
    invoke-direct {v1, v8, v4}, Le8/b;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/SecurityException; {:try_start_6e .. :try_end_75} :catch_82
    .catchall {:try_start_6e .. :try_end_75} :catchall_3f

    .line 116
    .line 117
    .line 118
    :try_start_75
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_7b
    .catch Ljava/lang/SecurityException; {:try_start_75 .. :try_end_7b} :catch_7d
    .catchall {:try_start_75 .. :try_end_7b} :catchall_3f

    .line 122
    .line 123
    .line 124
    move-object v5, v1

    .line 125
    goto :goto_a0

    .line 126
    :catch_7d
    move-exception v4

    .line 127
    move-object v5, v1

    .line 128
    goto :goto_86

    .line 129
    :goto_80
    move-object v4, v1

    .line 130
    goto :goto_86

    .line 131
    :catch_82
    move-exception v1

    .line 132
    goto :goto_80

    .line 133
    :goto_84
    move-object v4, v1

    .line 134
    move-object v5, v2

    .line 135
    :goto_86
    :try_start_86
    const-string v1, "DynamiteLoaderV2CL"

    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v7, "Failed to enumerate thread/threadgroup "

    .line 147
    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :cond_a0
    :goto_a0
    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_86 .. :try_end_a1} :catchall_3f

    .line 162
    move-object v1, v5

    .line 163
    :goto_a2
    :try_start_a2
    sput-object v1, Lf4/f;->b:Ljava/lang/Thread;
    :try_end_a4
    .catchall {:try_start_a2 .. :try_end_a4} :catchall_a7

    .line 164
    .line 165
    if-nez v1, :cond_ab

    .line 166
    .line 167
    goto :goto_d1

    .line 168
    :catchall_a7
    move-exception v1

    .line 169
    goto :goto_da

    .line 170
    :goto_a9
    :try_start_a9
    monitor-exit v3
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_3f

    .line 171
    :try_start_aa
    throw v1

    .line 172
    :cond_ab
    monitor-enter v1
    :try_end_ac
    .catchall {:try_start_aa .. :try_end_ac} :catchall_a7

    .line 173
    :try_start_ac
    sget-object v3, Lf4/f;->b:Ljava/lang/Thread;

    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 176
    .line 177
    .line 178
    move-result-object v2
    :try_end_b2
    .catch Ljava/lang/SecurityException; {:try_start_ac .. :try_end_b2} :catch_b5
    .catchall {:try_start_ac .. :try_end_b2} :catchall_b3

    .line 179
    goto :goto_d0

    .line 180
    :catchall_b3
    move-exception v2

    .line 181
    goto :goto_d4

    .line 182
    :catch_b5
    move-exception v3

    .line 183
    :try_start_b6
    const-string v4, "DynamiteLoaderV2CL"

    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v6, "Failed to get thread context classloader "

    .line 195
    .line 196
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    :goto_d0
    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_b6 .. :try_end_d1} :catchall_b3

    .line 210
    :goto_d1
    :try_start_d1
    sput-object v2, Lf4/f;->a:Ljava/lang/ClassLoader;
    :try_end_d3
    .catchall {:try_start_d1 .. :try_end_d3} :catchall_a7

    .line 211
    .line 212
    goto :goto_d6

    .line 213
    :goto_d4
    :try_start_d4
    monitor-exit v1
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_b3

    .line 214
    :try_start_d5
    throw v2

    .line 215
    :cond_d6
    :goto_d6
    sget-object v1, Lf4/f;->a:Ljava/lang/ClassLoader;
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_a7

    .line 216
    .line 217
    monitor-exit v0

    .line 218
    return-object v1

    .line 219
    :goto_da
    :try_start_da
    monitor-exit v0
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_a7

    .line 220
    throw v1
.end method

###### Class i8.f (i8.f)
.class public final synthetic Li8/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;II)V
    .registers 4

    .line 1
    iput p3, p0, Li8/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Li8/f;->b:Landroid/view/View;

    .line 4
    .line 5
    iput p2, p0, Li8/f;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget v0, p0, Li8/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li8/f;->b:Landroid/view/View;

    .line 7
    .line 8
    iget v1, p0, Li8/f;->c:I

    .line 9
    .line 10
    :try_start_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_c

    .line 11
    .line 12
    .line 13
    :catchall_c
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Li8/f;->b:Landroid/view/View;

    .line 15
    .line 16
    iget v1, p0, Li8/f;->c:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    :try_start_12
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_18

    .line 23
    .line 24
    .line 25
    :catchall_18
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

###### Class i8.g (i8.g)
.class public final synthetic Li8/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/WindowInsetsController;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/WindowInsetsController;II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li8/g;->a:Landroid/view/WindowInsetsController;

    .line 5
    .line 6
    iput p2, p0, Li8/g;->b:I

    .line 7
    .line 8
    iput p3, p0, Li8/g;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Li8/g;->a:Landroid/view/WindowInsetsController;

    .line 2
    .line 3
    iget v1, p0, Li8/g;->b:I

    .line 4
    .line 5
    iget v2, p0, Li8/g;->c:I

    .line 6
    .line 7
    :try_start_6
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/a;->l(Landroid/view/WindowInsetsController;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/a;->m(Landroid/view/WindowInsetsController;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/a;->m(Landroid/view/WindowInsetsController;I)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_f

    .line 14
    .line 15
    .line 16
    :catchall_f
    return-void
.end method
