###### Class com.google.android.gms.internal.measurement.y4 (com.google.android.gms.internal.measurement.y4)
.class public Lcom/google/android/gms/internal/measurement/y4;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/x4;
.implements Lk/a;
.implements Lh3/b;
.implements Lp0/o;


# static fields
.field public static d:Lcom/google/android/gms/internal/measurement/y4;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    iput p1, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    sparse-switch p1, :sswitch_data_46

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    return-void

    .line 19
    :sswitch_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p1, Lm1/f;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 21
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    return-void

    .line 22
    :sswitch_25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 24
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    return-void

    .line 25
    :sswitch_37
    sget-object p1, Lv3/d;->d:Lv3/d;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    return-void

    :sswitch_data_46
    .sparse-switch
        0x7 -> :sswitch_37
        0x8 -> :sswitch_25
        0x13 -> :sswitch_e
    .end sparse-switch
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 58
    new-array p1, p1, [F

    fill-array-data p1, :array_16

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    return-void

    nop

    :array_16
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(III)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 61
    new-array p1, v0, [F

    fill-array-data p1, :array_14

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    return-void

    :array_14
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .registers 3

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/animation/Animator;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 48
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 49
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    iput p2, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    sparse-switch p2, :sswitch_data_3a

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 30
    new-instance p2, Lcom/google/android/gms/internal/measurement/z4;

    const/4 v0, 0x0

    .line 31
    invoke-direct {p2, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 32
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/measurement/n4;->a:Landroid/net/Uri;

    const/4 v1, 0x1

    .line 34
    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    .line 35
    :sswitch_1d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    return-void

    .line 37
    :sswitch_23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    const p2, 0x7f0f0047

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_3a
    .sparse-switch
        0x6 -> :sswitch_23
        0x15 -> :sswitch_1d
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 5

    const/16 v0, 0x1d

    iput v0, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.IMessenger"

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 7
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    goto :goto_2f

    :cond_1e
    const-string v1, "com.google.android.gms.iid.IMessengerCompat"

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 9
    new-instance v0, Lu3/g;

    .line 10
    invoke-direct {v0, p1}, Lu3/g;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    :goto_2f
    return-void

    .line 11
    :cond_30
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MessengerIpcClient"

    const-string v1, "Invalid interface descriptor: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .registers 7

    const/16 v0, 0x1b

    iput v0, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 64
    new-instance v0, Lr0/i;

    invoke-direct {v0, p1}, Lr0/i;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    sget-object v0, Lr0/a;->b:Lr0/a;

    if-nez v0, :cond_3b

    .line 67
    sget-object v0, Lr0/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_1a
    sget-object v1, Lr0/a;->b:Lr0/a;

    if-nez v1, :cond_37

    .line 69
    new-instance v1, Lr0/a;

    .line 70
    invoke-direct {v1}, Landroid/text/Editable$Factory;-><init>()V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_35

    .line 71
    :try_start_23
    const-string v2, "android.text.DynamicLayout$ChangeWatcher"

    .line 72
    const-class v3, Lr0/a;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lr0/a;->c:Ljava/lang/Class;
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_32

    .line 73
    :catchall_32
    :try_start_32
    sput-object v1, Lr0/a;->b:Lr0/a;

    goto :goto_37

    :catchall_35
    move-exception p1

    goto :goto_39

    .line 74
    :cond_37
    :goto_37
    monitor-exit v0

    goto :goto_3b

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_35

    throw p1

    .line 75
    :cond_3b
    :goto_3b
    sget-object v0, Lr0/a;->b:Lr0/a;

    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/y0;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 41
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc6/a;)V
    .registers 5

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 45
    new-instance v1, Lc6/b;

    const/4 v2, 0x1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lc6/b;-><init>(Lc6/a;[I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lg/f0;Lk/a;)V
    .registers 4

    const/16 v0, 0xb

    iput v0, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 79
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IZ)V
    .registers 4

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 52
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 53
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_38

    .line 54
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    check-cast v2, [I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 55
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    check-cast v2, [F

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_38
    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/String;)V
    .registers 3

    const/16 p2, 0x11

    iput p2, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized I()V
    .registers 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/y4;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 5
    .line 6
    if-eqz v1, :cond_23

    .line 7
    .line 8
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Landroid/content/Context;

    .line 11
    .line 12
    if-eqz v2, :cond_23

    .line 13
    .line 14
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lcom/google/android/gms/internal/measurement/z4;

    .line 17
    .line 18
    if-eqz v1, :cond_23

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lcom/google/android/gms/internal/measurement/y4;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lcom/google/android/gms/internal/measurement/z4;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 31
    .line 32
    .line 33
    goto :goto_23

    .line 34
    :catchall_21
    move-exception v1

    .line 35
    goto :goto_28

    .line 36
    :cond_23
    :goto_23
    const/4 v1, 0x0

    .line 37
    sput-object v1, Lcom/google/android/gms/internal/measurement/y4;->d:Lcom/google/android/gms/internal/measurement/y4;
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_21

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_21

    .line 42
    throw v1
.end method

.method public static d(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/y4;
    .registers 6

    .line 1
    const-string v0, "generatefid.lock"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    new-instance v2, Ljava/io/File;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/io/RandomAccessFile;

    .line 14
    .line 15
    const-string v0, "rw"

    .line 16
    .line 17
    invoke-direct {p0, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_17} :catch_36
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_17} :catch_34
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_3 .. :try_end_17} :catch_30

    .line 24
    :try_start_17
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_2e
    .catch Ljava/lang/Error; {:try_start_17 .. :try_end_1b} :catch_2c
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_17 .. :try_end_1b} :catch_29

    .line 28
    :try_start_1b
    new-instance v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 29
    .line 30
    const/16 v3, 0xf

    .line 31
    .line 32
    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_27
    .catch Ljava/lang/Error; {:try_start_1b .. :try_end_22} :catch_25
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_1b .. :try_end_22} :catch_23

    .line 33
    .line 34
    .line 35
    return-object v2

    .line 36
    :catch_23
    move-exception v2

    .line 37
    goto :goto_38

    .line 38
    :catch_25
    move-exception v2

    .line 39
    goto :goto_38

    .line 40
    :catch_27
    move-exception v2

    .line 41
    goto :goto_38

    .line 42
    :catch_29
    move-exception v2

    .line 43
    :goto_2a
    move-object v0, v1

    .line 44
    goto :goto_38

    .line 45
    :catch_2c
    move-exception v2

    .line 46
    goto :goto_2a

    .line 47
    :catch_2e
    move-exception v2

    .line 48
    goto :goto_2a

    .line 49
    :catch_30
    move-exception v2

    .line 50
    :goto_31
    move-object p0, v1

    .line 51
    move-object v0, p0

    .line 52
    goto :goto_38

    .line 53
    :catch_34
    move-exception v2

    .line 54
    goto :goto_31

    .line 55
    :catch_36
    move-exception v2

    .line 56
    goto :goto_31

    .line 57
    :goto_38
    const-string v3, "CrossProcessLock"

    .line 58
    .line 59
    const-string v4, "encountered error while creating and acquiring the lock, ignoring"

    .line 60
    .line 61
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    if-eqz v0, :cond_44

    .line 65
    .line 66
    :try_start_41
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_44

    .line 67
    .line 68
    .line 69
    :catch_44
    :cond_44
    if-eqz p0, :cond_49

    .line 70
    .line 71
    :try_start_46
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_49

    .line 72
    .line 73
    .line 74
    :catch_49
    :cond_49
    return-object v1
.end method

.method public static x(Ljava/io/File;)V
    .registers 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "LruEvictor"

    .line 4
    .line 5
    :try_start_4
    new-instance v2, Lm1/g;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, v3}, Lm1/g;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_ac

    .line 16
    .line 17
    array-length v3, v2

    .line 18
    if-nez v3, :cond_15

    .line 19
    .line 20
    goto/16 :goto_ac

    .line 21
    .line 22
    :cond_15
    array-length v3, v2

    .line 23
    const/4 v4, 0x0

    .line 24
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    move v7, v4

    .line 27
    :goto_1a
    if-ge v7, v3, :cond_29

    .line 28
    .line 29
    aget-object v8, v2, v7

    .line 30
    .line 31
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 32
    .line 33
    .line 34
    move-result-wide v8

    .line 35
    add-long/2addr v5, v8

    .line 36
    add-int/lit8 v7, v7, 0x1

    .line 37
    .line 38
    goto :goto_1a

    .line 39
    :catchall_26
    move-exception v0

    .line 40
    goto/16 :goto_ad

    .line 41
    .line 42
    :cond_29
    const-wide/32 v7, 0x1f400000

    .line 43
    .line 44
    .line 45
    cmp-long v3, v5, v7

    .line 46
    .line 47
    if-gtz v3, :cond_32

    .line 48
    .line 49
    goto/16 :goto_ac

    .line 50
    .line 51
    :cond_32
    new-instance v3, Lm1/h;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {v3}, Lcom/getcapacitor/a;->l(Lm1/h;)Ljava/util/Comparator;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 61
    .line 62
    .line 63
    array-length v3, v2

    .line 64
    move v9, v4

    .line 65
    move v10, v9

    .line 66
    :goto_41
    if-ge v9, v3, :cond_82

    .line 67
    .line 68
    aget-object v11, v2, v9

    .line 69
    .line 70
    cmp-long v12, v5, v7

    .line 71
    .line 72
    if-gtz v12, :cond_4a

    .line 73
    .line 74
    goto :goto_82

    .line 75
    :cond_4a
    invoke-virtual {v11}, Ljava/io/File;->length()J

    .line 76
    .line 77
    .line 78
    move-result-wide v12

    .line 79
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 84
    .line 85
    .line 86
    move-result v15

    .line 87
    add-int/lit8 v15, v15, -0x4

    .line 88
    .line 89
    invoke-virtual {v14, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    new-instance v15, Ljava/io/File;

    .line 94
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v14, ".meta"

    .line 104
    .line 105
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-direct {v15, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_7e

    .line 120
    .line 121
    sub-long/2addr v5, v12

    .line 122
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 123
    .line 124
    .line 125
    add-int/lit8 v10, v10, 0x1

    .line 126
    .line 127
    :cond_7e
    add-int/lit8 v9, v9, 0x1

    .line 128
    .line 129
    const/4 v4, 0x0

    .line 130
    goto :goto_41

    .line 131
    :cond_82
    :goto_82
    if-lez v10, :cond_ac

    .line 132
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v3, "evicted="

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v3, " dir="

    .line 147
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v0, " size="

    .line 159
    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_4 .. :try_end_ac} :catchall_26

    .line 171
    .line 172
    .line 173
    :cond_ac
    :goto_ac
    return-void

    .line 174
    :goto_ad
    const-string v2, "evict failed"

    .line 175
    .line 176
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .line 178
    .line 179
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/content/res/Resources;

    .line 8
    .line 9
    const-string v2, "string"

    .line 10
    .line 11
    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_12

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_12
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public B(Li5/b;)V
    .registers 6

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Fid"

    .line 7
    .line 8
    iget-object v2, p1, Li5/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "Status"

    .line 14
    .line 15
    iget v2, p1, Li5/b;->b:I

    .line 16
    .line 17
    invoke-static {v2}, Landroidx/fragment/app/m1;->e(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    const-string v1, "AuthToken"

    .line 25
    .line 26
    iget-object v2, p1, Li5/b;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string v1, "RefreshToken"

    .line 32
    .line 33
    iget-object v2, p1, Li5/b;->d:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    const-string v1, "TokenCreationEpochInSecs"

    .line 39
    .line 40
    iget-wide v2, p1, Li5/b;->f:J

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    const-string v1, "ExpiresInSecs"

    .line 46
    .line 47
    iget-wide v2, p1, Li5/b;->e:J

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    const-string v1, "FisError"

    .line 53
    .line 54
    iget-object p1, p1, Li5/b;->g:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    const-string p1, "PersistedInstallation"

    .line 60
    .line 61
    const-string v1, "tmp"

    .line 62
    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Lt4/g;

    .line 66
    .line 67
    invoke-virtual {v2}, Lt4/g;->a()V

    .line 68
    .line 69
    .line 70
    iget-object v2, v2, Lt4/g;->a:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p1, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v1, Ljava/io/FileOutputStream;

    .line 81
    .line 82
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v2, "UTF-8"

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/y4;->z()Ljava/io/File;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_6f

    .line 110
    .line 111
    goto :goto_77

    .line 112
    :cond_6f
    new-instance p1, Ljava/io/IOException;

    .line 113
    .line 114
    const-string v0, "unable to rename the tmpfile to PersistedInstallation"

    .line 115
    .line 116
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1
    :try_end_77
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_77} :catch_77
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_77} :catch_77

    .line 120
    :catch_77
    :goto_77
    return-void
.end method

.method public C(Lg0/h;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf3/o;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lk1/h;

    .line 8
    .line 9
    iget v2, p1, Lg0/h;->b:I

    .line 10
    .line 11
    if-nez v2, :cond_18

    .line 12
    .line 13
    iget-object p1, p1, Lg0/h;->a:Landroid/graphics/Typeface;

    .line 14
    .line 15
    new-instance v2, Ls4/b;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v2, v1, v3, p1}, Ls4/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lf3/o;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_18
    new-instance p1, Landroidx/fragment/app/p;

    .line 26
    .line 27
    invoke-direct {p1, v1, v2}, Landroidx/fragment/app/p;-><init>(Lk1/h;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lf3/o;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public D()Li5/b;
    .registers 15

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x4000

    .line 7
    .line 8
    new-array v2, v1, [B

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_a
    new-instance v4, Ljava/io/FileInputStream;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/y4;->z()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_36
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_13} :catch_36

    .line 18
    .line 19
    .line 20
    :goto_13
    :try_start_13
    invoke-virtual {v4, v2, v3, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-gez v5, :cond_29

    .line 25
    .line 26
    new-instance v1, Lorg/json/JSONObject;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_26

    .line 33
    .line 34
    .line 35
    :try_start_22
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_36
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_25} :catch_36

    .line 36
    .line 37
    .line 38
    goto :goto_3b

    .line 39
    :catchall_26
    move-exception v0

    .line 40
    move-object v1, v0

    .line 41
    goto :goto_2d

    .line 42
    :cond_29
    :try_start_29
    invoke-virtual {v0, v2, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_26

    .line 43
    .line 44
    .line 45
    goto :goto_13

    .line 46
    :goto_2d
    :try_start_2d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    .line 47
    .line 48
    .line 49
    goto :goto_35

    .line 50
    :catchall_31
    move-exception v0

    .line 51
    :try_start_32
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :goto_35
    throw v1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_36} :catch_36
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_36} :catch_36

    .line 55
    :catch_36
    new-instance v1, Lorg/json/JSONObject;

    .line 56
    .line 57
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .line 59
    .line 60
    :goto_3b
    const-string v0, "Fid"

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    const-string v0, "Status"

    .line 68
    .line 69
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const-string v3, "AuthToken"

    .line 74
    .line 75
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    const-string v3, "RefreshToken"

    .line 80
    .line 81
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    const-string v3, "TokenCreationEpochInSecs"

    .line 86
    .line 87
    const-wide/16 v4, 0x0

    .line 88
    .line 89
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 90
    .line 91
    .line 92
    move-result-wide v8

    .line 93
    const-string v3, "ExpiresInSecs"

    .line 94
    .line 95
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 96
    .line 97
    .line 98
    move-result-wide v5

    .line 99
    const-string v3, "FisError"

    .line 100
    .line 101
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    const/4 v1, 0x5

    .line 106
    invoke-static {v1}, Landroidx/fragment/app/m1;->h(I)[I

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    aget v7, v1, v0

    .line 111
    .line 112
    if-eqz v7, :cond_90

    .line 113
    .line 114
    if-nez v7, :cond_76

    .line 115
    .line 116
    const-string v0, " registrationStatus"

    .line 117
    .line 118
    goto :goto_78

    .line 119
    :cond_76
    const-string v0, ""

    .line 120
    .line 121
    :goto_78
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_84

    .line 126
    .line 127
    new-instance v4, Li5/b;

    .line 128
    .line 129
    invoke-direct/range {v4 .. v13}, Li5/b;-><init>(JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-object v4

    .line 133
    :cond_84
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 134
    .line 135
    const-string v2, "Missing required properties:"

    .line 136
    .line 137
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v1

    .line 145
    :cond_90
    new-instance v0, Ljava/lang/NullPointerException;

    .line 146
    .line 147
    const-string v1, "Null registrationStatus"

    .line 148
    .line 149
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v0
.end method

.method public E()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/nio/channels/FileLock;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/nio/channels/FileChannel;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_f
    move-exception v0

    .line 17
    const-string v1, "CrossProcessLock"

    .line 18
    .line 19
    const-string v2, "encountered error while releasing, ignoring"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public F(IIII)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    .line 11
    .line 12
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 13
    .line 14
    add-int/2addr p1, v2

    .line 15
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    add-int/2addr p2, v2

    .line 18
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 19
    .line 20
    add-int/2addr p3, v2

    .line 21
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    add-int/2addr p4, v1

    .line 24
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->a(Landroidx/cardview/widget/CardView;IIII)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/p4;->j(Lcom/google/firebase/messaging/y;)V

    .line 2
    instance-of v1, p2, Lcom/google/android/gms/internal/measurement/q;

    if-eqz v1, :cond_e65

    .line 3
    check-cast p2, Lcom/google/android/gms/internal/measurement/q;

    .line 4
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/q;->b:Ljava/util/ArrayList;

    .line 5
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/q;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/s;

    goto :goto_22

    .line 8
    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/s;

    .line 9
    :goto_22
    iget v2, v0, Lcom/google/android/gms/internal/measurement/s;->b:I

    .line 10
    const-string v3, "break"

    const-string v4, "return"

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_e66

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/measurement/d0;->a:[I

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/p4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f0;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_e78

    .line 12
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/s;->c(Ljava/lang/String;)V

    throw v6

    .line 13
    :pswitch_43
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->r0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v8, v1}, Lcom/google/android/gms/internal/measurement/p4;->o(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_4c
    if-ge v9, p2, :cond_80

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v9, v9, 0x1

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 15
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    .line 16
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/p;

    if-eqz v2, :cond_6c

    .line 17
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 18
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 19
    sget-object v2, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    invoke-virtual {p1, v0, v2}, Lcom/google/firebase/messaging/y;->K(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    goto :goto_4c

    .line 20
    :cond_6c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    .line 22
    const-string v0, "Expected string for var name. got "

    .line 23
    invoke-static {v0, p2}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_80
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    goto/16 :goto_e62

    .line 26
    :pswitch_84
    sget-object p1, Lcom/google/android/gms/internal/measurement/f0;->q0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p1, v9, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 27
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    goto/16 :goto_e62

    .line 28
    :pswitch_8d
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->p0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v8, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 29
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 30
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 31
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/t;

    if-eqz p2, :cond_a7

    .line 32
    const-string p1, "undefined"

    goto :goto_cd

    .line 33
    :cond_a7
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/f;

    if-eqz p2, :cond_ae

    .line 34
    const-string p1, "boolean"

    goto :goto_cd

    .line 35
    :cond_ae
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/g;

    if-eqz p2, :cond_b5

    .line 36
    const-string p1, "number"

    goto :goto_cd

    .line 37
    :cond_b5
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/p;

    if-eqz p2, :cond_bc

    .line 38
    const-string p1, "string"

    goto :goto_cd

    .line 39
    :cond_bc
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/o;

    if-eqz p2, :cond_c3

    .line 40
    const-string p1, "function"

    goto :goto_cd

    .line 41
    :cond_c3
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/q;

    if-nez p2, :cond_d5

    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/h;

    if-nez p2, :cond_d5

    const-string p1, "object"

    .line 42
    :goto_cd
    new-instance p2, Lcom/google/android/gms/internal/measurement/p;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    :cond_d2
    :goto_d2
    move-object p1, p2

    goto/16 :goto_e62

    .line 43
    :cond_d5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-array v0, v8, [Ljava/lang/Object;

    aput-object p1, v0, v9

    .line 44
    const-string p1, "Unsupported value type %s in typeof"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 45
    :pswitch_e5
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->l0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v5, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 46
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 47
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 48
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 49
    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    .line 50
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 51
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 52
    sget-object v1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    if-eq p2, v1, :cond_13e

    sget-object v1, Lcom/google/android/gms/internal/measurement/n;->o:Lcom/google/android/gms/internal/measurement/l;

    if-eq p2, v1, :cond_13e

    .line 53
    instance-of v1, p2, Lcom/google/android/gms/internal/measurement/e;

    if-eqz v1, :cond_12f

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/g;

    if-eqz v1, :cond_12f

    .line 54
    check-cast p2, Lcom/google/android/gms/internal/measurement/e;

    .line 55
    check-cast v0, Lcom/google/android/gms/internal/measurement/g;

    .line 56
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/g;->a:Ljava/lang/Double;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 58
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/e;->j(ILcom/google/android/gms/internal/measurement/n;)V

    goto/16 :goto_e62

    .line 59
    :cond_12f
    instance-of v1, p2, Lcom/google/android/gms/internal/measurement/i;

    if-eqz v1, :cond_e62

    .line 60
    check-cast p2, Lcom/google/android/gms/internal/measurement/i;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/i;->b(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    goto/16 :goto_e62

    .line 61
    :cond_13e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t set property "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v0, " of "

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :pswitch_162
    sget-object p1, Lcom/google/android/gms/internal/measurement/f0;->d0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p1, v9, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 66
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->o:Lcom/google/android/gms/internal/measurement/l;

    goto/16 :goto_e62

    .line 67
    :pswitch_16b
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->Q:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 68
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 69
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 70
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 71
    iget-object v1, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 72
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/e;

    if-eqz v0, :cond_1a6

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/p4;->p(Lcom/google/android/gms/internal/measurement/n;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 73
    check-cast p2, Lcom/google/android/gms/internal/measurement/e;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto/16 :goto_e62

    .line 74
    :cond_1a6
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/i;

    if-eqz v0, :cond_1b6

    .line 75
    check-cast p2, Lcom/google/android/gms/internal/measurement/i;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/measurement/i;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto/16 :goto_e62

    .line 76
    :cond_1b6
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/p;

    if-eqz v0, :cond_20d

    .line 77
    const-string v0, "length"

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 78
    new-instance p1, Lcom/google/android/gms/internal/measurement/g;

    check-cast p2, Lcom/google/android/gms/internal/measurement/p;

    .line 79
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 80
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_e62

    .line 81
    :cond_1da
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/p4;->p(Lcom/google/android/gms/internal/measurement/n;)Z

    move-result v0

    if-eqz v0, :cond_20d

    .line 82
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p2, Lcom/google/android/gms/internal/measurement/p;

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_20d

    .line 83
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 84
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    :goto_20a
    move-object p1, v0

    goto/16 :goto_e62

    .line 85
    :cond_20d
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    goto/16 :goto_e62

    .line 86
    :pswitch_211
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->O:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v8, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 87
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 88
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 89
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/p;

    if-eqz v0, :cond_232

    .line 90
    check-cast p2, Lcom/google/android/gms/internal/measurement/p;

    .line 91
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 92
    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/y;->I(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto/16 :goto_e62

    .line 93
    :cond_232
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 94
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    .line 95
    const-string v0, "Expected string for get var. got "

    .line 96
    invoke-static {v0, p2}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :pswitch_246
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->F:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v8, v1}, Lcom/google/android/gms/internal/measurement/p4;->o(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 99
    sget-object p2, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 100
    :goto_24d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_d2

    .line 101
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 102
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 103
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/h;

    if-nez v0, :cond_268

    add-int/lit8 v9, v9, 0x1

    goto :goto_24d

    .line 104
    :cond_268
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ControlValue cannot be in an expression list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :pswitch_270
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_27d

    .line 106
    new-instance p1, Lcom/google/android/gms/internal/measurement/m;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/m;-><init>()V

    goto/16 :goto_e62

    .line 107
    :cond_27d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    rem-int/2addr p2, v7

    if-nez p2, :cond_2c8

    .line 108
    new-instance p2, Lcom/google/android/gms/internal/measurement/m;

    invoke-direct {p2}, Lcom/google/android/gms/internal/measurement/m;-><init>()V

    .line 109
    :goto_289
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v8

    if-ge v9, v0, :cond_d2

    .line 110
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 111
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    add-int/lit8 v2, v9, 0x1

    .line 112
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 113
    iget-object v3, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    .line 114
    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/h;

    if-nez v3, :cond_2c0

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/h;

    if-nez v3, :cond_2c0

    .line 115
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/measurement/m;->b(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    add-int/lit8 v9, v9, 0x2

    goto :goto_289

    .line 116
    :cond_2c0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to evaluate map entry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_2c8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 118
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 119
    const-string v0, "CREATE_OBJECT requires an even number of arguments, found "

    .line 120
    invoke-static {p2, v0}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 121
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :pswitch_2d8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2e5

    .line 123
    new-instance p1, Lcom/google/android/gms/internal/measurement/e;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/e;-><init>()V

    goto/16 :goto_e62

    .line 124
    :cond_2e5
    new-instance p2, Lcom/google/android/gms/internal/measurement/e;

    invoke-direct {p2}, Lcom/google/android/gms/internal/measurement/e;-><init>()V

    .line 125
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v9

    :goto_2ef
    if-ge v2, v0, :cond_d2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/internal/measurement/n;

    .line 126
    iget-object v4, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v4, p1, v3}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v3

    .line 127
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/h;

    if-nez v4, :cond_30c

    add-int/lit8 v4, v9, 0x1

    .line 128
    invoke-virtual {p2, v9, v3}, Lcom/google/android/gms/internal/measurement/e;->j(ILcom/google/android/gms/internal/measurement/n;)V

    move v9, v4

    goto :goto_2ef

    .line 129
    :cond_30c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to evaluate array element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :pswitch_314
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->x:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->o(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 131
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    rem-int/2addr p2, v7

    if-nez p2, :cond_374

    .line 132
    :goto_320
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v8

    if-ge v9, p2, :cond_370

    .line 133
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 134
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 135
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/p;

    if-eqz v0, :cond_35c

    .line 136
    check-cast p2, Lcom/google/android/gms/internal/measurement/p;

    .line 137
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    add-int/lit8 v0, v9, 0x1

    .line 138
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 139
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    .line 140
    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/messaging/y;->K(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 141
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x2

    goto :goto_320

    .line 142
    :cond_35c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 143
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    .line 144
    const-string v0, "Expected string for const name. got "

    .line 145
    invoke-static {v0, p2}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 146
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_370
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    goto/16 :goto_e62

    .line 148
    :cond_374
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 149
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-string v0, "CONST requires an even number of arguments, found "

    .line 150
    invoke-static {p2, v0}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :pswitch_384
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->e:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 153
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 154
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 155
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/p;

    if-eqz v0, :cond_3c4

    .line 156
    check-cast p2, Lcom/google/android/gms/internal/measurement/p;

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/y;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b8

    .line 157
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 158
    iget-object v1, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    .line 159
    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/messaging/y;->M(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    goto/16 :goto_20a

    .line 160
    :cond_3b8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 161
    const-string v0, "Attempting to assign undefined value "

    .line 162
    invoke-static {v0, p2}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 163
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_3c4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 165
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    .line 166
    const-string v0, "Expected string for assign var. got "

    .line 167
    invoke-static {v0, p2}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 168
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3d8
    if-eqz p2, :cond_404

    .line 169
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_404

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/y;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_404

    .line 170
    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/y;->I(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    .line 171
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/j;

    if-eqz v2, :cond_3f6

    .line 172
    check-cast v0, Lcom/google/android/gms/internal/measurement/j;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/j;->e(Lcom/google/firebase/messaging/y;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto/16 :goto_e62

    .line 173
    :cond_3f6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Function "

    const-string v1, " is not defined"

    .line 174
    invoke-static {v0, p2, v1}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 175
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_404
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Command not found: "

    .line 177
    invoke-static {v0, p2}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 178
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :pswitch_410
    sget-object v2, Lcom/google/android/gms/internal/measurement/c0;->a:[I

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/p4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f0;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    packed-switch v2, :pswitch_data_e96

    .line 180
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/s;->c(Ljava/lang/String;)V

    throw v6

    .line 181
    :pswitch_425
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->m0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 182
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 183
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 184
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 185
    iget-object v1, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 186
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, v3

    .line 187
    new-instance p1, Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_e62

    .line 188
    :pswitch_463
    invoke-static {v8, p2, v1}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 189
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 190
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto/16 :goto_e62

    .line 191
    :pswitch_476
    invoke-static {v7, p2, v1}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 192
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 193
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 194
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/y;->G(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    goto/16 :goto_d2

    .line 195
    :pswitch_492
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->a0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v8, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 196
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 197
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 198
    new-instance p2, Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_d2

    .line 199
    :pswitch_4b9
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->Z:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 200
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 201
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 202
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 203
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 204
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 205
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 206
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_20a

    .line 207
    :pswitch_4f6
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->Y:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 208
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 209
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 210
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 211
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 212
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 213
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 214
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    rem-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_20a

    .line 215
    :pswitch_533
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->D:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 216
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 217
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 218
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 219
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 220
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 221
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 222
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    div-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_20a

    .line 223
    :pswitch_570
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->b:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 224
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 225
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 226
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 227
    iget-object v1, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 228
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/i;

    if-nez v0, :cond_5be

    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/p;

    if-nez v0, :cond_5be

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/i;

    if-nez v0, :cond_5be

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/p;

    if-eqz v0, :cond_5a2

    goto :goto_5be

    .line 229
    :cond_5a2
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    add-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_20a

    .line 230
    :cond_5be
    :goto_5be
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-static {p2, p1}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    goto/16 :goto_20a

    .line 233
    :pswitch_5d1
    sget-object v2, Lcom/google/android/gms/internal/measurement/b0;->a:[I

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/p4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f0;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v2, v2, v10

    const/4 v10, 0x4

    packed-switch v2, :pswitch_data_eae

    .line 234
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/s;->c(Ljava/lang/String;)V

    throw v6

    .line 235
    :pswitch_5e5
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->s0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v10, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 236
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 237
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 238
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 239
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 240
    iget-object v5, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/y4;

    iget-object v6, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v5, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    .line 241
    invoke-virtual {v6, p1, v2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    .line 242
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->zzd()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_63a

    .line 243
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/measurement/e;

    invoke-virtual {p1, v2}, Lcom/google/firebase/messaging/y;->F(Lcom/google/android/gms/internal/measurement/e;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    .line 244
    instance-of v5, v2, Lcom/google/android/gms/internal/measurement/h;

    if-eqz v5, :cond_63a

    .line 245
    check-cast v2, Lcom/google/android/gms/internal/measurement/h;

    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/h;->b:Ljava/lang/String;

    .line 246
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_668

    .line 247
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63a

    :goto_637
    move-object p1, v2

    goto/16 :goto_e62

    .line 248
    :cond_63a
    :goto_63a
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    .line 249
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->zzd()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_668

    .line 250
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/measurement/e;

    invoke-virtual {p1, v2}, Lcom/google/firebase/messaging/y;->F(Lcom/google/android/gms/internal/measurement/e;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    .line 251
    instance-of v5, v2, Lcom/google/android/gms/internal/measurement/h;

    if-eqz v5, :cond_664

    .line 252
    check-cast v2, Lcom/google/android/gms/internal/measurement/h;

    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/h;->b:Ljava/lang/String;

    .line 253
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_668

    .line 254
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_664

    goto :goto_637

    .line 255
    :cond_664
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/y;->G(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    goto :goto_63a

    .line 256
    :cond_668
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    goto/16 :goto_e62

    .line 257
    :pswitch_66c
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->N:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v5, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 258
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/measurement/p;

    if-eqz p2, :cond_6aa

    .line 259
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object p2

    .line 260
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 261
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    .line 262
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 263
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    .line 264
    new-instance v2, Lcom/google/android/gms/internal/measurement/a0;

    invoke-direct {v2, p1, p2, v8}, Lcom/google/android/gms/internal/measurement/a0;-><init>(Lcom/google/firebase/messaging/y;Ljava/lang/String;I)V

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/s;->e(Lcom/google/android/gms/internal/measurement/a0;Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto/16 :goto_e62

    .line 265
    :cond_6aa
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_OF_LET must be a string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 266
    :pswitch_6b2
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->M:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v5, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 267
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/measurement/p;

    if-eqz p2, :cond_6f0

    .line 268
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object p2

    .line 269
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 270
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    .line 271
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 272
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    .line 273
    new-instance v2, Lcom/google/android/gms/internal/measurement/a0;

    invoke-direct {v2, p1, p2, v9}, Lcom/google/android/gms/internal/measurement/a0;-><init>(Lcom/google/firebase/messaging/y;Ljava/lang/String;I)V

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/s;->e(Lcom/google/android/gms/internal/measurement/a0;Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto/16 :goto_e62

    .line 274
    :cond_6f0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_OF_CONST must be a string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    :pswitch_6f8
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->L:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v5, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 276
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/measurement/p;

    if-eqz p2, :cond_736

    .line 277
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object p2

    .line 278
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 279
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    .line 280
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 281
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    .line 282
    new-instance v2, Lcom/google/android/gms/internal/measurement/a0;

    invoke-direct {v2, p1, p2, v7}, Lcom/google/android/gms/internal/measurement/a0;-><init>(Lcom/google/firebase/messaging/y;Ljava/lang/String;I)V

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/s;->e(Lcom/google/android/gms/internal/measurement/a0;Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto/16 :goto_e62

    .line 283
    :cond_736
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_OF must be a string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :pswitch_73e
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->K:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v10, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 285
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 286
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 287
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/e;

    if-eqz v0, :cond_7e0

    .line 288
    check-cast p2, Lcom/google/android/gms/internal/measurement/e;

    .line 289
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 290
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/n;

    .line 291
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 292
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    .line 293
    invoke-virtual {p1}, Lcom/google/firebase/messaging/y;->J()Lcom/google/firebase/messaging/y;

    move-result-object v5

    move v7, v9

    .line 294
    :goto_776
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/e;->g()I

    move-result v8

    if-ge v7, v8, :cond_78e

    .line 295
    invoke-virtual {p2, v7}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object v8

    .line 296
    invoke-virtual {p1, v8}, Lcom/google/firebase/messaging/y;->I(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Lcom/google/firebase/messaging/y;->M(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_776

    .line 297
    :cond_78e
    :goto_78e
    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v7

    .line 298
    invoke-interface {v7}, Lcom/google/android/gms/internal/measurement/n;->zzd()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7dc

    .line 299
    move-object v7, v1

    check-cast v7, Lcom/google/android/gms/internal/measurement/e;

    invoke-virtual {p1, v7}, Lcom/google/firebase/messaging/y;->F(Lcom/google/android/gms/internal/measurement/e;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v7

    .line 300
    instance-of v8, v7, Lcom/google/android/gms/internal/measurement/h;

    if-eqz v8, :cond_7ba

    .line 301
    check-cast v7, Lcom/google/android/gms/internal/measurement/h;

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/h;->b:Ljava/lang/String;

    .line 302
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7dc

    .line 303
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7ba

    move-object p1, v7

    goto/16 :goto_e62

    .line 304
    :cond_7ba
    invoke-virtual {p1}, Lcom/google/firebase/messaging/y;->J()Lcom/google/firebase/messaging/y;

    move-result-object v7

    move v8, v9

    .line 305
    :goto_7bf
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/e;->g()I

    move-result v10

    if-ge v8, v10, :cond_7d7

    .line 306
    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object v10

    .line 307
    invoke-virtual {v5, v10}, Lcom/google/firebase/messaging/y;->I(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/google/firebase/messaging/y;->M(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_7bf

    .line 308
    :cond_7d7
    invoke-virtual {v7, v6}, Lcom/google/firebase/messaging/y;->G(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-object v5, v7

    goto :goto_78e

    .line 309
    :cond_7dc
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    goto/16 :goto_e62

    .line 310
    :cond_7e0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initializer variables in FOR_LET must be an ArrayList"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 311
    :pswitch_7e8
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->J:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v5, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 312
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/measurement/p;

    if-eqz p2, :cond_859

    .line 313
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object p2

    .line 314
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 315
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    .line 316
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 317
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    .line 318
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_855

    .line 319
    :cond_821
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_855

    .line 320
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 321
    invoke-virtual {p1}, Lcom/google/firebase/messaging/y;->J()Lcom/google/firebase/messaging/y;

    move-result-object v5

    .line 322
    invoke-virtual {v5, p2, v2}, Lcom/google/firebase/messaging/y;->K(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 323
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/measurement/e;

    invoke-virtual {v5, v2}, Lcom/google/firebase/messaging/y;->F(Lcom/google/android/gms/internal/measurement/e;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    .line 324
    instance-of v5, v2, Lcom/google/android/gms/internal/measurement/h;

    if-eqz v5, :cond_821

    .line 325
    check-cast v2, Lcom/google/android/gms/internal/measurement/h;

    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/h;->b:Ljava/lang/String;

    .line 326
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84d

    .line 327
    sget-object v2, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    goto/16 :goto_637

    .line 328
    :cond_84d
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_821

    goto/16 :goto_637

    .line 329
    :cond_855
    sget-object v2, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    goto/16 :goto_637

    .line 330
    :cond_859
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_IN_LET must be a string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 331
    :pswitch_861
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->I:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v5, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 332
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/measurement/p;

    if-eqz p2, :cond_8a3

    .line 333
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object p2

    .line 334
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 335
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    .line 336
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 337
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    .line 338
    new-instance v2, Lcom/google/android/gms/internal/measurement/a0;

    invoke-direct {v2, p1, p2, v9}, Lcom/google/android/gms/internal/measurement/a0;-><init>(Lcom/google/firebase/messaging/y;Ljava/lang/String;I)V

    .line 339
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/util/Iterator;

    move-result-object p1

    .line 340
    invoke-static {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/s;->a(Lcom/google/android/gms/internal/measurement/a0;Ljava/util/Iterator;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto/16 :goto_e62

    .line 341
    :cond_8a3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_IN_CONST must be a string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :pswitch_8ab
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->H:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v5, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 343
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/measurement/p;

    if-eqz p2, :cond_918

    .line 344
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object p2

    .line 345
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 346
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    .line 347
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 348
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    .line 349
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_914

    .line 350
    :cond_8e4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_914

    .line 351
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 352
    invoke-virtual {p1, p2, v2}, Lcom/google/firebase/messaging/y;->K(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 353
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/measurement/e;

    invoke-virtual {p1, v2}, Lcom/google/firebase/messaging/y;->F(Lcom/google/android/gms/internal/measurement/e;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    .line 354
    instance-of v5, v2, Lcom/google/android/gms/internal/measurement/h;

    if-eqz v5, :cond_8e4

    .line 355
    check-cast v2, Lcom/google/android/gms/internal/measurement/h;

    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/h;->b:Ljava/lang/String;

    .line 356
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_90c

    .line 357
    sget-object v2, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    goto/16 :goto_637

    .line 358
    :cond_90c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8e4

    goto/16 :goto_637

    .line 359
    :cond_914
    sget-object v2, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    goto/16 :goto_637

    .line 360
    :cond_918
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_IN must be a string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 361
    :pswitch_920
    sget-object v2, Lcom/google/android/gms/internal/measurement/z;->a:[I

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/p4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f0;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v8, :cond_98c

    if-eq v2, v7, :cond_965

    if-ne v2, v5, :cond_961

    .line 362
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->e0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 363
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 364
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 365
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->zzd()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_951

    goto/16 :goto_d2

    .line 366
    :cond_951
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 367
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto/16 :goto_e62

    .line 368
    :cond_961
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/s;->c(Ljava/lang/String;)V

    throw v6

    .line 369
    :cond_965
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->b0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v8, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 370
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 371
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 372
    new-instance p2, Lcom/google/android/gms/internal/measurement/f;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->zzd()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/f;-><init>(Ljava/lang/Boolean;)V

    goto/16 :goto_d2

    .line 373
    :cond_98c
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->c:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 374
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 375
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 376
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->zzd()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9ab

    goto/16 :goto_d2

    .line 377
    :cond_9ab
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 378
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto/16 :goto_e62

    .line 379
    :pswitch_9bb
    sget-object v2, Lcom/google/android/gms/internal/measurement/x;->a:[I

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/p4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f0;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v2, v2, v10

    packed-switch v2, :pswitch_data_ec2

    .line 380
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/s;->c(Ljava/lang/String;)V

    throw v6

    .line 381
    :pswitch_9ce
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->o0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v5, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 382
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 383
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 384
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->zzd()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9fb

    .line 385
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 386
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto/16 :goto_e62

    .line 387
    :cond_9fb
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 388
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto/16 :goto_e62

    .line 389
    :pswitch_a07
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->n0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v5, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 390
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 391
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 392
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 393
    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    .line 394
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 395
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    .line 396
    instance-of v5, v0, Lcom/google/android/gms/internal/measurement/e;

    if-eqz v5, :cond_aaf

    .line 397
    instance-of v5, v1, Lcom/google/android/gms/internal/measurement/e;

    if-eqz v5, :cond_aa7

    .line 398
    check-cast v0, Lcom/google/android/gms/internal/measurement/e;

    .line 399
    check-cast v1, Lcom/google/android/gms/internal/measurement/e;

    move v5, v9

    .line 400
    :goto_a3f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/e;->g()I

    move-result v6

    if-ge v9, v6, :cond_a73

    if-nez v5, :cond_a55

    .line 401
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v6

    .line 402
    invoke-virtual {v2, p1, v6}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v6

    .line 403
    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a70

    .line 404
    :cond_a55
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v5

    .line 405
    invoke-virtual {v2, p1, v5}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v5

    .line 406
    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/h;

    if-eqz v6, :cond_a6f

    .line 407
    move-object p1, v5

    check-cast p1, Lcom/google/android/gms/internal/measurement/h;

    .line 408
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/h;->b:Ljava/lang/String;

    .line 409
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_aa3

    move-object p1, v5

    goto/16 :goto_e62

    :cond_a6f
    move v5, v8

    :cond_a70
    add-int/lit8 v9, v9, 0x1

    goto :goto_a3f

    .line 410
    :cond_a73
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/e;->g()I

    move-result p2

    add-int/2addr p2, v8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    move-result v3

    if-ne p2, v3, :cond_aa3

    .line 411
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/e;->g()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 412
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 413
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/h;

    if-eqz p2, :cond_aa3

    .line 414
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/measurement/h;

    .line 415
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/h;->b:Ljava/lang/String;

    .line 416
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e62

    const-string v0, "continue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_aa3

    goto/16 :goto_e62

    .line 417
    :cond_aa3
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    goto/16 :goto_e62

    .line 418
    :cond_aa7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed SWITCH statement, case statements are not a list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 419
    :cond_aaf
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed SWITCH statement, cases are not a list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 420
    :pswitch_ab7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_ac1

    .line 421
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->r:Lcom/google/android/gms/internal/measurement/h;

    goto/16 :goto_e62

    .line 422
    :cond_ac1
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->k0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v8, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 423
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 424
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 425
    new-instance p2, Lcom/google/android/gms/internal/measurement/h;

    invoke-direct {p2, v4, p1}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    goto/16 :goto_d2

    .line 426
    :pswitch_adb
    new-instance p1, Lcom/google/android/gms/internal/measurement/e;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/e;-><init>(Ljava/util/List;)V

    goto/16 :goto_e62

    .line 427
    :pswitch_ae2
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->V:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->o(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 428
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 429
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 430
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 431
    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    .line 432
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v7, :cond_b13

    .line 433
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 434
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v6

    .line 435
    :cond_b13
    sget-object v1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 436
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->zzd()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b26

    .line 437
    check-cast v0, Lcom/google/android/gms/internal/measurement/e;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/y;->F(Lcom/google/android/gms/internal/measurement/e;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto :goto_b30

    :cond_b26
    if-eqz v6, :cond_b2f

    .line 438
    check-cast v6, Lcom/google/android/gms/internal/measurement/e;

    invoke-virtual {p1, v6}, Lcom/google/firebase/messaging/y;->F(Lcom/google/android/gms/internal/measurement/e;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto :goto_b30

    :cond_b2f
    move-object p1, v1

    .line 439
    :goto_b30
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/h;

    if-eqz p2, :cond_b36

    goto/16 :goto_e62

    :cond_b36
    move-object p1, v1

    goto/16 :goto_e62

    .line 440
    :pswitch_b39
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/s;->b(Lcom/google/firebase/messaging/y;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/o;

    move-result-object p1

    goto/16 :goto_e62

    .line 441
    :pswitch_b3f
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->C:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->o(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 442
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/s;->b(Lcom/google/firebase/messaging/y;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/o;

    move-result-object p2

    .line 443
    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/j;->a:Ljava/lang/String;

    if-nez v0, :cond_b53

    .line 444
    const-string v0, ""

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/messaging/y;->M(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    goto/16 :goto_d2

    .line 445
    :cond_b53
    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/messaging/y;->M(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    goto/16 :goto_d2

    .line 446
    :pswitch_b58
    sget-object p1, Lcom/google/android/gms/internal/measurement/f0;->v:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p1, v9, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 447
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->p:Lcom/google/android/gms/internal/measurement/h;

    goto/16 :goto_e62

    .line 448
    :pswitch_b61
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b81

    .line 449
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 450
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 451
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/e;

    if-eqz v0, :cond_b81

    .line 452
    check-cast p2, Lcom/google/android/gms/internal/measurement/e;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/y;->F(Lcom/google/android/gms/internal/measurement/e;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto/16 :goto_e62

    .line 453
    :cond_b81
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    goto/16 :goto_e62

    .line 454
    :pswitch_b85
    sget-object p1, Lcom/google/android/gms/internal/measurement/f0;->v:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p1, v9, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 455
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->q:Lcom/google/android/gms/internal/measurement/h;

    goto/16 :goto_e62

    .line 456
    :pswitch_b8e
    invoke-virtual {p1}, Lcom/google/firebase/messaging/y;->J()Lcom/google/firebase/messaging/y;

    move-result-object p1

    .line 457
    new-instance p2, Lcom/google/android/gms/internal/measurement/e;

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/measurement/e;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/y;->F(Lcom/google/android/gms/internal/measurement/e;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto/16 :goto_e62

    .line 458
    :pswitch_b9d
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->d:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v5, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 459
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 460
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 461
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 462
    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    .line 463
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 465
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    .line 466
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/e;

    if-eqz v2, :cond_bea

    .line 467
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_be2

    .line 468
    check-cast v1, Lcom/google/android/gms/internal/measurement/e;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->m()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p2, v0, p1, v1}, Lcom/google/android/gms/internal/measurement/n;->d(Ljava/lang/String;Lcom/google/firebase/messaging/y;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    goto/16 :goto_e62

    .line 469
    :cond_be2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Function name for apply is undefined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 470
    :cond_bea
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 471
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    .line 472
    const-string v0, "Function arguments for Apply are not a list found "

    .line 473
    invoke-static {v0, p2}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 474
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 475
    :pswitch_bfe
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/p4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f0;

    move-result-object v2

    .line 476
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v1}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 477
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 478
    iget-object v3, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    .line 479
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 480
    iget-object v3, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v3, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 481
    sget-object v1, Lcom/google/android/gms/internal/measurement/w;->a:[I

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/p4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f0;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_ee0

    .line 482
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/s;->c(Ljava/lang/String;)V

    throw v6

    .line 483
    :pswitch_c38
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/measurement/s;->d(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p1

    :goto_c3c
    xor-int/2addr p1, v8

    goto :goto_c60

    .line 484
    :pswitch_c3e
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/measurement/s;->g(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p1

    goto :goto_c60

    .line 485
    :pswitch_c43
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/measurement/s;->f(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p1

    goto :goto_c60

    .line 486
    :pswitch_c48
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/measurement/p4;->l(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p1

    goto :goto_c3c

    .line 487
    :pswitch_c4d
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/measurement/p4;->l(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p1

    goto :goto_c60

    .line 488
    :pswitch_c52
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/measurement/s;->g(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p1

    goto :goto_c60

    .line 489
    :pswitch_c57
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/measurement/s;->f(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p1

    goto :goto_c60

    .line 490
    :pswitch_c5c
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/measurement/s;->d(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p1

    :goto_c60
    if-eqz p1, :cond_c66

    .line 491
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->s:Lcom/google/android/gms/internal/measurement/f;

    goto/16 :goto_e62

    :cond_c66
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->t:Lcom/google/android/gms/internal/measurement/f;

    goto/16 :goto_e62

    .line 492
    :pswitch_c6a
    sget-object v2, Lcom/google/android/gms/internal/measurement/u;->a:[I

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/p4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f0;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-wide/16 v3, 0x1f

    packed-switch v2, :pswitch_data_ef4

    .line 493
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/s;->c(Ljava/lang/String;)V

    throw v6

    .line 494
    :pswitch_c7f
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->l:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 495
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 496
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 497
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    move-result p2

    .line 498
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 499
    iget-object v1, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 500
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    move-result p1

    .line 501
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    xor-int/2addr p1, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_20a

    .line 502
    :pswitch_cc5
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->k:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 503
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 504
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 505
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 506
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    move-result p2

    int-to-long v5, p2

    const-wide v9, 0xffffffffL

    and-long/2addr v5, v9

    .line 507
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 508
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 509
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 510
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    move-result p1

    int-to-long p1, p1

    and-long/2addr p1, v3

    long-to-int p1, p1

    .line 511
    new-instance p2, Lcom/google/android/gms/internal/measurement/g;

    ushr-long v0, v5, p1

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_d2

    .line 512
    :pswitch_d16
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->j:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 513
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 514
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 515
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    move-result p2

    .line 516
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 517
    iget-object v1, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 518
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 519
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    move-result p1

    int-to-long v0, p1

    and-long/2addr v0, v3

    long-to-int p1, v0

    .line 520
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    shr-int p1, p2, p1

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_20a

    .line 521
    :pswitch_d60
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->i:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 522
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 523
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 524
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    move-result p2

    .line 525
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 526
    iget-object v1, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 527
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    move-result p1

    .line 528
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    or-int/2addr p1, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_20a

    .line 529
    :pswitch_da6
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->h:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v8, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 530
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 531
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 532
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    move-result p1

    .line 533
    new-instance p2, Lcom/google/android/gms/internal/measurement/g;

    not-int p1, p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_d2

    .line 534
    :pswitch_dd2
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->g:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 535
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 536
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 537
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    move-result p2

    .line 538
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 539
    iget-object v1, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    .line 540
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 541
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    move-result p1

    int-to-long v0, p1

    and-long/2addr v0, v3

    long-to-int p1, v0

    .line 542
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    shl-int p1, p2, p1

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_20a

    .line 543
    :pswitch_e1c
    sget-object p2, Lcom/google/android/gms/internal/measurement/f0;->f:Lcom/google/android/gms/internal/measurement/f0;

    invoke-static {p2, v7, v1}, Lcom/google/android/gms/internal/measurement/p4;->h(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 544
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 545
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    .line 546
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    move-result p2

    .line 547
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 548
    iget-object v1, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    :try_start_e45
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1
    :try_end_e49
    .catchall {:try_start_e45 .. :try_end_e49} :catchall_e63

    .line 549
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    move-result p1

    .line 550
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    and-int/2addr p1, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_20a

    :cond_e62
    :goto_e62
    return-object p1

    :catchall_e63
    move-exception p1

    .line 551
    throw p1

    :cond_e65
    return-object p2

    :pswitch_data_e66
    .packed-switch 0x0
        :pswitch_c6a
        :pswitch_bfe
        :pswitch_9bb
        :pswitch_920
        :pswitch_5d1
        :pswitch_410
        :pswitch_3d8
    .end packed-switch

    :pswitch_data_e78
    .packed-switch 0x1
        :pswitch_384
        :pswitch_314
        :pswitch_2d8
        :pswitch_270
        :pswitch_246
        :pswitch_211
        :pswitch_16b
        :pswitch_16b
        :pswitch_162
        :pswitch_e5
        :pswitch_8d
        :pswitch_84
        :pswitch_43
    .end packed-switch

    :pswitch_data_e96
    .packed-switch 0x1
        :pswitch_570
        :pswitch_533
        :pswitch_4f6
        :pswitch_4b9
        :pswitch_492
        :pswitch_476
        :pswitch_476
        :pswitch_463
        :pswitch_463
        :pswitch_425
    .end packed-switch

    :pswitch_data_eae
    .packed-switch 0x1
        :pswitch_8ab
        :pswitch_861
        :pswitch_7e8
        :pswitch_73e
        :pswitch_6f8
        :pswitch_6b2
        :pswitch_66c
        :pswitch_5e5
    .end packed-switch

    :pswitch_data_ec2
    .packed-switch 0x1
        :pswitch_b9d
        :pswitch_b8e
        :pswitch_b85
        :pswitch_b61
        :pswitch_b61
        :pswitch_b58
        :pswitch_b3f
        :pswitch_b39
        :pswitch_ae2
        :pswitch_adb
        :pswitch_ab7
        :pswitch_a07
        :pswitch_9ce
    .end packed-switch

    :pswitch_data_ee0
    .packed-switch 0x1
        :pswitch_c5c
        :pswitch_c57
        :pswitch_c52
        :pswitch_c4d
        :pswitch_c48
        :pswitch_c43
        :pswitch_c3e
        :pswitch_c38
    .end packed-switch

    :pswitch_data_ef4
    .packed-switch 0x1
        :pswitch_e1c
        :pswitch_dd2
        :pswitch_da6
        :pswitch_d60
        :pswitch_d16
        :pswitch_cc5
        :pswitch_c7f
    .end packed-switch
.end method

.method public H()Ljava/lang/Object;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/measurement/o4;->a:Lcom/google/android/gms/internal/measurement/q4;

    .line 18
    .line 19
    if-eqz v0, :cond_12f

    .line 20
    .line 21
    monitor-enter v2

    .line 22
    :try_start_15
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/q4;->b:Ljava/util/HashMap;

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    const/4 v5, 0x0

    .line 26
    if-nez v3, :cond_41

    .line 27
    .line 28
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/q4;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ljava/util/HashMap;

    .line 34
    .line 35
    const/16 v6, 0x10

    .line 36
    .line 37
    const/high16 v7, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-direct {v3, v6, v7}, Ljava/util/HashMap;-><init>(IF)V

    .line 40
    .line 41
    .line 42
    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/q4;->b:Ljava/util/HashMap;

    .line 43
    .line 44
    new-instance v3, Ljava/lang/Object;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/q4;->g:Ljava/lang/Object;

    .line 50
    .line 51
    sget-object v3, Lcom/google/android/gms/internal/measurement/n4;->a:Landroid/net/Uri;

    .line 52
    .line 53
    new-instance v6, Lcom/google/android/gms/internal/measurement/r4;

    .line 54
    .line 55
    const/4 v7, 0x0

    .line 56
    invoke-direct {v6, v7, v2}, Lcom/google/android/gms/internal/measurement/r4;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    .line 61
    .line 62
    goto :goto_6b

    .line 63
    :catchall_3e
    move-exception v0

    .line 64
    goto/16 :goto_12d

    .line 65
    .line 66
    :cond_41
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/q4;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    .line 68
    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_6b

    .line 73
    .line 74
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/q4;->b:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 77
    .line 78
    .line 79
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/q4;->c:Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 82
    .line 83
    .line 84
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/q4;->d:Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 87
    .line 88
    .line 89
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/q4;->e:Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 92
    .line 93
    .line 94
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/q4;->f:Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 97
    .line 98
    .line 99
    new-instance v3, Ljava/lang/Object;

    .line 100
    .line 101
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/q4;->g:Ljava/lang/Object;

    .line 105
    .line 106
    iput-boolean v5, v2, Lcom/google/android/gms/internal/measurement/q4;->h:Z

    .line 107
    .line 108
    :cond_6b
    :goto_6b
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/q4;->g:Ljava/lang/Object;

    .line 109
    .line 110
    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/q4;->b:Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    const/4 v7, 0x0

    .line 117
    if-eqz v6, :cond_83

    .line 118
    .line 119
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/q4;->b:Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Ljava/lang/String;

    .line 126
    .line 127
    if-eqz v0, :cond_81

    .line 128
    .line 129
    move-object v7, v0

    .line 130
    :cond_81
    monitor-exit v2

    .line 131
    return-object v7

    .line 132
    :cond_83
    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/q4;->i:[Ljava/lang/String;

    .line 133
    .line 134
    array-length v8, v6

    .line 135
    :goto_86
    if-ge v5, v8, :cond_105

    .line 136
    .line 137
    aget-object v9, v6, v5

    .line 138
    .line 139
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-eqz v9, :cond_102

    .line 144
    .line 145
    iget-boolean v3, v2, Lcom/google/android/gms/internal/measurement/q4;->h:Z

    .line 146
    .line 147
    if-nez v3, :cond_100

    .line 148
    .line 149
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/q4;->i:[Ljava/lang/String;
    :try_end_96
    .catchall {:try_start_15 .. :try_end_96} :catchall_3e

    .line 150
    .line 151
    :try_start_96
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/q4;->j:Lcom/google/android/gms/internal/measurement/a6;

    .line 152
    .line 153
    new-instance v6, Lcom/google/android/gms/internal/measurement/a6;

    .line 154
    .line 155
    const/4 v8, 0x1

    .line 156
    invoke-direct {v6, v8}, Lcom/google/android/gms/internal/measurement/a6;-><init>(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v3, v6}, Lcom/google/android/gms/internal/measurement/a6;->d(Landroid/content/ContentResolver;[Ljava/lang/String;Lcom/google/android/gms/internal/measurement/a6;)Ljava/util/HashMap;

    .line 163
    .line 164
    .line 165
    move-result-object v0
    :try_end_a5
    .catch Lcom/google/android/gms/internal/measurement/t4; {:try_start_96 .. :try_end_a5} :catch_eb
    .catchall {:try_start_96 .. :try_end_a5} :catchall_3e

    .line 166
    :try_start_a5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-nez v3, :cond_d3

    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/q4;->c:Ljava/util/HashMap;

    .line 177
    .line 178
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-interface {v3, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 183
    .line 184
    .line 185
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/q4;->d:Ljava/util/HashMap;

    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-interface {v3, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 192
    .line 193
    .line 194
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/q4;->e:Ljava/util/HashMap;

    .line 195
    .line 196
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    invoke-interface {v3, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 201
    .line 202
    .line 203
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/q4;->f:Ljava/util/HashMap;

    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-interface {v3, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 210
    .line 211
    .line 212
    :cond_d3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-nez v3, :cond_e9

    .line 217
    .line 218
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/q4;->b:Ljava/util/HashMap;

    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_e4

    .line 225
    .line 226
    iput-object v0, v2, Lcom/google/android/gms/internal/measurement/q4;->b:Ljava/util/HashMap;

    .line 227
    .line 228
    goto :goto_e9

    .line 229
    :cond_e4
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/q4;->b:Ljava/util/HashMap;

    .line 230
    .line 231
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 232
    .line 233
    .line 234
    :cond_e9
    :goto_e9
    iput-boolean v4, v2, Lcom/google/android/gms/internal/measurement/q4;->h:Z

    .line 235
    .line 236
    :catch_eb
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/q4;->b:Ljava/util/HashMap;

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_100

    .line 243
    .line 244
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/q4;->b:Ljava/util/HashMap;

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Ljava/lang/String;

    .line 251
    .line 252
    if-eqz v0, :cond_fe

    .line 253
    .line 254
    move-object v7, v0

    .line 255
    :cond_fe
    monitor-exit v2

    .line 256
    goto :goto_12c

    .line 257
    :cond_100
    monitor-exit v2

    .line 258
    goto :goto_12c

    .line 259
    :cond_102
    add-int/lit8 v5, v5, 0x1

    .line 260
    .line 261
    goto :goto_86

    .line 262
    :cond_105
    monitor-exit v2
    :try_end_106
    .catchall {:try_start_a5 .. :try_end_106} :catchall_3e

    .line 263
    :try_start_106
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/q4;->j:Lcom/google/android/gms/internal/measurement/a6;

    .line 264
    .line 265
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/a6;->c(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0
    :try_end_10f
    .catch Lcom/google/android/gms/internal/measurement/t4; {:try_start_106 .. :try_end_10f} :catch_12c

    .line 272
    if-eqz v0, :cond_118

    .line 273
    .line 274
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    if-eqz v4, :cond_118

    .line 279
    .line 280
    move-object v0, v7

    .line 281
    :cond_118
    monitor-enter v2

    .line 282
    :try_start_119
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/q4;->g:Ljava/lang/Object;

    .line 283
    .line 284
    if-ne v3, v4, :cond_125

    .line 285
    .line 286
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/q4;->b:Ljava/util/HashMap;

    .line 287
    .line 288
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    goto :goto_125

    .line 292
    :catchall_123
    move-exception v0

    .line 293
    goto :goto_12a

    .line 294
    :cond_125
    :goto_125
    monitor-exit v2

    .line 295
    if-eqz v0, :cond_129

    .line 296
    .line 297
    return-object v0

    .line 298
    :cond_129
    return-object v7

    .line 299
    :goto_12a
    monitor-exit v2
    :try_end_12b
    .catchall {:try_start_119 .. :try_end_12b} :catchall_123

    .line 300
    throw v0

    .line 301
    :catch_12c
    :goto_12c
    return-object v7

    .line 302
    :goto_12d
    :try_start_12d
    monitor-exit v2
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_3e

    .line 303
    throw v0

    .line 304
    :cond_12f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 308
    .line 309
    const-string v1, "ContentResolver needed with GservicesDelegateSupplier.init()"

    .line 310
    .line 311
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw v0
.end method

.method public J(Lcom/google/android/gms/internal/measurement/s;)V
    .registers 7

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/s;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_7
    if-ge v2, v1, :cond_1d

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Lcom/google/android/gms/internal/measurement/f0;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f0;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v4, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_7

    .line 30
    :cond_1d
    return-void
.end method

.method public K(Lcom/google/firebase/messaging/y;Lc5/h;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/TreeMap;

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/gms/internal/measurement/j7;

    .line 6
    .line 7
    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/measurement/j7;-><init>(Lc5/h;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ljava/util/TreeMap;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_54

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Ljava/lang/Integer;

    .line 33
    .line 34
    iget-object v5, p2, Lc5/h;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v5, Lcom/google/android/gms/internal/measurement/c;

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/c;->clone()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lcom/google/android/gms/internal/measurement/c;

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/google/android/gms/internal/measurement/o;

    .line 49
    .line 50
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v4, p1, v6}, Lcom/google/android/gms/internal/measurement/o;->e(Lcom/google/firebase/messaging/y;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    instance-of v6, v4, Lcom/google/android/gms/internal/measurement/g;

    .line 59
    .line 60
    const/4 v7, -0x1

    .line 61
    if-eqz v6, :cond_4b

    .line 62
    .line 63
    check-cast v4, Lcom/google/android/gms/internal/measurement/g;

    .line 64
    .line 65
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/g;->a:Ljava/lang/Double;

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 68
    .line 69
    .line 70
    move-result-wide v8

    .line 71
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    move v4, v7

    .line 77
    :goto_4c
    const/4 v6, 0x2

    .line 78
    if-eq v4, v6, :cond_51

    .line 79
    .line 80
    if-ne v4, v7, :cond_15

    .line 81
    .line 82
    :cond_51
    iput-object v5, p2, Lc5/h;->c:Ljava/lang/Object;

    .line 83
    .line 84
    goto :goto_15

    .line 85
    :cond_54
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    :cond_5c
    :goto_5c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_86

    .line 98
    .line 99
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lcom/google/android/gms/internal/measurement/o;

    .line 110
    .line 111
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/measurement/o;->e(Lcom/google/firebase/messaging/y;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/g;

    .line 120
    .line 121
    if-eqz v3, :cond_5c

    .line 122
    .line 123
    check-cast v2, Lcom/google/android/gms/internal/measurement/g;

    .line 124
    .line 125
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/g;->a:Ljava/lang/Double;

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 128
    .line 129
    .line 130
    move-result-wide v2

    .line 131
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    .line 132
    .line 133
    .line 134
    goto :goto_5c

    .line 135
    :cond_86
    return-void
.end method

.method public a()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp0/y;

    .line 4
    .line 5
    return-object v0
.end method

.method public b(Lk/b;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lk/a;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lk/a;->b(Lk/b;Landroid/view/MenuItem;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public c(Ljava/lang/CharSequence;IILp0/v;)Z
    .registers 8

    .line 1
    iget v0, p4, Lp0/v;->c:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lez v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lp0/y;

    .line 12
    .line 13
    if-nez v0, :cond_22

    .line 14
    .line 15
    new-instance v0, Lp0/y;

    .line 16
    .line 17
    instance-of v2, p1, Landroid/text/Spannable;

    .line 18
    .line 19
    if-eqz v2, :cond_17

    .line 20
    .line 21
    check-cast p1, Landroid/text/Spannable;

    .line 22
    .line 23
    goto :goto_1d

    .line 24
    :cond_17
    new-instance v2, Landroid/text/SpannableString;

    .line 25
    .line 26
    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    move-object p1, v2

    .line 30
    :goto_1d
    invoke-direct {v0, p1}, Lp0/y;-><init>(Landroid/text/Spannable;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 34
    .line 35
    :cond_22
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Lo3/a;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance p1, Lp0/w;

    .line 43
    .line 44
    invoke-direct {p1, p4}, Lp0/w;-><init>(Lp0/v;)V

    .line 45
    .line 46
    .line 47
    iget-object p4, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p4, Lp0/y;

    .line 50
    .line 51
    const/16 v0, 0x21

    .line 52
    .line 53
    invoke-virtual {p4, p1, p2, p3, v0}, Lp0/y;->setSpan(Ljava/lang/Object;III)V

    .line 54
    .line 55
    .line 56
    return v1
.end method

.method public e(Lk/b;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lk/a;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lk/a;->e(Lk/b;Landroid/view/Menu;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, "="

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public g(Landroidx/fragment/app/c0;Z)V
    .registers 5

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/y0;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 11
    .line 12
    if-eqz v0, :cond_17

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->g(Landroidx/fragment/app/c0;Z)V

    .line 22
    .line 23
    .line 24
    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_36

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_30

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    if-eqz p2, :cond_2f

    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2f
    throw p1

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/ClassCastException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_36
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_42

    .line 4
    .line 5
    .line 6
    new-instance v2, Lo3/a;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {v2, v0}, Lo3/a;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lo3/a;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {v3, v0}, Lo3/a;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lq6/a;

    .line 21
    .line 22
    invoke-interface {v0}, Lq6/a;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v6, v1

    .line 29
    check-cast v6, Lq6/a;

    .line 30
    .line 31
    new-instance v1, Lm3/h;

    .line 32
    .line 33
    move-object v5, v0

    .line 34
    check-cast v5, Lm3/j;

    .line 35
    .line 36
    sget-object v4, Lm3/a;->f:Lm3/a;

    .line 37
    .line 38
    invoke-direct/range {v1 .. v6}, Lm3/h;-><init>(Lo3/a;Lo3/a;Lm3/a;Lm3/j;Lq6/a;)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :pswitch_29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lo5/c;

    .line 45
    .line 46
    iget-object v0, v0, Lo5/c;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Landroid/content/Context;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Lk1/h;

    .line 53
    .line 54
    invoke-virtual {v1}, Lk1/h;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Lg3/d;

    .line 59
    .line 60
    check-cast v1, Lc5/h;

    .line 61
    .line 62
    invoke-direct {v2, v0, v1}, Lg3/d;-><init>(Landroid/content/Context;Lc5/h;)V

    .line 63
    .line 64
    .line 65
    return-object v2

    .line 66
    nop

    .line 67
    :pswitch_data_42
    .packed-switch 0xe
        :pswitch_29
    .end packed-switch
.end method

.method public h(Lk/b;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg/f0;

    .line 4
    .line 5
    iget-object v0, v0, Lg/f0;->I:Landroid/view/ViewGroup;

    .line 6
    .line 7
    sget-object v1, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 8
    .line 9
    invoke-static {v0}, Lj0/b0;->c(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lk/a;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Lk/a;->h(Lk/b;Landroid/view/Menu;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public i(Lk/b;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lk/a;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lk/a;->i(Lk/b;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lg/f0;

    .line 11
    .line 12
    iget-object v0, p1, Lg/f0;->E:Landroid/widget/PopupWindow;

    .line 13
    .line 14
    if-eqz v0, :cond_1a

    .line 15
    .line 16
    iget-object v0, p1, Lg/f0;->l:Landroid/view/Window;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p1, Lg/f0;->F:Lg/t;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_1a
    iget-object v0, p1, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 28
    .line 29
    if-eqz v0, :cond_3a

    .line 30
    .line 31
    iget-object v0, p1, Lg/f0;->G:Lj0/o0;

    .line 32
    .line 33
    if-eqz v0, :cond_25

    .line 34
    .line 35
    invoke-virtual {v0}, Lj0/o0;->b()V

    .line 36
    .line 37
    .line 38
    :cond_25
    iget-object v0, p1, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 39
    .line 40
    invoke-static {v0}, Lj0/k0;->a(Landroid/view/View;)Lj0/o0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Lj0/o0;->a(F)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p1, Lg/f0;->G:Lj0/o0;

    .line 49
    .line 50
    new-instance v1, Lg/w;

    .line 51
    .line 52
    const/4 v2, 0x2

    .line 53
    invoke-direct {v1, v2, p0}, Lg/w;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lj0/o0;->d(Lj0/p0;)V

    .line 57
    .line 58
    .line 59
    :cond_3a
    iget-object v0, p1, Lg/f0;->v:Ljava/lang/Object;

    .line 60
    .line 61
    iget-object v1, p1, Lg/f0;->C:Lk/b;

    .line 62
    .line 63
    invoke-interface {v0, v1}, Lg/n;->onSupportActionModeFinished(Lk/b;)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    iput-object v0, p1, Lg/f0;->C:Lk/b;

    .line 68
    .line 69
    iget-object v0, p1, Lg/f0;->I:Landroid/view/ViewGroup;

    .line 70
    .line 71
    sget-object v1, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 72
    .line 73
    invoke-static {v0}, Lj0/b0;->c(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lg/f0;->K()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public j(Landroidx/fragment/app/c0;Z)V
    .registers 5

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/y0;

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 11
    .line 12
    iget-object v1, v1, Landroidx/fragment/app/g0;->b:Landroidx/fragment/app/h0;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 15
    .line 16
    if-eqz v0, :cond_1b

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->j(Landroidx/fragment/app/c0;Z)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3a

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-nez p1, :cond_34

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    if-eqz p2, :cond_33

    .line 50
    .line 51
    throw p1

    .line 52
    :cond_33
    throw p1

    .line 53
    :cond_34
    new-instance p1, Ljava/lang/ClassCastException;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_3a
    return-void
.end method

.method public k(Landroidx/fragment/app/c0;Z)V
    .registers 5

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/y0;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 11
    .line 12
    if-eqz v0, :cond_17

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->k(Landroidx/fragment/app/c0;Z)V

    .line 22
    .line 23
    .line 24
    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_36

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_30

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    if-eqz p2, :cond_2f

    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2f
    throw p1

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/ClassCastException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_36
    return-void
.end method

.method public l(Landroidx/fragment/app/c0;Z)V
    .registers 5

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/y0;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 11
    .line 12
    if-eqz v0, :cond_17

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->l(Landroidx/fragment/app/c0;Z)V

    .line 22
    .line 23
    .line 24
    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_36

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_30

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    if-eqz p2, :cond_2f

    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2f
    throw p1

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/ClassCastException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_36
    return-void
.end method

.method public m(Landroidx/fragment/app/c0;Z)V
    .registers 5

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/y0;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 11
    .line 12
    if-eqz v0, :cond_17

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->m(Landroidx/fragment/app/c0;Z)V

    .line 22
    .line 23
    .line 24
    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_36

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_30

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    if-eqz p2, :cond_2f

    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2f
    throw p1

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/ClassCastException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_36
    return-void
.end method

.method public n(Landroidx/fragment/app/c0;Z)V
    .registers 5

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/y0;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 11
    .line 12
    if-eqz v0, :cond_17

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->n(Landroidx/fragment/app/c0;Z)V

    .line 22
    .line 23
    .line 24
    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_36

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_30

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    if-eqz p2, :cond_2f

    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2f
    throw p1

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/ClassCastException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_36
    return-void
.end method

.method public o(Landroidx/fragment/app/c0;Z)V
    .registers 5

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/y0;

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 11
    .line 12
    iget-object v1, v1, Landroidx/fragment/app/g0;->b:Landroidx/fragment/app/h0;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 15
    .line 16
    if-eqz v0, :cond_1b

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->o(Landroidx/fragment/app/c0;Z)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3a

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-nez p1, :cond_34

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    if-eqz p2, :cond_33

    .line 50
    .line 51
    throw p1

    .line 52
    :cond_33
    throw p1

    .line 53
    :cond_34
    new-instance p1, Ljava/lang/ClassCastException;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_3a
    return-void
.end method

.method public p(Landroidx/fragment/app/c0;Z)V
    .registers 5

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/y0;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 11
    .line 12
    if-eqz v0, :cond_17

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->p(Landroidx/fragment/app/c0;Z)V

    .line 22
    .line 23
    .line 24
    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_36

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_30

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    if-eqz p2, :cond_2f

    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2f
    throw p1

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/ClassCastException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_36
    return-void
.end method

.method public q(Landroidx/fragment/app/c0;Z)V
    .registers 5

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/y0;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 11
    .line 12
    if-eqz v0, :cond_17

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->q(Landroidx/fragment/app/c0;Z)V

    .line 22
    .line 23
    .line 24
    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_36

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_30

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    if-eqz p2, :cond_2f

    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2f
    throw p1

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/ClassCastException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_36
    return-void
.end method

.method public r(Landroidx/fragment/app/c0;Landroid/os/Bundle;Z)V
    .registers 6

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/y0;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 11
    .line 12
    if-eqz v0, :cond_17

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/y4;->r(Landroidx/fragment/app/c0;Landroid/os/Bundle;Z)V

    .line 22
    .line 23
    .line 24
    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_36

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_30

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    if-eqz p3, :cond_2f

    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2f
    throw p1

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/ClassCastException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_36
    return-void
.end method

.method public s(Landroidx/fragment/app/c0;Z)V
    .registers 5

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/y0;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 11
    .line 12
    if-eqz v0, :cond_17

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->s(Landroidx/fragment/app/c0;Z)V

    .line 22
    .line 23
    .line 24
    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_36

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_30

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    if-eqz p2, :cond_2f

    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2f
    throw p1

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/ClassCastException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_36
    return-void
.end method

.method public t(Landroidx/fragment/app/c0;Z)V
    .registers 5

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/y0;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 11
    .line 12
    if-eqz v0, :cond_17

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->t(Landroidx/fragment/app/c0;Z)V

    .line 22
    .line 23
    .line 24
    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_36

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_30

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    if-eqz p2, :cond_2f

    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2f
    throw p1

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/ClassCastException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/y4;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_4e

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v1, 0x64

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x7b

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x0

    .line 45
    :goto_2c
    if-ge v3, v2, :cond_43

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    add-int/lit8 v4, v2, -0x1

    .line 57
    .line 58
    if-ge v3, v4, :cond_40

    .line 59
    .line 60
    const-string v4, ", "

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_40
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_2c

    .line 68
    :cond_43
    const/16 v1, 0x7d

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    nop

    .line 79
    :pswitch_data_4e
    .packed-switch 0x5
        :pswitch_a
    .end packed-switch
.end method

.method public u(Landroidx/fragment/app/c0;Landroid/view/View;Z)V
    .registers 6

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "v"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroidx/fragment/app/y0;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 16
    .line 17
    if-eqz v0, :cond_1c

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/y4;->u(Landroidx/fragment/app/c0;Landroid/view/View;Z)V

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_3b

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_35

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    if-eqz p3, :cond_34

    .line 51
    .line 52
    throw p1

    .line 53
    :cond_34
    throw p1

    .line 54
    :cond_35
    new-instance p1, Ljava/lang/ClassCastException;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_3b
    return-void
.end method

.method public v(Landroidx/fragment/app/c0;Z)V
    .registers 5

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/y0;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 11
    .line 12
    if-eqz v0, :cond_17

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->v(Landroidx/fragment/app/c0;Z)V

    .line 22
    .line 23
    .line 24
    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_36

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_30

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    if-eqz p2, :cond_2f

    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2f
    throw p1

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/ClassCastException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_36
    return-void
.end method

.method public w([II)V
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lc6/a;

    .line 10
    .line 11
    if-eqz v2, :cond_1f2

    .line 12
    .line 13
    array-length v4, v1

    .line 14
    sub-int/2addr v4, v2

    .line 15
    if-lez v4, :cond_1ea

    .line 16
    .line 17
    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v5, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    const/4 v7, 0x2

    .line 26
    const-string v8, "GenericGFPolys do not have same GenericGF field"

    .line 27
    .line 28
    const/4 v9, 0x1

    .line 29
    const/4 v10, 0x0

    .line 30
    if-lt v2, v6, :cond_b0

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    sub-int/2addr v6, v9

    .line 37
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Lc6/b;

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    :goto_2e
    if-gt v11, v2, :cond_b0

    .line 48
    .line 49
    add-int/lit8 v12, v11, -0x1

    .line 50
    .line 51
    iget v13, v3, Lc6/a;->f:I

    .line 52
    .line 53
    add-int/2addr v12, v13

    .line 54
    iget-object v13, v3, Lc6/a;->a:[I

    .line 55
    .line 56
    aget v12, v13, v12

    .line 57
    .line 58
    filled-new-array {v9, v12}, [I

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    aget v13, v12, v10

    .line 63
    .line 64
    if-nez v13, :cond_5a

    .line 65
    .line 66
    move v13, v9

    .line 67
    :goto_42
    if-ge v13, v7, :cond_4b

    .line 68
    .line 69
    aget v14, v12, v13

    .line 70
    .line 71
    if-nez v14, :cond_4b

    .line 72
    .line 73
    add-int/lit8 v13, v13, 0x1

    .line 74
    .line 75
    goto :goto_42

    .line 76
    :cond_4b
    if-ne v13, v7, :cond_52

    .line 77
    .line 78
    filled-new-array {v10}, [I

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    goto :goto_5a

    .line 83
    :cond_52
    rsub-int/lit8 v14, v13, 0x2

    .line 84
    .line 85
    new-array v15, v14, [I

    .line 86
    .line 87
    invoke-static {v12, v13, v15, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    .line 89
    .line 90
    move-object v12, v15

    .line 91
    :cond_5a
    :goto_5a
    iget-object v13, v6, Lc6/b;->a:Lc6/a;

    .line 92
    .line 93
    invoke-virtual {v13, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    if-eqz v14, :cond_aa

    .line 98
    .line 99
    iget-object v6, v6, Lc6/b;->b:[I

    .line 100
    .line 101
    aget v14, v6, v10

    .line 102
    .line 103
    if-nez v14, :cond_69

    .line 104
    .line 105
    goto :goto_6d

    .line 106
    :cond_69
    aget v14, v12, v10

    .line 107
    .line 108
    if-nez v14, :cond_70

    .line 109
    .line 110
    :goto_6d
    iget-object v6, v13, Lc6/a;->c:Lc6/b;

    .line 111
    .line 112
    goto :goto_9f

    .line 113
    :cond_70
    array-length v14, v6

    .line 114
    array-length v15, v12

    .line 115
    add-int v16, v14, v15

    .line 116
    .line 117
    add-int/lit8 v7, v16, -0x1

    .line 118
    .line 119
    new-array v7, v7, [I

    .line 120
    .line 121
    move v9, v10

    .line 122
    :goto_79
    if-ge v9, v14, :cond_99

    .line 123
    .line 124
    aget v10, v6, v9

    .line 125
    .line 126
    const/4 v0, 0x0

    .line 127
    :goto_7e
    if-ge v0, v15, :cond_93

    .line 128
    .line 129
    add-int v18, v9, v0

    .line 130
    .line 131
    aget v19, v7, v18

    .line 132
    .line 133
    move/from16 v20, v0

    .line 134
    .line 135
    aget v0, v12, v20

    .line 136
    .line 137
    invoke-virtual {v13, v10, v0}, Lc6/a;->a(II)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    xor-int v0, v19, v0

    .line 142
    .line 143
    aput v0, v7, v18

    .line 144
    .line 145
    add-int/lit8 v0, v20, 0x1

    .line 146
    .line 147
    goto :goto_7e

    .line 148
    :cond_93
    add-int/lit8 v9, v9, 0x1

    .line 149
    .line 150
    move-object/from16 v0, p0

    .line 151
    .line 152
    const/4 v10, 0x0

    .line 153
    goto :goto_79

    .line 154
    :cond_99
    new-instance v0, Lc6/b;

    .line 155
    .line 156
    invoke-direct {v0, v13, v7}, Lc6/b;-><init>(Lc6/a;[I)V

    .line 157
    .line 158
    .line 159
    move-object v6, v0

    .line 160
    :goto_9f
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    add-int/lit8 v11, v11, 0x1

    .line 164
    .line 165
    move-object/from16 v0, p0

    .line 166
    .line 167
    const/4 v7, 0x2

    .line 168
    const/4 v9, 0x1

    .line 169
    const/4 v10, 0x0

    .line 170
    goto :goto_2e

    .line 171
    :cond_aa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 172
    .line 173
    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw v0

    .line 177
    :cond_b0
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Lc6/b;

    .line 182
    .line 183
    new-array v5, v4, [I

    .line 184
    .line 185
    const/4 v6, 0x0

    .line 186
    invoke-static {v1, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    .line 188
    .line 189
    if-eqz v4, :cond_1e4

    .line 190
    .line 191
    const/4 v7, 0x1

    .line 192
    if-le v4, v7, :cond_e0

    .line 193
    .line 194
    aget v7, v5, v6

    .line 195
    .line 196
    if-nez v7, :cond_e0

    .line 197
    .line 198
    const/4 v6, 0x1

    .line 199
    :goto_c6
    if-ge v6, v4, :cond_cf

    .line 200
    .line 201
    aget v7, v5, v6

    .line 202
    .line 203
    if-nez v7, :cond_cf

    .line 204
    .line 205
    add-int/lit8 v6, v6, 0x1

    .line 206
    .line 207
    goto :goto_c6

    .line 208
    :cond_cf
    if-ne v6, v4, :cond_d7

    .line 209
    .line 210
    const/4 v7, 0x0

    .line 211
    filled-new-array {v7}, [I

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    goto :goto_e0

    .line 216
    :cond_d7
    const/4 v7, 0x0

    .line 217
    sub-int v9, v4, v6

    .line 218
    .line 219
    new-array v10, v9, [I

    .line 220
    .line 221
    invoke-static {v5, v6, v10, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    .line 223
    .line 224
    move-object v5, v10

    .line 225
    :cond_e0
    :goto_e0
    if-ltz v2, :cond_1de

    .line 226
    .line 227
    array-length v6, v5

    .line 228
    add-int v7, v6, v2

    .line 229
    .line 230
    new-array v7, v7, [I

    .line 231
    .line 232
    const/4 v9, 0x0

    .line 233
    :goto_e8
    if-ge v9, v6, :cond_f6

    .line 234
    .line 235
    aget v10, v5, v9

    .line 236
    .line 237
    const/4 v11, 0x1

    .line 238
    invoke-virtual {v3, v10, v11}, Lc6/a;->a(II)I

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    aput v10, v7, v9

    .line 243
    .line 244
    add-int/lit8 v9, v9, 0x1

    .line 245
    .line 246
    goto :goto_e8

    .line 247
    :cond_f6
    new-instance v5, Lc6/b;

    .line 248
    .line 249
    invoke-direct {v5, v3, v7}, Lc6/b;-><init>(Lc6/a;[I)V

    .line 250
    .line 251
    .line 252
    iget-object v6, v0, Lc6/b;->a:Lc6/a;

    .line 253
    .line 254
    iget-object v7, v0, Lc6/b;->b:[I

    .line 255
    .line 256
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    iget-object v9, v3, Lc6/a;->c:Lc6/b;

    .line 261
    .line 262
    if-eqz v6, :cond_1d8

    .line 263
    .line 264
    const/16 v17, 0x0

    .line 265
    .line 266
    aget v6, v7, v17

    .line 267
    .line 268
    if-eqz v6, :cond_1d0

    .line 269
    .line 270
    invoke-virtual {v0}, Lc6/b;->b()I

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    array-length v8, v7

    .line 275
    const/16 v16, 0x1

    .line 276
    .line 277
    add-int/lit8 v8, v8, -0x1

    .line 278
    .line 279
    sub-int/2addr v8, v6

    .line 280
    aget v6, v7, v8

    .line 281
    .line 282
    if-eqz v6, :cond_1ca

    .line 283
    .line 284
    iget-object v8, v3, Lc6/a;->a:[I

    .line 285
    .line 286
    iget v10, v3, Lc6/a;->d:I

    .line 287
    .line 288
    iget-object v11, v3, Lc6/a;->b:[I

    .line 289
    .line 290
    aget v6, v11, v6

    .line 291
    .line 292
    sub-int/2addr v10, v6

    .line 293
    add-int/lit8 v10, v10, -0x1

    .line 294
    .line 295
    aget v6, v8, v10

    .line 296
    .line 297
    move-object v8, v9

    .line 298
    :goto_129
    iget-object v10, v5, Lc6/b;->b:[I

    .line 299
    .line 300
    invoke-virtual {v5}, Lc6/b;->b()I

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    invoke-virtual {v0}, Lc6/b;->b()I

    .line 305
    .line 306
    .line 307
    move-result v12

    .line 308
    if-lt v11, v12, :cond_13b

    .line 309
    .line 310
    const/16 v17, 0x0

    .line 311
    .line 312
    aget v11, v10, v17

    .line 313
    .line 314
    if-nez v11, :cond_13e

    .line 315
    .line 316
    :cond_13b
    const/4 v0, 0x2

    .line 317
    goto/16 :goto_1ab

    .line 318
    .line 319
    :cond_13e
    invoke-virtual {v5}, Lc6/b;->b()I

    .line 320
    .line 321
    .line 322
    move-result v11

    .line 323
    invoke-virtual {v0}, Lc6/b;->b()I

    .line 324
    .line 325
    .line 326
    move-result v12

    .line 327
    sub-int/2addr v11, v12

    .line 328
    invoke-virtual {v5}, Lc6/b;->b()I

    .line 329
    .line 330
    .line 331
    move-result v12

    .line 332
    array-length v13, v10

    .line 333
    const/16 v16, 0x1

    .line 334
    .line 335
    add-int/lit8 v13, v13, -0x1

    .line 336
    .line 337
    sub-int/2addr v13, v12

    .line 338
    aget v10, v10, v13

    .line 339
    .line 340
    invoke-virtual {v3, v10, v6}, Lc6/a;->a(II)I

    .line 341
    .line 342
    .line 343
    move-result v10

    .line 344
    iget-object v12, v0, Lc6/b;->a:Lc6/a;

    .line 345
    .line 346
    if-ltz v11, :cond_1a5

    .line 347
    .line 348
    if-nez v10, :cond_162

    .line 349
    .line 350
    iget-object v12, v12, Lc6/a;->c:Lc6/b;

    .line 351
    .line 352
    move-object/from16 v18, v0

    .line 353
    .line 354
    goto :goto_181

    .line 355
    :cond_162
    array-length v13, v7

    .line 356
    add-int v14, v13, v11

    .line 357
    .line 358
    new-array v14, v14, [I

    .line 359
    .line 360
    const/4 v15, 0x0

    .line 361
    :goto_168
    if-ge v15, v13, :cond_179

    .line 362
    .line 363
    move-object/from16 v18, v0

    .line 364
    .line 365
    aget v0, v7, v15

    .line 366
    .line 367
    invoke-virtual {v12, v0, v10}, Lc6/a;->a(II)I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    aput v0, v14, v15

    .line 372
    .line 373
    add-int/lit8 v15, v15, 0x1

    .line 374
    .line 375
    move-object/from16 v0, v18

    .line 376
    .line 377
    goto :goto_168

    .line 378
    :cond_179
    move-object/from16 v18, v0

    .line 379
    .line 380
    new-instance v0, Lc6/b;

    .line 381
    .line 382
    invoke-direct {v0, v12, v14}, Lc6/b;-><init>(Lc6/a;[I)V

    .line 383
    .line 384
    .line 385
    move-object v12, v0

    .line 386
    :goto_181
    if-ltz v11, :cond_19f

    .line 387
    .line 388
    if-nez v10, :cond_187

    .line 389
    .line 390
    move-object v10, v9

    .line 391
    goto :goto_194

    .line 392
    :cond_187
    add-int/lit8 v11, v11, 0x1

    .line 393
    .line 394
    new-array v0, v11, [I

    .line 395
    .line 396
    const/16 v17, 0x0

    .line 397
    .line 398
    aput v10, v0, v17

    .line 399
    .line 400
    new-instance v10, Lc6/b;

    .line 401
    .line 402
    invoke-direct {v10, v3, v0}, Lc6/b;-><init>(Lc6/a;[I)V

    .line 403
    .line 404
    .line 405
    :goto_194
    invoke-virtual {v8, v10}, Lc6/b;->a(Lc6/b;)Lc6/b;

    .line 406
    .line 407
    .line 408
    move-result-object v8

    .line 409
    invoke-virtual {v5, v12}, Lc6/b;->a(Lc6/b;)Lc6/b;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    move-object/from16 v0, v18

    .line 414
    .line 415
    goto :goto_129

    .line 416
    :cond_19f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 417
    .line 418
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 419
    .line 420
    .line 421
    throw v0

    .line 422
    :cond_1a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 423
    .line 424
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 425
    .line 426
    .line 427
    throw v0

    .line 428
    :goto_1ab
    new-array v0, v0, [Lc6/b;

    .line 429
    .line 430
    const/4 v6, 0x0

    .line 431
    aput-object v8, v0, v6

    .line 432
    .line 433
    const/16 v16, 0x1

    .line 434
    .line 435
    aput-object v5, v0, v16

    .line 436
    .line 437
    aget-object v0, v0, v16

    .line 438
    .line 439
    iget-object v0, v0, Lc6/b;->b:[I

    .line 440
    .line 441
    array-length v3, v0

    .line 442
    sub-int/2addr v2, v3

    .line 443
    move v3, v6

    .line 444
    :goto_1bb
    if-ge v3, v2, :cond_1c4

    .line 445
    .line 446
    add-int v5, v4, v3

    .line 447
    .line 448
    aput v6, v1, v5

    .line 449
    .line 450
    add-int/lit8 v3, v3, 0x1

    .line 451
    .line 452
    goto :goto_1bb

    .line 453
    :cond_1c4
    add-int/2addr v4, v2

    .line 454
    array-length v2, v0

    .line 455
    invoke-static {v0, v6, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    .line 457
    .line 458
    return-void

    .line 459
    :cond_1ca
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 460
    .line 461
    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    .line 462
    .line 463
    .line 464
    throw v0

    .line 465
    :cond_1d0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 466
    .line 467
    const-string v1, "Divide by 0"

    .line 468
    .line 469
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    throw v0

    .line 473
    :cond_1d8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 474
    .line 475
    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    throw v0

    .line 479
    :cond_1de
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 480
    .line 481
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 482
    .line 483
    .line 484
    throw v0

    .line 485
    :cond_1e4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 486
    .line 487
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 488
    .line 489
    .line 490
    throw v0

    .line 491
    :cond_1ea
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 492
    .line 493
    const-string v1, "No data bytes provided"

    .line 494
    .line 495
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    throw v0

    .line 499
    :cond_1f2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 500
    .line 501
    const-string v1, "No error correction bytes"

    .line 502
    .line 503
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    throw v0
.end method

.method public y(Ljava/lang/String;)Lcom/google/android/datatransport/cct/CctBackendFactory;
    .registers 15

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    const-string v1, "Could not instantiate "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/Map;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "BackendRegistry"

    .line 11
    .line 12
    if-nez v2, :cond_98

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroid/content/Context;

    .line 17
    .line 18
    :try_start_11
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    if-nez v5, :cond_1e

    .line 23
    .line 24
    const-string v2, "Context has no PackageManager."

    .line 25
    .line 26
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_1c
    move-object v2, v3

    .line 30
    goto :goto_3c

    .line 31
    :cond_1e
    new-instance v6, Landroid/content/ComponentName;

    .line 32
    .line 33
    const-class v7, Lcom/google/android/datatransport/runtime/backends/TransportBackendDiscovery;

    .line 34
    .line 35
    invoke-direct {v6, v2, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x80

    .line 39
    .line 40
    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_33

    .line 45
    .line 46
    const-string v2, "TransportBackendDiscovery has no service info."

    .line 47
    .line 48
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_1c

    .line 52
    :cond_33
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_35} :catch_36

    .line 53
    .line 54
    goto :goto_3c

    .line 55
    :catch_36
    const-string v2, "Application info not found."

    .line 56
    .line 57
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto :goto_1c

    .line 61
    :goto_3c
    if-nez v2, :cond_46

    .line 62
    .line 63
    const-string v2, "Could not retrieve metadata, returning empty list of transport backends."

    .line 64
    .line 65
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 69
    .line 70
    goto :goto_96

    .line 71
    :cond_46
    new-instance v5, Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    :cond_53
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_95

    .line 89
    .line 90
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    check-cast v7, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    instance-of v9, v8, Ljava/lang/String;

    .line 101
    .line 102
    if-eqz v9, :cond_53

    .line 103
    .line 104
    const-string v9, "backend:"

    .line 105
    .line 106
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-eqz v9, :cond_53

    .line 111
    .line 112
    check-cast v8, Ljava/lang/String;

    .line 113
    .line 114
    const-string v9, ","

    .line 115
    .line 116
    const/4 v10, -0x1

    .line 117
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    array-length v9, v8

    .line 122
    const/4 v10, 0x0

    .line 123
    :goto_7a
    if-ge v10, v9, :cond_53

    .line 124
    .line 125
    aget-object v11, v8, v10

    .line 126
    .line 127
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    if-eqz v12, :cond_89

    .line 136
    .line 137
    goto :goto_92

    .line 138
    :cond_89
    const/16 v12, 0x8

    .line 139
    .line 140
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    :goto_92
    add-int/lit8 v10, v10, 0x1

    .line 148
    .line 149
    goto :goto_7a

    .line 150
    :cond_95
    move-object v2, v5

    .line 151
    :goto_96
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 152
    .line 153
    :cond_98
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v2, Ljava/util/Map;

    .line 156
    .line 157
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Ljava/lang/String;

    .line 162
    .line 163
    if-nez p1, :cond_a5

    .line 164
    .line 165
    return-object v3

    .line 166
    :cond_a5
    :try_start_a5
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    const-class v5, Lcom/google/android/datatransport/cct/CctBackendFactory;

    .line 171
    .line 172
    invoke-virtual {v2, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    check-cast v2, Lcom/google/android/datatransport/cct/CctBackendFactory;
    :try_end_b9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a5 .. :try_end_b9} :catch_c2
    .catch Ljava/lang/IllegalAccessException; {:try_start_a5 .. :try_end_b9} :catch_c0
    .catch Ljava/lang/InstantiationException; {:try_start_a5 .. :try_end_b9} :catch_be
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a5 .. :try_end_b9} :catch_bc
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a5 .. :try_end_b9} :catch_ba

    .line 185
    .line 186
    return-object v2

    .line 187
    :catch_ba
    move-exception v0

    .line 188
    goto :goto_c4

    .line 189
    :catch_bc
    move-exception v0

    .line 190
    goto :goto_cc

    .line 191
    :catch_be
    move-exception v2

    .line 192
    goto :goto_d4

    .line 193
    :catch_c0
    move-exception v2

    .line 194
    goto :goto_e7

    .line 195
    :catch_c2
    move-exception v0

    .line 196
    goto :goto_fa

    .line 197
    :goto_c4
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {v4, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .line 203
    .line 204
    goto :goto_110

    .line 205
    :goto_cc
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {v4, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .line 211
    .line 212
    goto :goto_110

    .line 213
    :goto_d4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-static {v4, p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .line 230
    .line 231
    goto :goto_110

    .line 232
    :goto_e7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-static {v4, p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .line 249
    .line 250
    goto :goto_110

    .line 251
    :goto_fa
    new-instance v1, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v2, "Class "

    .line 254
    .line 255
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string p1, " is not found."

    .line 262
    .line 263
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-static {v4, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .line 272
    .line 273
    :goto_110
    return-object v3
.end method

.method public z()Ljava/io/File;
    .registers 5

    .line 1
    const-string v0, "PersistedInstallation."

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/io/File;

    .line 6
    .line 7
    if-nez v1, :cond_43

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/io/File;

    .line 13
    .line 14
    if-nez v1, :cond_3f

    .line 15
    .line 16
    new-instance v1, Ljava/io/File;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lt4/g;

    .line 21
    .line 22
    invoke-virtual {v2}, Lt4/g;->a()V

    .line 23
    .line 24
    .line 25
    iget-object v2, v2, Lt4/g;->a:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lt4/g;

    .line 39
    .line 40
    invoke-virtual {v0}, Lt4/g;->d()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ".json"

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 60
    .line 61
    goto :goto_3f

    .line 62
    :catchall_3d
    move-exception v0

    .line 63
    goto :goto_41

    .line 64
    :cond_3f
    :goto_3f
    monitor-exit p0

    .line 65
    goto :goto_43

    .line 66
    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_3d

    .line 67
    throw v0

    .line 68
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Ljava/io/File;

    .line 71
    .line 72
    return-object v0
.end method

.method public zza(Ljava/lang/String;)Ljava/lang/Object;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_a1

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/s4;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_64

    .line 13
    .line 14
    sget-boolean v2, Lcom/google/android/gms/internal/measurement/s4;->b:Z

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v2, :cond_13

    .line 18
    .line 19
    goto :goto_5f

    .line 20
    :cond_13
    const-class v2, Lcom/google/android/gms/internal/measurement/s4;

    .line 21
    .line 22
    monitor-enter v2

    .line 23
    :try_start_16
    sget-boolean v4, Lcom/google/android/gms/internal/measurement/s4;->b:Z

    .line 24
    .line 25
    if-eqz v4, :cond_1e

    .line 26
    .line 27
    monitor-exit v2

    .line 28
    goto :goto_5f

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    goto :goto_62

    .line 31
    :cond_1e
    move v4, v3

    .line 32
    :goto_1f
    const/4 v5, 0x2

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    if-gt v4, v5, :cond_55

    .line 36
    .line 37
    sget-object v5, Lcom/google/android/gms/internal/measurement/s4;->a:Landroid/os/UserManager;

    .line 38
    .line 39
    if-nez v5, :cond_32

    .line 40
    .line 41
    const-class v5, Landroid/os/UserManager;

    .line 42
    .line 43
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Landroid/os/UserManager;

    .line 48
    .line 49
    sput-object v5, Lcom/google/android/gms/internal/measurement/s4;->a:Landroid/os/UserManager;

    .line 50
    .line 51
    :cond_32
    sget-object v5, Lcom/google/android/gms/internal/measurement/s4;->a:Landroid/os/UserManager;
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_1c

    .line 52
    .line 53
    if-nez v5, :cond_37

    .line 54
    .line 55
    goto :goto_5a

    .line 56
    :cond_37
    :try_start_37
    invoke-static {v5}, Lcom/getcapacitor/a;->y(Landroid/os/UserManager;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-nez v8, :cond_56

    .line 61
    .line 62
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-virtual {v5, v8}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    .line 67
    .line 68
    .line 69
    move-result v0
    :try_end_45
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_45} :catch_48
    .catchall {:try_start_37 .. :try_end_45} :catchall_1c

    .line 70
    if-nez v0, :cond_55

    .line 71
    .line 72
    goto :goto_56

    .line 73
    :catch_48
    move-exception v5

    .line 74
    :try_start_49
    const-string v7, "DirectBootUtils"

    .line 75
    .line 76
    const-string v8, "Failed to check if user is unlocked."

    .line 77
    .line 78
    invoke-static {v7, v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    sput-object v6, Lcom/google/android/gms/internal/measurement/s4;->a:Landroid/os/UserManager;

    .line 82
    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_1f

    .line 86
    :cond_55
    move v3, v7

    .line 87
    :cond_56
    :goto_56
    if-eqz v3, :cond_5a

    .line 88
    .line 89
    sput-object v6, Lcom/google/android/gms/internal/measurement/s4;->a:Landroid/os/UserManager;

    .line 90
    .line 91
    :cond_5a
    :goto_5a
    if-eqz v3, :cond_5e

    .line 92
    .line 93
    sput-boolean v3, Lcom/google/android/gms/internal/measurement/s4;->b:Z

    .line 94
    .line 95
    :cond_5e
    monitor-exit v2

    .line 96
    :goto_5f
    if-nez v3, :cond_64

    .line 97
    .line 98
    goto :goto_a1

    .line 99
    :goto_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_49 .. :try_end_63} :catchall_1c

    .line 100
    throw p1

    .line 101
    :cond_64
    :try_start_64
    new-instance v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 102
    .line 103
    const/16 v2, 0xa

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/y4;-><init>(IZ)V

    .line 107
    .line 108
    .line 109
    iput-object p0, v0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 110
    .line 111
    iput-object p1, v0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;
    :try_end_70
    .catch Ljava/lang/IllegalStateException; {:try_start_64 .. :try_end_70} :catch_87
    .catch Ljava/lang/SecurityException; {:try_start_64 .. :try_end_70} :catch_85
    .catch Ljava/lang/NullPointerException; {:try_start_64 .. :try_end_70} :catch_83

    .line 112
    .line 113
    :try_start_70
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y4;->H()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0
    :try_end_74
    .catch Ljava/lang/SecurityException; {:try_start_70 .. :try_end_74} :catch_75
    .catch Ljava/lang/IllegalStateException; {:try_start_70 .. :try_end_74} :catch_87
    .catch Ljava/lang/NullPointerException; {:try_start_70 .. :try_end_74} :catch_83

    .line 117
    goto :goto_80

    .line 118
    :catch_75
    :try_start_75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 119
    .line 120
    .line 121
    move-result-wide v2
    :try_end_79
    .catch Ljava/lang/IllegalStateException; {:try_start_75 .. :try_end_79} :catch_87
    .catch Ljava/lang/SecurityException; {:try_start_75 .. :try_end_79} :catch_85
    .catch Ljava/lang/NullPointerException; {:try_start_75 .. :try_end_79} :catch_83

    .line 122
    :try_start_79
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y4;->H()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_89

    .line 126
    :try_start_7d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    .line 128
    .line 129
    :goto_80
    check-cast v0, Ljava/lang/String;

    .line 130
    .line 131
    return-object v0

    .line 132
    :catch_83
    move-exception v0

    .line 133
    goto :goto_8e

    .line 134
    :catch_85
    move-exception v0

    .line 135
    goto :goto_8e

    .line 136
    :catch_87
    move-exception v0

    .line 137
    goto :goto_8e

    .line 138
    :catchall_89
    move-exception v0

    .line 139
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    .line 141
    .line 142
    throw v0
    :try_end_8e
    .catch Ljava/lang/IllegalStateException; {:try_start_7d .. :try_end_8e} :catch_87
    .catch Ljava/lang/SecurityException; {:try_start_7d .. :try_end_8e} :catch_85
    .catch Ljava/lang/NullPointerException; {:try_start_7d .. :try_end_8e} :catch_83

    .line 143
    :goto_8e
    const-string v2, "GservicesLoader"

    .line 144
    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v4, "Unable to read GServices for: "

    .line 148
    .line 149
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .line 161
    .line 162
    :cond_a1
    :goto_a1
    return-object v1
.end method
