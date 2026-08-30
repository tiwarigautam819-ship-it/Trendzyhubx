###### Class com.engagelab.privates.core.constants.MTCoreConstants (com.engagelab.privates.core.constants.MTCoreConstants)
.class public interface abstract Lcom/engagelab/privates/core/constants/MTCoreConstants;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;,
        Lcom/engagelab/privates/core/constants/MTCoreConstants$Protocol;,
        Lcom/engagelab/privates/core/constants/MTCoreConstants$Heartbeat;,
        Lcom/engagelab/privates/core/constants/MTCoreConstants$Login;,
        Lcom/engagelab/privates/core/constants/MTCoreConstants$Register;,
        Lcom/engagelab/privates/core/constants/MTCoreConstants$Config;,
        Lcom/engagelab/privates/core/constants/MTCoreConstants$RemoteWhat;,
        Lcom/engagelab/privates/core/constants/MTCoreConstants$MainWhat;
    }
.end annotation

###### Class com.engagelab.privates.core.constants.MTCoreConstants.Config (com.engagelab.privates.core.constants.MTCoreConstants$Config)
.class public interface abstract Lcom/engagelab/privates/core/constants/MTCoreConstants$Config;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/core/constants/MTCoreConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Config"
.end annotation


# static fields
.field public static final APP_CHANNEL:Ljava/lang/String; = "config_app_channel"

.field public static final APP_KEY:Ljava/lang/String; = "config_app_key"

.field public static final APP_SITE_NAME:Ljava/lang/String; = "config_app_site_name"

.field public static final DEBUG_MODE:Ljava/lang/String; = "config_debug_mode"

.field public static final DEVICE_MIGRATION:Ljava/lang/String; = "config_device_migration"

.field public static final ENABLE_UDP:Ljava/lang/String; = "config_enable_udp"

.field public static final IS_SSL:Ljava/lang/String; = "config_is_ssl"

.field public static final LOG_COLLECTION_CAPACITY:Ljava/lang/String; = "config_log_collection_capacity"

.field public static final LOG_COLLECTION_ON:Ljava/lang/String; = "config_log_collection_on"

.field public static final SERVICE_NODE:Ljava/lang/String; = "config_service_node"

###### Class com.engagelab.privates.core.constants.MTCoreConstants.Heartbeat (com.engagelab.privates.core.constants.MTCoreConstants$Heartbeat)
.class public interface abstract Lcom/engagelab/privates/core/constants/MTCoreConstants$Heartbeat;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/core/constants/MTCoreConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Heartbeat"
.end annotation


# static fields
.field public static final DEFAULT_VALUE_HEARTBEAT_INTERVAL:J = 0x46cd0L

###### Class com.engagelab.privates.core.constants.MTCoreConstants.Login (com.engagelab.privates.core.constants.MTCoreConstants$Login)
.class public interface abstract Lcom/engagelab/privates/core/constants/MTCoreConstants$Login;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/core/constants/MTCoreConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Login"
.end annotation


# static fields
.field public static final KEY_CODE:Ljava/lang/String; = "code"

.field public static final KEY_SEED_ID:Ljava/lang/String; = "seed_id"

.field public static final KEY_SERVER_TIME:Ljava/lang/String; = "server_time"

###### Class com.engagelab.privates.core.constants.MTCoreConstants.MainWhat (com.engagelab.privates.core.constants.MTCoreConstants$MainWhat)
.class public interface abstract Lcom/engagelab/privates/core/constants/MTCoreConstants$MainWhat;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/core/constants/MTCoreConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MainWhat"
.end annotation


# static fields
.field public static final ON_HEARTBEAT:I = 0x7d3

.field public static final ON_LOGIN_INTO:I = 0x836

.field public static final ON_REGISTER_INTO:I = 0x835

.field public static final ON_TCP_CONNECTED:I = 0x7d1

.field public static final ON_TCP_DISCONNECTED:I = 0x7d2

###### Class com.engagelab.privates.core.constants.MTCoreConstants.Protocol (com.engagelab.privates.core.constants.MTCoreConstants$Protocol)
.class public interface abstract Lcom/engagelab/privates/core/constants/MTCoreConstants$Protocol;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/core/constants/MTCoreConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Protocol"
.end annotation


# static fields
.field public static final KEY_CMD:Ljava/lang/String; = "cmd"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_PROTOCOL:Ljava/lang/String; = "protocol"

###### Class com.engagelab.privates.core.constants.MTCoreConstants.Register (com.engagelab.privates.core.constants.MTCoreConstants$Register)
.class public interface abstract Lcom/engagelab/privates/core/constants/MTCoreConstants$Register;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/core/constants/MTCoreConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Register"
.end annotation


# static fields
.field public static final KEY_CODE:Ljava/lang/String; = "code"

.field public static final KEY_PW:Ljava/lang/String; = "pwd"

.field public static final KEY_REGISTRATION_ID:Ljava/lang/String; = "registration_id"

.field public static final KEY_USER_ID:Ljava/lang/String; = "user_id"

###### Class com.engagelab.privates.core.constants.MTCoreConstants.RemoteWhat (com.engagelab.privates.core.constants.MTCoreConstants$RemoteWhat)
.class public interface abstract Lcom/engagelab/privates/core/constants/MTCoreConstants$RemoteWhat;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/core/constants/MTCoreConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteWhat"
.end annotation


# static fields
.field public static final CTRL_DATA:I = 0x8bb

.field public static final ON_HEARTBEAT:I = 0xbb5

.field public static final ON_TCP_CONNECTED:I = 0xbb7

.field public static final ON_TCP_DISCONNECTED:I = 0xbb6

.field public static final REPORT:I = 0x8b9

.field public static final RETRY_CONNECT:I = 0xbae

.field public static final SET_CONFIG:I = 0x8ba

.field public static final START_CONNECT:I = 0xbb2

.field public static final START_HEARTBEAT:I = 0xbb0

.field public static final STOP_CONNECT:I = 0xbb1

.field public static final STOP_HEARTBEAT:I = 0xbaf

.field public static final TURN_OFF_CONNECT:I = 0xbb3

.field public static final TURN_ON_CONNECT:I = 0xbb4

.field public static final UPLOAD:I = 0x8ae

###### Class com.engagelab.privates.core.constants.MTCoreConstants.ServiceNode (com.engagelab.privates.core.constants.MTCoreConstants$ServiceNode)
.class public final enum Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;
.super Ljava/lang/Enum;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/core/constants/MTCoreConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

.field public static final enum REGION_CHINA:Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

.field public static final enum REGION_OVERSEAS:Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    .line 2
    .line 3
    const-string v1, "REGION_OVERSEAS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;->REGION_OVERSEAS:Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    .line 10
    .line 11
    new-instance v1, Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    .line 12
    .line 13
    const-string v3, "REGION_CHINA"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;->REGION_CHINA:Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    .line 23
    .line 24
    aput-object v0, v3, v2

    .line 25
    .line 26
    aput-object v1, v3, v4

    .line 27
    .line 28
    sput-object v3, Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;->$VALUES:[Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    .line 29
    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;
    .registers 2

    .line 1
    const-class v0, Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;
    .registers 1

    .line 1
    sget-object v0, Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;->$VALUES:[Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    .line 8
    .line 9
    return-object v0
.end method
