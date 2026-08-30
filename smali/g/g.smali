###### Class g.g (g.g)
.class public final Lg/g;
.super Landroid/os/Handler;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lg/g;->a:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Ly0/b;Landroid/os/Looper;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lg/g;->a:I

    .line 2
    iput-object p1, p0, Lg/g;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Ly2/i;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lg/g;->a:I

    iput-object p1, p0, Lg/g;->b:Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 1
    iget v0, p0, Lg/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_c0

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_e

    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 12
    .line 13
    .line 14
    goto :goto_1e

    .line 15
    :cond_e
    iget-object p1, p0, Lg/g;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Ly0/b;

    .line 18
    .line 19
    :cond_12
    iget-object v0, p1, Ly0/b;->b:Ljava/util/HashMap;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_15
    iget-object v1, p1, Ly0/b;->d:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-gtz v1, :cond_21

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    :goto_1e
    return-void

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    goto :goto_5e

    .line 34
    :cond_21
    new-array v2, v1, [Lu3/o;

    .line 35
    .line 36
    iget-object v3, p1, Ly0/b;->d:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object v3, p1, Ly0/b;->d:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_1f

    .line 47
    const/4 v0, 0x0

    .line 48
    move v3, v0

    .line 49
    :goto_30
    if-ge v3, v1, :cond_12

    .line 50
    .line 51
    aget-object v4, v2, v3

    .line 52
    .line 53
    iget-object v5, v4, Lu3/o;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v5, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    move v6, v0

    .line 62
    :goto_3d
    if-ge v6, v5, :cond_5b

    .line 63
    .line 64
    iget-object v7, v4, Lu3/o;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v7, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    check-cast v7, Ly0/a;

    .line 73
    .line 74
    iget-boolean v8, v7, Ly0/a;->d:Z

    .line 75
    .line 76
    if-nez v8, :cond_58

    .line 77
    .line 78
    iget-object v7, v7, Ly0/a;->b:Landroid/content/BroadcastReceiver;

    .line 79
    .line 80
    iget-object v8, p1, Ly0/b;->a:Landroid/content/Context;

    .line 81
    .line 82
    iget-object v9, v4, Lu3/o;->a:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v9, Landroid/content/Intent;

    .line 85
    .line 86
    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    :cond_58
    add-int/lit8 v6, v6, 0x1

    .line 90
    .line 91
    goto :goto_3d

    .line 92
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_30

    .line 95
    :goto_5e
    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_1f

    .line 96
    throw p1

    .line 97
    :pswitch_60
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_67

    .line 102
    .line 103
    goto :goto_94

    .line 104
    :cond_67
    :try_start_67
    const-string v0, "message"

    .line 105
    .line 106
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lg/g;->b:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Ly2/i;

    .line 112
    .line 113
    iget v1, p1, Landroid/os/Message;->what:I

    .line 114
    .line 115
    iget v2, v0, Ly2/i;->g:I

    .line 116
    .line 117
    if-ne v1, v2, :cond_94

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const-string v1, "com.facebook.platform.status.ERROR_TYPE"

    .line 124
    .line 125
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    if-eqz v1, :cond_87

    .line 130
    .line 131
    const/4 p1, 0x0

    .line 132
    invoke-virtual {v0, p1}, Ly2/i;->a(Landroid/os/Bundle;)V

    .line 133
    .line 134
    .line 135
    goto :goto_8a

    .line 136
    :cond_87
    invoke-virtual {v0, p1}, Ly2/i;->a(Landroid/os/Bundle;)V
    :try_end_8a
    .catchall {:try_start_67 .. :try_end_8a} :catchall_90

    .line 137
    .line 138
    .line 139
    :goto_8a
    :try_start_8a
    iget-object p1, v0, Ly2/i;->a:Landroid/content/Context;

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8a .. :try_end_8f} :catch_94
    .catchall {:try_start_8a .. :try_end_8f} :catchall_90

    .line 142
    .line 143
    .line 144
    goto :goto_94

    .line 145
    :catchall_90
    move-exception p1

    .line 146
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :catch_94
    :cond_94
    :goto_94
    return-void

    .line 150
    :pswitch_95
    iget v0, p1, Landroid/os/Message;->what:I

    .line 151
    .line 152
    const/4 v1, -0x3

    .line 153
    if-eq v0, v1, :cond_ac

    .line 154
    .line 155
    const/4 v1, -0x2

    .line 156
    if-eq v0, v1, :cond_ac

    .line 157
    .line 158
    const/4 v1, -0x1

    .line 159
    if-eq v0, v1, :cond_ac

    .line 160
    .line 161
    const/4 v1, 0x1

    .line 162
    if-eq v0, v1, :cond_a4

    .line 163
    .line 164
    goto :goto_bf

    .line 165
    :cond_a4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast p1, Landroid/content/DialogInterface;

    .line 168
    .line 169
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 170
    .line 171
    .line 172
    goto :goto_bf

    .line 173
    :cond_ac
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    .line 176
    .line 177
    iget-object v1, p0, Lg/g;->b:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Landroid/content/DialogInterface;

    .line 186
    .line 187
    iget p1, p1, Landroid/os/Message;->what:I

    .line 188
    .line 189
    invoke-interface {v0, v1, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 190
    .line 191
    .line 192
    :goto_bf
    return-void

    .line 193
    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_95
        :pswitch_60
    .end packed-switch
.end method
