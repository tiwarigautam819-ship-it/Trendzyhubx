###### Class q2.a0 (q2.a0)
.class public final Lq2/a0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Ljava/util/TreeSet;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lq2/a0;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Z)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-nez p1, :cond_11

    .line 4
    .line 5
    :try_start_4
    iget-object p1, p0, Lq2/a0;->a:Ljava/util/TreeSet;

    .line 6
    .line 7
    if-eqz p1, :cond_11

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/TreeSet;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_11

    .line 14
    .line 15
    goto :goto_29

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    goto :goto_5e

    .line 18
    :cond_11
    sget-object p1, Lq2/b0;->a:Lq2/b0;

    .line 19
    .line 20
    const-class v1, Lq2/b0;

    .line 21
    .line 22
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_f

    .line 26
    if-eqz v2, :cond_1d

    .line 27
    .line 28
    :goto_1b
    move-object p1, v0

    .line 29
    goto :goto_27

    .line 30
    :cond_1d
    :try_start_1d
    invoke-virtual {p1, p0}, Lq2/b0;->f(Lq2/a0;)Ljava/util/TreeSet;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_22

    .line 34
    goto :goto_27

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    :try_start_23
    invoke-static {p1, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1b

    .line 40
    :goto_27
    iput-object p1, p0, Lq2/a0;->a:Ljava/util/TreeSet;

    .line 41
    .line 42
    :goto_29
    iget-object p1, p0, Lq2/a0;->a:Ljava/util/TreeSet;

    .line 43
    .line 44
    if-eqz p1, :cond_33

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_5c

    .line 51
    .line 52
    :cond_33
    iget p1, p0, Lq2/a0;->b:I

    .line 53
    .line 54
    packed-switch p1, :pswitch_data_60

    .line 55
    .line 56
    .line 57
    goto :goto_5c

    .line 58
    :pswitch_39
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 67
    .line 68
    const/16 v1, 0x1e

    .line 69
    .line 70
    if-lt p1, v1, :cond_5c

    .line 71
    .line 72
    const-class p1, Lq2/b0;

    .line 73
    .line 74
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1
    :try_end_4d
    .catchall {:try_start_23 .. :try_end_4d} :catchall_f

    .line 78
    if-eqz v1, :cond_50

    .line 79
    .line 80
    goto :goto_57

    .line 81
    :cond_50
    :try_start_50
    const-string v0, "q2.b0"
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_53

    .line 82
    .line 83
    goto :goto_57

    .line 84
    :catchall_53
    move-exception v1

    .line 85
    :try_start_54
    invoke-static {v1, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :goto_57
    const-string p1, "Apps that target Android API 30+ (Android 11+) cannot call Facebook native apps unless the package visibility needs are declared. Please follow https://developers.facebook.com/docs/android/troubleshooting/#faq_267321845055988 to make the declaration."

    .line 89
    .line 90
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_f

    .line 91
    .line 92
    .line 93
    :cond_5c
    :goto_5c
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :goto_5e
    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_f

    .line 96
    throw p1

    .line 97
    :pswitch_data_60
    .packed-switch 0x2
        :pswitch_39
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Lq2/a0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_14

    .line 4
    .line 5
    .line 6
    const-string v0, "com.facebook.wakizashi"

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_8
    const-string v0, "com.facebook.orca"

    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_b
    const-string v0, "com.facebook.katana"

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_e
    const-string v0, "com.instagram.android"

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_11
    const-string v0, "com.facebook.arstudio.player"

    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public final c()V
    .registers 1

    .line 1
    return-void
.end method
