###### Class i2.b (i2.b)
.class public final Li2/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/ServiceConnection;


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "service"

    .line 7
    .line 8
    invoke-static {p1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Li2/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object p1, Li2/o;->a:Li2/o;

    .line 18
    .line 19
    const-class p1, Li2/o;

    .line 20
    .line 21
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v6, 0x0

    .line 26
    if-eqz v0, :cond_1c

    .line 27
    .line 28
    goto :goto_33

    .line 29
    :cond_1c
    const/4 v0, 0x1

    .line 30
    :try_start_1d
    new-array v5, v0, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    aput-object p2, v5, v0

    .line 34
    .line 35
    sget-object v0, Li2/o;->a:Li2/o;

    .line 36
    .line 37
    const-string v2, "com.android.vending.billing.IInAppBillingService$Stub"

    .line 38
    .line 39
    const-string v3, "asInterface"

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual/range {v0 .. v5}, Li2/o;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 46
    goto :goto_33

    .line 47
    :catchall_2e
    move-exception v0

    .line 48
    move-object p2, v0

    .line 49
    invoke-static {p2, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_33
    sput-object v6, Li2/e;->g:Ljava/lang/Object;

    .line 53
    .line 54
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
