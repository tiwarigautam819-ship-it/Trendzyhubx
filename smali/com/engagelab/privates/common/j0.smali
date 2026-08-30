###### Class com.engagelab.privates.common.j0 (com.engagelab.privates.common.j0)
.class public Lcom/engagelab/privates/common/j0;
.super Lcom/engagelab/privates/common/f0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public i:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/engagelab/privates/common/d0;Lcom/engagelab/privates/push/api/InAppMessage;I)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/engagelab/privates/common/f0;-><init>(Landroid/content/Context;Lcom/engagelab/privates/common/d0;Lcom/engagelab/privates/push/api/InAppMessage;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 1
    return-void
.end method

.method public d()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Z
    .registers 9

    .line 1
    const-string v0, "wb inflate completed, content: "

    .line 2
    .line 3
    const-string v1, "file://"

    .line 4
    .line 5
    const-string v2, "content= "

    .line 6
    .line 7
    iget-object v3, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, "BaseInAppWrapper"

    .line 11
    .line 12
    if-eqz v3, :cond_be

    .line 13
    .line 14
    iget-object v3, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 15
    .line 16
    if-nez v3, :cond_13

    .line 17
    .line 18
    goto/16 :goto_be

    .line 19
    .line 20
    :cond_13
    :try_start_13
    invoke-virtual {v3}, Lcom/engagelab/privates/push/api/InAppMessage;->getContent()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v5, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2d

    .line 44
    .line 45
    return v4

    .line 46
    :cond_2d
    iget-object v2, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 47
    .line 48
    if-nez v2, :cond_4d

    .line 49
    .line 50
    new-instance v2, Landroid/webkit/WebView;

    .line 51
    .line 52
    iget-object v6, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 53
    .line 54
    invoke-direct {v2, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 58
    .line 59
    iget-object v6, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const v7, 0x106000d

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_4d

    .line 76
    :catchall_4b
    move-exception v0

    .line 77
    goto :goto_b3

    .line 78
    :cond_4d
    :goto_4d
    iget-object v2, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 79
    .line 80
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    const/4 v7, -0x1

    .line 83
    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 90
    .line 91
    invoke-virtual {v2, v4}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 95
    .line 96
    invoke-virtual {v2, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 100
    .line 101
    const/4 v6, 0x1

    .line 102
    invoke-virtual {v2, v6}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 106
    .line 107
    const/high16 v7, 0x2000000

    .line 108
    .line 109
    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 113
    .line 114
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/WebViewUtils;->webSettings(Landroid/webkit/WebSettings;)V

    .line 119
    .line 120
    .line 121
    iget-object v7, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 122
    .line 123
    invoke-static {v7}, Lcom/engagelab/privates/common/utils/WebViewUtils;->fixSecure(Landroid/webkit/WebView;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/WebViewUtils;->setAllowFileAccess(Landroid/webkit/WebSettings;)V

    .line 127
    .line 128
    .line 129
    const-string v2, "Android sdk version greater than or equal to 17, Java\u2014Js interact by annotation!"

    .line 130
    .line 131
    invoke-static {v5, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j0;->k()V

    .line 135
    .line 136
    .line 137
    iget-object v2, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 138
    .line 139
    new-instance v7, Lcom/engagelab/privates/common/j0$a;

    .line 140
    .line 141
    invoke-direct {v7, p0}, Lcom/engagelab/privates/common/j0$a;-><init>(Lcom/engagelab/privates/common/j0;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 145
    .line 146
    .line 147
    iget-object v2, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 148
    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v5, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_13 .. :try_end_b2} :catchall_4b

    .line 177
    .line 178
    .line 179
    return v6

    .line 180
    :goto_b3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v2, "wb inflate failed, "

    .line 183
    .line 184
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v0, v1, v5}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return v4

    .line 191
    :cond_be
    :goto_be
    const-string v0, "unexpected error param is null"

    .line 192
    .line 193
    invoke-static {v5, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    return v4
.end method

.method public g()V
    .registers 1

    .line 1
    return-void
.end method

.method public h()V
    .registers 5

    .line 1
    const-string v0, "BaseInAppWrapper"

    .line 2
    .line 3
    const-string v1, "wb parent view "

    .line 4
    .line 5
    :try_start_4
    iget-object v2, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 6
    .line 7
    if-eqz v2, :cond_59

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_2b

    .line 13
    if-eqz v2, :cond_2d

    .line 14
    .line 15
    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast v2, Landroid/view/ViewGroup;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_25

    .line 35
    .line 36
    .line 37
    goto :goto_2d

    .line 38
    :catchall_25
    :try_start_25
    const-string v1, "release - parent not viewGroup"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2d

    .line 44
    :catchall_2b
    move-exception v1

    .line 45
    goto :goto_62

    .line 46
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/webkit/WebView;->clearView()V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/webkit/WebView;->clearSslPreferences()V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 85
    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    iput-object v1, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 89
    .line 90
    :cond_59
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f0;->b()V

    .line 91
    .line 92
    .line 93
    const-string v1, "wb release completed."

    .line 94
    .line 95
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_25 .. :try_end_61} :catchall_2b

    .line 96
    .line 97
    .line 98
    goto :goto_6c

    .line 99
    :goto_62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v3, "wb destroy failed. error: "

    .line 102
    .line 103
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_6c
    return-void
.end method

.method public j()V
    .registers 1

    .line 1
    return-void
.end method

.method public final k()V
    .registers 6

    .line 1
    new-instance v0, Lcom/engagelab/privates/inapp/business/helper/WebInterface;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/engagelab/privates/inapp/business/helper/WebInterface;-><init>(Lcom/engagelab/privates/common/f0;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    aput-object v0, v2, v3

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    const-string v4, "EngageLab"

    .line 14
    .line 15
    aput-object v4, v2, v0

    .line 16
    .line 17
    new-array v1, v1, [Ljava/lang/Class;

    .line 18
    .line 19
    const-class v4, Ljava/lang/Object;

    .line 20
    .line 21
    aput-object v4, v1, v3

    .line 22
    .line 23
    const-class v3, Ljava/lang/String;

    .line 24
    .line 25
    aput-object v3, v1, v0

    .line 26
    .line 27
    :try_start_1a
    iget-object v0, p0, Lcom/engagelab/privates/common/j0;->i:Landroid/webkit/WebView;

    .line 28
    .line 29
    const-string v3, "addJavascriptInterface"

    .line 30
    .line 31
    invoke-static {v0, v3, v1, v2}, Lcom/engagelab/privates/common/utils/Utils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_22
    move-exception v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "addJavascriptInterface failed:"

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "BaseInAppWrapper"

    .line 55
    .line 56
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

###### Class com.engagelab.privates.common.j0.a (com.engagelab.privates.common.j0$a)
.class public Lcom/engagelab/privates/common/j0$a;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/j0;->f()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/engagelab/privates/common/j0;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/j0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/j0$a;->a:Lcom/engagelab/privates/common/j0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/engagelab/privates/common/u;->a()Lcom/engagelab/privates/common/u;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/engagelab/privates/common/j0$a;->a:Lcom/engagelab/privates/common/j0;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/engagelab/privates/common/u;->f(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
