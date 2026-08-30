###### Class com.engagelab.privates.common.ids.google.AdvertisingInterface (com.engagelab.privates.common.ids.google.AdvertisingInterface)
.class public Lcom/engagelab/privates/common/ids/google/AdvertisingInterface;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvertisingInterface"


# instance fields
.field private binder:Landroid/os/IBinder;

.field private mClsName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/engagelab/privates/common/ids/google/AdvertisingInterface;->mClsName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/engagelab/privates/common/ids/google/AdvertisingInterface;->binder:Landroid/os/IBinder;

    .line 9
    .line 10
    sget-object p1, Lcom/engagelab/privates/common/ids/GuardConstant;->COM_GOOGLE_ANDROID_GMS_ADS_IDENTIFIER_INTERNAL_IADVERTISINGIDSERVICE:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/engagelab/privates/common/ids/google/AdvertisingInterface;->mClsName:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static hasGAIDPermission(Landroid/content/Context;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/16 v2, 0x1000

    .line 11
    .line 12
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 17
    .line 18
    if-eqz p0, :cond_2a

    .line 19
    .line 20
    array-length v1, p0

    .line 21
    move v2, v0

    .line 22
    :goto_15
    if-ge v2, v1, :cond_2a

    .line 23
    .line 24
    aget-object v3, p0, v2

    .line 25
    .line 26
    const-string v4, "com.google.android.gms.permission.AD_ID"

    .line 27
    .line 28
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1f} :catch_26

    .line 32
    if-eqz v3, :cond_23

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_23
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_15

    .line 39
    :catch_26
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :cond_2a
    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 7

    .line 1
    const-string v0, "getId error: "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :try_start_a
    iget-object v3, p0, Lcom/engagelab/privates/common/ids/google/AdvertisingInterface;->mClsName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/engagelab/privates/common/ids/google/AdvertisingInterface;->binder:Landroid/os/IBinder;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1e

    .line 30
    goto :goto_36

    .line 31
    :catchall_1e
    move-exception v3

    .line 32
    const-string v4, "AdvertisingInterface"

    .line 33
    .line 34
    :try_start_21
    new-instance v5, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v4, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_3d

    .line 51
    .line 52
    .line 53
    const-string v0, ""

    .line 54
    .line 55
    :goto_36
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :catchall_3d
    move-exception v0

    .line 63
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 67
    .line 68
    .line 69
    throw v0
.end method

.method public isLimitAdTrackingEnabled(Z)Z
    .registers 8

    .line 1
    const-string v0, "isLimitAdTrackingEnabled error: "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_b
    iget-object v4, p0, Lcom/engagelab/privates/common/ids/google/AdvertisingInterface;->mClsName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/engagelab/privates/common/ids/google/AdvertisingInterface;->binder:Landroid/os/IBinder;

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    invoke-interface {p1, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result p1
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_2a

    .line 33
    if-eqz p1, :cond_23

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    :cond_23
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 40
    .line 41
    .line 42
    return v3

    .line 43
    :catchall_2a
    move-exception p1

    .line 44
    const-string v4, "AdvertisingInterface"

    .line 45
    .line 46
    :try_start_2d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v4, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_47

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 69
    .line 70
    .line 71
    return v3

    .line 72
    :catchall_47
    move-exception p1

    .line 73
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 77
    .line 78
    .line 79
    throw p1
.end method
