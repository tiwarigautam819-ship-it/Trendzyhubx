###### Class com.google.android.gms.internal.measurement.r4 (com.google.android.gms.internal.measurement.r4)
.class public final Lcom/google/android/gms/internal/measurement/r4;
.super Landroid/database/ContentObserver;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/measurement/r4;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/r4;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lm/u2;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/r4;->a:I

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/r4;->b:Ljava/lang/Object;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/r4;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_c

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :pswitch_a
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_a
    .end packed-switch
.end method

.method public final onChange(Z)V
    .registers 5

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/measurement/r4;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_5e

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/r4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lm/u2;

    .line 9
    .line 10
    iget-boolean v0, p1, Ln0/a;->b:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1f

    .line 13
    .line 14
    iget-object v0, p1, Ln0/a;->c:Landroid/database/Cursor;

    .line 15
    .line 16
    if-eqz v0, :cond_1f

    .line 17
    .line 18
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1f

    .line 23
    .line 24
    iget-object v0, p1, Ln0/a;->c:Landroid/database/Cursor;

    .line 25
    .line 26
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput-boolean v0, p1, Ln0/a;->a:Z

    .line 31
    .line 32
    :cond_1f
    return-void

    .line 33
    :pswitch_20
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/r4;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lcom/google/android/gms/internal/measurement/u4;

    .line 36
    .line 37
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/u4;->e:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v0

    .line 40
    const/4 v1, 0x0

    .line 41
    :try_start_28
    iput-object v1, p1, Lcom/google/android/gms/internal/measurement/u4;->f:Ljava/util/Map;

    .line 42
    .line 43
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/u4;->c:Ljava/lang/Runnable;

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 46
    .line 47
    .line 48
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_50

    .line 49
    monitor-enter p1

    .line 50
    :try_start_31
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/u4;->g:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_41

    .line 61
    .line 62
    monitor-exit p1

    .line 63
    return-void

    .line 64
    :catchall_3f
    move-exception v0

    .line 65
    goto :goto_4e

    .line 66
    :cond_41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-nez v0, :cond_48

    .line 71
    .line 72
    throw v1

    .line 73
    :cond_48
    new-instance v0, Ljava/lang/ClassCastException;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :goto_4e
    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_3f

    .line 80
    throw v0

    .line 81
    :catchall_50
    move-exception p1

    .line 82
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    .line 83
    throw p1

    .line 84
    :pswitch_53
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/r4;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lcom/google/android/gms/internal/measurement/q4;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/q4;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_53
        :pswitch_20
    .end packed-switch
.end method
