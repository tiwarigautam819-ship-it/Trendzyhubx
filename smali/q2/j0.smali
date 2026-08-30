###### Class q2.j0 (q2.j0)
.class public final Lq2/j0;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:Lq2/p0;


# direct methods
.method public constructor <init>(Lq2/p0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lq2/j0;->a:Lq2/p0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lq2/j0;->a:Lq2/p0;

    .line 15
    .line 16
    iget-boolean p2, p1, Lq2/p0;->j:Z

    .line 17
    .line 18
    if-nez p2, :cond_1a

    .line 19
    .line 20
    iget-object p2, p1, Lq2/p0;->e:Landroid/app/ProgressDialog;

    .line 21
    .line 22
    if-eqz p2, :cond_1a

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 25
    .line 26
    .line 27
    :cond_1a
    iget-object p2, p1, Lq2/p0;->g:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    if-eqz p2, :cond_22

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 33
    .line 34
    .line 35
    :cond_22
    iget-object p2, p1, Lq2/p0;->d:Lq2/o0;

    .line 36
    .line 37
    if-nez p2, :cond_27

    .line 38
    .line 39
    goto :goto_2a

    .line 40
    :cond_27
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :goto_2a
    iget-object p2, p1, Lq2/p0;->f:Landroid/widget/ImageView;

    .line 44
    .line 45
    if-nez p2, :cond_2f

    .line 46
    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :goto_32
    const/4 p2, 0x1

    .line 52
    iput-boolean p2, p1, Lq2/p0;->k:Z

    .line 53
    .line 54
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lx1/r;->a:Lx1/r;

    .line 12
    .line 13
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lq2/j0;->a:Lq2/p0;

    .line 17
    .line 18
    iget-boolean p2, p1, Lq2/p0;->j:Z

    .line 19
    .line 20
    if-nez p2, :cond_1c

    .line 21
    .line 22
    iget-object p1, p1, Lq2/p0;->e:Landroid/app/ProgressDialog;

    .line 23
    .line 24
    if-eqz p1, :cond_1c

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 27
    .line 28
    .line 29
    :cond_1c
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "description"

    .line 7
    .line 8
    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "failingUrl"

    .line 12
    .line 13
    invoke-static {v0, p4}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lx1/k;

    .line 20
    .line 21
    invoke-direct {p1, p3, p2, p4}, Lx1/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lq2/j0;->a:Lq2/p0;

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Lq2/p0;->e(Ljava/lang/Exception;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "handler"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "error"

    .line 12
    .line 13
    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lx1/k;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    const/16 p3, -0xb

    .line 26
    .line 27
    invoke-direct {p1, p2, p3, p2}, Lx1/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lq2/j0;->a:Lq2/p0;

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Lq2/p0;->e(Ljava/lang/Exception;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 9

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "url"

    .line 7
    .line 8
    invoke-static {p1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lx1/r;->a:Lx1/r;

    .line 12
    .line 13
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_26

    .line 24
    .line 25
    const-string v0, "^/(v\\d+\\.\\d+/)??dialog/.*"

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_26

    .line 36
    .line 37
    move p1, v1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move p1, v2

    .line 40
    :goto_27
    iget-object v0, p0, Lq2/j0;->a:Lq2/p0;

    .line 41
    .line 42
    iget-object v3, v0, Lq2/p0;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p2, v3, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_ba

    .line 49
    .line 50
    invoke-virtual {v0, p2}, Lq2/p0;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "error"

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    if-nez p2, :cond_43

    .line 61
    .line 62
    const-string p2, "error_type"

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    :cond_43
    const-string v2, "error_msg"

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-nez v2, :cond_51

    .line 75
    .line 76
    const-string v2, "error_message"

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :cond_51
    if-nez v2, :cond_59

    .line 83
    .line 84
    const-string v2, "error_description"

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    :cond_59
    const-string v3, "error_code"

    .line 91
    .line 92
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const/4 v4, -0x1

    .line 97
    if-eqz v3, :cond_6d

    .line 98
    .line 99
    invoke-static {v3}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-nez v5, :cond_6d

    .line 104
    .line 105
    :try_start_68
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v3
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_6c} :catch_6d

    .line 109
    goto :goto_6e

    .line 110
    :catch_6d
    :cond_6d
    move v3, v4

    .line 111
    :goto_6e
    invoke-static {p2}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_8e

    .line 116
    .line 117
    invoke-static {v2}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_8e

    .line 122
    .line 123
    if-ne v3, v4, :cond_8e

    .line 124
    .line 125
    iget-object p2, v0, Lq2/p0;->c:Lq2/k0;

    .line 126
    .line 127
    if-eqz p2, :cond_b9

    .line 128
    .line 129
    iget-boolean v2, v0, Lq2/p0;->i:Z

    .line 130
    .line 131
    if-nez v2, :cond_b9

    .line 132
    .line 133
    iput-boolean v1, v0, Lq2/p0;->i:Z

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    invoke-interface {p2, p1, v2}, Lq2/k0;->a(Landroid/os/Bundle;Lx1/l;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lq2/p0;->dismiss()V

    .line 140
    .line 141
    .line 142
    goto :goto_b9

    .line 143
    :cond_8e
    if-eqz p2, :cond_a4

    .line 144
    .line 145
    const-string p1, "access_denied"

    .line 146
    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-nez p1, :cond_a0

    .line 152
    .line 153
    const-string p1, "OAuthAccessDeniedException"

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_a4

    .line 160
    .line 161
    :cond_a0
    invoke-virtual {v0}, Lq2/p0;->cancel()V

    .line 162
    .line 163
    .line 164
    goto :goto_b9

    .line 165
    :cond_a4
    const/16 p1, 0x1069

    .line 166
    .line 167
    if-ne v3, p1, :cond_ac

    .line 168
    .line 169
    invoke-virtual {v0}, Lq2/p0;->cancel()V

    .line 170
    .line 171
    .line 172
    goto :goto_b9

    .line 173
    :cond_ac
    new-instance p1, Lx1/o;

    .line 174
    .line 175
    invoke-direct {p1, v3, p2, v2}, Lx1/o;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    new-instance p2, Lx1/t;

    .line 179
    .line 180
    invoke-direct {p2, p1, v2}, Lx1/t;-><init>(Lx1/o;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p2}, Lq2/p0;->e(Ljava/lang/Exception;)V

    .line 184
    .line 185
    .line 186
    :cond_b9
    :goto_b9
    return v1

    .line 187
    :cond_ba
    const-string v3, "fbconnect://cancel"

    .line 188
    .line 189
    invoke-static {p2, v3, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_c6

    .line 194
    .line 195
    invoke-virtual {v0}, Lq2/p0;->cancel()V

    .line 196
    .line 197
    .line 198
    return v1

    .line 199
    :cond_c6
    if-nez p1, :cond_e4

    .line 200
    .line 201
    const-string p1, "touch"

    .line 202
    .line 203
    invoke-static {p2, p1}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_d1

    .line 208
    .line 209
    goto :goto_e4

    .line 210
    :cond_d1
    :try_start_d1
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    new-instance v0, Landroid/content/Intent;

    .line 215
    .line 216
    const-string v3, "android.intent.action.VIEW"

    .line 217
    .line 218
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-direct {v0, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d1 .. :try_end_e3} :catch_e4

    .line 226
    .line 227
    .line 228
    return v1

    .line 229
    :catch_e4
    :cond_e4
    :goto_e4
    return v2
.end method
