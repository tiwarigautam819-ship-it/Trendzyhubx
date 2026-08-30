###### Class g0.m (g0.m)
.class public final Lg0/m;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lg0/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lu3/a;Ljava/util/concurrent/CountDownLatch;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lg0/m;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg0/m;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg0/m;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget v0, p0, Lg0/m;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_ac

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lg0/m;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lu3/a;

    .line 9
    .line 10
    iget-object v1, v0, Lu3/a;->a:Landroid/content/Intent;

    .line 11
    .line 12
    const-string v2, "google.message_id"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_19

    .line 19
    .line 20
    const-string v2, "message_id"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :cond_19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_25

    .line 32
    .line 33
    invoke-static {v2}, Lj7/g;->l(Ljava/lang/Object;)Lp4/q;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_7e

    .line 38
    :cond_25
    new-instance v1, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v3, v0, Lu3/a;->a:Landroid/content/Intent;

    .line 44
    .line 45
    const-string v4, "google.message_id"

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-nez v4, :cond_3a

    .line 52
    .line 53
    const-string v4, "message_id"

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    :cond_3a
    const-string v3, "google.message_id"

    .line 60
    .line 61
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, v0, Lu3/a;->a:Landroid/content/Intent;

    .line 65
    .line 66
    const-string v3, "google.product_id"

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_52

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :cond_52
    if-eqz v2, :cond_5d

    .line 84
    .line 85
    const-string v0, "google.product_id"

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    :cond_5d
    iget-object v0, p0, Lg0/m;->b:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, Landroid/content/Context;

    .line 97
    .line 98
    const-string v2, "supports_message_handled"

    .line 99
    .line 100
    const/4 v3, 0x1

    .line 101
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lu3/n;->a(Landroid/content/Context;)Lu3/n;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    new-instance v2, Lu3/m;

    .line 109
    .line 110
    monitor-enter v0

    .line 111
    :try_start_6e
    iget v3, v0, Lu3/n;->d:I

    .line 112
    .line 113
    add-int/lit8 v4, v3, 0x1

    .line 114
    .line 115
    iput v4, v0, Lu3/n;->d:I
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_8d

    .line 116
    .line 117
    monitor-exit v0

    .line 118
    const/4 v4, 0x0

    .line 119
    const/4 v5, 0x2

    .line 120
    invoke-direct {v2, v3, v5, v1, v4}, Lu3/m;-><init>(IILandroid/os/Bundle;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2}, Lu3/n;->b(Lu3/m;)Lp4/q;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :goto_7e
    iget-object v1, p0, Lg0/m;->d:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 130
    .line 131
    sget-object v2, Lu3/h;->b:Lu3/h;

    .line 132
    .line 133
    new-instance v3, Lp4/l;

    .line 134
    .line 135
    invoke-direct {v3, v1}, Lp4/l;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v2, v3}, Lp4/q;->a(Ljava/util/concurrent/Executor;Lp4/d;)Lp4/q;

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :catchall_8d
    move-exception v1

    .line 143
    :try_start_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    .line 144
    throw v1

    .line 145
    :pswitch_90
    :try_start_90
    iget-object v0, p0, Lg0/m;->b:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v0, Lg0/f;

    .line 148
    .line 149
    invoke-virtual {v0}, Lg0/f;->call()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_98} :catch_99

    .line 153
    goto :goto_9a

    .line 154
    :catch_99
    const/4 v0, 0x0

    .line 155
    :goto_9a
    iget-object v1, p0, Lg0/m;->c:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v1, Lg0/g;

    .line 158
    .line 159
    iget-object v2, p0, Lg0/m;->d:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v2, Landroid/os/Handler;

    .line 162
    .line 163
    new-instance v3, Ls4/b;

    .line 164
    .line 165
    const/4 v4, 0x2

    .line 166
    invoke-direct {v3, v1, v4, v0}, Ls4/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_90
    .end packed-switch
.end method
