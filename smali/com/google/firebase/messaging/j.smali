###### Class com.google.firebase.messaging.j (com.google.firebase.messaging.j)
.class public final Lcom/google/firebase/messaging/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static d:Lcom/google/firebase/messaging/n0;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/messaging/j;->c:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/firebase/messaging/j;->a:Ljava/lang/Object;

    .line 8
    new-instance p1, Lc1/c;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ls/e;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Ls/j;-><init>(I)V

    .line 4
    iput-object v0, p0, Lcom/google/firebase/messaging/j;->b:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/firebase/messaging/j;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Z)Lp4/q;
    .registers 5

    .line 1
    const-string v0, "FirebaseMessaging"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_10

    .line 9
    .line 10
    const-string v0, "FirebaseMessaging"

    .line 11
    .line 12
    const-string v1, "Binding to service"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :cond_10
    sget-object v0, Lcom/google/firebase/messaging/j;->c:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_13
    sget-object v1, Lcom/google/firebase/messaging/j;->d:Lcom/google/firebase/messaging/n0;

    .line 21
    .line 22
    if-nez v1, :cond_21

    .line 23
    .line 24
    new-instance v1, Lcom/google/firebase/messaging/n0;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/n0;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/google/firebase/messaging/j;->d:Lcom/google/firebase/messaging/n0;

    .line 30
    .line 31
    goto :goto_21

    .line 32
    :catchall_1f
    move-exception p0

    .line 33
    goto :goto_55

    .line 34
    :cond_21
    :goto_21
    sget-object v1, Lcom/google/firebase/messaging/j;->d:Lcom/google/firebase/messaging/n0;

    .line 35
    .line 36
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_1f

    .line 37
    if-eqz p2, :cond_41

    .line 38
    .line 39
    invoke-static {}, Lcom/google/firebase/messaging/y;->u()Lcom/google/firebase/messaging/y;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2, p0}, Lcom/google/firebase/messaging/y;->w(Landroid/content/Context;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_34

    .line 48
    .line 49
    invoke-static {p0, v1, p1}, Lcom/google/firebase/messaging/k0;->c(Landroid/content/Context;Lcom/google/firebase/messaging/n0;Landroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    goto :goto_37

    .line 53
    :cond_34
    invoke-virtual {v1, p1}, Lcom/google/firebase/messaging/n0;->b(Landroid/content/Intent;)Lp4/q;

    .line 54
    .line 55
    .line 56
    :goto_37
    const/4 p0, -0x1

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Lj7/g;->l(Ljava/lang/Object;)Lp4/q;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_41
    invoke-virtual {v1, p1}, Lcom/google/firebase/messaging/n0;->b(Landroid/content/Intent;)Lp4/q;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    new-instance p1, Lc1/c;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance p2, Lcom/getcapacitor/n;

    .line 76
    .line 77
    const/4 v0, 0x2

    .line 78
    invoke-direct {p2, v0}, Lcom/getcapacitor/n;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1, p2}, Lp4/q;->i(Ljava/util/concurrent/Executor;Lp4/a;)Lp4/q;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :goto_55
    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_1f

    .line 87
    throw p0
.end method


# virtual methods
.method public b(Landroid/content/Intent;)Lp4/q;
    .registers 9

    .line 1
    const-string v0, "gcm.rawData64"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_15

    .line 9
    .line 10
    const-string v3, "rawData"

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_15
    iget-object v0, p0, Lcom/google/firebase/messaging/j;->a:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroid/content/Context;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/firebase/messaging/j;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lc1/c;

    .line 29
    .line 30
    invoke-static {}, Lb4/c;->b()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v3, :cond_30

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 42
    .line 43
    const/16 v5, 0x1a

    .line 44
    .line 45
    if-lt v3, v5, :cond_30

    .line 46
    .line 47
    move v3, v4

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v3, v2

    .line 50
    :goto_31
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const/high16 v6, 0x10000000

    .line 55
    .line 56
    and-int/2addr v5, v6

    .line 57
    if-eqz v5, :cond_3b

    .line 58
    .line 59
    move v2, v4

    .line 60
    :cond_3b
    if-eqz v3, :cond_44

    .line 61
    .line 62
    if-nez v2, :cond_44

    .line 63
    .line 64
    invoke-static {v0, p1, v2}, Lcom/google/firebase/messaging/j;->a(Landroid/content/Context;Landroid/content/Intent;Z)Lp4/q;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_44
    new-instance v3, Lcom/google/firebase/messaging/h;

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-direct {v3, v0, v4, p1}, Lcom/google/firebase/messaging/h;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v3}, Lj7/g;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lp4/q;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    new-instance v4, Lcom/google/firebase/messaging/i;

    .line 80
    .line 81
    invoke-direct {v4, v0, p1, v2}, Lcom/google/firebase/messaging/i;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v1, v4}, Lp4/q;->j(Ljava/util/concurrent/Executor;Lp4/a;)Lp4/q;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method

###### Class com.google.firebase.messaging.i (com.google.firebase.messaging.i)
.class public final synthetic Lcom/google/firebase/messaging/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lp4/a;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/messaging/i;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/messaging/i;->b:Landroid/content/Intent;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/google/firebase/messaging/i;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Lp4/i;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lb4/c;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2e

    .line 6
    .line 7
    invoke-virtual {p1}, Lp4/i;->e()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x192

    .line 18
    .line 19
    if-eq v0, v1, :cond_15

    .line 20
    .line 21
    goto :goto_2e

    .line 22
    :cond_15
    iget-object p1, p0, Lcom/google/firebase/messaging/i;->a:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/firebase/messaging/i;->b:Landroid/content/Intent;

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/google/firebase/messaging/i;->c:Z

    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Lcom/google/firebase/messaging/j;->a(Landroid/content/Context;Landroid/content/Intent;Z)Lp4/q;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v0, Lc1/c;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/getcapacitor/n;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-direct {v1, v2}, Lcom/getcapacitor/n;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Lp4/q;->i(Ljava/util/concurrent/Executor;Lp4/a;)Lp4/q;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :cond_2e
    :goto_2e
    return-object p1
.end method
