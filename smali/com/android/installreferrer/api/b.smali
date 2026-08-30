###### Class com.android.installreferrer.api.b (com.android.installreferrer.api.b)
.class public final Lcom/android/installreferrer/api/b;
.super Lcom/android/installreferrer/api/InstallReferrerClient;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:I

.field public final b:Landroid/content/Context;

.field public c:Lq3/c;

.field public d:Lcom/android/installreferrer/api/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/installreferrer/api/InstallReferrerClient;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/installreferrer/api/b;->a:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/installreferrer/api/b;->b:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final endConnection()V
    .registers 4

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/android/installreferrer/api/b;->a:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/installreferrer/api/b;->d:Lcom/android/installreferrer/api/a;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_18

    .line 8
    .line 9
    const-string v0, "InstallReferrerClient"

    .line 10
    .line 11
    const-string v2, "Unbinding from service."

    .line 12
    .line 13
    invoke-static {v0, v2}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/installreferrer/api/b;->b:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/installreferrer/api/b;->d:Lcom/android/installreferrer/api/a;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/installreferrer/api/b;->d:Lcom/android/installreferrer/api/a;

    .line 24
    .line 25
    :cond_18
    iput-object v1, p0, Lcom/android/installreferrer/api/b;->c:Lq3/c;

    .line 26
    .line 27
    return-void
.end method

.method public final getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/installreferrer/api/b;->isReady()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_30

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/installreferrer/api/b;->b:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "package_name"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :try_start_16
    new-instance v1, Lcom/android/installreferrer/api/ReferrerDetails;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/installreferrer/api/b;->c:Lq3/c;

    .line 26
    .line 27
    check-cast v2, Lq3/a;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Lq3/a;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {v1, v0}, Lcom/android/installreferrer/api/ReferrerDetails;-><init>(Landroid/os/Bundle;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_24

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :catch_24
    move-exception v0

    .line 38
    const-string v1, "InstallReferrerClient"

    .line 39
    .line 40
    const-string v2, "RemoteException getting install referrer information"

    .line 41
    .line 42
    invoke-static {v1, v2}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/android/installreferrer/api/b;->a:I

    .line 47
    .line 48
    throw v0

    .line 49
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v1, "Service not connected. Please start a connection before using the service."

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method public final isReady()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/installreferrer/api/b;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_f

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/installreferrer/api/b;->c:Lq3/c;

    .line 7
    .line 8
    if-eqz v0, :cond_f

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/installreferrer/api/b;->d:Lcom/android/installreferrer/api/a;

    .line 11
    .line 12
    if-eqz v0, :cond_f

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Lcom/android/installreferrer/api/b;->isReady()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "InstallReferrerClient"

    .line 7
    .line 8
    if-eqz v0, :cond_12

    .line 9
    .line 10
    const-string v0, "Service connection is valid. No need to re-initialize."

    .line 11
    .line 12
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v1}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    iget v0, p0, Lcom/android/installreferrer/api/b;->a:I

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-ne v0, v4, :cond_21

    .line 24
    .line 25
    const-string v0, "Client is already in the process of connecting to the service."

    .line 26
    .line 27
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v3}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    if-ne v0, v3, :cond_2c

    .line 35
    .line 36
    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    .line 37
    .line 38
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v3}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2c
    const-string v0, "Starting install referrer service setup."

    .line 46
    .line 47
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/android/installreferrer/api/a;

    .line 51
    .line 52
    invoke-direct {v0, p0, p1}, Lcom/android/installreferrer/api/a;-><init>(Lcom/android/installreferrer/api/b;Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/android/installreferrer/api/b;->d:Lcom/android/installreferrer/api/a;

    .line 56
    .line 57
    new-instance v0, Landroid/content/Intent;

    .line 58
    .line 59
    const-string v3, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 60
    .line 61
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v3, Landroid/content/ComponentName;

    .line 65
    .line 66
    const-string v5, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    .line 67
    .line 68
    const-string v6, "com.android.vending"

    .line 69
    .line 70
    invoke-direct {v3, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/installreferrer/api/b;->b:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    const/4 v7, 0x2

    .line 87
    if-eqz v5, :cond_ae

    .line 88
    .line 89
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-nez v8, :cond_ae

    .line 94
    .line 95
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 100
    .line 101
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 102
    .line 103
    if-eqz v5, :cond_ae

    .line 104
    .line 105
    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_a3

    .line 114
    .line 115
    if-eqz v5, :cond_a3

    .line 116
    .line 117
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    const/16 v8, 0x80

    .line 122
    .line 123
    :try_start_7a
    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_80
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7a .. :try_end_80} :catch_a3

    .line 128
    .line 129
    const v6, 0x4d17ab4

    .line 130
    .line 131
    .line 132
    if-lt v5, v6, :cond_a3

    .line 133
    .line 134
    new-instance v5, Landroid/content/Intent;

    .line 135
    .line 136
    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/android/installreferrer/api/b;->d:Lcom/android/installreferrer/api/a;

    .line 140
    .line 141
    invoke-virtual {v3, v5, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_98

    .line 146
    .line 147
    const-string p1, "Service was bonded successfully."

    .line 148
    .line 149
    invoke-static {v2, p1}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_98
    const-string v0, "Connection to service is blocked."

    .line 154
    .line 155
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iput v1, p0, Lcom/android/installreferrer/api/b;->a:I

    .line 159
    .line 160
    invoke-interface {p1, v4}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :catch_a3
    :cond_a3
    const-string v0, "Play Store missing or incompatible. Version 8.3.73 or later required."

    .line 165
    .line 166
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iput v1, p0, Lcom/android/installreferrer/api/b;->a:I

    .line 170
    .line 171
    invoke-interface {p1, v7}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_ae
    iput v1, p0, Lcom/android/installreferrer/api/b;->a:I

    .line 176
    .line 177
    const-string v0, "Install Referrer service unavailable on device."

    .line 178
    .line 179
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-interface {p1, v7}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    .line 183
    .line 184
    .line 185
    return-void
.end method
