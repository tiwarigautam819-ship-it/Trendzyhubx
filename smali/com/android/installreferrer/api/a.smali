###### Class com.android.installreferrer.api.a (com.android.installreferrer.api.a)
.class public final Lcom/android/installreferrer/api/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Lcom/android/installreferrer/api/InstallReferrerStateListener;

.field public final synthetic b:Lcom/android/installreferrer/api/b;


# direct methods
.method public constructor <init>(Lcom/android/installreferrer/api/b;Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/installreferrer/api/a;->b:Lcom/android/installreferrer/api/b;

    .line 5
    .line 6
    if-eqz p2, :cond_a

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/installreferrer/api/a;->a:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    const-string p2, "Please specify a listener to know when setup is done."

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 1
    const-string p1, "InstallReferrerClient"

    .line 2
    .line 3
    const-string v0, "Install Referrer service connected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget p1, Lq3/b;->b:I

    .line 9
    .line 10
    if-nez p2, :cond_d

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_23

    .line 14
    :cond_d
    const-string p1, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    .line 15
    .line 16
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1c

    .line 21
    .line 22
    instance-of v0, p1, Lq3/c;

    .line 23
    .line 24
    if-eqz v0, :cond_1c

    .line 25
    .line 26
    check-cast p1, Lq3/c;

    .line 27
    .line 28
    goto :goto_23

    .line 29
    :cond_1c
    new-instance p1, Lq3/a;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p2, p1, Lq3/a;->b:Landroid/os/IBinder;

    .line 35
    .line 36
    :goto_23
    iget-object p2, p0, Lcom/android/installreferrer/api/a;->b:Lcom/android/installreferrer/api/b;

    .line 37
    .line 38
    iput-object p1, p2, Lcom/android/installreferrer/api/b;->c:Lq3/c;

    .line 39
    .line 40
    const/4 p1, 0x2

    .line 41
    iput p1, p2, Lcom/android/installreferrer/api/b;->a:I

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/installreferrer/api/a;->a:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-interface {p1, p2}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    const-string p1, "InstallReferrerClient"

    .line 2
    .line 3
    const-string v0, "Install Referrer service disconnected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iget-object v0, p0, Lcom/android/installreferrer/api/a;->b:Lcom/android/installreferrer/api/b;

    .line 10
    .line 11
    iput-object p1, v0, Lcom/android/installreferrer/api/b;->c:Lq3/c;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, v0, Lcom/android/installreferrer/api/b;->a:I

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/installreferrer/api/a;->a:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerServiceDisconnected()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
