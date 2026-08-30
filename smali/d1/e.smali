###### Class d1.e (d1.e)
.class public final synthetic Ld1/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 1
    iput p2, p0, Ld1/e;->a:I

    iput-object p1, p0, Ld1/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;)V
    .registers 3

    .line 2
    const/4 p1, 0x0

    iput p1, p0, Ld1/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld1/e;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    .line 1
    iget v0, p0, Ld1/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_e8

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/16 v2, 0x21

    .line 10
    .line 11
    if-lt v0, v2, :cond_85

    .line 12
    .line 13
    new-instance v3, Landroid/content/ComponentName;

    .line 14
    .line 15
    const-string v4, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    .line 16
    .line 17
    iget-object v5, p0, Ld1/e;->b:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v3, v5, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eq v4, v1, :cond_85

    .line 31
    .line 32
    const-string v4, "locale"

    .line 33
    .line 34
    if-lt v0, v2, :cond_5e

    .line 35
    .line 36
    sget-object v0, Lg/s;->g:Ls/f;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v2, Ls/a;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Ls/a;-><init>(Ls/f;)V

    .line 44
    .line 45
    .line 46
    :cond_2d
    invoke-virtual {v2}, Ls/a;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4c

    .line 51
    .line 52
    invoke-virtual {v2}, Ls/a;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lg/s;

    .line 63
    .line 64
    if-eqz v0, :cond_2d

    .line 65
    .line 66
    check-cast v0, Lg/f0;

    .line 67
    .line 68
    iget-object v0, v0, Lg/f0;->k:Landroid/content/Context;

    .line 69
    .line 70
    if-eqz v0, :cond_2d

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    const/4 v0, 0x0

    .line 78
    :goto_4d
    if-eqz v0, :cond_63

    .line 79
    .line 80
    invoke-static {v0}, Lg/p;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v2, Lf0/f;

    .line 85
    .line 86
    new-instance v6, Lf0/i;

    .line 87
    .line 88
    invoke-direct {v6, v0}, Lf0/i;-><init>(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v2, v6}, Lf0/f;-><init>(Lf0/h;)V

    .line 92
    .line 93
    .line 94
    goto :goto_65

    .line 95
    :cond_5e
    sget-object v2, Lg/s;->c:Lf0/f;

    .line 96
    .line 97
    if-eqz v2, :cond_63

    .line 98
    .line 99
    goto :goto_65

    .line 100
    :cond_63
    sget-object v2, Lf0/f;->b:Lf0/f;

    .line 101
    .line 102
    :goto_65
    iget-object v0, v2, Lf0/f;->a:Lf0/h;

    .line 103
    .line 104
    invoke-interface {v0}, Lf0/h;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_7e

    .line 109
    .line 110
    invoke-static {v5}, Ly/e;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-eqz v2, :cond_7e

    .line 119
    .line 120
    invoke-static {v0}, Lg/o;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v2, v0}, Lg/p;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    .line 125
    .line 126
    .line 127
    :cond_7e
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0, v3, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 132
    .line 133
    .line 134
    :cond_85
    sput-boolean v1, Lg/s;->f:Z

    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_88
    new-instance v0, Lc1/c;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 140
    .line 141
    .line 142
    sget-object v1, Ld1/d;->a:Le5/e;

    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    iget-object v3, p0, Ld1/e;->b:Landroid/content/Context;

    .line 146
    .line 147
    invoke-static {v3, v0, v1, v2}, Ld1/d;->s(Landroid/content/Context;Ljava/util/concurrent/Executor;Ld1/c;Z)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :pswitch_96
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 152
    .line 153
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 154
    .line 155
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 156
    .line 157
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 158
    .line 159
    .line 160
    const/4 v5, 0x0

    .line 161
    const/4 v6, 0x1

    .line 162
    const-wide/16 v7, 0x0

    .line 163
    .line 164
    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 165
    .line 166
    .line 167
    new-instance v0, Ld1/e;

    .line 168
    .line 169
    const/4 v1, 0x2

    .line 170
    iget-object v2, p0, Ld1/e;->b:Landroid/content/Context;

    .line 171
    .line 172
    invoke-direct {v0, v2, v1}, Ld1/e;-><init>(Landroid/content/Context;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :pswitch_b2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 180
    .line 181
    const/16 v1, 0x1c

    .line 182
    .line 183
    if-lt v0, v1, :cond_c1

    .line 184
    .line 185
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v0}, Ld1/h;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    goto :goto_ca

    .line 194
    :cond_c1
    new-instance v0, Landroid/os/Handler;

    .line 195
    .line 196
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 201
    .line 202
    .line 203
    :goto_ca
    new-instance v1, Ljava/util/Random;

    .line 204
    .line 205
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 206
    .line 207
    .line 208
    const/16 v2, 0x3e8

    .line 209
    .line 210
    const/4 v3, 0x1

    .line 211
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    new-instance v2, Ld1/e;

    .line 220
    .line 221
    iget-object v4, p0, Ld1/e;->b:Landroid/content/Context;

    .line 222
    .line 223
    invoke-direct {v2, v4, v3}, Ld1/e;-><init>(Landroid/content/Context;I)V

    .line 224
    .line 225
    .line 226
    add-int/lit16 v1, v1, 0x1388

    .line 227
    .line 228
    int-to-long v3, v1

    .line 229
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_96
        :pswitch_88
    .end packed-switch
.end method
