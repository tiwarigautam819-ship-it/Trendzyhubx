###### Class g8.e (g8.e)
.class public final Lg8/e;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lorg/apache/cordova/engine/SystemWebViewEngine;

.field public final b:Lk1/h;

.field public c:Z

.field public final d:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Hashtable;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lg8/e;->d:Ljava/util/Hashtable;

    .line 10
    .line 11
    iput-object p1, p0, Lg8/e;->a:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p1, Lorg/apache/cordova/engine/SystemWebViewEngine;->c:Lorg/apache/cordova/q;

    .line 19
    .line 20
    const-string v2, "hostname"

    .line 21
    .line 22
    const-string v3, "localhost"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Lorg/apache/cordova/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lg8/d;

    .line 29
    .line 30
    invoke-direct {v2, p0, p1}, Lg8/d;-><init>(Lg8/e;Lorg/apache/cordova/engine/SystemWebViewEngine;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Li0/b;

    .line 34
    .line 35
    const-string v3, "/"

    .line 36
    .line 37
    invoke-direct {p1, v3, v2}, Li0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance p1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x0

    .line 53
    :goto_34
    if-ge v3, v2, :cond_4f

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    check-cast v4, Li0/b;

    .line 62
    .line 63
    iget-object v5, v4, Li0/b;->a:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v5, Ljava/lang/String;

    .line 66
    .line 67
    iget-object v4, v4, Li0/b;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v4, Lg8/d;

    .line 70
    .line 71
    new-instance v6, Lj1/c;

    .line 72
    .line 73
    invoke-direct {v6, v1, v5, v4}, Lj1/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lg8/d;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_34

    .line 80
    :cond_4f
    new-instance v0, Lk1/h;

    .line 81
    .line 82
    const/16 v1, 0xd

    .line 83
    .line 84
    invoke-direct {v0, v1, p1}, Lk1/h;-><init>(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lg8/e;->b:Lk1/h;

    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lg8/e;->c:Z

    .line 5
    .line 6
    if-nez p1, :cond_10

    .line 7
    .line 8
    const-string p1, "about:"

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_10

    .line 15
    .line 16
    return-void

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lg8/e;->c:Z

    .line 19
    .line 20
    iget-object p1, p0, Lg8/e;->a:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 21
    .line 22
    iget-object p1, p1, Lorg/apache/cordova/engine/SystemWebViewEngine;->e:Lorg/apache/cordova/u;

    .line 23
    .line 24
    invoke-interface {p1, p2}, Lorg/apache/cordova/u;->onPageFinishedLoading(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lg8/e;->c:Z

    .line 6
    .line 7
    iget-object p1, p0, Lg8/e;->a:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 8
    .line 9
    iget-object p1, p1, Lorg/apache/cordova/engine/SystemWebViewEngine;->d:Lorg/apache/cordova/h;

    .line 10
    .line 11
    iget-object p3, p1, Lorg/apache/cordova/h;->b:Lorg/apache/cordova/i0;

    .line 12
    .line 13
    monitor-enter p3

    .line 14
    :try_start_d
    iget-object v0, p3, Lorg/apache/cordova/i0;->b:Ljava/util/LinkedList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 17
    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    invoke-virtual {p3, v0}, Lorg/apache/cordova/i0;->f(I)V

    .line 21
    .line 22
    .line 23
    monitor-exit p3
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_21

    .line 24
    iput v0, p1, Lorg/apache/cordova/h;->c:I

    .line 25
    .line 26
    iget-object p1, p0, Lg8/e;->a:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 27
    .line 28
    iget-object p1, p1, Lorg/apache/cordova/engine/SystemWebViewEngine;->e:Lorg/apache/cordova/u;

    .line 29
    .line 30
    invoke-interface {p1, p2}, Lorg/apache/cordova/u;->onPageStarted(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    :try_start_22
    monitor-exit p3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    .line 36
    throw p1
.end method

.method public final onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lg8/e;->a:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->h:Lorg/apache/cordova/l0;

    .line 4
    .line 5
    if-eqz v0, :cond_3d

    .line 6
    .line 7
    new-instance v1, Lorg/apache/cordova/CordovaClientCertRequest;

    .line 8
    .line 9
    invoke-direct {v1, p2}, Lorg/apache/cordova/CordovaClientCertRequest;-><init>(Landroid/webkit/ClientCertRequest;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_e
    iget-object v3, v0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_39

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lorg/apache/cordova/o;

    .line 36
    .line 37
    if-eqz v4, :cond_18

    .line 38
    .line 39
    iget-object v5, v0, Lorg/apache/cordova/l0;->d:Lorg/apache/cordova/t;

    .line 40
    .line 41
    invoke-virtual {v4, v5, v1}, Lorg/apache/cordova/o;->onReceivedClientCertRequest(Lorg/apache/cordova/t;Lorg/apache/cordova/c0;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_18

    .line 46
    .line 47
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_37

    .line 48
    iget-object p1, p0, Lg8/e;->a:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 49
    .line 50
    iget-object p1, p1, Lorg/apache/cordova/engine/SystemWebViewEngine;->e:Lorg/apache/cordova/u;

    .line 51
    .line 52
    invoke-interface {p1}, Lorg/apache/cordova/u;->clearLoadTimeoutTimer()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_37
    move-exception p1

    .line 57
    goto :goto_3b

    .line 58
    :cond_39
    :try_start_39
    monitor-exit v2

    .line 59
    goto :goto_3d

    .line 60
    :goto_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_37

    .line 61
    throw p1

    .line 62
    :cond_3d
    :goto_3d
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lg8/e;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const/16 v0, -0xa

    .line 7
    .line 8
    iget-object v1, p0, Lg8/e;->a:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 9
    .line 10
    if-ne p2, v0, :cond_1d

    .line 11
    .line 12
    iget-object v0, v1, Lorg/apache/cordova/engine/SystemWebViewEngine;->e:Lorg/apache/cordova/u;

    .line 13
    .line 14
    invoke-interface {v0}, Lorg/apache/cordova/u;->clearLoadTimeoutTimer()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1a

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    iget-object p1, v1, Lorg/apache/cordova/engine/SystemWebViewEngine;->e:Lorg/apache/cordova/u;

    .line 31
    .line 32
    invoke-interface {p1, p2, p3, p4}, Lorg/apache/cordova/u;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lg8/e;->d:Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_73

    .line 12
    .line 13
    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_6d

    .line 18
    .line 19
    invoke-virtual {v0, p4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_67

    .line 24
    .line 25
    const-string v1, ""

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_61

    .line 32
    .line 33
    iget-object v0, p0, Lg8/e;->a:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 34
    .line 35
    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->h:Lorg/apache/cordova/l0;

    .line 36
    .line 37
    if-eqz v0, :cond_5d

    .line 38
    .line 39
    new-instance v1, Lorg/apache/cordova/CordovaHttpAuthHandler;

    .line 40
    .line 41
    invoke-direct {v1, p2}, Lorg/apache/cordova/CordovaHttpAuthHandler;-><init>(Landroid/webkit/HttpAuthHandler;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, v0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 45
    .line 46
    monitor-enter v2

    .line 47
    :try_start_2e
    iget-object v3, v0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_59

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lorg/apache/cordova/o;

    .line 68
    .line 69
    if-eqz v4, :cond_38

    .line 70
    .line 71
    iget-object v5, v0, Lorg/apache/cordova/l0;->d:Lorg/apache/cordova/t;

    .line 72
    .line 73
    invoke-virtual {v4, v5, v1, p3, p4}, Lorg/apache/cordova/o;->onReceivedHttpAuthRequest(Lorg/apache/cordova/t;Lorg/apache/cordova/e0;Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_38

    .line 78
    .line 79
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_2e .. :try_end_4f} :catchall_57

    .line 80
    iget-object p1, p0, Lg8/e;->a:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 81
    .line 82
    iget-object p1, p1, Lorg/apache/cordova/engine/SystemWebViewEngine;->e:Lorg/apache/cordova/u;

    .line 83
    .line 84
    invoke-interface {p1}, Lorg/apache/cordova/u;->clearLoadTimeoutTimer()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catchall_57
    move-exception p1

    .line 89
    goto :goto_5b

    .line 90
    :cond_59
    :try_start_59
    monitor-exit v2

    .line 91
    goto :goto_5d

    .line 92
    :goto_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_57

    .line 93
    throw p1

    .line 94
    :cond_5d
    :goto_5d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_61
    new-instance p1, Ljava/lang/ClassCastException;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_67
    new-instance p1, Ljava/lang/ClassCastException;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_6d
    new-instance p1, Ljava/lang/ClassCastException;

    .line 111
    .line 112
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_73
    new-instance p1, Ljava/lang/ClassCastException;

    .line 117
    .line 118
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 119
    .line 120
    .line 121
    throw p1
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lg8/e;->a:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->g:Lorg/apache/cordova/m;

    .line 4
    .line 5
    invoke-interface {v1}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->g:Lorg/apache/cordova/m;

    .line 14
    .line 15
    invoke-interface {v0}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/16 v2, 0x80

    .line 24
    .line 25
    :try_start_18
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 30
    .line 31
    and-int/lit8 v0, v0, 0x2

    .line 32
    .line 33
    if-eqz v0, :cond_26

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_26
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_29} :catch_2a

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_2a
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 11

    .line 17
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lg8/e;->b:Lk1/h;

    iget-object p2, p2, Lk1/h;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    const/4 v2, 0x0

    if-ge v1, v0, :cond_122

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lj1/c;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lj1/c;->c:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    iget-boolean v5, v3, Lj1/c;->a:Z

    if-nez v5, :cond_31

    :goto_2f
    move-object v3, v2

    goto :goto_62

    .line 22
    :cond_31
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    goto :goto_2f

    .line 23
    :cond_48
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lj1/c;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    goto :goto_2f

    .line 24
    :cond_55
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_60

    goto :goto_2f

    .line 25
    :cond_60
    iget-object v3, v3, Lj1/c;->d:Lg8/d;

    :goto_62
    if-nez v3, :cond_65

    goto :goto_f

    .line 26
    :cond_65
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 27
    const-string v6, ""

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    iget-object v5, v3, Lg8/d;->a:Lg8/e;

    iget-object v3, v3, Lg8/d;->b:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 29
    :try_start_73
    iget-object v5, v5, Lg8/e;->a:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v5, v5, Lorg/apache/cordova/engine/SystemWebViewEngine;->h:Lorg/apache/cordova/l0;

    if-eqz v5, :cond_b4

    .line 30
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget-object v5, v5, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_88
    :goto_88
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/cordova/o;

    if-eqz v7, :cond_88

    .line 32
    invoke-virtual {v7}, Lorg/apache/cordova/o;->getPathHandler()Lorg/apache/cordova/p;

    goto :goto_88

    .line 33
    :cond_9a
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_a5

    goto :goto_b4

    :cond_a5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_ae

    .line 34
    throw v2

    :catch_ac
    move-exception v3

    goto :goto_112

    .line 35
    :cond_ae
    new-instance v3, Ljava/lang/ClassCastException;

    invoke-direct {v3}, Ljava/lang/ClassCastException;-><init>()V

    throw v3

    .line 36
    :cond_b4
    :goto_b4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 37
    const-string v4, "index.html"

    .line 38
    :cond_bc
    iget-object v3, v3, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "www/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 39
    const-string v5, "text/html"

    .line 40
    invoke-static {v4}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10b

    .line 41
    const-string v5, ".js"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_109

    const-string v5, ".mjs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f5

    goto :goto_109

    .line 42
    :cond_f5
    const-string v5, ".wasm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 43
    const-string v5, "application/wasm"

    goto :goto_10b

    .line 44
    :cond_100
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_10b

    .line 45
    :cond_109
    :goto_109
    const-string v5, "application/javascript"

    .line 46
    :cond_10b
    :goto_10b
    new-instance v4, Landroid/webkit/WebResourceResponse;

    invoke-direct {v4, v5, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_110} :catch_ac

    move-object v2, v4

    goto :goto_11e

    .line 47
    :goto_112
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    const-string v4, "SystemWebViewClient"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11e
    if-nez v2, :cond_122

    goto/16 :goto_f

    :cond_122
    return-object v2
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 9

    .line 1
    const-string p1, "text/plain"

    iget-object v0, p0, Lg8/e;->a:Lorg/apache/cordova/engine/SystemWebViewEngine;

    const-string v1, "UTF-8"

    const/4 v2, 0x0

    :try_start_7
    iget-object v3, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->h:Lorg/apache/cordova/l0;

    invoke-virtual {v3, p2}, Lorg/apache/cordova/l0;->m(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 2
    new-instance p2, Landroid/webkit/WebResourceResponse;

    invoke-direct {p2, p1, v1, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p2

    :catch_15
    move-exception p2

    goto :goto_61

    .line 3
    :cond_17
    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->i:Lorg/apache/cordova/s;

    .line 4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 5
    invoke-virtual {v0, p2}, Lorg/apache/cordova/s;->e(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 6
    invoke-virtual {p2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 7
    invoke-static {p2}, Lorg/apache/cordova/s;->c(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2f

    goto :goto_45

    .line 8
    :cond_2f
    invoke-virtual {p2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_53

    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3c

    goto :goto_53

    .line 9
    :cond_3c
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    :goto_45
    const-string v4, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_52

    goto :goto_53

    :cond_52
    return-object v2

    .line 11
    :cond_53
    :goto_53
    invoke-virtual {v0, v3}, Lorg/apache/cordova/s;->d(Landroid/net/Uri;)Lorg/apache/cordova/r;

    move-result-object p2

    .line 12
    new-instance v0, Landroid/webkit/WebResourceResponse;

    iget-object v3, p2, Lorg/apache/cordova/r;->b:Ljava/lang/String;

    iget-object p2, p2, Lorg/apache/cordova/r;->a:Ljava/io/InputStream;

    invoke-direct {v0, v3, v1, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_60} :catch_15

    return-object v0

    .line 13
    :goto_61
    instance-of v0, p2, Ljava/io/FileNotFoundException;

    if-nez v0, :cond_6c

    .line 14
    const-string v0, "SystemWebViewClient"

    const-string v3, "Error occurred while loading a file (returning a 404)."

    .line 15
    invoke-static {v0, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    :cond_6c
    new-instance p2, Landroid/webkit/WebResourceResponse;

    invoke-direct {p2, p1, v1, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p2
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lg8/e;->a:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/apache/cordova/engine/SystemWebViewEngine;->e:Lorg/apache/cordova/u;

    .line 4
    .line 5
    invoke-interface {p1, p2}, Lorg/apache/cordova/u;->onNavigationAttempt(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
