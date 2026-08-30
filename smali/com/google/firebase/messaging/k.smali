###### Class com.google.firebase.messaging.k (com.google.firebase.messaging.k)
.class public final Lcom/google/firebase/messaging/k;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/messaging/k;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/messaging/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/lottery/app/App;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/messaging/k;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/k;->b:Ljava/lang/Object;

    return-void
.end method

.method private final b(Landroid/app/Activity;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final c(Landroid/app/Activity;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final d(Landroid/app/Activity;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final e(Landroid/app/Activity;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final f(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    return-void
.end method

.method private final g(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    return-void
.end method

.method private final h(Landroid/app/Activity;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final i(Landroid/app/Activity;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final j(Landroid/app/Activity;)V
    .registers 2

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .registers 8

    .line 1
    const-string v0, "FirebaseMessaging"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/messaging/k;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayDeque;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_3b

    .line 13
    .line 14
    const-string v3, "google.message_id"

    .line 15
    .line 16
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-nez v3, :cond_1b

    .line 21
    .line 22
    const-string v3, "message_id"

    .line 23
    .line 24
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :cond_1b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_2f

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_29

    .line 39
    .line 40
    goto/16 :goto_b7

    .line 41
    .line 42
    :cond_29
    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_2f

    .line 46
    :catch_2d
    move-exception p1

    .line 47
    goto :goto_36

    .line 48
    :cond_2f
    :goto_2f
    const-string v1, "gcm.n.analytics_data"

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object v2
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_35} :catch_2d

    .line 54
    goto :goto_3b

    .line 55
    :goto_36
    const-string v1, "Failed trying to get analytics data from Intent extras."

    .line 56
    .line 57
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    :cond_3b
    :goto_3b
    const-string p1, "1"

    .line 61
    .line 62
    if-nez v2, :cond_41

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    goto :goto_4b

    .line 66
    :cond_41
    const-string v1, "google.c.a.e"

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    :goto_4b
    if-eqz v1, :cond_b7

    .line 77
    .line 78
    if-nez v2, :cond_50

    .line 79
    .line 80
    goto :goto_b2

    .line 81
    :cond_50
    const-string v1, "google.c.a.tc"

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const/4 v1, 0x3

    .line 92
    if-eqz p1, :cond_a7

    .line 93
    .line 94
    invoke-static {}, Lt4/g;->c()Lt4/g;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-class v3, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 99
    .line 100
    invoke-virtual {p1, v3}, Lt4/g;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 105
    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_74

    .line 111
    .line 112
    const-string v1, "Received event with track-conversion=true. Setting user property and reengagement event"

    .line 113
    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_74
    if-eqz p1, :cond_a1

    .line 118
    .line 119
    const-string v0, "google.c.a.c_id"

    .line 120
    .line 121
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v1, "_ln"

    .line 126
    .line 127
    const-string v3, "fcm"

    .line 128
    .line 129
    invoke-interface {p1, v3, v1, v0}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    new-instance v1, Landroid/os/Bundle;

    .line 133
    .line 134
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v4, "source"

    .line 138
    .line 139
    const-string v5, "Firebase"

    .line 140
    .line 141
    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v4, "medium"

    .line 145
    .line 146
    const-string v5, "notification"

    .line 147
    .line 148
    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v4, "campaign"

    .line 152
    .line 153
    invoke-virtual {v1, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v0, "_cmp"

    .line 157
    .line 158
    invoke-interface {p1, v3, v0, v1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 159
    .line 160
    .line 161
    goto :goto_b2

    .line 162
    :cond_a1
    const-string p1, "Unable to set user property for conversion tracking:  analytics library is missing"

    .line 163
    .line 164
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    goto :goto_b2

    .line 168
    :cond_a7
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_b2

    .line 173
    .line 174
    const-string p1, "Received event with track-conversion=false. Do not set user property"

    .line 175
    .line 176
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    :cond_b2
    :goto_b2
    const-string p1, "_no"

    .line 180
    .line 181
    invoke-static {v2, p1}, Lz7/d;->h(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_b7
    :goto_b7
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget p2, p0, Lcom/google/firebase/messaging/k;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_74

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/firebase/messaging/k;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p2, Lcom/lottery/app/App;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p2, Lcom/lottery/app/App;->c:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_4e

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_1c

    .line 27
    .line 28
    goto :goto_4e

    .line 29
    :cond_1c
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Landroid/view/ViewGroup;

    .line 38
    .line 39
    const v0, 0x7f0a00ff

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_30

    .line 47
    .line 48
    goto :goto_4e

    .line 49
    :cond_30
    new-instance v1, Landroid/widget/FrameLayout;

    .line 50
    .line 51
    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    .line 59
    const/4 v0, -0x1

    .line 60
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .line 65
    .line 66
    const/high16 p1, -0x1000000

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 69
    .line 70
    .line 71
    const/16 p1, 0x8

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    :cond_4e
    :goto_4e
    return-void

    .line 80
    :pswitch_4f
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-nez p1, :cond_56

    .line 85
    .line 86
    goto :goto_72

    .line 87
    :cond_56
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    .line 89
    const/16 v0, 0x19

    .line 90
    .line 91
    if-gt p2, v0, :cond_6f

    .line 92
    .line 93
    new-instance p2, Landroid/os/Handler;

    .line 94
    .line 95
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    .line 101
    .line 102
    new-instance v0, La2/i;

    .line 103
    .line 104
    const/4 v1, 0x7

    .line 105
    invoke-direct {v0, p0, v1, p1}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_72

    .line 112
    :cond_6f
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/k;->a(Landroid/content/Intent;)V

    .line 113
    .line 114
    .line 115
    :goto_72
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_4f
    .end packed-switch
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iget p1, p0, Lcom/google/firebase/messaging/k;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/firebase/messaging/k;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_20

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/messaging/k;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/lottery/app/App;

    .line 9
    .line 10
    sget v1, Lcom/lottery/app/App;->d:I

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/lottery/app/App;->b()V

    .line 13
    .line 14
    .line 15
    new-instance v1, La2/i;

    .line 16
    .line 17
    const/16 v2, 0xd

    .line 18
    .line 19
    invoke-direct {v1, v0, v2, p1}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, v0, Lcom/lottery/app/App;->b:La2/i;

    .line 23
    .line 24
    iget-object p1, v0, Lcom/lottery/app/App;->a:Landroid/os/Handler;

    .line 25
    .line 26
    const-wide/16 v2, 0x1f4

    .line 27
    .line 28
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
    :pswitch_1e
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1e
    .end packed-switch
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/firebase/messaging/k;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/messaging/k;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/lottery/app/App;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/lottery/app/App;->c:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/lottery/app/App;->b()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/lottery/app/App;->a(Lcom/lottery/app/App;Landroid/app/Activity;)V

    .line 21
    .line 22
    .line 23
    :pswitch_16
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_16
    .end packed-switch
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget p1, p0, Lcom/google/firebase/messaging/k;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/firebase/messaging/k;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_12

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/messaging/k;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/lottery/app/App;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/lottery/app/App;->c:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    :pswitch_10
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iget p1, p0, Lcom/google/firebase/messaging/k;->a:I

    .line 2
    .line 3
    return-void
.end method
