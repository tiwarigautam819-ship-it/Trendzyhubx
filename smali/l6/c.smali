###### Class l6.c (l6.c)
.class public final Ll6/c;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/Activity;I)V
    .registers 4

    .line 1
    iput p3, p0, Ll6/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ll6/c;->b:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    if-nez p0, :cond_5

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_5
    const-string v0, "&"

    .line 7
    .line 8
    const-string v1, "&amp;"

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "<"

    .line 15
    .line 16
    const-string v1, "&lt;"

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, ">"

    .line 23
    .line 24
    const-string v1, "&gt;"

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "\""

    .line 31
    .line 32
    const-string v1, "&quot;"

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v0, "\'"

    .line 39
    .line 40
    const-string v1, "&#39;"

    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "\ud83c\udf10 URL Loading onPageFinished"

    .line 2
    .line 3
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "Height: "

    .line 13
    .line 14
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "\u2705WebViewSize"

    .line 25
    .line 26
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final c(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 14

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "\ud83c\udf10 URL Loading onReceivedError WebResourceRequest"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_87

    .line 19
    .line 20
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-static {p2}, Ll6/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {p3}, Ll6/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v4, "<!DOCTYPE html><html><head><meta charset=\'utf-8\'><meta name=\'viewport\' content=\'width=device-width, initial-scale=1.0\'><title>Page loaded error</title><style>body{font-family:sans-serif;text-align:left;padding:24px;color:#666;word-break:break-all}h1{color:#333;text-align:center;margin:8px 0 16px}.box{background:#f5f5f5;border:1px solid #e0e0e0;border-radius:6px;padding:12px;margin:12px 0;font-size:13px}.label{color:#999;font-size:12px;margin-top:8px}.code{font-family:Menlo,monospace;color:#c0392b}button{padding:10px 20px;font-size:16px;margin:16px auto 0;display:block}</style></head><body><h1>\ud83d\ude15 Page loaded error</h1><p style=\'text-align:center\'>Please check your network connection and try again.</p><div class=\'box\'><div class=\'label\'>Error code</div><div class=\'code\'>"

    .line 51
    .line 52
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v4, "</div><div class=\'label\'>Description</div><div class=\'code\'>"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, "</div><div class=\'label\'>URL</div><div>"

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, "</div></div><button onclick=\"window.location.href=\'"

    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, "\'\">Refresh Page</button></body></html>"

    .line 83
    .line 84
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    const-string v8, "UTF-8"

    .line 92
    .line 93
    const/4 v9, 0x0

    .line 94
    const/4 v5, 0x0

    .line 95
    const-string v7, "text/html"

    .line 96
    .line 97
    move-object v4, p1

    .line 98
    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v1, "code="

    .line 104
    .line 105
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v0, " desc="

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p3, " url="

    .line 120
    .line 121
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string p2, "\u274c WebView Load Error"

    .line 132
    .line 133
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :cond_87
    return-void
.end method

.method public final d(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 4

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string v0, "\ud83c\udf10 URL Loading shouldOverrideUrlLoading WebResourceRequest"

    .line 10
    .line 11
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const-string v0, "http://"

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_58

    .line 21
    .line 22
    const-string v0, "https://"

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_58

    .line 29
    .line 30
    const-string v0, "data:text/html"

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_58

    .line 37
    .line 38
    const-string v0, "://"

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2e

    .line 45
    .line 46
    goto :goto_58

    .line 47
    :cond_2e
    const-string v0, "\u274c shouldOverrideUrlLoading"

    .line 48
    .line 49
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    const-string p1, "Notice"

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "Unsupported link type:\n"

    .line 68
    .line 69
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string p2, "OK"

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x1

    .line 88
    return p1

    .line 89
    :cond_58
    :goto_58
    const/4 p1, 0x0

    .line 90
    return p1
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget v0, p0, Ll6/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_2a

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Ll6/c;->b:Landroid/app/Activity;

    .line 14
    .line 15
    check-cast p1, Lcom/lottery/app/MainActivity;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p1, Lcom/lottery/app/MainActivity;->d:Z

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "onPageCommitVisible => "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string v0, "MainActivity"

    .line 35
    .line 36
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/lottery/app/MainActivity;->g()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget v0, p0, Ll6/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_2a

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Ll6/c;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_9
    invoke-virtual {p0, p1, p2}, Ll6/c;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "onPageFinished => "

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "MainActivity"

    .line 28
    .line 29
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Ll6/c;->b:Landroid/app/Activity;

    .line 33
    .line 34
    check-cast p1, Lcom/lottery/app/MainActivity;

    .line 35
    .line 36
    sget p2, Lcom/lottery/app/MainActivity;->g:I

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/lottery/app/MainActivity;->g()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 1
    iget v0, p0, Ll6/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_28

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_9
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p3, "onPageStarted => "

    .line 16
    .line 17
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p3, "/"

    .line 21
    .line 22
    const-string v0, "\\"

    .line 23
    .line 24
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "MainActivity"

    .line 36
    .line 37
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget v0, p0, Ll6/c;->a:I

    packed-switch v0, :pswitch_data_30

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1
    :pswitch_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "legacy error: code="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " url="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " desc="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MainActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 12

    iget v0, p0, Ll6/c;->a:I

    packed-switch v0, :pswitch_data_68

    invoke-virtual {p0, p1, p2, p3}, Ll6/c;->c(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void

    .line 3
    :pswitch_9
    invoke-virtual {p0, p1, p2, p3}, Ll6/c;->c(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    const-string v1, "MainActivity"

    if-nez v0, :cond_2a

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "ignore subresource error: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 6
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MainFrame error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " url="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :try_start_4b
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4e

    .line 8
    :catchall_4e
    const-string v6, "UTF-8"

    const/4 v7, 0x0

    const-string v3, "about:blank"

    const-string v4, "<!DOCTYPE html><html><head><meta charset=\'utf-8\'><meta name=\'viewport\' content=\'width=device-width, initial-scale=1\'><style>body{background:#000;color:#eee;font-family:sans-serif;text-align:center;padding:40px}h1{font-size:20px;margin-bottom:12px}</style></head><body><h1>Connection error</h1><p>Please check your network and try again.</p></body></html>"

    const-string v5, "text/html"

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Ll6/c;->b:Landroid/app/Activity;

    check-cast p1, Lcom/lottery/app/MainActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/lottery/app/MainActivity;->c:Z

    .line 10
    iput-boolean p2, p1, Lcom/lottery/app/MainActivity;->d:Z

    .line 11
    invoke-virtual {p1}, Lcom/lottery/app/MainActivity;->g()V

    :goto_67
    return-void

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 10

    .line 1
    iget v0, p0, Ll6/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_48

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_9
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_47

    .line 14
    .line 15
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eqz p3, :cond_47

    .line 20
    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "HTTP error for main frame => "

    .line 24
    .line 25
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string p3, "MainActivity"

    .line 40
    .line 41
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :try_start_2b
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2e

    .line 45
    .line 46
    .line 47
    :catchall_2e
    const-string v4, "UTF-8"

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    const-string v1, "about:blank"

    .line 51
    .line 52
    const-string v2, "<!DOCTYPE html><html><head><meta charset=\'utf-8\'><meta name=\'viewport\' content=\'width=device-width, initial-scale=1\'><style>body{background:#000;color:#eee;font-family:sans-serif;text-align:center;padding:40px}h1{font-size:20px;margin-bottom:12px}</style></head><body><h1>Server error</h1><p>Please try again later.</p></body></html>"

    .line 53
    .line 54
    const-string v3, "text/html"

    .line 55
    .line 56
    move-object v0, p1

    .line 57
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Ll6/c;->b:Landroid/app/Activity;

    .line 61
    .line 62
    check-cast p1, Lcom/lottery/app/MainActivity;

    .line 63
    .line 64
    const/4 p2, 0x1

    .line 65
    iput-boolean p2, p1, Lcom/lottery/app/MainActivity;->c:Z

    .line 66
    .line 67
    iput-boolean p2, p1, Lcom/lottery/app/MainActivity;->d:Z

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/lottery/app/MainActivity;->g()V

    .line 70
    .line 71
    .line 72
    :cond_47
    return-void

    .line 73
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Ll6/c;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_3f0

    .line 6
    .line 7
    .line 8
    invoke-super/range {p0 .. p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :pswitch_c
    iget-object v0, v1, Ll6/c;->b:Landroid/app/Activity;

    .line 14
    .line 15
    check-cast v0, Lcom/lottery/app/GameActivity;

    .line 16
    .line 17
    iget-object v3, v0, Lcom/lottery/app/GameActivity;->c:Lm1/e;

    .line 18
    .line 19
    if-eqz v3, :cond_3ea

    .line 20
    .line 21
    iget-boolean v0, v3, Lm1/e;->b:Z

    .line 22
    .line 23
    if-eqz v0, :cond_3ea

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_3e7

    .line 27
    .line 28
    iget-boolean v0, v3, Lm1/e;->f:Z

    .line 29
    .line 30
    if-nez v0, :cond_3e7

    .line 31
    .line 32
    if-nez p2, :cond_23

    .line 33
    .line 34
    goto/16 :goto_3e7

    .line 35
    .line 36
    :cond_23
    const-string v0, "GET"

    .line 37
    .line 38
    invoke-interface/range {p2 .. p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_31

    .line 47
    .line 48
    goto/16 :goto_3e7

    .line 49
    .line 50
    :cond_31
    invoke-interface/range {p2 .. p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_39

    .line 55
    .line 56
    goto/16 :goto_3e7

    .line 57
    .line 58
    :cond_39
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string v5, "http"

    .line 63
    .line 64
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_4f

    .line 69
    .line 70
    const-string v5, "https"

    .line 71
    .line 72
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_4f

    .line 77
    .line 78
    goto/16 :goto_3e7

    .line 79
    .line 80
    :cond_4f
    invoke-interface/range {p2 .. p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-eqz v4, :cond_67

    .line 85
    .line 86
    const-string v5, "Range"

    .line 87
    .line 88
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-nez v5, :cond_3e7

    .line 93
    .line 94
    const-string v5, "range"

    .line 95
    .line 96
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_67

    .line 101
    .line 102
    goto/16 :goto_3e7

    .line 103
    .line 104
    :cond_67
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    if-nez v5, :cond_6f

    .line 109
    .line 110
    goto/16 :goto_3e7

    .line 111
    .line 112
    :cond_6f
    const/16 v6, 0x2e

    .line 113
    .line 114
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-ltz v6, :cond_3e7

    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    const/4 v8, 0x1

    .line 125
    sub-int/2addr v7, v8

    .line 126
    if-ne v6, v7, :cond_81

    .line 127
    .line 128
    goto/16 :goto_3e7

    .line 129
    .line 130
    :cond_81
    add-int/2addr v6, v8

    .line 131
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    const/4 v6, 0x0

    .line 136
    if-nez v5, :cond_8d

    .line 137
    .line 138
    sget-object v5, Lm1/a;->a:Ljava/util/Set;

    .line 139
    .line 140
    move v5, v6

    .line 141
    goto :goto_99

    .line 142
    :cond_8d
    sget-object v7, Lm1/a;->a:Ljava/util/Set;

    .line 143
    .line 144
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 145
    .line 146
    invoke-virtual {v5, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    :goto_99
    if-nez v5, :cond_9d

    .line 155
    .line 156
    goto/16 :goto_3e7

    .line 157
    .line 158
    :cond_9d
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    iget-object v0, v3, Lm1/e;->c:Lm1/c;

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-static {v5}, Lm1/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    new-instance v9, Ljava/io/File;

    .line 172
    .line 173
    iget-object v0, v0, Lm1/c;->a:Ljava/io/File;

    .line 174
    .line 175
    const-string v10, ".bin"

    .line 176
    .line 177
    invoke-static {v7, v10}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    new-instance v10, Ljava/io/File;

    .line 185
    .line 186
    const-string v11, ".meta"

    .line 187
    .line 188
    invoke-static {v7, v11}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-direct {v10, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_10f

    .line 200
    .line 201
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_cf

    .line 206
    .line 207
    goto :goto_10f

    .line 208
    :cond_cf
    :try_start_cf
    new-instance v7, Ljava/io/FileInputStream;

    .line 209
    .line 210
    invoke-direct {v7, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d4} :catch_106

    .line 211
    .line 212
    .line 213
    :try_start_d4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 214
    .line 215
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 216
    .line 217
    .line 218
    const/16 v11, 0x400

    .line 219
    .line 220
    new-array v11, v11, [B

    .line 221
    .line 222
    :goto_dd
    invoke-virtual {v7, v11}, Ljava/io/FileInputStream;->read([B)I

    .line 223
    .line 224
    .line 225
    move-result v12

    .line 226
    if-lez v12, :cond_ea

    .line 227
    .line 228
    invoke-virtual {v0, v11, v6, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 229
    .line 230
    .line 231
    goto :goto_dd

    .line 232
    :catchall_e7
    move-exception v0

    .line 233
    move-object v11, v0

    .line 234
    goto :goto_fd

    .line 235
    :cond_ea
    new-instance v11, Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 242
    .line 243
    invoke-direct {v11, v0, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v11}, Lm1/b;->a(Ljava/lang/String;)Lm1/b;

    .line 247
    .line 248
    .line 249
    move-result-object v0
    :try_end_f9
    .catchall {:try_start_d4 .. :try_end_f9} :catchall_e7

    .line 250
    :try_start_f9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fc} :catch_106

    .line 251
    .line 252
    .line 253
    goto :goto_107

    .line 254
    :goto_fd
    :try_start_fd
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_101

    .line 255
    .line 256
    .line 257
    goto :goto_105

    .line 258
    :catchall_101
    move-exception v0

    .line 259
    :try_start_102
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 260
    .line 261
    .line 262
    :goto_105
    throw v11
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_106} :catch_106

    .line 263
    :catch_106
    move-object v0, v2

    .line 264
    :goto_107
    if-nez v0, :cond_111

    .line 265
    .line 266
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 267
    .line 268
    .line 269
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 270
    .line 271
    .line 272
    :cond_10f
    :goto_10f
    move-object v7, v2

    .line 273
    goto :goto_134

    .line 274
    :cond_111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 275
    .line 276
    .line 277
    move-result-wide v10

    .line 278
    iget-wide v12, v0, Lm1/b;->c:J

    .line 279
    .line 280
    sub-long/2addr v10, v12

    .line 281
    const-wide/16 v12, 0x0

    .line 282
    .line 283
    cmp-long v7, v10, v12

    .line 284
    .line 285
    if-ltz v7, :cond_10f

    .line 286
    .line 287
    const-wide/32 v12, 0x240c8400

    .line 288
    .line 289
    .line 290
    cmp-long v7, v10, v12

    .line 291
    .line 292
    if-lez v7, :cond_126

    .line 293
    .line 294
    goto :goto_10f

    .line 295
    :cond_126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 296
    .line 297
    .line 298
    move-result-wide v10

    .line 299
    invoke-virtual {v9, v10, v11}, Ljava/io/File;->setLastModified(J)Z

    .line 300
    .line 301
    .line 302
    new-instance v7, Lcom/google/android/gms/internal/measurement/y4;

    .line 303
    .line 304
    const/16 v10, 0x12

    .line 305
    .line 306
    invoke-direct {v7, v9, v10, v0}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    :goto_134
    if-eqz v7, :cond_175

    .line 310
    .line 311
    :try_start_136
    const-string v0, "GameResourceCache"

    .line 312
    .line 313
    new-instance v9, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string v10, "HIT  "

    .line 319
    .line 320
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    iget-object v0, v7, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v0, Lm1/b;

    .line 336
    .line 337
    iget-object v9, v0, Lm1/b;->a:Ljava/lang/String;

    .line 338
    .line 339
    iget-object v10, v0, Lm1/b;->b:Ljava/lang/String;

    .line 340
    .line 341
    new-instance v11, Ljava/io/FileInputStream;

    .line 342
    .line 343
    iget-object v0, v7, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v0, Ljava/io/File;

    .line 346
    .line 347
    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 348
    .line 349
    .line 350
    const-string v12, "hit"

    .line 351
    .line 352
    iget-object v0, v7, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v0, Ljava/io/File;

    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 357
    .line 358
    .line 359
    move-result-wide v13

    .line 360
    invoke-static/range {v9 .. v14}, Lm1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;J)Landroid/webkit/WebResourceResponse;

    .line 361
    .line 362
    .line 363
    move-result-object v2
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_16b} :catch_16d

    .line 364
    goto/16 :goto_3e7

    .line 365
    .line 366
    :catch_16d
    move-exception v0

    .line 367
    const-string v7, "GameResourceCache"

    .line 368
    .line 369
    const-string v9, "open hit failed"

    .line 370
    .line 371
    invoke-static {v7, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    .line 373
    .line 374
    :cond_175
    iget-boolean v0, v3, Lm1/e;->f:Z

    .line 375
    .line 376
    if-eqz v0, :cond_17b

    .line 377
    .line 378
    goto/16 :goto_3e7

    .line 379
    .line 380
    :cond_17b
    invoke-static {v5}, Lm1/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    iget-object v0, v3, Lm1/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 385
    .line 386
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 387
    .line 388
    invoke-virtual {v0, v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    if-eqz v0, :cond_19e

    .line 393
    .line 394
    const-string v0, "GameResourceCache"

    .line 395
    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    const-string v4, "MISS-dup "

    .line 399
    .line 400
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    goto/16 :goto_3e7

    .line 414
    .line 415
    :cond_19e
    if-nez v4, :cond_1a3

    .line 416
    .line 417
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 418
    .line 419
    goto :goto_1a8

    .line 420
    :cond_1a3
    new-instance v0, Ljava/util/HashMap;

    .line 421
    .line 422
    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 423
    .line 424
    .line 425
    :goto_1a8
    iget-object v4, v3, Lm1/e;->e:Ljava/lang/String;

    .line 426
    .line 427
    new-instance v9, Lcom/google/firebase/messaging/z;

    .line 428
    .line 429
    invoke-direct {v9}, Lcom/google/firebase/messaging/z;-><init>()V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v9, v5}, Lcom/google/firebase/messaging/z;->g(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    const-string v10, "GET"

    .line 436
    .line 437
    invoke-virtual {v9, v10, v2}, Lcom/google/firebase/messaging/z;->d(Ljava/lang/String;Lb0/d;)V

    .line 438
    .line 439
    .line 440
    if-eqz v4, :cond_1da

    .line 441
    .line 442
    const-class v10, Ljava/lang/Object;

    .line 443
    .line 444
    iget-object v11, v9, Lcom/google/firebase/messaging/z;->e:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast v11, Ljava/util/LinkedHashMap;

    .line 447
    .line 448
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    .line 449
    .line 450
    .line 451
    move-result v11

    .line 452
    if-eqz v11, :cond_1cc

    .line 453
    .line 454
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 455
    .line 456
    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 457
    .line 458
    .line 459
    iput-object v11, v9, Lcom/google/firebase/messaging/z;->e:Ljava/lang/Object;

    .line 460
    .line 461
    :cond_1cc
    iget-object v11, v9, Lcom/google/firebase/messaging/z;->e:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v11, Ljava/util/LinkedHashMap;

    .line 464
    .line 465
    invoke-virtual {v10, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    invoke-static {v4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    invoke-interface {v11, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    :cond_1da
    if-eqz v0, :cond_234

    .line 476
    .line 477
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    :cond_1e4
    :goto_1e4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 486
    .line 487
    .line 488
    move-result v4

    .line 489
    if-eqz v4, :cond_234

    .line 490
    .line 491
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    check-cast v4, Ljava/util/Map$Entry;

    .line 496
    .line 497
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v10

    .line 501
    check-cast v10, Ljava/lang/String;

    .line 502
    .line 503
    if-nez v10, :cond_1f9

    .line 504
    .line 505
    goto :goto_1e4

    .line 506
    :cond_1f9
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 507
    .line 508
    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v11

    .line 512
    const-string v12, "host"

    .line 513
    .line 514
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result v12

    .line 518
    if-nez v12, :cond_1e4

    .line 519
    .line 520
    const-string v12, "connection"

    .line 521
    .line 522
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v12

    .line 526
    if-nez v12, :cond_1e4

    .line 527
    .line 528
    const-string v12, "content-length"

    .line 529
    .line 530
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v12

    .line 534
    if-nez v12, :cond_1e4

    .line 535
    .line 536
    const-string v12, "accept-encoding"

    .line 537
    .line 538
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v12

    .line 542
    if-nez v12, :cond_1e4

    .line 543
    .line 544
    const-string v12, "transfer-encoding"

    .line 545
    .line 546
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v11

    .line 550
    if-eqz v11, :cond_228

    .line 551
    .line 552
    goto :goto_1e4

    .line 553
    :cond_228
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v4

    .line 557
    check-cast v4, Ljava/lang/String;

    .line 558
    .line 559
    if-eqz v4, :cond_1e4

    .line 560
    .line 561
    invoke-virtual {v9, v10, v4}, Lcom/google/firebase/messaging/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    goto :goto_1e4

    .line 565
    :cond_234
    sget-object v0, Lm1/j;->a:Lr7/r;

    .line 566
    .line 567
    if-eqz v0, :cond_239

    .line 568
    .line 569
    goto :goto_27b

    .line 570
    :cond_239
    const-class v4, Lm1/j;

    .line 571
    .line 572
    monitor-enter v4

    .line 573
    :try_start_23c
    sget-object v0, Lm1/j;->a:Lr7/r;

    .line 574
    .line 575
    if-nez v0, :cond_278

    .line 576
    .line 577
    new-instance v0, Lr7/q;

    .line 578
    .line 579
    invoke-direct {v0}, Lr7/q;-><init>()V

    .line 580
    .line 581
    .line 582
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 583
    .line 584
    const-string v11, "unit"

    .line 585
    .line 586
    invoke-static {v11, v10}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    .line 588
    .line 589
    const-wide/16 v11, 0x1388

    .line 590
    .line 591
    invoke-static {v11, v12, v10}, Ls7/b;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 592
    .line 593
    .line 594
    move-result v11

    .line 595
    iput v11, v0, Lr7/q;->r:I

    .line 596
    .line 597
    const-wide/16 v11, 0x2710

    .line 598
    .line 599
    invoke-static {v11, v12, v10}, Ls7/b;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 600
    .line 601
    .line 602
    move-result v10

    .line 603
    iput v10, v0, Lr7/q;->s:I

    .line 604
    .line 605
    iput-boolean v8, v0, Lr7/q;->h:Z

    .line 606
    .line 607
    iput-boolean v8, v0, Lr7/q;->i:Z

    .line 608
    .line 609
    new-instance v10, Lk1/h;

    .line 610
    .line 611
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 612
    .line 613
    const/16 v11, 0xa

    .line 614
    .line 615
    invoke-direct {v10, v11}, Lk1/h;-><init>(I)V

    .line 616
    .line 617
    .line 618
    iput-object v10, v0, Lr7/q;->b:Lk1/h;

    .line 619
    .line 620
    iput-boolean v8, v0, Lr7/q;->f:Z

    .line 621
    .line 622
    new-instance v10, Lr7/r;

    .line 623
    .line 624
    invoke-direct {v10, v0}, Lr7/r;-><init>(Lr7/q;)V

    .line 625
    .line 626
    .line 627
    sput-object v10, Lm1/j;->a:Lr7/r;

    .line 628
    .line 629
    goto :goto_278

    .line 630
    :catchall_275
    move-exception v0

    .line 631
    goto/16 :goto_3e5

    .line 632
    .line 633
    :cond_278
    :goto_278
    sget-object v0, Lm1/j;->a:Lr7/r;

    .line 634
    .line 635
    monitor-exit v4
    :try_end_27b
    .catchall {:try_start_23c .. :try_end_27b} :catchall_275

    .line 636
    :goto_27b
    invoke-virtual {v9}, Lcom/google/firebase/messaging/z;->a()Lcom/google/android/gms/common/internal/g;

    .line 637
    .line 638
    .line 639
    move-result-object v4

    .line 640
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 641
    .line 642
    .line 643
    new-instance v9, Lv7/i;

    .line 644
    .line 645
    invoke-direct {v9, v0, v4}, Lv7/i;-><init>(Lr7/r;Lcom/google/android/gms/common/internal/g;)V

    .line 646
    .line 647
    .line 648
    :try_start_287
    invoke-virtual {v9}, Lv7/i;->f()Lr7/u;

    .line 649
    .line 650
    .line 651
    move-result-object v4
    :try_end_28b
    .catchall {:try_start_287 .. :try_end_28b} :catchall_354

    .line 652
    :try_start_28b
    iget v0, v4, Lr7/u;->d:I

    .line 653
    .line 654
    const/16 v9, 0xc8

    .line 655
    .line 656
    if-gt v9, v0, :cond_296

    .line 657
    .line 658
    const/16 v10, 0x12c

    .line 659
    .line 660
    if-ge v0, v10, :cond_296

    .line 661
    .line 662
    goto :goto_297

    .line 663
    :cond_296
    move v8, v6

    .line 664
    :goto_297
    if-eqz v8, :cond_32f

    .line 665
    .line 666
    if-eq v0, v9, :cond_29d

    .line 667
    .line 668
    goto/16 :goto_32f

    .line 669
    .line 670
    :cond_29d
    iget-object v0, v4, Lr7/u;->g:Lr7/w;

    .line 671
    .line 672
    if-nez v0, :cond_2c0

    .line 673
    .line 674
    const-string v0, "NetFetcher"

    .line 675
    .line 676
    new-instance v6, Ljava/lang/StringBuilder;

    .line 677
    .line 678
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    .line 680
    .line 681
    const-string v8, "empty body: "

    .line 682
    .line 683
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v6

    .line 693
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .line 695
    .line 696
    invoke-virtual {v4}, Lr7/u;->close()V

    .line 697
    .line 698
    .line 699
    :catchall_2ba
    :cond_2ba
    :goto_2ba
    move-object v9, v2

    .line 700
    goto/16 :goto_368

    .line 701
    .line 702
    :catchall_2bd
    move-exception v0

    .line 703
    goto/16 :goto_356

    .line 704
    .line 705
    :cond_2c0
    invoke-virtual {v0}, Lr7/w;->a()J

    .line 706
    .line 707
    .line 708
    move-result-wide v12

    .line 709
    const-wide/32 v8, 0x3200000

    .line 710
    .line 711
    .line 712
    cmp-long v6, v12, v8

    .line 713
    .line 714
    if-lez v6, :cond_2ed

    .line 715
    .line 716
    const-string v0, "NetFetcher"

    .line 717
    .line 718
    new-instance v6, Ljava/lang/StringBuilder;

    .line 719
    .line 720
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 721
    .line 722
    .line 723
    const-string v8, "too large ("

    .line 724
    .line 725
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    const-string v8, "), skip cache: "

    .line 732
    .line 733
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v6

    .line 743
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    .line 745
    .line 746
    invoke-virtual {v4}, Lr7/u;->close()V

    .line 747
    .line 748
    .line 749
    goto :goto_2ba

    .line 750
    :cond_2ed
    invoke-virtual {v0}, Lr7/w;->c()Lr7/p;

    .line 751
    .line 752
    .line 753
    move-result-object v6

    .line 754
    if-eqz v6, :cond_31e

    .line 755
    .line 756
    new-instance v8, Ljava/lang/StringBuilder;

    .line 757
    .line 758
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    .line 760
    .line 761
    iget-object v9, v6, Lr7/p;->b:Ljava/lang/String;

    .line 762
    .line 763
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    const-string v9, "/"

    .line 767
    .line 768
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    iget-object v9, v6, Lr7/p;->c:Ljava/lang/String;

    .line 772
    .line 773
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v8

    .line 780
    invoke-virtual {v6, v2}, Lr7/p;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 781
    .line 782
    .line 783
    move-result-object v9

    .line 784
    if-eqz v9, :cond_31c

    .line 785
    .line 786
    invoke-virtual {v6, v2}, Lr7/p;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 787
    .line 788
    .line 789
    move-result-object v6

    .line 790
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v6

    .line 794
    move-object v11, v6

    .line 795
    :goto_31a
    move-object v10, v8

    .line 796
    goto :goto_320

    .line 797
    :cond_31c
    move-object v11, v2

    .line 798
    goto :goto_31a

    .line 799
    :cond_31e
    move-object v10, v2

    .line 800
    move-object v11, v10

    .line 801
    :goto_320
    new-instance v8, Lm1/i;

    .line 802
    .line 803
    invoke-virtual {v0}, Lr7/w;->g()Le8/i;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    invoke-interface {v0}, Le8/i;->r()Ljava/io/InputStream;

    .line 808
    .line 809
    .line 810
    move-result-object v9

    .line 811
    invoke-direct/range {v8 .. v13}, Lm1/i;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;J)V

    .line 812
    .line 813
    .line 814
    move-object v9, v8

    .line 815
    goto :goto_368

    .line 816
    :cond_32f
    :goto_32f
    const-string v0, "NetFetcher"

    .line 817
    .line 818
    new-instance v6, Ljava/lang/StringBuilder;

    .line 819
    .line 820
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 821
    .line 822
    .line 823
    const-string v8, "non-200 "

    .line 824
    .line 825
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    .line 827
    .line 828
    iget v8, v4, Lr7/u;->d:I

    .line 829
    .line 830
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    const-string v8, " "

    .line 834
    .line 835
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v6

    .line 845
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    .line 847
    .line 848
    invoke-virtual {v4}, Lr7/u;->close()V
    :try_end_352
    .catchall {:try_start_28b .. :try_end_352} :catchall_2bd

    .line 849
    .line 850
    .line 851
    goto/16 :goto_2ba

    .line 852
    .line 853
    :catchall_354
    move-exception v0

    .line 854
    move-object v4, v2

    .line 855
    :goto_356
    const-string v6, "NetFetcher"

    .line 856
    .line 857
    const-string v8, "openStream failed: "

    .line 858
    .line 859
    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v8

    .line 863
    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 864
    .line 865
    .line 866
    if-eqz v4, :cond_2ba

    .line 867
    .line 868
    :try_start_363
    invoke-virtual {v4}, Lr7/u;->close()V
    :try_end_366
    .catchall {:try_start_363 .. :try_end_366} :catchall_2ba

    .line 869
    .line 870
    .line 871
    goto/16 :goto_2ba

    .line 872
    .line 873
    :goto_368
    if-nez v9, :cond_37c

    .line 874
    .line 875
    iget-object v0, v3, Lm1/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 876
    .line 877
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    const-string v0, "GameResourceCache"

    .line 881
    .line 882
    const-string v3, "MISS-nocache "

    .line 883
    .line 884
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v3

    .line 888
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    .line 890
    .line 891
    goto/16 :goto_3e7

    .line 892
    .line 893
    :cond_37c
    iget-object v0, v3, Lm1/e;->c:Lm1/c;

    .line 894
    .line 895
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 896
    .line 897
    .line 898
    :try_start_381
    const-string v4, "tee_"

    .line 899
    .line 900
    const-string v6, ".tmp"

    .line 901
    .line 902
    iget-object v0, v0, Lm1/c;->a:Ljava/io/File;

    .line 903
    .line 904
    invoke-static {v4, v6, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 905
    .line 906
    .line 907
    move-result-object v0
    :try_end_38b
    .catch Ljava/io/IOException; {:try_start_381 .. :try_end_38b} :catch_38d

    .line 908
    move-object v4, v0

    .line 909
    goto :goto_396

    .line 910
    :catch_38d
    move-exception v0

    .line 911
    const-string v4, "CacheStore"

    .line 912
    .line 913
    const-string v6, "createTempFile failed"

    .line 914
    .line 915
    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    .line 917
    .line 918
    move-object v4, v2

    .line 919
    :goto_396
    if-nez v4, :cond_3a3

    .line 920
    .line 921
    iget-object v0, v3, Lm1/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 922
    .line 923
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    :try_start_39d
    iget-object v0, v9, Lm1/i;->a:Ljava/io/InputStream;

    .line 927
    .line 928
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3a2
    .catchall {:try_start_39d .. :try_end_3a2} :catchall_3e7

    .line 929
    .line 930
    .line 931
    goto :goto_3e7

    .line 932
    :cond_3a3
    :try_start_3a3
    new-instance v0, Ljava/io/FileOutputStream;

    .line 933
    .line 934
    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3a8
    .catch Ljava/io/IOException; {:try_start_3a3 .. :try_end_3a8} :catch_3d6

    .line 935
    .line 936
    .line 937
    iget-object v6, v9, Lm1/i;->b:Ljava/lang/String;

    .line 938
    .line 939
    iget-object v11, v9, Lm1/i;->c:Ljava/lang/String;

    .line 940
    .line 941
    new-instance v2, Lm1/d;

    .line 942
    .line 943
    move-object v8, v7

    .line 944
    move-object v7, v11

    .line 945
    invoke-direct/range {v2 .. v8}, Lm1/d;-><init>(Lm1/e;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    new-instance v10, Landroidx/fragment/app/e;

    .line 949
    .line 950
    const/4 v11, 0x6

    .line 951
    invoke-direct {v10, v3, v4, v8, v11}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 952
    .line 953
    .line 954
    new-instance v12, Lm1/k;

    .line 955
    .line 956
    iget-object v3, v9, Lm1/i;->a:Ljava/io/InputStream;

    .line 957
    .line 958
    invoke-direct {v12, v3, v0, v2, v10}, Lm1/k;-><init>(Ljava/io/InputStream;Ljava/io/FileOutputStream;Lm1/d;Landroidx/fragment/app/e;)V

    .line 959
    .line 960
    .line 961
    const-string v0, "GameResourceCache"

    .line 962
    .line 963
    const-string v2, "MISS-tee "

    .line 964
    .line 965
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    .line 971
    .line 972
    const-string v13, "miss-tee"

    .line 973
    .line 974
    iget-wide v14, v9, Lm1/i;->d:J

    .line 975
    .line 976
    move-object v10, v6

    .line 977
    move-object v11, v7

    .line 978
    invoke-static/range {v10 .. v15}, Lm1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;J)Landroid/webkit/WebResourceResponse;

    .line 979
    .line 980
    .line 981
    move-result-object v2

    .line 982
    goto :goto_3e7

    .line 983
    :catch_3d6
    move-object v8, v7

    .line 984
    iget-object v0, v3, Lm1/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 985
    .line 986
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    :try_start_3dc
    iget-object v0, v9, Lm1/i;->a:Ljava/io/InputStream;

    .line 990
    .line 991
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3e1
    .catchall {:try_start_3dc .. :try_end_3e1} :catchall_3e1

    .line 992
    .line 993
    .line 994
    :catchall_3e1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 995
    .line 996
    .line 997
    goto :goto_3e7

    .line 998
    :goto_3e5
    :try_start_3e5
    monitor-exit v4
    :try_end_3e6
    .catchall {:try_start_3e5 .. :try_end_3e6} :catchall_275

    .line 999
    throw v0

    .line 1000
    :catchall_3e7
    :cond_3e7
    :goto_3e7
    if-eqz v2, :cond_3ea

    .line 1001
    .line 1002
    goto :goto_3ee

    .line 1003
    :cond_3ea
    invoke-super/range {p0 .. p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v2

    .line 1007
    :goto_3ee
    return-object v2

    .line 1008
    nop

    .line 1009
    :pswitch_data_3f0
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 5

    iget v0, p0, Ll6/c;->a:I

    packed-switch v0, :pswitch_data_26

    invoke-virtual {p0, p1, p2}, Ll6/c;->d(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1

    .line 1
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shouldOverrideUrlLoading => "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1, p2}, Ll6/c;->d(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    .line 3
    const-string v0, "\ud83c\udf10 URL Loading shouldOverrideUrlLoading WebView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_3b

    .line 5
    :cond_16
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "Notice"

    .line 6
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Unsupported link type:\n"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "OK"

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1

    :cond_3b
    :goto_3b
    const/4 p1, 0x0

    return p1
.end method
