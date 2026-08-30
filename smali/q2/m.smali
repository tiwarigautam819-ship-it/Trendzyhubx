###### Class q2.m (q2.m)
.class public final Lq2/m;
.super Lq2/p0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final synthetic w:I


# instance fields
.field public v:Z


# direct methods
.method public static g(Lq2/m;)V
    .registers 1

    .line 1
    invoke-super {p0}, Lq2/p0;->cancel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lq2/g0;->G(Ljava/lang/String;)Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "bridge_args"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2c

    .line 27
    .line 28
    :try_start_1b
    new-instance v0, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lq2/f;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "com.facebook.platform.protocol.BRIDGE_ARGS"

    .line 38
    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_29} :catch_2a

    .line 40
    .line 41
    .line 42
    goto :goto_2c

    .line 43
    :catch_2a
    sget-object v0, Lx1/r;->a:Lx1/r;

    .line 44
    .line 45
    :cond_2c
    :goto_2c
    const-string v0, "method_results"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_4c

    .line 59
    .line 60
    :try_start_3b
    new-instance v0, Lorg/json/JSONObject;

    .line 61
    .line 62
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lq2/f;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "com.facebook.platform.protocol.RESULT_ARGS"

    .line 70
    .line 71
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_49} :catch_4a

    .line 72
    .line 73
    .line 74
    goto :goto_4c

    .line 75
    :catch_4a
    sget-object v0, Lx1/r;->a:Lx1/r;

    .line 76
    .line 77
    :cond_4c
    :goto_4c
    const-string v0, "version"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget-object v0, Lq2/b0;->a:Lq2/b0;

    .line 83
    .line 84
    const-class v0, Lq2/b0;

    .line 85
    .line 86
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const/4 v2, 0x0

    .line 91
    if-eqz v1, :cond_5d

    .line 92
    .line 93
    goto :goto_6a

    .line 94
    :cond_5d
    :try_start_5d
    sget-object v1, Lq2/b0;->d:[Ljava/lang/Integer;

    .line 95
    .line 96
    aget-object v1, v1, v2

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v2
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_66

    .line 102
    goto :goto_6a

    .line 103
    :catchall_66
    move-exception v1

    .line 104
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :goto_6a
    const-string v0, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    .line 108
    .line 109
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    return-object p1
.end method

.method public final cancel()V
    .registers 5

    .line 1
    iget-object v0, p0, Lq2/p0;->d:Lq2/o0;

    .line 2
    .line 3
    iget-boolean v1, p0, Lq2/p0;->k:Z

    .line 4
    .line 5
    if-eqz v1, :cond_36

    .line 6
    .line 7
    iget-boolean v1, p0, Lq2/p0;->i:Z

    .line 8
    .line 9
    if-nez v1, :cond_36

    .line 10
    .line 11
    if-eqz v0, :cond_36

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_13

    .line 18
    .line 19
    goto :goto_36

    .line 20
    :cond_13
    iget-boolean v1, p0, Lq2/m;->v:Z

    .line 21
    .line 22
    if-eqz v1, :cond_18

    .line 23
    .line 24
    return-void

    .line 25
    :cond_18
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lq2/m;->v:Z

    .line 27
    .line 28
    const-string v1, "javascript:(function() {  var event = document.createEvent(\'Event\');  event.initEvent(\'fbPlatformDialogMustClose\',true,true);  document.dispatchEvent(event);})();"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, La2/g;

    .line 43
    .line 44
    const/16 v2, 0xd

    .line 45
    .line 46
    invoke-direct {v1, v2, p0}, La2/g;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v2, 0x5dc

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_36
    :goto_36
    invoke-super {p0}, Lq2/p0;->cancel()V

    .line 56
    .line 57
    .line 58
    return-void
.end method
