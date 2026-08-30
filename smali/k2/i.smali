###### Class k2.i (k2.i)
.class public final Lk2/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final b:Lk2/o;

.field public static volatile c:Lk2/i;


# instance fields
.field public final a:Lr6/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lk2/o;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lk2/i;->b:Lk2/o;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lr6/g;

    .line 5
    .line 6
    sget-object v1, Lk2/h;->b:Lk2/h;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lr6/g;-><init>(Lc7/a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lk2/i;->a:Lr6/g;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/SharedPreferences;
    .registers 4

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    iget-object v0, p0, Lk2/i;->a:Lr6/g;

    .line 10
    .line 11
    invoke-virtual {v0}, Lr6/g;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "<get-preferences>(...)"

    .line 16
    .line 17
    invoke-static {v2, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Landroid/content/SharedPreferences;
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_16

    .line 21
    .line 22
    return-object v0

    .line 23
    :catchall_16
    move-exception v0

    .line 24
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method

.method public final b(Landroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_11

    .line 8
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_12

    .line 17
    .line 18
    :goto_11
    return-void

    .line 19
    :cond_12
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v1, "activity.intent"

    .line 24
    .line 25
    invoke-static {v1, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, p1}, Lk2/i;->c(Landroid/net/Uri;Landroid/content/Intent;)V
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1f

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final c(Landroid/net/Uri;Landroid/content/Intent;)V
    .registers 7

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_61

    .line 8
    :cond_7
    :try_start_7
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_5f

    .line 12
    const-string v1, "al_applink_data"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const-string v3, "campaign_ids"

    .line 16
    .line 17
    if-eqz v0, :cond_14

    .line 18
    .line 19
    :goto_12
    move-object p1, v2

    .line 20
    goto :goto_33

    .line 21
    :cond_14
    :try_start_14
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_25

    .line 25
    if-nez p1, :cond_1b

    .line 26
    .line 27
    goto :goto_12

    .line 28
    :cond_1b
    :try_start_1b
    new-instance v0, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_24} :catch_27
    .catchall {:try_start_1b .. :try_end_24} :catchall_25

    .line 37
    goto :goto_33

    .line 38
    :catchall_25
    move-exception p1

    .line 39
    goto :goto_2f

    .line 40
    :catch_27
    :try_start_27
    const-string p1, "AppLinkManager"

    .line 41
    .line 42
    const-string v0, "Fail to parse Applink data from Uri"

    .line 43
    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_25

    .line 45
    .line 46
    .line 47
    goto :goto_12

    .line 48
    :goto_2f
    :try_start_2f
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_12

    .line 52
    :goto_33
    if-nez p1, :cond_4d

    .line 53
    .line 54
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_5f

    .line 58
    if-eqz p1, :cond_3c

    .line 59
    .line 60
    goto :goto_4c

    .line 61
    :cond_3c
    :try_start_3c
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-nez p1, :cond_43

    .line 66
    .line 67
    goto :goto_4c

    .line 68
    :cond_43
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_48

    .line 72
    goto :goto_4c

    .line 73
    :catchall_48
    move-exception p1

    .line 74
    :try_start_49
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :goto_4c
    move-object p1, v2

    .line 78
    :cond_4d
    if-eqz p1, :cond_61

    .line 79
    .line 80
    invoke-virtual {p0}, Lk2/i;->a()Landroid/content/SharedPreferences;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-interface {p2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5e
    .catchall {:try_start_49 .. :try_end_5e} :catchall_5f

    .line 93
    .line 94
    .line 95
    goto :goto_61

    .line 96
    :catchall_5f
    move-exception p1

    .line 97
    goto :goto_62

    .line 98
    :cond_61
    :goto_61
    return-void

    .line 99
    :goto_62
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method
