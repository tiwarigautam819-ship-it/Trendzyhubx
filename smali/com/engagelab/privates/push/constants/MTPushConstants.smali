###### Class com.engagelab.privates.push.constants.MTPushConstants (com.engagelab.privates.push.constants.MTPushConstants)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/push/constants/MTPushConstants$SetData;,
        Lcom/engagelab/privates/push/constants/MTPushConstants$OTHConfig;,
        Lcom/engagelab/privates/push/constants/MTPushConstants$ThirdConfig;,
        Lcom/engagelab/privates/push/constants/MTPushConstants$Analysis;,
        Lcom/engagelab/privates/push/constants/MTPushConstants$Geofence;,
        Lcom/engagelab/privates/push/constants/MTPushConstants$PlatformNode;,
        Lcom/engagelab/privates/push/constants/MTPushConstants$Manufacturer;,
        Lcom/engagelab/privates/push/constants/MTPushConstants$NotificationState;,
        Lcom/engagelab/privates/push/constants/MTPushConstants$NotificationLayout;,
        Lcom/engagelab/privates/push/constants/MTPushConstants$NotificationBadge;,
        Lcom/engagelab/privates/push/constants/MTPushConstants$NotificationCount;,
        Lcom/engagelab/privates/push/constants/MTPushConstants$NotificationTime;,
        Lcom/engagelab/privates/push/constants/MTPushConstants$Notification;,
        Lcom/engagelab/privates/push/constants/MTPushConstants$Operation;,
        Lcom/engagelab/privates/push/constants/MTPushConstants$Message;,
        Lcom/engagelab/privates/push/constants/MTPushConstants$RemoteWhat;,
        Lcom/engagelab/privates/push/constants/MTPushConstants$MainWhat;
    }
.end annotation

###### Class com.engagelab.privates.push.constants.MTPushConstants.Analysis (com.engagelab.privates.push.constants.MTPushConstants$Analysis)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$Analysis;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Analysis"
.end annotation


# static fields
.field public static final KEY_JSON:Ljava/lang/String; = "json"

###### Class com.engagelab.privates.push.constants.MTPushConstants.Geofence (com.engagelab.privates.push.constants.MTPushConstants$Geofence)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$Geofence;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Geofence"
.end annotation


# static fields
.field public static final KEY_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_INTERVAL:Ljava/lang/String; = "interval"

.field public static final KEY_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final KEY_LONGITUDE:Ljava/lang/String; = "longitude"

###### Class com.engagelab.privates.push.constants.MTPushConstants.MainWhat (com.engagelab.privates.push.constants.MTPushConstants$MainWhat)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$MainWhat;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MainWhat"
.end annotation


# static fields
.field public static final ALIAS_CLEAR:I = 0xbcb

.field public static final ALIAS_GET:I = 0xbca

.field public static final ALIAS_SET:I = 0xbc9

.field public static final CLEAR_PLATFORM_NOTIFICATION:I = 0xc20

.field public static final COLLECT_START_CRASH:I = 0xce5

.field public static final COLLECT_STOP_CRASH:I = 0xce6

.field public static final INIT_PLATFORM:I = 0xc1d

.field public static final ON_CUSTOM_ARRIVED:I = 0xbb9

.field public static final ON_MOBILE_NUMBER:I = 0xbcf

.field public static final ON_NOTIFICATION_ARRIVED:I = 0xbba

.field public static final ON_NOTIFICATION_CLICKED:I = 0xbbb

.field public static final ON_NOTIFICATION_DELETED:I = 0xbbc

.field public static final ON_NOTIFICATION_OPENED:I = 0xbbd

.field public static final ON_NOTIFICATION_STATE:I = 0xbbe

.field public static final ON_NOTIFICATION_UN_SHOW:I = 0xce7

.field public static final ON_PLATFORM_NODE:I = 0xbce

.field public static final ON_PLATFORM_TOKEN:I = 0xbcd

.field public static final ON_PLATFORM_TOKEN_TO_USER:I = 0xbd0

.field public static final OTH_MA_NOTIFICAITON_EVENT_MATCH:I = 0xce8

.field public static final OTH_SOUND_ENABLE_SET:I = 0xd49

.field public static final OTH_SOUND_INIT:I = 0xd48

.field public static final OTH_SOUND_MESSAGE:I = 0xd4a

.field public static final REPORT_MESSAGE_STATE:I = 0xc81

.field public static final REPORT_PLATFORM_MESSAGE_STATE:I = 0xc82

.field public static final TAG_ADD:I = 0xbc3

.field public static final TAG_DELETE:I = 0xbc4

.field public static final TAG_DELETE_ALL:I = 0xbc7

.field public static final TAG_QUERY:I = 0xbc6

.field public static final TAG_QUERY_ALL:I = 0xbc8

.field public static final TAG_UPDATE:I = 0xbc5

.field public static final TURN_OFF_PLATFORM_PUSH:I = 0xc1f

.field public static final TURN_ON_PLATFORM_PUSH:I = 0xc1e

###### Class com.engagelab.privates.push.constants.MTPushConstants.Manufacturer (com.engagelab.privates.push.constants.MTPushConstants$Manufacturer)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$Manufacturer;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Manufacturer"
.end annotation


# static fields
.field public static final BLACKSHARK:Ljava/lang/String; = "blackshark"

.field public static final HONOR:Ljava/lang/String; = "honor"

.field public static final HUAWEI:Ljava/lang/String; = "huawei"

.field public static final MEIZU:Ljava/lang/String; = "meizu"

.field public static final ONEPLUS:Ljava/lang/String; = "oneplus"

.field public static final OPPO:Ljava/lang/String; = "oppo"

.field public static final REALME:Ljava/lang/String; = "realme"

.field public static final VIVO:Ljava/lang/String; = "vivo"

.field public static final XIAOMI:Ljava/lang/String; = "xiaomi"

###### Class com.engagelab.privates.push.constants.MTPushConstants.Message (com.engagelab.privates.push.constants.MTPushConstants$Message)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$Message;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Message"
.end annotation


# static fields
.field public static final CODE_CLICK_EVENT_MATCH:I = 0x44c

.field public static final CODE_MESSAGE_ARRIVED:I = 0x454

.field public static final CODE_MESSAGE_CLICKED:I = 0x3e8

.field public static final CODE_MESSAGE_DELETED:I = 0x40e

.field public static final CODE_MESSAGE_DISPLAY:I = 0x3fa

.field public static final CODE_MESSAGE_OPENED:I = 0x404

.field public static final CODE_MESSAGE_REVOKE:I = 0x42c

.field public static final CODE_REVOKE_PLATFORM_MESSAGE:I = 0x42d

.field public static final KEY_APPKEY:Ljava/lang/String; = "appkey"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final KEY_MESSAGE_JSON:Ljava/lang/String; = "message_json"

.field public static final KEY_MESSAGE_LIMIT:Ljava/lang/String; = "message_limit"

.field public static final KEY_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field public static final KEY_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field public static final TYPE_MESSAGE_STATE:Ljava/lang/String; = "msg_status"

.field public static final TYPE_PLATFORM_MESSAGE_STATE:Ljava/lang/String; = "third_msg_status"

###### Class com.engagelab.privates.push.constants.MTPushConstants.Notification (com.engagelab.privates.push.constants.MTPushConstants$Notification)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$Notification;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Notification"
.end annotation


# static fields
.field public static final KEY_NOTIFY_ID:Ljava/lang/String; = "notify_id"

###### Class com.engagelab.privates.push.constants.MTPushConstants.NotificationBadge (com.engagelab.privates.push.constants.MTPushConstants$NotificationBadge)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$NotificationBadge;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationBadge"
.end annotation


# static fields
.field public static final KEY_BADGE:Ljava/lang/String; = "notification_badge"

###### Class com.engagelab.privates.push.constants.MTPushConstants.NotificationCount (com.engagelab.privates.push.constants.MTPushConstants$NotificationCount)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$NotificationCount;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationCount"
.end annotation


# static fields
.field public static final DEFAULT_COUNT:I = 0x5

.field public static final KEY_COUNT:Ljava/lang/String; = "notification_count"

###### Class com.engagelab.privates.push.constants.MTPushConstants.NotificationLayout (com.engagelab.privates.push.constants.MTPushConstants$NotificationLayout)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$NotificationLayout;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationLayout"
.end annotation


# static fields
.field public static final KEY_CONTENT_VIEW_ID:Ljava/lang/String; = "content_view_id"

.field public static final KEY_ICON_RESOURCE_ID:Ljava/lang/String; = "icon_resource_id"

.field public static final KEY_ICON_VIEW_ID:Ljava/lang/String; = "icon_view_id"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_LAYOUT_ID:Ljava/lang/String; = "layout_id"

.field public static final KEY_NOTIFICATION_LAYOUT:Ljava/lang/String; = "notification_layout"

.field public static final KEY_TIME_VIEW_ID:Ljava/lang/String; = "time_view_id"

.field public static final KEY_TITLE_VIEW_ID:Ljava/lang/String; = "title_view_id"

###### Class com.engagelab.privates.push.constants.MTPushConstants.NotificationState (com.engagelab.privates.push.constants.MTPushConstants$NotificationState)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$NotificationState;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationState"
.end annotation


# static fields
.field public static final KEY_STATE:Ljava/lang/String; = "notification_state"

.field public static final SCENE_ON_CONNECT:I = 0x2

.field public static final SCENE_ON_FOREGROUND:I = 0x1

.field public static final SCENE_ON_HEARTBEAT:I = 0x0

.field public static final SCENE_ON_NOTIFICATION:I = 0x3

###### Class com.engagelab.privates.push.constants.MTPushConstants.NotificationTime (com.engagelab.privates.push.constants.MTPushConstants$NotificationTime)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$NotificationTime;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationTime"
.end annotation


# static fields
.field public static final KEY_BEGIN_HOUR:Ljava/lang/String; = "begin_hour"

.field public static final KEY_BEGIN_MINUTE:Ljava/lang/String; = "begin_minute"

.field public static final KEY_DAYS:Ljava/lang/String; = "day"

.field public static final KEY_END_HOUR:Ljava/lang/String; = "end_hour"

.field public static final KEY_END_MINUTE:Ljava/lang/String; = "end_minute"

###### Class com.engagelab.privates.push.constants.MTPushConstants.OTHConfig (com.engagelab.privates.push.constants.MTPushConstants$OTHConfig)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$OTHConfig;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OTHConfig"
.end annotation


# static fields
.field public static final OTH_SOUND_ENABLE_SET:Ljava/lang/String; = "oth_sound_enable_set"

###### Class com.engagelab.privates.push.constants.MTPushConstants.Operation (com.engagelab.privates.push.constants.MTPushConstants$Operation)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$Operation;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Operation"
.end annotation


# static fields
.field public static final KEY_ALIAS:Ljava/lang/String; = "alias"

.field public static final KEY_MOBILE_NUMBER:Ljava/lang/String; = "mobileNumber"

.field public static final KEY_SEQUENCE:Ljava/lang/String; = "sequence"

.field public static final KEY_TAG:Ljava/lang/String; = "tag"

###### Class com.engagelab.privates.push.constants.MTPushConstants.PlatformNode (com.engagelab.privates.push.constants.MTPushConstants$PlatformNode)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$PlatformNode;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlatformNode"
.end annotation


# static fields
.field public static final CODE_All_TOKEN_FAILED:I = 0xbbd

.field public static final CODE_CALLBACK_TOKEN_FAILED:I = 0xbbc

.field public static final CODE_GET_TOKEN_FAILED:I = 0xbbb

.field public static final CODE_GET_TOKEN_SUCCESS:I = 0xbc0

.field public static final CODE_NOT_INTEGRATED_AAR:I = 0xbb9

.field public static final CODE_NOT_SUPPORT_PLATFORM:I = 0xbba

.field public static final CODE_TURN_OFF_PUSH:I = 0xc1e

.field public static final CODE_TURN_ON_PUSH:I = 0xc1d

.field public static final CODE_UPLOAD_TOKEN_FAILED:I = 0xbbe

.field public static final CODE_UPLOAD_TOKEN_SUCCESS:I = 0xbbf

.field public static final FLAG_CALLBACK_TOKEN:I = 0x2

.field public static final FLAG_GET_TOKEN:I = 0x1

.field public static final FLAG_OTHER:I = 0x0

.field public static final KEY_CODE:Ljava/lang/String; = "code"

.field public static final KEY_EVENT_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_EVENT_TYPE_TOKEN_FAILED:I = 0xf3c

.field public static final KEY_EVENT_TYPE_TOKEN_SUCCESS:I = 0xf3d

.field public static final KEY_EVENT_TYPE_TURN_OFF_PUSH:I = 0xf3f

.field public static final KEY_EVENT_TYPE_TURN_ON_PUSH:I = 0xf3e

.field public static final KEY_FROM:Ljava/lang/String; = "from"

.field public static final KEY_M_CODE:Ljava/lang/String; = "mCode"

.field public static final KEY_PLATFORM:Ljava/lang/String; = "platform"

###### Class com.engagelab.privates.push.constants.MTPushConstants.RemoteWhat (com.engagelab.privates.push.constants.MTPushConstants$RemoteWhat)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$RemoteWhat;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteWhat"
.end annotation


# static fields
.field public static final ADD_GEOFENCE:I = 0xf29

.field public static final ALIAS_CLEAR:I = 0xf8d

.field public static final ALIAS_GET:I = 0xf8e

.field public static final ALIAS_SET:I = 0xf8f

.field public static final CLEAR_NOTIFICATION:I = 0xf36

.field public static final DELETE_GEOFENCE:I = 0xf28

.field public static final INAPP_MESSAGE:I = 0xed3

.field public static final ON_CUSTOM_ARRIVED:I = 0xf9f

.field public static final ON_CUSTOM_MESSAGE:I = 0xf39

.field public static final ON_GEOFENCE:I = 0xf27

.field public static final ON_GEOFENCE_LOCATION:I = 0xf26

.field public static final ON_GEOFENCE_LOCATION_TIMEOUT:I = 0xf25

.field public static final ON_MOBILE_NUMBER:I = 0xf8a

.field public static final ON_NOTIFICATION_ARRIVED:I = 0xf9e

.field public static final ON_NOTIFICATION_CLICKED:I = 0xf9d

.field public static final ON_NOTIFICATION_DELETED:I = 0xf9c

.field public static final ON_NOTIFICATION_DISPLAY:I = 0xdac

.field public static final ON_NOTIFICATION_MESSAGE:I = 0xf38

.field public static final ON_NOTIFICATION_OPENED:I = 0xf9b

.field public static final ON_NOTIFICATION_STATE:I = 0xf9a

.field public static final ON_PLATFORM_CLEAR_TOKEN:I = 0xf89

.field public static final ON_PLATFORM_TOKEN:I = 0xf8b

.field public static final REPORT_NOTIFICATION_STATE:I = 0xed7

.field public static final RESET_NOTIFICATION_BADGE:I = 0xf2c

.field public static final RESET_NOTIFICATION_COUNT:I = 0xf2e

.field public static final RESET_NOTIFICATION_LAYOUT:I = 0xf30

.field public static final RESET_NOTIFICATION_SHOW_TIME:I = 0xf34

.field public static final RESET_NOTIFICATION_SILENCE_TIME:I = 0xf32

.field public static final SET_GEOFENCE_COUNT:I = 0xf2b

.field public static final SET_GEOFENCE_INTERVAL:I = 0xf2a

.field public static final SET_NOTIFICATION_BADGE:I = 0xf2d

.field public static final SET_NOTIFICATION_COUNT:I = 0xf2f

.field public static final SET_NOTIFICATION_LAYOUT:I = 0xf31

.field public static final SET_NOTIFICATION_SHOW_TIME:I = 0xf35

.field public static final SET_NOTIFICATION_SILENCE_TIME:I = 0xf33

.field public static final SET_USER_LANGUAGE:I = 0xed4

.field public static final SHOW_NOTIFICATION:I = 0xf37

.field public static final TAG_ADD:I = 0xf95

.field public static final TAG_DELETE:I = 0xf94

.field public static final TAG_DELETE_ALL:I = 0xf91

.field public static final TAG_QUERY:I = 0xf92

.field public static final TAG_QUERY_ALL:I = 0xf90

.field public static final TAG_UPDATE:I = 0xf93

.field public static final TURN_OFF_GEOFENCESWITCH:I = 0xed5

.field public static final TURN_OFF_PUSH:I = 0xf3a

.field public static final TURN_ON_GEOFENCESWITCH:I = 0xed6

.field public static final TURN_ON_PUSH:I = 0xf3b

###### Class com.engagelab.privates.push.constants.MTPushConstants.SetData (com.engagelab.privates.push.constants.MTPushConstants$SetData)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$SetData;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SetData"
.end annotation


# static fields
.field public static final SET_USER_LANGUAGE:Ljava/lang/String; = "set_user_language"

###### Class com.engagelab.privates.push.constants.MTPushConstants.ThirdConfig (com.engagelab.privates.push.constants.MTPushConstants$ThirdConfig)
.class public interface abstract Lcom/engagelab/privates/push/constants/MTPushConstants$ThirdConfig;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/constants/MTPushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThirdConfig"
.end annotation


# static fields
.field public static final MEIZU_APPID:Ljava/lang/String; = "MEIZU_APPID"

.field public static final MEIZU_APPKEY:Ljava/lang/String; = "MEIZU_APPKEY"

.field public static final OPPO_APPID:Ljava/lang/String; = "OPPO_APPID"

.field public static final OPPO_APPKEY:Ljava/lang/String; = "OPPO_APPKEY"

.field public static final OPPO_APPSECRET:Ljava/lang/String; = "OPPO_APPSECRET"

.field public static final XIAOMI_APPID:Ljava/lang/String; = "XIAOMI_APPID"

.field public static final XIAOMI_APPKEY:Ljava/lang/String; = "XIAOMI_APPKEY"

.field public static final XIAOMI_GLOBAL_APPID:Ljava/lang/String; = "XIAOMI_GLOBAL_APPID"

.field public static final XIAOMI_GLOBAL_APPKEY:Ljava/lang/String; = "XIAOMI_GLOBAL_APPKEY"
