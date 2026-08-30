###### Class x3.d (x3.d)
.class public final Lx3/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final o:Lcom/google/android/gms/common/api/Status;

.field public static final p:Lcom/google/android/gms/common/api/Status;

.field public static final q:Ljava/lang/Object;

.field public static r:Lx3/d;


# instance fields
.field public a:J

.field public b:Z

.field public c:Lcom/google/android/gms/common/internal/q;

.field public d:Lz3/b;

.field public final e:Landroid/content/Context;

.field public final f:Lv3/d;

.field public final g:Lcom/google/android/gms/internal/measurement/y4;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;

.field public final k:Ls/f;

.field public final l:Ls/f;

.field public final m:Lcom/google/android/gms/internal/measurement/r0;

.field public volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const-string v2, "Sign-out occurred while this API call was in progress."

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lx3/d;->o:Lcom/google/android/gms/common/api/Status;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 13
    .line 14
    const-string v2, "The user must be signed in to make this API call."

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lx3/d;->p:Lcom/google/android/gms/common/api/Status;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lx3/d;->q:Ljava/lang/Object;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 9

    .line 1
    sget-object v0, Lv3/d;->d:Lv3/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x2710

    .line 7
    .line 8
    iput-wide v1, p0, Lx3/d;->a:J

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lx3/d;->b:Z

    .line 12
    .line 13
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lx3/d;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lx3/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    const/4 v4, 0x5

    .line 31
    const/high16 v5, 0x3f400000    # 0.75f

    .line 32
    .line 33
    invoke-direct {v2, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lx3/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    new-instance v2, Ls/f;

    .line 39
    .line 40
    invoke-direct {v2, v1}, Ls/f;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lx3/d;->k:Ls/f;

    .line 44
    .line 45
    new-instance v2, Ls/f;

    .line 46
    .line 47
    invoke-direct {v2, v1}, Ls/f;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lx3/d;->l:Ls/f;

    .line 51
    .line 52
    iput-boolean v3, p0, Lx3/d;->n:Z

    .line 53
    .line 54
    iput-object p1, p0, Lx3/d;->e:Landroid/content/Context;

    .line 55
    .line 56
    new-instance v2, Lcom/google/android/gms/internal/measurement/r0;

    .line 57
    .line 58
    invoke-direct {v2, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 65
    .line 66
    iput-object v0, p0, Lx3/d;->f:Lv3/d;

    .line 67
    .line 68
    new-instance p2, Lcom/google/android/gms/internal/measurement/y4;

    .line 69
    .line 70
    const/4 v0, 0x7

    .line 71
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/measurement/y4;-><init>(I)V

    .line 72
    .line 73
    .line 74
    iput-object p2, p0, Lx3/d;->g:Lcom/google/android/gms/internal/measurement/y4;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget-object p2, Lb4/c;->f:Ljava/lang/Boolean;

    .line 81
    .line 82
    if-nez p2, :cond_69

    .line 83
    .line 84
    invoke-static {}, Lb4/c;->b()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_62

    .line 89
    .line 90
    const-string p2, "android.hardware.type.automotive"

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_62

    .line 97
    .line 98
    goto :goto_63

    .line 99
    :cond_62
    move v3, v1

    .line 100
    :goto_63
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    sput-object p1, Lb4/c;->f:Ljava/lang/Boolean;

    .line 105
    .line 106
    :cond_69
    sget-object p1, Lb4/c;->f:Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_73

    .line 113
    .line 114
    iput-boolean v1, p0, Lx3/d;->n:Z

    .line 115
    .line 116
    :cond_73
    const/4 p1, 0x6

    .line 117
    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public static b(Lx3/a;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    iget-object p0, p0, Lx3/a;->b:Lu3/o;

    .line 4
    .line 5
    iget-object p0, p0, Lu3/o;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "API: "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, " is not available on this device. Connection failed with: "

    .line 24
    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/16 v1, 0x11

    .line 36
    .line 37
    iget-object v2, p1, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    .line 38
    .line 39
    invoke-direct {v0, v1, p0, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lx3/d;
    .registers 5

    .line 1
    sget-object v0, Lx3/d;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lx3/d;->r:Lx3/d;

    .line 5
    .line 6
    if-nez v1, :cond_1f

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/common/internal/k;->b()Landroid/os/HandlerThread;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lx3/d;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object v3, Lv3/d;->c:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v2, p0, v1}, Lx3/d;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lx3/d;->r:Lx3/d;

    .line 28
    .line 29
    goto :goto_1f

    .line 30
    :catchall_1d
    move-exception p0

    .line 31
    goto :goto_23

    .line 32
    :cond_1f
    :goto_1f
    sget-object p0, Lx3/d;->r:Lx3/d;

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-object p0

    .line 36
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1d

    .line 37
    throw p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .registers 10

    .line 1
    iget-object v0, p0, Lx3/d;->f:Lv3/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lx3/d;->e:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v1}, Ld4/a;->c(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_f

    .line 14
    .line 15
    goto :goto_53

    .line 16
    :cond_f
    iget v2, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 17
    .line 18
    iget-object p1, p1, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    if-eqz v2, :cond_1a

    .line 22
    .line 23
    if-eqz p1, :cond_1a

    .line 24
    .line 25
    move v5, v4

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v5, v3

    .line 28
    :goto_1b
    if-eqz v5, :cond_1e

    .line 29
    .line 30
    goto :goto_2c

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    invoke-virtual {v0, v1, v2, p1}, Lv3/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    if-nez v5, :cond_26

    .line 37
    .line 38
    goto :goto_2c

    .line 39
    :cond_26
    const/high16 p1, 0xc000000

    .line 40
    .line 41
    invoke-static {v1, v3, v5, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_2c
    if-eqz p1, :cond_53

    .line 46
    .line 47
    sget v5, Lcom/google/android/gms/common/api/GoogleApiActivity;->b:I

    .line 48
    .line 49
    new-instance v5, Landroid/content/Intent;

    .line 50
    .line 51
    const-class v6, Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 52
    .line 53
    invoke-direct {v5, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    const-string v6, "pending_intent"

    .line 57
    .line 58
    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    const-string p1, "failing_client_id"

    .line 62
    .line 63
    invoke-virtual {v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    const-string p1, "notify_manager"

    .line 67
    .line 68
    invoke-virtual {v5, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    sget p1, Lh4/d;->a:I

    .line 72
    .line 73
    const/high16 p2, 0x8000000

    .line 74
    .line 75
    or-int/2addr p1, p2

    .line 76
    invoke-static {v1, v3, v5, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v0, v1, v2, p1}, Lv3/d;->f(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    .line 81
    .line 82
    .line 83
    return v4

    .line 84
    :cond_53
    :goto_53
    return v3
.end method

.method public final c(Lz3/b;)Lx3/j;
    .registers 5

    .line 1
    iget-object v0, p1, Lz3/b;->e:Lx3/a;

    .line 2
    .line 3
    iget-object v1, p0, Lx3/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lx3/j;

    .line 10
    .line 11
    if-nez v2, :cond_14

    .line 12
    .line 13
    new-instance v2, Lx3/j;

    .line 14
    .line 15
    invoke-direct {v2, p0, p1}, Lx3/j;-><init>(Lx3/d;Lz3/b;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_14
    iget-object p1, v2, Lx3/j;->c:Lw3/a;

    .line 22
    .line 23
    invoke-interface {p1}, Lw3/a;->requiresSignIn()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_21

    .line 28
    .line 29
    iget-object p1, p0, Lx3/d;->l:Ls/f;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ls/f;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_21
    invoke-virtual {v2}, Lx3/j;->k()V

    .line 35
    .line 36
    .line 37
    return-object v2
.end method

.method public final e(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lx3/d;->a(Lcom/google/android/gms/common/ConnectionResult;I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_11

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 10
    .line 11
    invoke-virtual {v2, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const v3, 0xc1fa340

    .line 8
    .line 9
    .line 10
    iget-object v4, v0, Lx3/d;->g:Lcom/google/android/gms/internal/measurement/y4;

    .line 11
    .line 12
    const/4 v5, -0x1

    .line 13
    sget-object v6, Lz3/b;->i:Lu3/o;

    .line 14
    .line 15
    sget-object v7, Lcom/google/android/gms/common/internal/s;->b:Lcom/google/android/gms/common/internal/s;

    .line 16
    .line 17
    iget-object v10, v0, Lx3/d;->e:Landroid/content/Context;

    .line 18
    .line 19
    const-string v11, "GoogleApiManager"

    .line 20
    .line 21
    const/16 v12, 0x11

    .line 22
    .line 23
    const/4 v13, 0x0

    .line 24
    iget-object v14, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 25
    .line 26
    const/4 v15, 0x0

    .line 27
    const/4 v8, 0x1

    .line 28
    iget-object v9, v0, Lx3/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    packed-switch v2, :pswitch_data_41a

    .line 31
    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "Unknown message id: "

    .line 36
    .line 37
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return v13

    .line 51
    :pswitch_32
    iput-boolean v13, v0, Lx3/d;->b:Z

    .line 52
    .line 53
    return v8

    .line 54
    :pswitch_35
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Lx3/p;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const-wide/16 v1, 0x0

    .line 62
    .line 63
    cmp-long v9, v1, v1

    .line 64
    .line 65
    if-nez v9, :cond_62

    .line 66
    .line 67
    new-instance v1, Lcom/google/android/gms/common/internal/q;

    .line 68
    .line 69
    new-array v2, v8, [Lcom/google/android/gms/common/internal/n;

    .line 70
    .line 71
    aput-object v15, v2, v13

    .line 72
    .line 73
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-direct {v1, v2, v13}, Lcom/google/android/gms/common/internal/q;-><init>(Ljava/util/List;I)V

    .line 78
    .line 79
    .line 80
    iget-object v2, v0, Lx3/d;->d:Lz3/b;

    .line 81
    .line 82
    if-nez v2, :cond_5c

    .line 83
    .line 84
    new-instance v2, Lz3/b;

    .line 85
    .line 86
    sget-object v3, Lw3/b;->b:Lw3/b;

    .line 87
    .line 88
    invoke-direct {v2, v10, v6, v7, v3}, Lz3/b;-><init>(Landroid/content/Context;Lu3/o;Lcom/google/android/gms/common/internal/s;Lw3/b;)V

    .line 89
    .line 90
    .line 91
    iput-object v2, v0, Lx3/d;->d:Lz3/b;

    .line 92
    .line 93
    :cond_5c
    iget-object v2, v0, Lx3/d;->d:Lz3/b;

    .line 94
    .line 95
    invoke-virtual {v2, v1}, Lz3/b;->b(Lcom/google/android/gms/common/internal/q;)Lp4/q;

    .line 96
    .line 97
    .line 98
    return v8

    .line 99
    :cond_62
    iget-object v9, v0, Lx3/d;->c:Lcom/google/android/gms/common/internal/q;

    .line 100
    .line 101
    if-eqz v9, :cond_c6

    .line 102
    .line 103
    iget-object v11, v9, Lcom/google/android/gms/common/internal/q;->b:Ljava/util/List;

    .line 104
    .line 105
    iget v9, v9, Lcom/google/android/gms/common/internal/q;->a:I

    .line 106
    .line 107
    if-nez v9, :cond_88

    .line 108
    .line 109
    if-eqz v11, :cond_75

    .line 110
    .line 111
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-ltz v9, :cond_75

    .line 116
    .line 117
    goto :goto_88

    .line 118
    :cond_75
    iget-object v3, v0, Lx3/d;->c:Lcom/google/android/gms/common/internal/q;

    .line 119
    .line 120
    iget-object v4, v3, Lcom/google/android/gms/common/internal/q;->b:Ljava/util/List;

    .line 121
    .line 122
    if-nez v4, :cond_82

    .line 123
    .line 124
    new-instance v4, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v4, v3, Lcom/google/android/gms/common/internal/q;->b:Ljava/util/List;

    .line 130
    .line 131
    :cond_82
    iget-object v3, v3, Lcom/google/android/gms/common/internal/q;->b:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_c6

    .line 137
    :cond_88
    :goto_88
    invoke-virtual {v14, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    .line 139
    .line 140
    iget-object v9, v0, Lx3/d;->c:Lcom/google/android/gms/common/internal/q;

    .line 141
    .line 142
    if-eqz v9, :cond_c6

    .line 143
    .line 144
    iget v11, v9, Lcom/google/android/gms/common/internal/q;->a:I

    .line 145
    .line 146
    if-gtz v11, :cond_b2

    .line 147
    .line 148
    iget-boolean v11, v0, Lx3/d;->b:Z

    .line 149
    .line 150
    if-eqz v11, :cond_98

    .line 151
    .line 152
    goto :goto_c4

    .line 153
    :cond_98
    invoke-static {}, Lcom/google/android/gms/common/internal/o;->b()Lcom/google/android/gms/common/internal/o;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    iget-object v11, v11, Lcom/google/android/gms/common/internal/o;->a:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v11, Lcom/google/android/gms/common/internal/p;

    .line 160
    .line 161
    if-eqz v11, :cond_a6

    .line 162
    .line 163
    iget-boolean v11, v11, Lcom/google/android/gms/common/internal/p;->b:Z

    .line 164
    .line 165
    if-eqz v11, :cond_c4

    .line 166
    .line 167
    :cond_a6
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v4, Landroid/util/SparseIntArray;

    .line 170
    .line 171
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eq v3, v5, :cond_b2

    .line 176
    .line 177
    if-nez v3, :cond_c4

    .line 178
    .line 179
    :cond_b2
    iget-object v3, v0, Lx3/d;->d:Lz3/b;

    .line 180
    .line 181
    if-nez v3, :cond_bf

    .line 182
    .line 183
    new-instance v3, Lz3/b;

    .line 184
    .line 185
    sget-object v4, Lw3/b;->b:Lw3/b;

    .line 186
    .line 187
    invoke-direct {v3, v10, v6, v7, v4}, Lz3/b;-><init>(Landroid/content/Context;Lu3/o;Lcom/google/android/gms/common/internal/s;Lw3/b;)V

    .line 188
    .line 189
    .line 190
    iput-object v3, v0, Lx3/d;->d:Lz3/b;

    .line 191
    .line 192
    :cond_bf
    iget-object v3, v0, Lx3/d;->d:Lz3/b;

    .line 193
    .line 194
    invoke-virtual {v3, v9}, Lz3/b;->b(Lcom/google/android/gms/common/internal/q;)Lp4/q;

    .line 195
    .line 196
    .line 197
    :cond_c4
    :goto_c4
    iput-object v15, v0, Lx3/d;->c:Lcom/google/android/gms/common/internal/q;

    .line 198
    .line 199
    :cond_c6
    :goto_c6
    iget-object v3, v0, Lx3/d;->c:Lcom/google/android/gms/common/internal/q;

    .line 200
    .line 201
    if-nez v3, :cond_418

    .line 202
    .line 203
    new-instance v3, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    new-instance v4, Lcom/google/android/gms/common/internal/q;

    .line 212
    .line 213
    invoke-direct {v4, v3, v13}, Lcom/google/android/gms/common/internal/q;-><init>(Ljava/util/List;I)V

    .line 214
    .line 215
    .line 216
    iput-object v4, v0, Lx3/d;->c:Lcom/google/android/gms/common/internal/q;

    .line 217
    .line 218
    invoke-virtual {v14, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v14, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 223
    .line 224
    .line 225
    return v8

    .line 226
    :pswitch_e1
    iget-object v1, v0, Lx3/d;->c:Lcom/google/android/gms/common/internal/q;

    .line 227
    .line 228
    if-eqz v1, :cond_418

    .line 229
    .line 230
    iget v2, v1, Lcom/google/android/gms/common/internal/q;->a:I

    .line 231
    .line 232
    if-gtz v2, :cond_108

    .line 233
    .line 234
    iget-boolean v2, v0, Lx3/d;->b:Z

    .line 235
    .line 236
    if-eqz v2, :cond_ee

    .line 237
    .line 238
    goto :goto_11a

    .line 239
    :cond_ee
    invoke-static {}, Lcom/google/android/gms/common/internal/o;->b()Lcom/google/android/gms/common/internal/o;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    iget-object v2, v2, Lcom/google/android/gms/common/internal/o;->a:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v2, Lcom/google/android/gms/common/internal/p;

    .line 246
    .line 247
    if-eqz v2, :cond_fc

    .line 248
    .line 249
    iget-boolean v2, v2, Lcom/google/android/gms/common/internal/p;->b:Z

    .line 250
    .line 251
    if-eqz v2, :cond_11a

    .line 252
    .line 253
    :cond_fc
    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v2, Landroid/util/SparseIntArray;

    .line 256
    .line 257
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eq v2, v5, :cond_108

    .line 262
    .line 263
    if-nez v2, :cond_11a

    .line 264
    .line 265
    :cond_108
    iget-object v2, v0, Lx3/d;->d:Lz3/b;

    .line 266
    .line 267
    if-nez v2, :cond_115

    .line 268
    .line 269
    new-instance v2, Lz3/b;

    .line 270
    .line 271
    sget-object v3, Lw3/b;->b:Lw3/b;

    .line 272
    .line 273
    invoke-direct {v2, v10, v6, v7, v3}, Lz3/b;-><init>(Landroid/content/Context;Lu3/o;Lcom/google/android/gms/common/internal/s;Lw3/b;)V

    .line 274
    .line 275
    .line 276
    iput-object v2, v0, Lx3/d;->d:Lz3/b;

    .line 277
    .line 278
    :cond_115
    iget-object v2, v0, Lx3/d;->d:Lz3/b;

    .line 279
    .line 280
    invoke-virtual {v2, v1}, Lz3/b;->b(Lcom/google/android/gms/common/internal/q;)Lp4/q;

    .line 281
    .line 282
    .line 283
    :cond_11a
    :goto_11a
    iput-object v15, v0, Lx3/d;->c:Lcom/google/android/gms/common/internal/q;

    .line 284
    .line 285
    return v8

    .line 286
    :pswitch_11d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v1, Lx3/k;

    .line 289
    .line 290
    iget-object v2, v1, Lx3/k;->a:Lx3/a;

    .line 291
    .line 292
    invoke-virtual {v9, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_418

    .line 297
    .line 298
    iget-object v2, v1, Lx3/k;->a:Lx3/a;

    .line 299
    .line 300
    invoke-virtual {v9, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    check-cast v2, Lx3/j;

    .line 305
    .line 306
    iget-object v3, v2, Lx3/j;->k:Ljava/util/ArrayList;

    .line 307
    .line 308
    iget-object v4, v2, Lx3/j;->m:Lx3/d;

    .line 309
    .line 310
    iget-object v4, v4, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 311
    .line 312
    iget-object v5, v2, Lx3/j;->b:Ljava/util/LinkedList;

    .line 313
    .line 314
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    if-eqz v3, :cond_418

    .line 319
    .line 320
    const/16 v3, 0xf

    .line 321
    .line 322
    invoke-virtual {v4, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    const/16 v3, 0x10

    .line 326
    .line 327
    invoke-virtual {v4, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    iget-object v1, v1, Lx3/k;->b:Lv3/c;

    .line 331
    .line 332
    new-instance v3, Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    .line 340
    .line 341
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    :cond_158
    :goto_158
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    if-eqz v6, :cond_181

    .line 350
    .line 351
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    check-cast v6, Lx3/o;

    .line 356
    .line 357
    if-eqz v6, :cond_158

    .line 358
    .line 359
    invoke-virtual {v6, v2}, Lx3/o;->b(Lx3/j;)[Lv3/c;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    if-eqz v7, :cond_158

    .line 364
    .line 365
    array-length v9, v7

    .line 366
    move v10, v13

    .line 367
    :goto_16e
    if-ge v10, v9, :cond_158

    .line 368
    .line 369
    aget-object v11, v7, v10

    .line 370
    .line 371
    invoke-static {v11, v1}, Lcom/google/android/gms/common/internal/d0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v11

    .line 375
    if-eqz v11, :cond_17e

    .line 376
    .line 377
    if-ltz v10, :cond_158

    .line 378
    .line 379
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    goto :goto_158

    .line 383
    :cond_17e
    add-int/lit8 v10, v10, 0x1

    .line 384
    .line 385
    goto :goto_16e

    .line 386
    :cond_181
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    :goto_185
    if-ge v13, v2, :cond_418

    .line 391
    .line 392
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    check-cast v4, Lx3/o;

    .line 397
    .line 398
    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    new-instance v6, Lw3/g;

    .line 402
    .line 403
    invoke-direct {v6, v1}, Lw3/g;-><init>(Lv3/c;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v4, v6}, Lx3/o;->d(Ljava/lang/Exception;)V

    .line 407
    .line 408
    .line 409
    add-int/lit8 v13, v13, 0x1

    .line 410
    .line 411
    goto :goto_185

    .line 412
    :pswitch_19b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v1, Lx3/k;

    .line 415
    .line 416
    iget-object v2, v1, Lx3/k;->a:Lx3/a;

    .line 417
    .line 418
    invoke-virtual {v9, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-eqz v2, :cond_418

    .line 423
    .line 424
    iget-object v2, v1, Lx3/k;->a:Lx3/a;

    .line 425
    .line 426
    invoke-virtual {v9, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    check-cast v2, Lx3/j;

    .line 431
    .line 432
    iget-object v3, v2, Lx3/j;->k:Ljava/util/ArrayList;

    .line 433
    .line 434
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-nez v1, :cond_1b9

    .line 439
    .line 440
    goto/16 :goto_418

    .line 441
    .line 442
    :cond_1b9
    iget-boolean v1, v2, Lx3/j;->j:Z

    .line 443
    .line 444
    if-nez v1, :cond_418

    .line 445
    .line 446
    iget-object v1, v2, Lx3/j;->c:Lw3/a;

    .line 447
    .line 448
    invoke-interface {v1}, Lw3/a;->isConnected()Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-nez v1, :cond_1c9

    .line 453
    .line 454
    invoke-virtual {v2}, Lx3/j;->k()V

    .line 455
    .line 456
    .line 457
    return v8

    .line 458
    :cond_1c9
    invoke-virtual {v2}, Lx3/j;->e()V

    .line 459
    .line 460
    .line 461
    return v8

    .line 462
    :pswitch_1cd
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 463
    .line 464
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    new-instance v1, Ljava/lang/ClassCastException;

    .line 468
    .line 469
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 470
    .line 471
    .line 472
    throw v1

    .line 473
    :pswitch_1d8
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 474
    .line 475
    invoke-virtual {v9, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    if-eqz v2, :cond_418

    .line 480
    .line 481
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 482
    .line 483
    invoke-virtual {v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    check-cast v1, Lx3/j;

    .line 488
    .line 489
    iget-object v2, v1, Lx3/j;->m:Lx3/d;

    .line 490
    .line 491
    iget-object v2, v2, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 492
    .line 493
    invoke-static {v2}, Lcom/google/android/gms/common/internal/d0;->b(Landroid/os/Handler;)V

    .line 494
    .line 495
    .line 496
    iget-object v2, v1, Lx3/j;->c:Lw3/a;

    .line 497
    .line 498
    invoke-interface {v2}, Lw3/a;->isConnected()Z

    .line 499
    .line 500
    .line 501
    move-result v3

    .line 502
    if-eqz v3, :cond_21f

    .line 503
    .line 504
    iget-object v3, v1, Lx3/j;->g:Ljava/util/HashMap;

    .line 505
    .line 506
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 507
    .line 508
    .line 509
    move-result v3

    .line 510
    if-eqz v3, :cond_21f

    .line 511
    .line 512
    iget-object v3, v1, Lx3/j;->e:Lu3/o;

    .line 513
    .line 514
    iget-object v4, v3, Lu3/o;->a:Ljava/lang/Object;

    .line 515
    .line 516
    check-cast v4, Ljava/util/Map;

    .line 517
    .line 518
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    if-eqz v4, :cond_21c

    .line 523
    .line 524
    iget-object v3, v3, Lu3/o;->b:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v3, Ljava/util/Map;

    .line 527
    .line 528
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 529
    .line 530
    .line 531
    move-result v3

    .line 532
    if-nez v3, :cond_216

    .line 533
    .line 534
    goto :goto_21c

    .line 535
    :cond_216
    const-string v1, "Timing out service connection."

    .line 536
    .line 537
    invoke-interface {v2, v1}, Lw3/a;->disconnect(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    return v8

    .line 541
    :cond_21c
    :goto_21c
    invoke-virtual {v1}, Lx3/j;->h()V

    .line 542
    .line 543
    .line 544
    :cond_21f
    return v8

    .line 545
    :pswitch_220
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 546
    .line 547
    invoke-virtual {v9, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    if-eqz v2, :cond_418

    .line 552
    .line 553
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 554
    .line 555
    invoke-virtual {v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    check-cast v1, Lx3/j;

    .line 560
    .line 561
    iget-object v2, v1, Lx3/j;->m:Lx3/d;

    .line 562
    .line 563
    iget-object v3, v2, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 564
    .line 565
    invoke-static {v3}, Lcom/google/android/gms/common/internal/d0;->b(Landroid/os/Handler;)V

    .line 566
    .line 567
    .line 568
    iget-boolean v3, v1, Lx3/j;->j:Z

    .line 569
    .line 570
    if-eqz v3, :cond_418

    .line 571
    .line 572
    iget-object v4, v1, Lx3/j;->d:Lx3/a;

    .line 573
    .line 574
    iget-object v5, v1, Lx3/j;->m:Lx3/d;

    .line 575
    .line 576
    iget-object v5, v5, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 577
    .line 578
    if-eqz v3, :cond_24f

    .line 579
    .line 580
    const/16 v3, 0xb

    .line 581
    .line 582
    invoke-virtual {v5, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    const/16 v3, 0x9

    .line 586
    .line 587
    invoke-virtual {v5, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    iput-boolean v13, v1, Lx3/j;->j:Z

    .line 591
    .line 592
    :cond_24f
    iget-object v3, v2, Lx3/d;->f:Lv3/d;

    .line 593
    .line 594
    iget-object v2, v2, Lx3/d;->e:Landroid/content/Context;

    .line 595
    .line 596
    sget v4, Lv3/e;->a:I

    .line 597
    .line 598
    invoke-virtual {v3, v2, v4}, Lv3/e;->b(Landroid/content/Context;I)I

    .line 599
    .line 600
    .line 601
    move-result v2

    .line 602
    const/16 v3, 0x12

    .line 603
    .line 604
    if-ne v2, v3, :cond_267

    .line 605
    .line 606
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 607
    .line 608
    const/16 v3, 0x15

    .line 609
    .line 610
    const-string v4, "Connection timed out waiting for Google Play services update to complete."

    .line 611
    .line 612
    invoke-direct {v2, v3, v4, v15, v15}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 613
    .line 614
    .line 615
    goto :goto_270

    .line 616
    :cond_267
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 617
    .line 618
    const/16 v3, 0x16

    .line 619
    .line 620
    const-string v4, "API failed to connect while resuming due to an unknown error."

    .line 621
    .line 622
    invoke-direct {v2, v3, v4, v15, v15}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 623
    .line 624
    .line 625
    :goto_270
    invoke-virtual {v1, v2}, Lx3/j;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 626
    .line 627
    .line 628
    iget-object v1, v1, Lx3/j;->c:Lw3/a;

    .line 629
    .line 630
    const-string v2, "Timing out connection while resuming."

    .line 631
    .line 632
    invoke-interface {v1, v2}, Lw3/a;->disconnect(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    return v8

    .line 636
    :pswitch_27b
    iget-object v1, v0, Lx3/d;->l:Ls/f;

    .line 637
    .line 638
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 639
    .line 640
    .line 641
    new-instance v2, Ls/a;

    .line 642
    .line 643
    invoke-direct {v2, v1}, Ls/a;-><init>(Ls/f;)V

    .line 644
    .line 645
    .line 646
    :cond_285
    :goto_285
    invoke-virtual {v2}, Ls/a;->hasNext()Z

    .line 647
    .line 648
    .line 649
    move-result v3

    .line 650
    if-eqz v3, :cond_29d

    .line 651
    .line 652
    invoke-virtual {v2}, Ls/a;->next()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    check-cast v3, Lx3/a;

    .line 657
    .line 658
    invoke-virtual {v9, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    check-cast v3, Lx3/j;

    .line 663
    .line 664
    if-eqz v3, :cond_285

    .line 665
    .line 666
    invoke-virtual {v3}, Lx3/j;->o()V

    .line 667
    .line 668
    .line 669
    goto :goto_285

    .line 670
    :cond_29d
    invoke-virtual {v1}, Ls/f;->clear()V

    .line 671
    .line 672
    .line 673
    return v8

    .line 674
    :pswitch_2a1
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 675
    .line 676
    invoke-virtual {v9, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    move-result v2

    .line 680
    if-eqz v2, :cond_418

    .line 681
    .line 682
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 683
    .line 684
    invoke-virtual {v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    check-cast v1, Lx3/j;

    .line 689
    .line 690
    iget-object v2, v1, Lx3/j;->m:Lx3/d;

    .line 691
    .line 692
    iget-object v2, v2, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 693
    .line 694
    invoke-static {v2}, Lcom/google/android/gms/common/internal/d0;->b(Landroid/os/Handler;)V

    .line 695
    .line 696
    .line 697
    iget-boolean v2, v1, Lx3/j;->j:Z

    .line 698
    .line 699
    if-eqz v2, :cond_418

    .line 700
    .line 701
    invoke-virtual {v1}, Lx3/j;->k()V

    .line 702
    .line 703
    .line 704
    return v8

    .line 705
    :pswitch_2c0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 706
    .line 707
    check-cast v1, Lz3/b;

    .line 708
    .line 709
    invoke-virtual {v0, v1}, Lx3/d;->c(Lz3/b;)Lx3/j;

    .line 710
    .line 711
    .line 712
    return v8

    .line 713
    :pswitch_2c8
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    instance-of v1, v1, Landroid/app/Application;

    .line 718
    .line 719
    if-eqz v1, :cond_418

    .line 720
    .line 721
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    check-cast v1, Landroid/app/Application;

    .line 726
    .line 727
    invoke-static {v1}, Lx3/c;->b(Landroid/app/Application;)V

    .line 728
    .line 729
    .line 730
    sget-object v1, Lx3/c;->e:Lx3/c;

    .line 731
    .line 732
    new-instance v2, Lx3/i;

    .line 733
    .line 734
    invoke-direct {v2, v0}, Lx3/i;-><init>(Lx3/d;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v1, v2}, Lx3/c;->a(Lx3/b;)V

    .line 738
    .line 739
    .line 740
    iget-object v2, v1, Lx3/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 741
    .line 742
    iget-object v1, v1, Lx3/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 743
    .line 744
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 745
    .line 746
    .line 747
    move-result v3

    .line 748
    if-nez v3, :cond_304

    .line 749
    .line 750
    new-instance v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 751
    .line 752
    invoke-direct {v3}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 753
    .line 754
    .line 755
    invoke-static {v3}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 759
    .line 760
    .line 761
    move-result v1

    .line 762
    if-nez v1, :cond_304

    .line 763
    .line 764
    iget v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 765
    .line 766
    const/16 v3, 0x64

    .line 767
    .line 768
    if-le v1, v3, :cond_304

    .line 769
    .line 770
    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 771
    .line 772
    .line 773
    :cond_304
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 774
    .line 775
    .line 776
    move-result v1

    .line 777
    if-nez v1, :cond_418

    .line 778
    .line 779
    const-wide/32 v2, 0x493e0

    .line 780
    .line 781
    .line 782
    iput-wide v2, v0, Lx3/d;->a:J

    .line 783
    .line 784
    return v8

    .line 785
    :pswitch_310
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 786
    .line 787
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 788
    .line 789
    check-cast v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 790
    .line 791
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 792
    .line 793
    .line 794
    move-result-object v3

    .line 795
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 796
    .line 797
    .line 798
    move-result-object v3

    .line 799
    :cond_31e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 800
    .line 801
    .line 802
    move-result v4

    .line 803
    if-eqz v4, :cond_32f

    .line 804
    .line 805
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object v4

    .line 809
    check-cast v4, Lx3/j;

    .line 810
    .line 811
    iget v5, v4, Lx3/j;->h:I

    .line 812
    .line 813
    if-ne v5, v2, :cond_31e

    .line 814
    .line 815
    goto :goto_330

    .line 816
    :cond_32f
    move-object v4, v15

    .line 817
    :goto_330
    if-eqz v4, :cond_36e

    .line 818
    .line 819
    iget v2, v1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 820
    .line 821
    const/16 v3, 0xd

    .line 822
    .line 823
    if-ne v2, v3, :cond_364

    .line 824
    .line 825
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    .line 826
    .line 827
    iget-object v5, v0, Lx3/d;->f:Lv3/d;

    .line 828
    .line 829
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 830
    .line 831
    .line 832
    sget v5, Lv3/f;->e:I

    .line 833
    .line 834
    invoke-static {v2}, Lcom/google/android/gms/common/ConnectionResult;->a(I)Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    iget-object v1, v1, Lcom/google/android/gms/common/ConnectionResult;->d:Ljava/lang/String;

    .line 839
    .line 840
    new-instance v5, Ljava/lang/StringBuilder;

    .line 841
    .line 842
    const-string v6, "Error resolution was canceled by the user, original error message: "

    .line 843
    .line 844
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    const-string v2, ": "

    .line 851
    .line 852
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    invoke-direct {v3, v12, v1, v15, v15}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v4, v3}, Lx3/j;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 866
    .line 867
    .line 868
    return v8

    .line 869
    :cond_364
    iget-object v2, v4, Lx3/j;->d:Lx3/a;

    .line 870
    .line 871
    invoke-static {v2, v1}, Lx3/d;->b(Lx3/a;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    invoke-virtual {v4, v1}, Lx3/j;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 876
    .line 877
    .line 878
    return v8

    .line 879
    :cond_36e
    const-string v1, "Could not find API instance "

    .line 880
    .line 881
    const-string v3, " while trying to fail enqueued calls."

    .line 882
    .line 883
    invoke-static {v2, v1, v3}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v1

    .line 887
    new-instance v2, Ljava/lang/Exception;

    .line 888
    .line 889
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 890
    .line 891
    .line 892
    invoke-static {v11, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 893
    .line 894
    .line 895
    return v8

    .line 896
    :pswitch_37f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 897
    .line 898
    check-cast v1, Lx3/q;

    .line 899
    .line 900
    iget-object v2, v1, Lx3/q;->c:Lz3/b;

    .line 901
    .line 902
    iget-object v3, v1, Lx3/q;->a:Lx3/s;

    .line 903
    .line 904
    iget-object v2, v2, Lz3/b;->e:Lx3/a;

    .line 905
    .line 906
    invoke-virtual {v9, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    move-result-object v2

    .line 910
    check-cast v2, Lx3/j;

    .line 911
    .line 912
    if-nez v2, :cond_397

    .line 913
    .line 914
    iget-object v2, v1, Lx3/q;->c:Lz3/b;

    .line 915
    .line 916
    invoke-virtual {v0, v2}, Lx3/d;->c(Lz3/b;)Lx3/j;

    .line 917
    .line 918
    .line 919
    move-result-object v2

    .line 920
    :cond_397
    iget-object v4, v2, Lx3/j;->c:Lw3/a;

    .line 921
    .line 922
    invoke-interface {v4}, Lw3/a;->requiresSignIn()Z

    .line 923
    .line 924
    .line 925
    move-result v4

    .line 926
    if-eqz v4, :cond_3b2

    .line 927
    .line 928
    iget-object v4, v0, Lx3/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 929
    .line 930
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 931
    .line 932
    .line 933
    move-result v4

    .line 934
    iget v1, v1, Lx3/q;->b:I

    .line 935
    .line 936
    if-eq v4, v1, :cond_3b2

    .line 937
    .line 938
    sget-object v1, Lx3/d;->o:Lcom/google/android/gms/common/api/Status;

    .line 939
    .line 940
    invoke-virtual {v3, v1}, Lx3/s;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 941
    .line 942
    .line 943
    invoke-virtual {v2}, Lx3/j;->o()V

    .line 944
    .line 945
    .line 946
    return v8

    .line 947
    :cond_3b2
    invoke-virtual {v2, v3}, Lx3/j;->l(Lx3/o;)V

    .line 948
    .line 949
    .line 950
    return v8

    .line 951
    :pswitch_3b6
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 952
    .line 953
    .line 954
    move-result-object v1

    .line 955
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 956
    .line 957
    .line 958
    move-result-object v1

    .line 959
    :goto_3be
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 960
    .line 961
    .line 962
    move-result v2

    .line 963
    if-eqz v2, :cond_418

    .line 964
    .line 965
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    check-cast v2, Lx3/j;

    .line 970
    .line 971
    iget-object v3, v2, Lx3/j;->m:Lx3/d;

    .line 972
    .line 973
    iget-object v3, v3, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 974
    .line 975
    invoke-static {v3}, Lcom/google/android/gms/common/internal/d0;->b(Landroid/os/Handler;)V

    .line 976
    .line 977
    .line 978
    iput-object v15, v2, Lx3/j;->l:Lcom/google/android/gms/common/ConnectionResult;

    .line 979
    .line 980
    invoke-virtual {v2}, Lx3/j;->k()V

    .line 981
    .line 982
    .line 983
    goto :goto_3be

    .line 984
    :pswitch_3d7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 985
    .line 986
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 987
    .line 988
    .line 989
    new-instance v1, Ljava/lang/ClassCastException;

    .line 990
    .line 991
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 992
    .line 993
    .line 994
    throw v1

    .line 995
    :pswitch_3e2
    const-wide/32 v2, 0x493e0

    .line 996
    .line 997
    .line 998
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 999
    .line 1000
    check-cast v1, Ljava/lang/Boolean;

    .line 1001
    .line 1002
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1003
    .line 1004
    .line 1005
    move-result v1

    .line 1006
    if-eq v8, v1, :cond_3f1

    .line 1007
    .line 1008
    move-wide v1, v2

    .line 1009
    goto :goto_3f3

    .line 1010
    :cond_3f1
    const-wide/16 v1, 0x2710

    .line 1011
    .line 1012
    :goto_3f3
    iput-wide v1, v0, Lx3/d;->a:J

    .line 1013
    .line 1014
    const/16 v1, 0xc

    .line 1015
    .line 1016
    invoke-virtual {v14, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v2

    .line 1023
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v2

    .line 1027
    :goto_402
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1028
    .line 1029
    .line 1030
    move-result v3

    .line 1031
    if-eqz v3, :cond_418

    .line 1032
    .line 1033
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v3

    .line 1037
    check-cast v3, Lx3/a;

    .line 1038
    .line 1039
    invoke-virtual {v14, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v3

    .line 1043
    iget-wide v4, v0, Lx3/d;->a:J

    .line 1044
    .line 1045
    invoke-virtual {v14, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1046
    .line 1047
    .line 1048
    goto :goto_402

    .line 1049
    :cond_418
    :goto_418
    return v8

    .line 1050
    nop

    .line 1051
    :pswitch_data_41a
    .packed-switch 0x1
        :pswitch_3e2
        :pswitch_3d7
        :pswitch_3b6
        :pswitch_37f
        :pswitch_310
        :pswitch_2c8
        :pswitch_2c0
        :pswitch_37f
        :pswitch_2a1
        :pswitch_27b
        :pswitch_220
        :pswitch_1d8
        :pswitch_37f
        :pswitch_1cd
        :pswitch_19b
        :pswitch_11d
        :pswitch_e1
        :pswitch_35
        :pswitch_32
    .end packed-switch
.end method
