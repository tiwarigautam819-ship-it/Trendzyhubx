###### Class p2.b (p2.b)
.class public final Lp2/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lp2/b;

.field public static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lp2/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp2/b;->a:Lp2/b;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lp2/b;->b:Ljava/util/HashMap;

    .line 14
    .line 15
    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .registers 7

    .line 1
    const-class v0, Lp2/b;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_3c

    .line 10
    :cond_9
    :try_start_9
    sget-object v1, Lp2/b;->a:Lp2/b;

    .line 11
    .line 12
    sget-object v2, Lp2/b;->b:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_3d

    .line 18
    if-eqz v3, :cond_14

    .line 19
    .line 20
    goto :goto_3c

    .line 21
    :cond_14
    :try_start_14
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 26
    .line 27
    if-eqz v3, :cond_3c

    .line 28
    .line 29
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v5, "servicediscovery"

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-string v5, "null cannot be cast to non-null type android.net.nsd.NsdManager"

    .line 40
    .line 41
    invoke-static {v5, v4}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    check-cast v4, Landroid/net/nsd/NsdManager;
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_31

    .line 45
    .line 46
    :try_start_2d
    invoke-virtual {v4, v3}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_30} :catch_33
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    .line 47
    .line 48
    .line 49
    goto :goto_35

    .line 50
    :catchall_31
    move-exception p0

    .line 51
    goto :goto_39

    .line 52
    :catch_33
    :try_start_33
    sget-object v3, Lx1/r;->a:Lx1/r;

    .line 53
    .line 54
    :goto_35
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_31

    .line 55
    .line 56
    .line 57
    goto :goto_3c

    .line 58
    :goto_39
    :try_start_39
    invoke-static {p0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    .line 59
    .line 60
    .line 61
    :cond_3c
    :goto_3c
    return-void

    .line 62
    :catchall_3d
    move-exception p0

    .line 63
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static final b()Z
    .registers 4

    .line 1
    const-class v0, Lp2/b;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    :try_start_a
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lq2/w;->b(Ljava/lang/String;)Lq2/t;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_22

    .line 20
    .line 21
    iget-object v1, v1, Lq2/t;->c:Ljava/util/EnumSet;

    .line 22
    .line 23
    sget-object v3, Lq2/d0;->c:Lq2/d0;

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_20

    .line 29
    if-eqz v0, :cond_22

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :catchall_20
    move-exception v1

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    return v2

    .line 36
    :goto_23
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return v2
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Z
    .registers 10

    .line 1
    const-string v0, "fbsdk_"

    .line 2
    .line 3
    const-string v1, "android-"

    .line 4
    .line 5
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_c

    .line 11
    .line 12
    return v3

    .line 13
    :cond_c
    :try_start_c
    sget-object v2, Lp2/b;->b:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x1

    .line 20
    if-eqz v4, :cond_16

    .line 21
    .line 22
    return v5

    .line 23
    :cond_16
    sget-object v4, Lx1/r;->a:Lx1/r;

    .line 24
    .line 25
    const-string v4, "18.1.3"

    .line 26
    .line 27
    const/16 v6, 0x2e

    .line 28
    .line 29
    const/16 v7, 0x7c

    .line 30
    .line 31
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v6, "replace(...)"

    .line 36
    .line 37
    invoke-static {v6, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/16 v0, 0x5f

    .line 53
    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Landroid/net/nsd/NsdServiceInfo;

    .line 65
    .line 66
    invoke-direct {v1}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v4, "_fb._tcp."

    .line 70
    .line 71
    invoke-virtual {v1, v4}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/16 v4, 0x50

    .line 78
    .line 79
    invoke-virtual {v1, v4}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const-string v6, "servicediscovery"

    .line 87
    .line 88
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const-string v6, "null cannot be cast to non-null type android.net.nsd.NsdManager"

    .line 93
    .line 94
    invoke-static {v6, v4}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    check-cast v4, Landroid/net/nsd/NsdManager;

    .line 98
    .line 99
    new-instance v6, Lp2/a;

    .line 100
    .line 101
    invoke-direct {v6, v0, p1}, Lp2/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v1, v5, v6}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V
    :try_end_6d
    .catchall {:try_start_c .. :try_end_6d} :catchall_6e

    .line 108
    .line 109
    .line 110
    return v5

    .line 111
    :catchall_6e
    move-exception p1

    .line 112
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return v3
.end method
