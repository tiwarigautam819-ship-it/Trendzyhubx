###### Class g8.c (g8.c)
.class public final Lg8/c;
.super Landroid/webkit/WebChromeClient;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:J

.field public final b:Lorg/apache/cordova/engine/SystemWebViewEngine;

.field public c:Landroid/widget/LinearLayout;

.field public final d:Lcom/google/android/gms/internal/measurement/y4;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, 0x6400000

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lg8/c;->a:J

    .line 8
    .line 9
    iput-object p1, p0, Lg8/c;->b:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 10
    .line 11
    iget-object p1, p1, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 18
    .line 19
    const/16 v1, 0x15

    .line 20
    .line 21
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lg8/c;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final getVideoLoadingProgressView()Landroid/view/View;
    .registers 6

    .line 1
    iget-object v0, p0, Lg8/c;->c:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_43

    .line 4
    .line 5
    new-instance v0, Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iget-object v1, p0, Lg8/c;->b:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/apache/cordova/engine/SystemWebViewEngine;->getView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 25
    .line 26
    const/4 v3, -0x2

    .line 27
    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    const/16 v4, 0xd

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Landroid/widget/ProgressBar;

    .line 39
    .line 40
    invoke-virtual {v1}, Lorg/apache/cordova/engine/SystemWebViewEngine;->getView()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    .line 53
    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    const/16 v3, 0x11

    .line 57
    .line 58
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lg8/c;->c:Landroid/widget/LinearLayout;

    .line 67
    .line 68
    :cond_43
    iget-object v0, p0, Lg8/c;->c:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    return-object v0
.end method

.method public final onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 10

    .line 1
    iget-wide p1, p0, Lg8/c;->a:J

    .line 2
    .line 3
    invoke-interface {p9, p1, p2}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lg8/c;->b:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 10
    .line 11
    iget-object p1, p1, Lorg/apache/cordova/engine/SystemWebViewEngine;->h:Lorg/apache/cordova/l0;

    .line 12
    .line 13
    const-string p2, "Geolocation"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lorg/apache/cordova/l0;->c(Ljava/lang/String;)Lorg/apache/cordova/o;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1d

    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/apache/cordova/o;->hasPermisssion()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_1d

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lorg/apache/cordova/o;->requestPermissions(I)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    return-void
.end method

.method public final onHideCustomView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lg8/c;->b:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebViewEngine;->getCordovaWebView()Lorg/apache/cordova/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lorg/apache/cordova/t;->hideCustomView()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 7

    .line 1
    new-instance p1, Lo5/c;

    .line 2
    .line 3
    const/16 p2, 0xa

    .line 4
    .line 5
    invoke-direct {p1, p2, p4}, Lo5/c;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lg8/c;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p4, Landroid/app/AlertDialog$Builder;

    .line 14
    .line 15
    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {p4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 23
    .line 24
    .line 25
    const-string p3, "Alert"

    .line 26
    .line 27
    invoke-virtual {p4, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 28
    .line 29
    .line 30
    const/4 p3, 0x1

    .line 31
    invoke-virtual {p4, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 32
    .line 33
    .line 34
    new-instance v0, Lorg/apache/cordova/i;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/i;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const v1, 0x104000a

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 44
    .line 45
    .line 46
    new-instance v0, Landroidx/fragment/app/q;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/q;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    .line 54
    .line 55
    new-instance v0, Lorg/apache/cordova/j;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/j;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p4, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p2, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 69
    .line 70
    return p3
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 7

    .line 1
    new-instance p1, Lk1/h;

    .line 2
    .line 3
    const/16 p2, 0xa

    .line 4
    .line 5
    invoke-direct {p1, p2, p4}, Lk1/h;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lg8/c;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p4, Landroid/app/AlertDialog$Builder;

    .line 14
    .line 15
    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {p4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 23
    .line 24
    .line 25
    const-string p3, "Confirm"

    .line 26
    .line 27
    invoke-virtual {p4, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 28
    .line 29
    .line 30
    const/4 p3, 0x1

    .line 31
    invoke-virtual {p4, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 32
    .line 33
    .line 34
    new-instance v0, Lorg/apache/cordova/k;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, p1, v1}, Lorg/apache/cordova/k;-><init>(Lk1/h;I)V

    .line 38
    .line 39
    .line 40
    const v1, 0x104000a

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 44
    .line 45
    .line 46
    new-instance v0, Lorg/apache/cordova/k;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-direct {v0, p1, v1}, Lorg/apache/cordova/k;-><init>(Lk1/h;I)V

    .line 50
    .line 51
    .line 52
    const/high16 v1, 0x1040000

    .line 53
    .line 54
    invoke-virtual {p4, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 55
    .line 56
    .line 57
    new-instance v0, Landroidx/fragment/app/q;

    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/q;-><init>(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    .line 65
    .line 66
    new-instance v0, Lorg/apache/cordova/j;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/j;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p2, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 80
    .line 81
    return p3
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 14

    .line 1
    iget-object p1, p0, Lg8/c;->b:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 2
    .line 3
    iget-object v0, p1, Lorg/apache/cordova/engine/SystemWebViewEngine;->d:Lorg/apache/cordova/h;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 v6, 0x0

    .line 10
    if-eqz p4, :cond_51

    .line 11
    .line 12
    const-string v1, "gap:"

    .line 13
    .line 14
    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_51

    .line 19
    .line 20
    :try_start_13
    new-instance p2, Lorg/json/JSONArray;

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {p2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x2

    .line 39
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x3

    .line 44
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_2f} :catch_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_2f} :catch_40

    .line 48
    move-object v5, p3

    .line 49
    :try_start_30
    invoke-virtual/range {v0 .. v5}, Lorg/apache/cordova/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    if-nez p2, :cond_148

    .line 54
    .line 55
    const-string p2, ""
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_38} :catch_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_30 .. :try_end_38} :catch_3a

    .line 56
    .line 57
    goto/16 :goto_148

    .line 58
    .line 59
    :catch_3a
    move-exception v0

    .line 60
    :goto_3b
    move-object p2, v0

    .line 61
    goto :goto_46

    .line 62
    :catch_3d
    move-exception v0

    .line 63
    :goto_3e
    move-object p2, v0

    .line 64
    goto :goto_4a

    .line 65
    :catch_40
    move-exception v0

    .line 66
    move-object v5, p3

    .line 67
    goto :goto_3b

    .line 68
    :catch_43
    move-exception v0

    .line 69
    move-object v5, p3

    .line 70
    goto :goto_3e

    .line 71
    :goto_46
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    goto :goto_4d

    .line 75
    :goto_4a
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :goto_4d
    const-string p2, ""

    .line 79
    .line 80
    goto/16 :goto_148

    .line 81
    .line 82
    :cond_51
    move-object v5, p3

    .line 83
    if-eqz p4, :cond_88

    .line 84
    .line 85
    const-string p3, "gap_bridge_mode:"

    .line 86
    .line 87
    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-eqz p3, :cond_88

    .line 92
    .line 93
    const/16 p2, 0x10

    .line 94
    .line 95
    :try_start_5e
    invoke-virtual {p4, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    invoke-virtual {v0, p2}, Lorg/apache/cordova/h;->b(I)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-nez p2, :cond_71

    .line 112
    .line 113
    goto :goto_84

    .line 114
    :cond_71
    iget-object p2, v0, Lorg/apache/cordova/h;->b:Lorg/apache/cordova/i0;

    .line 115
    .line 116
    invoke-virtual {p2, p3}, Lorg/apache/cordova/i0;->f(I)V
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_76} :catch_7a
    .catch Ljava/lang/IllegalAccessException; {:try_start_5e .. :try_end_76} :catch_77

    .line 117
    .line 118
    .line 119
    goto :goto_84

    .line 120
    :catch_77
    move-exception v0

    .line 121
    move-object p2, v0

    .line 122
    goto :goto_7d

    .line 123
    :catch_7a
    move-exception v0

    .line 124
    move-object p2, v0

    .line 125
    goto :goto_81

    .line 126
    :goto_7d
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    goto :goto_84

    .line 130
    :goto_81
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    :goto_84
    const-string p2, ""

    .line 134
    .line 135
    goto/16 :goto_148

    .line 136
    .line 137
    :cond_88
    const/4 p3, 0x0

    .line 138
    const/16 v1, 0x9

    .line 139
    .line 140
    if-eqz p4, :cond_c0

    .line 141
    .line 142
    const-string v2, "gap_poll:"

    .line 143
    .line 144
    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_c0

    .line 149
    .line 150
    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    :try_start_9d
    const-string v1, "1"

    .line 159
    .line 160
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-virtual {v0, p2}, Lorg/apache/cordova/h;->b(I)Z

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    if-nez p2, :cond_ab

    .line 169
    .line 170
    move-object p2, p3

    .line 171
    goto :goto_b1

    .line 172
    :cond_ab
    iget-object p2, v0, Lorg/apache/cordova/h;->b:Lorg/apache/cordova/i0;

    .line 173
    .line 174
    invoke-virtual {p2, v1}, Lorg/apache/cordova/i0;->d(Z)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    :goto_b1
    if-nez p2, :cond_148

    .line 179
    .line 180
    const-string p2, ""
    :try_end_b5
    .catch Ljava/lang/IllegalAccessException; {:try_start_9d .. :try_end_b5} :catch_b7

    .line 181
    .line 182
    goto/16 :goto_148

    .line 183
    .line 184
    :catch_b7
    move-exception v0

    .line 185
    move-object p2, v0

    .line 186
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    .line 188
    .line 189
    const-string p2, ""

    .line 190
    .line 191
    goto/16 :goto_148

    .line 192
    .line 193
    :cond_c0
    if-eqz p4, :cond_147

    .line 194
    .line 195
    const-string v2, "gap_init:"

    .line 196
    .line 197
    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_147

    .line 202
    .line 203
    iget-object p3, v0, Lorg/apache/cordova/h;->a:Lorg/apache/cordova/l0;

    .line 204
    .line 205
    iget-object v2, p3, Lorg/apache/cordova/l0;->b:Ljava/util/Map;

    .line 206
    .line 207
    monitor-enter v2

    .line 208
    :try_start_cf
    iget-object v3, p3, Lorg/apache/cordova/l0;->b:Ljava/util/Map;

    .line 209
    .line 210
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    :cond_d9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-eqz v4, :cond_100

    .line 223
    .line 224
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    check-cast v4, Lorg/apache/cordova/j0;

    .line 229
    .line 230
    iget-object v7, p3, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 231
    .line 232
    iget-object v4, v4, Lorg/apache/cordova/j0;->a:Ljava/lang/String;

    .line 233
    .line 234
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    check-cast v4, Lorg/apache/cordova/o;

    .line 239
    .line 240
    if-eqz v4, :cond_d9

    .line 241
    .line 242
    invoke-virtual {v4, p2}, Lorg/apache/cordova/o;->shouldAllowBridgeAccess(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    if-eqz v4, :cond_d9

    .line 247
    .line 248
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 249
    .line 250
    .line 251
    move-result p3

    .line 252
    monitor-exit v2

    .line 253
    goto :goto_109

    .line 254
    :catchall_fd
    move-exception v0

    .line 255
    move-object p1, v0

    .line 256
    goto :goto_145

    .line 257
    :cond_100
    monitor-exit v2
    :try_end_101
    .catchall {:try_start_cf .. :try_end_101} :catchall_fd

    .line 258
    invoke-virtual {p3}, Lorg/apache/cordova/l0;->b()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p3

    .line 262
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result p3

    .line 266
    :goto_109
    if-eqz p3, :cond_12f

    .line 267
    .line 268
    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    iget-object p3, v0, Lorg/apache/cordova/h;->b:Lorg/apache/cordova/i0;

    .line 277
    .line 278
    invoke-virtual {p3, p2}, Lorg/apache/cordova/i0;->f(I)V

    .line 279
    .line 280
    .line 281
    new-instance p2, Ljava/security/SecureRandom;

    .line 282
    .line 283
    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    .line 284
    .line 285
    .line 286
    const p3, 0x7fffffff

    .line 287
    .line 288
    .line 289
    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    .line 290
    .line 291
    .line 292
    move-result p2

    .line 293
    iput p2, v0, Lorg/apache/cordova/h;->c:I

    .line 294
    .line 295
    iget p2, v0, Lorg/apache/cordova/h;->c:I

    .line 296
    .line 297
    const-string p3, ""

    .line 298
    .line 299
    invoke-static {p2, p3}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    goto :goto_148

    .line 304
    :cond_12f
    const-string p3, "CordovaBridge"

    .line 305
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    const-string v1, "gap_init called from restricted origin: "

    .line 309
    .line 310
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    const-string p2, ""

    .line 324
    .line 325
    goto :goto_148

    .line 326
    :goto_145
    :try_start_145
    monitor-exit v2
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_fd

    .line 327
    throw p1

    .line 328
    :cond_147
    move-object p2, p3

    .line 329
    :cond_148
    :goto_148
    if-eqz p2, :cond_14e

    .line 330
    .line 331
    invoke-virtual {p5, p2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    goto :goto_192

    .line 335
    :cond_14e
    iget-object p2, p0, Lg8/c;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 336
    .line 337
    new-instance p3, Lo5/c;

    .line 338
    .line 339
    const/16 v0, 0xb

    .line 340
    .line 341
    invoke-direct {p3, v0, p5}, Lo5/c;-><init>(ILjava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    new-instance p5, Landroid/app/AlertDialog$Builder;

    .line 348
    .line 349
    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v0, Landroid/content/Context;

    .line 352
    .line 353
    invoke-direct {p5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p5, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 357
    .line 358
    .line 359
    new-instance v1, Landroid/widget/EditText;

    .line 360
    .line 361
    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 362
    .line 363
    .line 364
    if-eqz p4, :cond_170

    .line 365
    .line 366
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .line 368
    .line 369
    :cond_170
    invoke-virtual {p5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {p5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 373
    .line 374
    .line 375
    new-instance p4, Lorg/apache/cordova/l;

    .line 376
    .line 377
    invoke-direct {p4, v1, p3}, Lorg/apache/cordova/l;-><init>(Landroid/widget/EditText;Lo5/c;)V

    .line 378
    .line 379
    .line 380
    const v0, 0x104000a

    .line 381
    .line 382
    .line 383
    invoke-virtual {p5, v0, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 384
    .line 385
    .line 386
    new-instance p4, Lorg/apache/cordova/i;

    .line 387
    .line 388
    const/4 v0, 0x1

    .line 389
    invoke-direct {p4, v0, p3}, Lorg/apache/cordova/i;-><init>(ILjava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    const/high16 p3, 0x1040000

    .line 393
    .line 394
    invoke-virtual {p5, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {p5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 398
    .line 399
    .line 400
    move-result-object p3

    .line 401
    iput-object p3, p2, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 402
    .line 403
    :goto_192
    return p1
.end method

.method public final onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lg8/c;->b:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebViewEngine;->getCordovaWebView()Lorg/apache/cordova/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Lorg/apache/cordova/t;->showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 7

    .line 1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_b

    .line 9
    .line 10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    :cond_b
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    .line 17
    .line 18
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    array-length p3, p1

    .line 26
    if-le p3, v1, :cond_25

    .line 27
    .line 28
    const-string p3, "*/*"

    .line 29
    .line 30
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string p3, "android.intent.extra.MIME_TYPES"

    .line 34
    .line 35
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    :cond_25
    :try_start_25
    iget-object p1, p0, Lg8/c;->b:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 39
    .line 40
    iget-object p1, p1, Lorg/apache/cordova/engine/SystemWebViewEngine;->g:Lorg/apache/cordova/m;

    .line 41
    .line 42
    new-instance p3, Lg8/b;

    .line 43
    .line 44
    invoke-direct {p3, p2}, Lg8/b;-><init>(Landroid/webkit/ValueCallback;)V

    .line 45
    .line 46
    .line 47
    const/16 v2, 0x1435

    .line 48
    .line 49
    invoke-interface {p1, p3, v0, v2}, Lorg/apache/cordova/m;->startActivityForResult(Lorg/apache/cordova/o;Landroid/content/Intent;I)V
    :try_end_33
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_33} :catch_34

    .line 50
    .line 51
    .line 52
    return v1

    .line 53
    :catch_34
    const/4 p1, 0x0

    .line 54
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return v1
.end method
