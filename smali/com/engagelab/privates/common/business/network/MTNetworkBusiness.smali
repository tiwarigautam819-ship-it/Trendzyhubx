###### Class com.engagelab.privates.common.business.network.MTNetworkBusiness (com.engagelab.privates.common.business.network.MTNetworkBusiness)
.class public Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final STATE_NETWORK_CONNECTED:I = 0x1

.field public static final STATE_NETWORK_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MTNetworkBusiness"

.field private static volatile instance:Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;


# instance fields
.field private init:Z

.field private networkListener:Lcom/engagelab/privates/common/business/network/MTNetworkListener;

.field private networkState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->networkState:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->init:Z

    .line 8
    .line 9
    return-void
.end method

.method public static getInstance()Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->instance:Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;

    .line 2
    .line 3
    if-nez v0, :cond_13

    .line 4
    .line 5
    const-class v0, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->instance:Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;

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
    sget-object v0, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->instance:Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;

    .line 21
    .line 22
    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->init:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    goto :goto_48

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->init:Z

    .line 8
    .line 9
    const-string v0, "connectivity"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v2, 0x1a

    .line 20
    .line 21
    if-lt v1, v2, :cond_35

    .line 22
    .line 23
    :try_start_16
    new-instance v1, Lcom/engagelab/privates/common/business/network/MTNetworkListener;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Lcom/engagelab/privates/common/business/network/MTNetworkListener;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->networkListener:Lcom/engagelab/privates/common/business/network/MTNetworkListener;

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/getcapacitor/a;->r(Landroid/net/ConnectivityManager;Lcom/engagelab/privates/common/business/network/MTNetworkListener;)V
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_21

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_21
    :try_start_21
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v2, Lcom/engagelab/privates/common/business/network/MTNetworkListener;

    .line 44
    .line 45
    invoke-direct {v2, p1}, Lcom/engagelab/privates/common/business/network/MTNetworkListener;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->networkListener:Lcom/engagelab/privates/common/business/network/MTNetworkListener;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_35

    .line 51
    .line 52
    .line 53
    goto :goto_48

    .line 54
    :catchall_35
    :cond_35
    :try_start_35
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Lcom/engagelab/privates/common/business/network/MTNetworkListener;

    .line 64
    .line 65
    invoke-direct {v2, p1}, Lcom/engagelab/privates/common/business/network/MTNetworkListener;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->networkListener:Lcom/engagelab/privates/common/business/network/MTNetworkListener;

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_49

    .line 71
    .line 72
    .line 73
    :goto_48
    return-void

    .line 74
    :catchall_49
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getCommonReceiver(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Landroid/content/IntentFilter;

    .line 79
    .line 80
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/utils/ReceiverUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public onMainNetworkState(Landroid/content/Context;ZLandroid/net/NetworkInfo;)Landroid/os/Bundle;
    .registers 10

    .line 21
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "state"

    const/4 v1, 0x0

    const-string v2, "radio"

    const-string v3, "name"

    const-string v4, "type"

    const-string v5, "unknown"

    if-nez p2, :cond_2b

    .line 22
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkState(Z)V

    .line 23
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkType(I)V

    .line 24
    invoke-static {v5}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkName(Ljava/lang/String;)V

    .line 25
    invoke-static {v5}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkRadio(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    invoke-virtual {p1, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 28
    invoke-virtual {p1, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2b
    const/4 p2, 0x1

    .line 30
    invoke-static {p2}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkState(Z)V

    .line 31
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, p2, :cond_4d

    .line 33
    invoke-static {p2}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkType(I)V

    .line 34
    const-string p3, "wifi"

    invoke-static {p3}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkName(Ljava/lang/String;)V

    .line 35
    invoke-static {p3}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkRadio(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, v4, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    invoke-virtual {p1, v3, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1, v2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 39
    :cond_4d
    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p2

    packed-switch p2, :pswitch_data_c8

    .line 40
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkType(I)V

    .line 41
    invoke-static {v5}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkName(Ljava/lang/String;)V

    .line 42
    invoke-static {v5}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkRadio(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 44
    invoke-virtual {p1, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_67
    const/4 p2, 0x5

    .line 46
    invoke-static {p2}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkType(I)V

    .line 47
    const-string p3, "5g"

    invoke-static {p3}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkName(Ljava/lang/String;)V

    .line 48
    const-string v0, "nr"

    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkRadio(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, v4, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {p1, v3, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_7f
    const/4 p2, 0x4

    .line 52
    invoke-static {p2}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkType(I)V

    .line 53
    const-string p3, "4g"

    invoke-static {p3}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkName(Ljava/lang/String;)V

    .line 54
    const-string v0, "lte"

    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkRadio(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, v4, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {p1, v3, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_97
    const/4 p2, 0x3

    .line 58
    invoke-static {p2}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkType(I)V

    .line 59
    const-string p3, "3g"

    invoke-static {p3}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkName(Ljava/lang/String;)V

    .line 60
    const-string v0, "gsm"

    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkRadio(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v4, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 62
    invoke-virtual {p1, v3, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_af
    const/4 p2, 0x2

    .line 64
    invoke-static {p2}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkType(I)V

    .line 65
    const-string p3, "2g"

    invoke-static {p3}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkName(Ljava/lang/String;)V

    .line 66
    const-string v0, "cdma"

    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkRadio(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1, v4, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    invoke-virtual {p1, v3, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_af
        :pswitch_af
        :pswitch_97
        :pswitch_af
        :pswitch_97
        :pswitch_97
        :pswitch_af
        :pswitch_97
        :pswitch_97
        :pswitch_97
        :pswitch_af
        :pswitch_97
        :pswitch_7f
        :pswitch_97
        :pswitch_97
        :pswitch_af
        :pswitch_97
        :pswitch_7f
        :pswitch_7f
        :pswitch_67
    .end packed-switch
.end method

.method public onMainNetworkState(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 11

    const-string v0, "networkInfo"

    .line 1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 2
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_17

    .line 3
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_24

    :cond_17
    if-eqz v0, :cond_23

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p2

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p2, v2, :cond_23

    move p2, v3

    goto :goto_24

    :cond_23
    move p2, v4

    .line 5
    :goto_24
    invoke-virtual {p0, p1, p2, v0}, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->onMainNetworkState(Landroid/content/Context;ZLandroid/net/NetworkInfo;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v2, 0x7cc

    const/16 v5, 0x3ec

    const-string v6, "MTNetworkBusiness"

    if-eqz p2, :cond_5c

    .line 6
    iget v7, p0, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->networkState:I

    if-ne v7, v3, :cond_5c

    .line 7
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 8
    invoke-virtual {v3, v1, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "type"

    .line 9
    invoke-virtual {v3, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "name"

    .line 10
    const-string v4, "unknown"

    invoke-virtual {v3, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "radio"

    .line 11
    invoke-virtual {v3, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "onMainNetworkState network is connecting, new network connected"

    .line 12
    invoke-static {v6, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {p1, v5, v3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 14
    sget-boolean v1, Lcom/engagelab/privates/common/global/MTGlobal;->isNeedRemoteProcess:Z

    if-eqz v1, :cond_5c

    .line 15
    invoke-static {p1, v2, v3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 16
    :cond_5c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onMainNetworkState "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_68

    const-string v3, "connected"

    goto :goto_6a

    :cond_68
    const-string v3, "disConnected"

    :goto_6a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " currentNetwork:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iput p2, p0, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->networkState:I

    if-eqz p2, :cond_86

    const/16 v5, 0x3eb

    .line 18
    :cond_86
    invoke-static {p1, v5, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 19
    sget-boolean v1, Lcom/engagelab/privates/common/global/MTGlobal;->isNeedRemoteProcess:Z

    if-eqz v1, :cond_94

    if-eqz p2, :cond_91

    const/16 v2, 0x7cd

    .line 20
    :cond_91
    invoke-static {p1, v2, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    :cond_94
    return-void
.end method

.method public onRemoteNetworkState(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    const-string p1, "state"

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const-string v0, "type"

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "name"

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "radio"

    .line 23
    .line 24
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkState(Z)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkType(I)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const-string v2, "unknown"

    .line 39
    .line 40
    if-eqz v0, :cond_2a

    .line 41
    .line 42
    move-object v1, v2

    .line 43
    :cond_2a
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkName(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_34

    .line 51
    .line 52
    move-object p2, v2

    .line 53
    :cond_34
    invoke-static {p2}, Lcom/engagelab/privates/common/global/MTGlobal;->setNetworkRadio(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v0, "onRemoteNetworkState "

    .line 59
    .line 60
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    if-eqz p1, :cond_43

    .line 64
    .line 65
    const-string p1, "connected"

    .line 66
    .line 67
    goto :goto_45

    .line 68
    :cond_43
    const-string p1, "disConnected"

    .line 69
    .line 70
    :goto_45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, " currentNetwork:"

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getNetworkName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string p2, "MTNetworkBusiness"

    .line 90
    .line 91
    invoke-static {p2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public release(Landroid/content/Context;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->networkState:I

    .line 3
    .line 4
    const-string v0, "connectivity"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->networkListener:Lcom/engagelab/privates/common/business/network/MTNetworkListener;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
