###### Class m2.e (m2.e)
.class public final Lm2/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lm2/e;

.field public static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lm2/e;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm2/e;->a:Lm2/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 10

    .line 1
    const-string v0, "com.facebook.wakizashi"

    .line 2
    .line 3
    const-string v1, "com.facebook.katana"

    .line 4
    .line 5
    const-string v2, "ReceiverService"

    .line 6
    .line 7
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v3, :cond_e

    .line 13
    .line 14
    goto :goto_41

    .line 15
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_41

    .line 20
    .line 21
    new-instance v5, Landroid/content/Intent;

    .line 22
    .line 23
    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    if-eqz v7, :cond_2c

    .line 35
    .line 36
    invoke-static {p1, v1}, Lq2/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2c

    .line 41
    .line 42
    return-object v5

    .line 43
    :catchall_2a
    move-exception p1

    .line 44
    goto :goto_42

    .line 45
    :cond_2c
    new-instance v1, Landroid/content/Intent;

    .line 46
    .line 47
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_41

    .line 58
    .line 59
    invoke-static {p1, v0}, Lq2/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p1
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_2a

    .line 63
    if-eqz p1, :cond_41

    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_41
    :goto_41
    return-object v4

    .line 67
    :goto_42
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-object v4
.end method

.method public final b(ILjava/lang/String;Ljava/util/List;)I
    .registers 13

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
    return v1

    .line 9
    :cond_8
    :try_start_8
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lm2/e;->a(Landroid/content/Context;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x2

    .line 18
    if-eqz v2, :cond_59

    .line 19
    .line 20
    new-instance v4, Lm2/d;

    .line 21
    .line 22
    invoke-direct {v4}, Lm2/d;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 27
    .line 28
    .line 29
    move-result v2
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_46

    .line 30
    if-eqz v2, :cond_57

    .line 31
    .line 32
    :try_start_1f
    iget-object v2, v4, Lm2/d;->a:Ljava/util/concurrent/CountDownLatch;

    .line 33
    .line 34
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    const-wide/16 v7, 0x5

    .line 37
    .line 38
    invoke-virtual {v2, v7, v8, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 39
    .line 40
    .line 41
    iget-object v2, v4, Lm2/d;->b:Landroid/os/IBinder;

    .line 42
    .line 43
    if-eqz v2, :cond_42

    .line 44
    .line 45
    invoke-static {v2}, Lz2/b;->b(Landroid/os/IBinder;)Lz2/c;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {p1, p2, p3}, Lm2/c;->a(ILjava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_41

    .line 54
    .line 55
    check-cast v2, Lz2/a;

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Lz2/a;->b(Landroid/os/Bundle;)I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_3e} :catch_4e
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_3e} :catch_48
    .catchall {:try_start_1f .. :try_end_3e} :catchall_3f

    .line 61
    .line 62
    .line 63
    goto :goto_41

    .line 64
    :catchall_3f
    move-exception p1

    .line 65
    goto :goto_51

    .line 66
    :cond_41
    :goto_41
    move v3, v5

    .line 67
    :cond_42
    :try_start_42
    invoke-virtual {v0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    .line 68
    .line 69
    .line 70
    return v3

    .line 71
    :catchall_46
    move-exception p1

    .line 72
    goto :goto_5a

    .line 73
    :catch_48
    :try_start_48
    sget-object p1, Lx1/r;->a:Lx1/r;
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_3f

    .line 74
    .line 75
    :goto_4a
    :try_start_4a
    invoke-virtual {v0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_46

    .line 76
    .line 77
    .line 78
    goto :goto_57

    .line 79
    :catch_4e
    :try_start_4e
    sget-object p1, Lx1/r;->a:Lx1/r;
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_3f

    .line 80
    .line 81
    goto :goto_4a

    .line 82
    :goto_51
    :try_start_51
    invoke-virtual {v0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 83
    .line 84
    .line 85
    sget-object p2, Lx1/r;->a:Lx1/r;

    .line 86
    .line 87
    throw p1
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_46

    .line 88
    :cond_57
    :goto_57
    const/4 p1, 0x3

    .line 89
    return p1

    .line 90
    :cond_59
    return v3

    .line 91
    :goto_5a
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return v1
.end method
