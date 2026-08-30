###### Class com.engagelab.privates.common.constants.MTCommonConstants (com.engagelab.privates.common.constants.MTCommonConstants)
.class public final Lcom/engagelab/privates/common/constants/MTCommonConstants;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/common/constants/MTCommonConstants$Encrypt;,
        Lcom/engagelab/privates/common/constants/MTCommonConstants$Handler;,
        Lcom/engagelab/privates/common/constants/MTCommonConstants$Observer;,
        Lcom/engagelab/privates/common/constants/MTCommonConstants$Lifecycle;,
        Lcom/engagelab/privates/common/constants/MTCommonConstants$Network;,
        Lcom/engagelab/privates/common/constants/MTCommonConstants$RemoteWhat;,
        Lcom/engagelab/privates/common/constants/MTCommonConstants$MainWhat;
    }
.end annotation


# static fields
.field private static AURORA:Ljava/lang/String; = "ENGAGELAB-PRIVATES-"

.field public static UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getLogTag()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/constants/MTCommonConstants;->AURORA:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

###### Class com.engagelab.privates.common.constants.MTCommonConstants.Encrypt (com.engagelab.privates.common.constants.MTCommonConstants$Encrypt)
.class public interface abstract Lcom/engagelab/privates/common/constants/MTCommonConstants$Encrypt;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/constants/MTCommonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Encrypt"
.end annotation


# static fields
.field public static final TYPE_SM4_CBC:I = 0x2

###### Class com.engagelab.privates.common.constants.MTCommonConstants.Handler (com.engagelab.privates.common.constants.MTCommonConstants$Handler)
.class public interface abstract Lcom/engagelab/privates/common/constants/MTCommonConstants$Handler;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/constants/MTCommonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation


# static fields
.field public static final TYPE_DELAY:I = 0x1

.field public static final TYPE_NORMAL:I

###### Class com.engagelab.privates.common.constants.MTCommonConstants.Lifecycle (com.engagelab.privates.common.constants.MTCommonConstants$Lifecycle)
.class public interface abstract Lcom/engagelab/privates/common/constants/MTCommonConstants$Lifecycle;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/constants/MTCommonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lifecycle"
.end annotation


# static fields
.field public static final KEY_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final KEY_ACTIVITY_URL:Ljava/lang/String; = "activity_url"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

###### Class com.engagelab.privates.common.constants.MTCommonConstants.MainWhat (com.engagelab.privates.common.constants.MTCommonConstants$MainWhat)
.class public interface abstract Lcom/engagelab/privates/common/constants/MTCommonConstants$MainWhat;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/constants/MTCommonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MainWhat"
.end annotation


# static fields
.field public static final INIT:I = 0x3e8

.field public static final ON_ACTIVITY_CREATED:I = 0x3f3

.field public static final ON_ACTIVITY_DESTROYED:I = 0x3f8

.field public static final ON_ACTIVITY_PAUSED:I = 0x3f6

.field public static final ON_ACTIVITY_RESUMED:I = 0x3f5

.field public static final ON_ACTIVITY_STARTED:I = 0x3f4

.field public static final ON_ACTIVITY_STOPPED:I = 0x3f7

.field public static final ON_FRAGMENT_PAUSED:I = 0x3fa

.field public static final ON_FRAGMENT_RESUMED:I = 0x3f9

.field public static final ON_LIFECYCLE_CHANGED:I = 0x3f0

.field public static final ON_NETWORK_CHANGED:I = 0x3ef

.field public static final ON_NETWORK_CONNECTED:I = 0x3eb

.field public static final ON_NETWORK_DISCONNECTED:I = 0x3ec

.field public static final ON_SERVICE_CONNECTED:I = 0x3e9

.field public static final ON_SERVICE_DISCONNECTED:I = 0x3ea

.field public static final ON_UPDATE_LOG_CACHE_CONFIG:I = 0x3fb

.field public static final TO_BACKGROUND:I = 0x3ee

.field public static final TO_FOREGROUND:I = 0x3ed

###### Class com.engagelab.privates.common.constants.MTCommonConstants.Network (com.engagelab.privates.common.constants.MTCommonConstants$Network)
.class public interface abstract Lcom/engagelab/privates/common/constants/MTCommonConstants$Network;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/constants/MTCommonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Network"
.end annotation


# static fields
.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_RADIO:Ljava/lang/String; = "radio"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final NAME_2G:Ljava/lang/String; = "2g"

.field public static final NAME_3G:Ljava/lang/String; = "3g"

.field public static final NAME_4G:Ljava/lang/String; = "4g"

.field public static final NAME_5G:Ljava/lang/String; = "5g"

.field public static final NAME_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final NAME_WIFI:Ljava/lang/String; = "wifi"

.field public static final RADIO_2G:Ljava/lang/String; = "cdma"

.field public static final RADIO_3G:Ljava/lang/String; = "gsm"

.field public static final RADIO_4G:Ljava/lang/String; = "lte"

.field public static final RADIO_5G:Ljava/lang/String; = "nr"

.field public static final RADIO_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final RADIO_WIFI:Ljava/lang/String; = "wifi"

.field public static final TYPE_2G:I = 0x2

.field public static final TYPE_3G:I = 0x3

.field public static final TYPE_4G:I = 0x4

.field public static final TYPE_5G:I = 0x5

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_WIFI:I = 0x1

###### Class com.engagelab.privates.common.constants.MTCommonConstants.Observer (com.engagelab.privates.common.constants.MTCommonConstants$Observer)
.class public interface abstract Lcom/engagelab/privates/common/constants/MTCommonConstants$Observer;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/constants/MTCommonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# static fields
.field public static final KEY_OBSERVER_NAME:Ljava/lang/String; = "observer_name"

###### Class com.engagelab.privates.common.constants.MTCommonConstants.RemoteWhat (com.engagelab.privates.common.constants.MTCommonConstants$RemoteWhat)
.class public interface abstract Lcom/engagelab/privates/common/constants/MTCommonConstants$RemoteWhat;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/constants/MTCommonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteWhat"
.end annotation


# static fields
.field public static final ON_LOG_CACHE_REPORT:I = 0x7c7

.field public static final ON_NETWORK_CONNECTED:I = 0x7cd

.field public static final ON_NETWORK_DISCONNECTED:I = 0x7cc

.field public static final ON_SERVICE_CONNECTED:I = 0x7cf

.field public static final ON_SERVICE_DISCONNECTED:I = 0x7ce

.field public static final ON_UPDATE_LOG_CACHE_CONFIG:I = 0x7c8

.field public static final START_CONNECT:I = 0x7c9

.field public static final TO_BACKGROUND:I = 0x7ca

.field public static final TO_FOREGROUND:I = 0x7cb
