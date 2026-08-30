###### Class p0.k (p0.k)
.class public final Lp0/k;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final j:Ljava/lang/Object;

.field public static volatile k:Lp0/k;


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final b:Ls/f;

.field public volatile c:I

.field public final d:Landroid/os/Handler;

.field public final e:Lp0/f;

.field public final f:Lp0/j;

.field public final g:Lo3/a;

.field public final h:I

.field public final i:Lp0/d;


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
    sput-object v0, Lp0/k;->j:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lp0/r;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    iput v1, p0, Lp0/k;->c:I

    .line 13
    .line 14
    iget-object v1, p1, Lp0/r;->a:Lp0/j;

    .line 15
    .line 16
    iput-object v1, p0, Lp0/k;->f:Lp0/j;

    .line 17
    .line 18
    iget v2, p1, Lp0/r;->b:I

    .line 19
    .line 20
    iput v2, p0, Lp0/k;->h:I

    .line 21
    .line 22
    iget-object p1, p1, Lp0/r;->c:Lp0/d;

    .line 23
    .line 24
    iput-object p1, p0, Lp0/k;->i:Lp0/d;

    .line 25
    .line 26
    new-instance p1, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lp0/k;->d:Landroid/os/Handler;

    .line 36
    .line 37
    new-instance p1, Ls/f;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {p1, v3}, Ls/f;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lp0/k;->b:Ls/f;

    .line 44
    .line 45
    new-instance p1, Lo3/a;

    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    invoke-direct {p1, v4}, Lo3/a;-><init>(I)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lp0/k;->g:Lo3/a;

    .line 52
    .line 53
    new-instance p1, Lp0/f;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lp0/f;-><init>(Lp0/k;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lp0/k;->e:Lp0/f;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 65
    .line 66
    .line 67
    if-nez v2, :cond_52

    .line 68
    .line 69
    :try_start_44
    iput v3, p0, Lp0/k;->c:I
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_47

    .line 70
    .line 71
    goto :goto_52

    .line 72
    :catchall_47
    move-exception p1

    .line 73
    iget-object v0, p0, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_52
    :goto_52
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lp0/k;->b()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_6c

    .line 95
    .line 96
    :try_start_5f
    new-instance v0, Lp0/e;

    .line 97
    .line 98
    invoke-direct {v0, p1}, Lp0/e;-><init>(Lp0/f;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v1, v0}, Lp0/j;->a(Lx2/a;)V
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_68

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :catchall_68
    move-exception p1

    .line 106
    invoke-virtual {p0, p1}, Lp0/k;->d(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :cond_6c
    return-void
.end method

.method public static a()Lp0/k;
    .registers 4

    .line 1
    sget-object v0, Lp0/k;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lp0/k;->k:Lp0/k;

    .line 5
    .line 6
    if-eqz v1, :cond_9

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v2, 0x0

    .line 11
    :goto_a
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    .line 12
    .line 13
    if-eqz v2, :cond_12

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :catchall_10
    move-exception v1

    .line 18
    goto :goto_18

    .line 19
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v1

    .line 25
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    .line 26
    throw v1
.end method


# virtual methods
.method public final b()I
    .registers 3

    .line 1
    iget-object v0, p0, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_9
    iget v0, p0, Lp0/k;->c:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_15

    .line 11
    .line 12
    iget-object v1, p0, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :catchall_15
    move-exception v0

    .line 23
    iget-object v1, p0, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final c()V
    .registers 4

    .line 1
    iget v0, p0, Lp0/k;->h:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_8

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move v0, v1

    .line 10
    :goto_9
    if-eqz v0, :cond_53

    .line 11
    .line 12
    invoke-virtual {p0}, Lp0/k;->b()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v2, :cond_12

    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    iget-object v0, p0, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 26
    .line 27
    .line 28
    :try_start_1b
    iget v0, p0, Lp0/k;->c:I
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_48

    .line 29
    .line 30
    if-nez v0, :cond_29

    .line 31
    .line 32
    iget-object v0, p0, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_29
    :try_start_29
    iput v1, p0, Lp0/k;->c:I
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_48

    .line 43
    .line 44
    iget-object v0, p0, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lp0/k;->e:Lp0/f;

    .line 54
    .line 55
    iget-object v1, v0, Lp0/f;->a:Lp0/k;

    .line 56
    .line 57
    :try_start_38
    new-instance v2, Lp0/e;

    .line 58
    .line 59
    invoke-direct {v2, v0}, Lp0/e;-><init>(Lp0/f;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, v1, Lp0/k;->f:Lp0/j;

    .line 63
    .line 64
    invoke-interface {v0, v2}, Lp0/j;->a(Lx2/a;)V
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_43

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catchall_43
    move-exception v0

    .line 69
    invoke-virtual {v1, v0}, Lp0/k;->d(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catchall_48
    move-exception v0

    .line 74
    iget-object v1, p0, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    const-string v1, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0
.end method

.method public final d(Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    :try_start_f
    iput v1, p0, Lp0/k;->c:I

    .line 17
    .line 18
    iget-object v1, p0, Lp0/k;->b:Ls/f;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lp0/k;->b:Ls/f;

    .line 24
    .line 25
    invoke-virtual {v1}, Ls/f;->clear()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_31

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lp0/k;->d:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance v2, Lp0/i;

    .line 40
    .line 41
    iget v3, p0, Lp0/k;->c:I

    .line 42
    .line 43
    invoke-direct {v2, v0, v3, p1}, Lp0/i;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    iget-object v0, p0, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public final e(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 14

    .line 1
    invoke-virtual {p0}, Lp0/k;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_a

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v0, v1

    .line 12
    :goto_b
    if-eqz v0, :cond_12c

    .line 13
    .line 14
    if-ltz p2, :cond_124

    .line 15
    .line 16
    if-ltz p3, :cond_11c

    .line 17
    .line 18
    if-gt p2, p3, :cond_15

    .line 19
    .line 20
    move v0, v2

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v0, v1

    .line 23
    :goto_16
    if-eqz v0, :cond_114

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    if-nez p1, :cond_1c

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-gt p2, v3, :cond_24

    .line 34
    .line 35
    move v3, v2

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v3, v1

    .line 38
    :goto_25
    if-eqz v3, :cond_10c

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-gt p3, v3, :cond_2e

    .line 45
    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move v2, v1

    .line 48
    :goto_2f
    if-eqz v2, :cond_104

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_39

    .line 55
    .line 56
    if-ne p2, p3, :cond_3c

    .line 57
    .line 58
    :cond_39
    move-object v4, p1

    .line 59
    goto/16 :goto_103

    .line 60
    .line 61
    :cond_3c
    iget-object v2, p0, Lp0/k;->e:Lp0/f;

    .line 62
    .line 63
    iget-object v3, v2, Lp0/f;->b:Lc5/h;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    instance-of v2, p1, Lp0/u;

    .line 69
    .line 70
    if-eqz v2, :cond_4d

    .line 71
    .line 72
    move-object v4, p1

    .line 73
    check-cast v4, Lp0/u;

    .line 74
    .line 75
    invoke-virtual {v4}, Lp0/u;->a()V

    .line 76
    .line 77
    .line 78
    :cond_4d
    const-class v4, Lp0/w;

    .line 79
    .line 80
    if-nez v2, :cond_7c

    .line 81
    .line 82
    :try_start_51
    instance-of v5, p1, Landroid/text/Spannable;

    .line 83
    .line 84
    if-eqz v5, :cond_56

    .line 85
    .line 86
    goto :goto_7c

    .line 87
    :cond_56
    instance-of v5, p1, Landroid/text/Spanned;

    .line 88
    .line 89
    if-eqz v5, :cond_84

    .line 90
    .line 91
    move-object v5, p1

    .line 92
    check-cast v5, Landroid/text/Spanned;

    .line 93
    .line 94
    add-int/lit8 v6, p2, -0x1

    .line 95
    .line 96
    add-int/lit8 v7, p3, 0x1

    .line 97
    .line 98
    invoke-interface {v5, v6, v7, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-gt v5, p3, :cond_84

    .line 103
    .line 104
    new-instance v0, Lp0/y;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-boolean v1, v0, Lp0/y;->a:Z

    .line 110
    .line 111
    new-instance v5, Landroid/text/SpannableString;

    .line 112
    .line 113
    invoke-direct {v5, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    iput-object v5, v0, Lp0/y;->b:Landroid/text/Spannable;
    :try_end_75
    .catchall {:try_start_51 .. :try_end_75} :catchall_79

    .line 117
    .line 118
    goto :goto_84

    .line 119
    :goto_76
    move-object v4, p1

    .line 120
    goto/16 :goto_fa

    .line 121
    .line 122
    :catchall_79
    move-exception v0

    .line 123
    move-object p2, v0

    .line 124
    goto :goto_76

    .line 125
    :cond_7c
    :goto_7c
    :try_start_7c
    new-instance v0, Lp0/y;

    .line 126
    .line 127
    move-object v5, p1

    .line 128
    check-cast v5, Landroid/text/Spannable;

    .line 129
    .line 130
    invoke-direct {v0, v5}, Lp0/y;-><init>(Landroid/text/Spannable;)V
    :try_end_84
    .catchall {:try_start_7c .. :try_end_84} :catchall_ef

    .line 131
    .line 132
    .line 133
    :cond_84
    :goto_84
    if-eqz v0, :cond_b4

    .line 134
    .line 135
    :try_start_86
    iget-object v5, v0, Lp0/y;->b:Landroid/text/Spannable;

    .line 136
    .line 137
    invoke-interface {v5, p2, p3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    check-cast v4, [Lp0/w;

    .line 142
    .line 143
    if-eqz v4, :cond_b4

    .line 144
    .line 145
    array-length v5, v4

    .line 146
    if-lez v5, :cond_b4

    .line 147
    .line 148
    array-length v5, v4

    .line 149
    :goto_94
    if-ge v1, v5, :cond_b4

    .line 150
    .line 151
    aget-object v6, v4, v1

    .line 152
    .line 153
    iget-object v7, v0, Lp0/y;->b:Landroid/text/Spannable;

    .line 154
    .line 155
    invoke-interface {v7, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    iget-object v8, v0, Lp0/y;->b:Landroid/text/Spannable;

    .line 160
    .line 161
    invoke-interface {v8, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-eq v7, p3, :cond_a9

    .line 166
    .line 167
    invoke-virtual {v0, v6}, Lp0/y;->removeSpan(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_a9
    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    .line 175
    .line 176
    .line 177
    move-result p3
    :try_end_b1
    .catchall {:try_start_86 .. :try_end_b1} :catchall_79

    .line 178
    add-int/lit8 v1, v1, 0x1

    .line 179
    .line 180
    goto :goto_94

    .line 181
    :cond_b4
    move v5, p2

    .line 182
    move v6, p3

    .line 183
    if-eq v5, v6, :cond_be

    .line 184
    .line 185
    :try_start_b8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    if-lt v5, p2, :cond_c0

    .line 190
    .line 191
    :cond_be
    move-object v4, p1

    .line 192
    goto :goto_f7

    .line 193
    :cond_c0
    new-instance v9, Lcom/google/android/gms/internal/measurement/y4;
    :try_end_c2
    .catchall {:try_start_b8 .. :try_end_c2} :catchall_ef

    .line 194
    .line 195
    :try_start_c2
    iget-object p2, v3, Lc5/h;->b:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast p2, Lo3/a;
    :try_end_c6
    .catchall {:try_start_c2 .. :try_end_c6} :catchall_f2

    .line 198
    .line 199
    const/16 p3, 0x16

    .line 200
    .line 201
    :try_start_c8
    invoke-direct {v9, v0, p3, p2}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_ef

    .line 202
    .line 203
    .line 204
    const/4 v8, 0x0

    .line 205
    const v7, 0x7fffffff

    .line 206
    .line 207
    .line 208
    move-object v4, p1

    .line 209
    :try_start_d0
    invoke-virtual/range {v3 .. v9}, Lc5/h;->r(Ljava/lang/CharSequence;IIIZLp0/o;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Lp0/y;

    .line 214
    .line 215
    if-eqz p1, :cond_e6

    .line 216
    .line 217
    iget-object p1, p1, Lp0/y;->b:Landroid/text/Spannable;
    :try_end_da
    .catchall {:try_start_d0 .. :try_end_da} :catchall_e3

    .line 218
    .line 219
    if-eqz v2, :cond_e2

    .line 220
    .line 221
    move-object p2, v4

    .line 222
    check-cast p2, Lp0/u;

    .line 223
    .line 224
    invoke-virtual {p2}, Lp0/u;->b()V

    .line 225
    .line 226
    .line 227
    :cond_e2
    return-object p1

    .line 228
    :catchall_e3
    move-exception v0

    .line 229
    :goto_e4
    move-object p2, v0

    .line 230
    goto :goto_fa

    .line 231
    :cond_e6
    if-eqz v2, :cond_103

    .line 232
    .line 233
    :goto_e8
    move-object p1, v4

    .line 234
    check-cast p1, Lp0/u;

    .line 235
    .line 236
    invoke-virtual {p1}, Lp0/u;->b()V

    .line 237
    .line 238
    .line 239
    return-object v4

    .line 240
    :catchall_ef
    move-exception v0

    .line 241
    move-object v4, p1

    .line 242
    goto :goto_e4

    .line 243
    :catchall_f2
    move-exception v0

    .line 244
    move-object v4, p1

    .line 245
    move-object p1, v0

    .line 246
    move-object p2, p1

    .line 247
    goto :goto_fa

    .line 248
    :goto_f7
    if-eqz v2, :cond_103

    .line 249
    .line 250
    goto :goto_e8

    .line 251
    :goto_fa
    if-eqz v2, :cond_102

    .line 252
    .line 253
    move-object p1, v4

    .line 254
    check-cast p1, Lp0/u;

    .line 255
    .line 256
    invoke-virtual {p1}, Lp0/u;->b()V

    .line 257
    .line 258
    .line 259
    :cond_102
    throw p2

    .line 260
    :cond_103
    :goto_103
    return-object v4

    .line 261
    :cond_104
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 262
    .line 263
    const-string p2, "end should be < than charSequence length"

    .line 264
    .line 265
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw p1

    .line 269
    :cond_10c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 270
    .line 271
    const-string p2, "start should be < than charSequence length"

    .line 272
    .line 273
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw p1

    .line 277
    :cond_114
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 278
    .line 279
    const-string p2, "start should be <= than end"

    .line 280
    .line 281
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p1

    .line 285
    :cond_11c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 286
    .line 287
    const-string p2, "end cannot be negative"

    .line 288
    .line 289
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw p1

    .line 293
    :cond_124
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 294
    .line 295
    const-string p2, "start cannot be negative"

    .line 296
    .line 297
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw p1

    .line 301
    :cond_12c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 302
    .line 303
    const-string p2, "Not initialized yet"

    .line 304
    .line 305
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw p1
.end method

.method public final f(Lp0/h;)V
    .registers 7

    .line 1
    const-string v0, "initCallback cannot be null"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lb2/k;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 13
    .line 14
    .line 15
    :try_start_e
    iget v0, p0, Lp0/k;->c:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_21

    .line 19
    .line 20
    iget v0, p0, Lp0/k;->c:I

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-ne v0, v2, :cond_19

    .line 24
    .line 25
    goto :goto_21

    .line 26
    :cond_19
    iget-object v0, p0, Lp0/k;->b:Ls/f;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ls/f;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_39

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    goto :goto_43

    .line 34
    :cond_21
    :goto_21
    iget-object v0, p0, Lp0/k;->d:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v2, Lp0/i;

    .line 37
    .line 38
    iget v3, p0, Lp0/k;->c:I

    .line 39
    .line 40
    new-array v1, v1, [Lp0/h;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    aput-object p1, v1, v4

    .line 44
    .line 45
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/util/List;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-direct {v2, p1, v3, v1}, Lp0/i;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_1f

    .line 56
    .line 57
    .line 58
    :goto_39
    iget-object p1, p0, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :goto_43
    iget-object v0, p0, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 75
    .line 76
    .line 77
    throw p1
.end method
