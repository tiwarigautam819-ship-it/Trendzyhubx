###### Class x3.r (x3.r)
.class public final Lx3/r;
.super Lj4/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lw3/c;
.implements Lw3/d;


# static fields
.field public static final j:Lm4/b;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Landroid/os/Handler;

.field public final e:Lm4/b;

.field public final f:Ljava/util/Set;

.field public final g:Lcom/google/android/gms/common/internal/g;

.field public h:Ln4/a;

.field public i:Lx3/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lm4/c;->a:Lm4/b;

    .line 2
    .line 3
    sput-object v0, Lx3/r;->j:Lm4/b;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/r0;Lcom/google/android/gms/common/internal/g;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lj4/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.google.android.gms.signin.internal.ISignInCallbacks"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lx3/r;->c:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lx3/r;->d:Landroid/os/Handler;

    .line 12
    .line 13
    iput-object p3, p0, Lx3/r;->g:Lcom/google/android/gms/common/internal/g;

    .line 14
    .line 15
    iget-object p1, p3, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Ljava/util/Set;

    .line 18
    .line 19
    iput-object p1, p0, Lx3/r;->f:Ljava/util/Set;

    .line 20
    .line 21
    sget-object p1, Lx3/r;->j:Lm4/b;

    .line 22
    .line 23
    iput-object p1, p0, Lx3/r;->e:Lm4/b;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 10

    .line 1
    iget-object v0, p0, Lx3/r;->h:Ln4/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "<<default account>>"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    :try_start_a
    iget-object v5, v0, Ln4/a;->c:Lcom/google/android/gms/common/internal/g;

    .line 12
    .line 13
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v5, Landroid/accounts/Account;

    .line 17
    .line 18
    const-string v6, "com.google"

    .line 19
    .line 20
    invoke-direct {v5, v1, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_6f

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v6, Lt3/a;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object v6, Lt3/a;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    .line 42
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2c} :catch_6d

    .line 43
    .line 44
    .line 45
    :try_start_2c
    sget-object v7, Lt3/a;->d:Lt3/a;

    .line 46
    .line 47
    if-nez v7, :cond_3e

    .line 48
    .line 49
    new-instance v7, Lt3/a;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v7, v1}, Lt3/a;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    sput-object v7, Lt3/a;->d:Lt3/a;

    .line 59
    .line 60
    goto :goto_3e

    .line 61
    :catchall_3c
    move-exception v0

    .line 62
    goto :goto_69

    .line 63
    :cond_3e
    :goto_3e
    sget-object v1, Lt3/a;->d:Lt3/a;
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_3c

    .line 64
    .line 65
    :try_start_40
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 66
    .line 67
    .line 68
    const-string v6, "defaultGoogleSignInAccount"

    .line 69
    .line 70
    invoke-virtual {v1, v6}, Lt3/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_50

    .line 79
    .line 80
    goto :goto_6f

    .line 81
    :cond_50
    new-instance v7, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v8, "googleSignInAccount:"

    .line 84
    .line 85
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v1, v6}, Lt3/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_62} :catch_6d

    .line 99
    if-eqz v1, :cond_6f

    .line 100
    .line 101
    :try_start_64
    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 102
    .line 103
    .line 104
    move-result-object v1
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_68} :catch_6f
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_68} :catch_6d

    .line 105
    goto :goto_70

    .line 106
    :goto_69
    :try_start_69
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :catch_6d
    move-exception v0

    .line 111
    goto :goto_c9

    .line 112
    :catch_6f
    :cond_6f
    :goto_6f
    move-object v1, v4

    .line 113
    :goto_70
    new-instance v6, Lcom/google/android/gms/common/internal/v;

    .line 114
    .line 115
    iget-object v7, v0, Ln4/a;->e:Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-static {v7}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    const/4 v8, 0x2

    .line 125
    invoke-direct {v6, v8, v5, v7, v1}, Lcom/google/android/gms/common/internal/v;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ln4/c;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iget-object v5, v0, Lh4/a;->d:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    sget v5, Lh4/b;->a:I

    .line 147
    .line 148
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    .line 150
    .line 151
    const/16 v5, 0x4f45

    .line 152
    .line 153
    invoke-static {v5, v1}, Lz7/d;->p(ILandroid/os/Parcel;)I

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    const/4 v7, 0x4

    .line 158
    invoke-static {v1, v3, v7}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    .line 163
    .line 164
    invoke-static {v1, v8, v6, v2}, Lz7/d;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 165
    .line 166
    .line 167
    invoke-static {v5, v1}, Lz7/d;->q(ILandroid/os/Parcel;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 174
    .line 175
    .line 176
    move-result-object v5
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_b0} :catch_6d

    .line 177
    :try_start_b0
    iget-object v0, v0, Lh4/a;->c:Landroid/os/IBinder;

    .line 178
    .line 179
    const/16 v6, 0xc

    .line 180
    .line 181
    invoke-interface {v0, v6, v1, v5, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_c1

    .line 185
    .line 186
    .line 187
    :try_start_ba
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 191
    .line 192
    .line 193
    goto :goto_ee

    .line 194
    :catchall_c1
    move-exception v0

    .line 195
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 199
    .line 200
    .line 201
    throw v0
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_c9} :catch_6d

    .line 202
    :goto_c9
    const-string v1, "Remote service probably died when signIn is called"

    .line 203
    .line 204
    const-string v5, "SignInClientImpl"

    .line 205
    .line 206
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    :try_start_d0
    new-instance v1, Ln4/f;

    .line 210
    .line 211
    new-instance v6, Lcom/google/android/gms/common/ConnectionResult;

    .line 212
    .line 213
    const/16 v7, 0x8

    .line 214
    .line 215
    invoke-direct {v6, v7, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 216
    .line 217
    .line 218
    invoke-direct {v1, v3, v6, v4}, Ln4/f;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/w;)V

    .line 219
    .line 220
    .line 221
    new-instance v3, Ls4/b;

    .line 222
    .line 223
    const/16 v4, 0x13

    .line 224
    .line 225
    invoke-direct {v3, p0, v1, v4, v2}, Ls4/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 226
    .line 227
    .line 228
    iget-object v1, p0, Lx3/r;->d:Landroid/os/Handler;

    .line 229
    .line 230
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_e8} :catch_e9

    .line 231
    .line 232
    .line 233
    goto :goto_ee

    .line 234
    :catch_e9
    const-string v1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    .line 235
    .line 236
    invoke-static {v5, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .line 238
    .line 239
    :goto_ee
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lx3/r;->i:Lx3/l;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx3/l;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lx3/r;->i:Lx3/l;

    .line 2
    .line 3
    iget-object v1, v0, Lx3/l;->f:Lx3/d;

    .line 4
    .line 5
    iget-object v1, v1, Lx3/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    iget-object v0, v0, Lx3/l;->b:Lx3/a;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lx3/j;

    .line 14
    .line 15
    if-eqz v0, :cond_22

    .line 16
    .line 17
    iget-boolean v1, v0, Lx3/j;->j:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1f

    .line 20
    .line 21
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 22
    .line 23
    const/16 v1, 0x11

    .line 24
    .line 25
    invoke-direct {p1, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lx3/j;->n(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    invoke-virtual {v0, p1}, Lx3/j;->onConnectionSuspended(I)V

    .line 33
    .line 34
    .line 35
    :cond_22
    return-void
.end method
