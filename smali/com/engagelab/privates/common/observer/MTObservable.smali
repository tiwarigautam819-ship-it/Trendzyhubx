###### Class com.engagelab.privates.common.observer.MTObservable (com.engagelab.privates.common.observer.MTObservable)
.class public Lcom/engagelab/privates/common/observer/MTObservable;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "MTObservable"

.field public static final WHAT_OBSERVER:I = 0x65

.field private static volatile instance:Lcom/engagelab/privates/common/observer/MTObservable;


# instance fields
.field public observeNameQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public observeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/engagelab/privates/common/observer/MTObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/engagelab/privates/common/observer/MTObservable;->observeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/engagelab/privates/common/observer/MTObservable;->observeNameQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 17
    .line 18
    return-void
.end method

.method public static getInstance()Lcom/engagelab/privates/common/observer/MTObservable;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/observer/MTObservable;->instance:Lcom/engagelab/privates/common/observer/MTObservable;

    .line 2
    .line 3
    if-nez v0, :cond_13

    .line 4
    .line 5
    const-class v0, Lcom/engagelab/privates/common/observer/MTObservable;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/observer/MTObservable;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/engagelab/privates/common/observer/MTObservable;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/engagelab/privates/common/observer/MTObservable;->instance:Lcom/engagelab/privates/common/observer/MTObservable;

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    goto :goto_13

    .line 17
    :catchall_10
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    .line 19
    throw v1

    .line 20
    :cond_13
    :goto_13
    sget-object v0, Lcom/engagelab/privates/common/observer/MTObservable;->instance:Lcom/engagelab/privates/common/observer/MTObservable;

    .line 21
    .line 22
    return-object v0
.end method


# virtual methods
.method public dispatchMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/observer/MTObservable;->observeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_3c

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 18
    .line 19
    :try_start_12
    invoke-virtual {v1, p2}, Lcom/engagelab/privates/common/observer/MTObserver;->isSupport(I)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_19

    .line 24
    .line 25
    goto :goto_6

    .line 26
    :cond_19
    invoke-virtual {v1, p1, p2, p3}, Lcom/engagelab/privates/common/observer/MTObserver;->dispatchMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1d

    .line 27
    .line 28
    .line 29
    goto :goto_6

    .line 30
    :catchall_1d
    move-exception v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "handleMessage dispatchMessage failed what="

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "MTObservable"

    .line 46
    .line 47
    invoke-static {v3, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v4, "handleMessage dispatchMessage failed "

    .line 53
    .line 54
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v2, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_6

    .line 61
    :cond_3c
    return-void
.end method

.method public handleMessage(Landroid/content/Context;ILjava/lang/String;ILandroid/os/Bundle;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/observer/MTObservable;->observeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_34

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/engagelab/privates/common/observer/MTObserver;->getThreadName()[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_21

    .line 32
    .line 33
    goto :goto_6

    .line 34
    :cond_21
    invoke-virtual {v1, p4}, Lcom/engagelab/privates/common/observer/MTObserver;->isSupport(I)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_28

    .line 39
    .line 40
    goto :goto_6

    .line 41
    :cond_28
    if-nez p2, :cond_2d

    .line 42
    .line 43
    invoke-virtual {v1, p1, p4, p5}, Lcom/engagelab/privates/common/observer/MTObserver;->handleMessage(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    :cond_2d
    const/4 v2, 0x1

    .line 47
    if-ne p2, v2, :cond_6

    .line 48
    .line 49
    invoke-virtual {v1, p1, p4, p5}, Lcom/engagelab/privates/common/observer/MTObserver;->handleDelayMessage(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    goto :goto_6

    .line 53
    :cond_34
    return-void
.end method

.method public observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/observer/MTObservable;->observeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    goto :goto_19

    .line 10
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/engagelab/privates/common/observer/MTObservable;->observeNameQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1a

    .line 25
    .line 26
    :goto_19
    return-void

    .line 27
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "observer "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "MTObservable"

    .line 42
    .line 43
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/engagelab/privates/common/observer/MTObservable;->observeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 47
    .line 48
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/engagelab/privates/common/observer/MTObservable;->observeNameQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    new-instance v1, Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "observer_name"

    .line 62
    .line 63
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_b2

    .line 71
    .line 72
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getLifecycleState()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getCurrentActivityName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    const/4 v4, 0x0

    .line 85
    const-string v5, "state"

    .line 86
    .line 87
    if-nez v3, :cond_73

    .line 88
    .line 89
    invoke-virtual {v1, v5, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    const-string v0, "activity"

    .line 93
    .line 94
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/16 v0, 0x3ed

    .line 98
    .line 99
    invoke-virtual {p2, v0}, Lcom/engagelab/privates/common/observer/MTObserver;->isSupport(I)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_70

    .line 104
    .line 105
    const/16 v2, 0x3ee

    .line 106
    .line 107
    invoke-virtual {p2, v2}, Lcom/engagelab/privates/common/observer/MTObserver;->isSupport(I)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_73

    .line 112
    .line 113
    :cond_70
    invoke-virtual {p2, p1, v0, v4}, Lcom/engagelab/privates/common/observer/MTObserver;->dispatchMessage(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 114
    .line 115
    .line 116
    :cond_73
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getNetworkState()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getNetworkType()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getNetworkName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getNetworkRadio()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-nez v7, :cond_b2

    .line 137
    .line 138
    invoke-virtual {v1, v5, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    const-string v5, "type"

    .line 142
    .line 143
    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    const-string v2, "name"

    .line 147
    .line 148
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v2, "radio"

    .line 152
    .line 153
    invoke-virtual {v1, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const/16 v2, 0x3eb

    .line 157
    .line 158
    invoke-virtual {p2, v2}, Lcom/engagelab/privates/common/observer/MTObserver;->isSupport(I)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    const/16 v5, 0x3ec

    .line 163
    .line 164
    if-nez v3, :cond_ab

    .line 165
    .line 166
    invoke-virtual {p2, v5}, Lcom/engagelab/privates/common/observer/MTObserver;->isSupport(I)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_b2

    .line 171
    .line 172
    :cond_ab
    if-eqz v0, :cond_ae

    .line 173
    .line 174
    goto :goto_af

    .line 175
    :cond_ae
    move v2, v5

    .line 176
    :goto_af
    invoke-virtual {p2, p1, v2, v4}, Lcom/engagelab/privates/common/observer/MTObserver;->dispatchMessage(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 177
    .line 178
    .line 179
    :cond_b2
    invoke-static {}, Lcom/engagelab/privates/common/binder/MTMessenger;->getInstance()Lcom/engagelab/privates/common/binder/MTMessenger;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    const/16 v0, 0x65

    .line 184
    .line 185
    invoke-virtual {p2, p1, v0, v1}, Lcom/engagelab/privates/common/binder/MTMessenger;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public observerOnRemoteProcess(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 10

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    :try_start_2
    const-string v1, "observer_name"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/engagelab/privates/common/observer/MTObservable;->observeNameQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_12

    .line 16
    .line 17
    goto/16 :goto_93

    .line 18
    .line 19
    :cond_12
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    instance-of v2, v1, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 28
    .line 29
    if-eqz v2, :cond_93

    .line 30
    .line 31
    check-cast v1, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 32
    .line 33
    invoke-virtual {p0, p1, v1}, Lcom/engagelab/privates/common/observer/MTObservable;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const-string v3, "activity"

    .line 41
    .line 42
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x0

    .line 51
    if-nez v4, :cond_54

    .line 52
    .line 53
    invoke-static {v2}, Lcom/engagelab/privates/common/global/MTGlobal;->setLifecycleState(Z)V

    .line 54
    .line 55
    .line 56
    invoke-static {v3}, Lcom/engagelab/privates/common/global/MTGlobal;->setCurrentActivityName(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/16 v3, 0x7cb

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Lcom/engagelab/privates/common/observer/MTObserver;->isSupport(I)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const/16 v6, 0x7ca

    .line 66
    .line 67
    if-nez v4, :cond_4d

    .line 68
    .line 69
    invoke-virtual {v1, v6}, Lcom/engagelab/privates/common/observer/MTObserver;->isSupport(I)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_54

    .line 74
    .line 75
    goto :goto_4d

    .line 76
    :catchall_4b
    move-exception p1

    .line 77
    goto :goto_94

    .line 78
    :cond_4d
    :goto_4d
    if-eqz v2, :cond_50

    .line 79
    .line 80
    goto :goto_51

    .line 81
    :cond_50
    move v3, v6

    .line 82
    :goto_51
    invoke-virtual {v1, p1, v3, v5}, Lcom/engagelab/privates/common/observer/MTObserver;->dispatchMessage(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    :cond_54
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const-string v3, "type"

    .line 90
    .line 91
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const-string v4, "name"

    .line 96
    .line 97
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const-string v6, "radio"

    .line 102
    .line 103
    invoke-virtual {p2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-nez v6, :cond_93

    .line 112
    .line 113
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkState(Z)V

    .line 114
    .line 115
    .line 116
    invoke-static {v3}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkType(I)V

    .line 117
    .line 118
    .line 119
    invoke-static {v4}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkName(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p2}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkRadio(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const/16 p2, 0x7cd

    .line 126
    .line 127
    invoke-virtual {v1, p2}, Lcom/engagelab/privates/common/observer/MTObserver;->isSupport(I)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    const/16 v3, 0x7cc

    .line 132
    .line 133
    if-nez v0, :cond_8c

    .line 134
    .line 135
    invoke-virtual {v1, v3}, Lcom/engagelab/privates/common/observer/MTObserver;->isSupport(I)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_93

    .line 140
    .line 141
    :cond_8c
    if-eqz v2, :cond_8f

    .line 142
    .line 143
    goto :goto_90

    .line 144
    :cond_8f
    move p2, v3

    .line 145
    :goto_90
    invoke-virtual {v1, p1, p2, v5}, Lcom/engagelab/privates/common/observer/MTObserver;->dispatchMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_93
    .catchall {:try_start_2 .. :try_end_93} :catchall_4b

    .line 146
    .line 147
    .line 148
    :cond_93
    :goto_93
    return-void

    .line 149
    :goto_94
    new-instance p2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v0, "observer failed "

    .line 152
    .line 153
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v0, "MTObservable"

    .line 157
    .line 158
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method
