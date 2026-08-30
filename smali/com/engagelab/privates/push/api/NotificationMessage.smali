###### Class com.engagelab.privates.push.api.NotificationMessage (com.engagelab.privates.push.api.NotificationMessage)
.class public Lcom/engagelab/privates/push/api/NotificationMessage;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/engagelab/privates/push/api/NotificationMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATION_STYLE_BIG_PICTURE:I = 0x3

.field public static final NOTIFICATION_STYLE_BIG_TEXT:I = 0x1

.field public static final NOTIFICATION_STYLE_INBOX:I = 0x2


# instance fields
.field private appkey:Ljava/lang/String;

.field private badge:I

.field private bigPicture:Ljava/lang/String;

.field private bigText:Ljava/lang/String;

.field private builderId:I

.field private category:Ljava/lang/String;

.field private channelId:Ljava/lang/String;

.field private color:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private defaults:I

.field private displayForeground:Ljava/lang/String;

.field private extras:Landroid/os/Bundle;

.field private groupId:Ljava/lang/String;

.field private groupSummary:Z

.field private importance:I

.field private inAppEndTime:J

.field private inbox:[Ljava/lang/String;

.field private intentSsl:Ljava/lang/String;

.field private intentUri:Ljava/lang/String;

.field private largeIcon:Ljava/lang/String;

.field private messageId:Ljava/lang/String;

.field private messageType:I

.field private notificationId:I

.field private overrideMessageId:Ljava/lang/String;

.field private platform:B

.field private platformMessageId:Ljava/lang/String;

.field private priority:I

.field private smallIcon:Ljava/lang/String;

.field private sound:Ljava/lang/String;

.field private style:I

.field private targetEvent:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/engagelab/privates/push/api/NotificationMessage$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/engagelab/privates/push/api/NotificationMessage$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/push/api/NotificationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->messageId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->overrideMessageId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-byte v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->platform:B

    .line 5
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->platformMessageId:Ljava/lang/String;

    .line 6
    iput v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->notificationId:I

    .line 7
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->smallIcon:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->color:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->largeIcon:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->title:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->content:Ljava/lang/String;

    const/4 v2, 0x0

    .line 12
    iput-object v2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->extras:Landroid/os/Bundle;

    .line 13
    iput v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->style:I

    .line 14
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->bigText:Ljava/lang/String;

    .line 15
    iput-object v2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->inbox:[Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->bigPicture:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->priority:I

    const/4 v2, -0x1

    .line 18
    iput v2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->importance:I

    .line 19
    iput v2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->defaults:I

    .line 20
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->sound:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->channelId:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->groupId:Ljava/lang/String;

    .line 23
    iput-boolean v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->groupSummary:Z

    .line 24
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->intentUri:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->intentSsl:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->badge:I

    .line 27
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->displayForeground:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->targetEvent:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->appkey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->messageId:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->overrideMessageId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 33
    iput-byte v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->platform:B

    .line 34
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->platformMessageId:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->notificationId:I

    .line 36
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->smallIcon:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->color:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->largeIcon:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->title:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->content:Ljava/lang/String;

    const/4 v2, 0x0

    .line 41
    iput-object v2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->extras:Landroid/os/Bundle;

    .line 42
    iput v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->style:I

    .line 43
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->bigText:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->inbox:[Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->bigPicture:Ljava/lang/String;

    .line 46
    iput v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->priority:I

    const/4 v2, -0x1

    .line 47
    iput v2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->importance:I

    .line 48
    iput v2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->defaults:I

    .line 49
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->sound:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->channelId:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->groupId:Ljava/lang/String;

    .line 52
    iput-boolean v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->groupSummary:Z

    .line 53
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->intentUri:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->intentSsl:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->badge:I

    .line 56
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->displayForeground:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->targetEvent:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->appkey:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->messageId:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->overrideMessageId:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->displayForeground:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->platform:B

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->platformMessageId:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->notificationId:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->smallIcon:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->color:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->largeIcon:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->title:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->content:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->extras:Landroid/os/Bundle;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->builderId:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->style:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->bigText:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->inbox:[Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->bigPicture:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->priority:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->importance:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->defaults:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->category:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->sound:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->channelId:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d2

    move v1, v2

    :cond_d2
    iput-boolean v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->groupSummary:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->groupId:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->intentUri:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->badge:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->messageType:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->inAppEndTime:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->targetEvent:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->appkey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getAppkey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->appkey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBadge()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->badge:I

    .line 2
    .line 3
    return v0
.end method

.method public getBigPicture()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->bigPicture:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBigText()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->bigText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBuilderId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->builderId:I

    .line 2
    .line 3
    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->category:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->channelId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaults()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->defaults:I

    .line 2
    .line 3
    return v0
.end method

.method public getDisplayForeground()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->displayForeground:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->groupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImportance()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->importance:I

    .line 2
    .line 3
    return v0
.end method

.method public getInAppEndTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->inAppEndTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getInbox()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->inbox:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntentSsl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->intentSsl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntentUri()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->intentUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLargeIcon()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->largeIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->messageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessageType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->messageType:I

    .line 2
    .line 3
    return v0
.end method

.method public getNotificationId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->notificationId:I

    .line 2
    .line 3
    return v0
.end method

.method public getOverrideMessageId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->overrideMessageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlatform()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->platform:B

    .line 2
    .line 3
    return v0
.end method

.method public getPlatformMessageId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->platformMessageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPriority()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->priority:I

    .line 2
    .line 3
    return v0
.end method

.method public getSmallIcon()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->smallIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSound()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->sound:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStyle()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->style:I

    .line 2
    .line 3
    return v0
.end method

.method public getTargetEvent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->targetEvent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isGroupSummary()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->groupSummary:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAppkey(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->appkey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBadge(I)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->badge:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setBigPicture(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->bigPicture:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBigText(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->bigText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBuilderId(I)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->builderId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->category:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->channelId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setColor(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDefaults(I)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->defaults:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setDisplayForeground(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->displayForeground:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public setGroupId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->groupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setGroupSummary(Z)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->groupSummary:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setImportance(I)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->importance:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setInAppEndTime(J)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->inAppEndTime:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setInbox([Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->inbox:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIntentSsl(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->intentSsl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIntentUri(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->intentUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLargeIcon(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->largeIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->messageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMessageType(I)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->messageType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setNotificationId(I)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->notificationId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setOverrideMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->overrideMessageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlatform(B)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-byte p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->platform:B

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlatformMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->platformMessageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPriority(I)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->priority:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setSmallIcon(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->smallIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSound(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->sound:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setStyle(I)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->style:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setTargetEvent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->targetEvent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "\n{\n  messageId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->messageId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",\n  overrideMessageId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->overrideMessageId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",\n  platform="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-byte v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->platform:B

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",\n  platformMessageId=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->platformMessageId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ",\n  notificationId="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->notificationId:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ",\n  smallIcon="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->smallIcon:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ",\n  largeIcon="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->largeIcon:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ",\n  title="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->title:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ",\n  content="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->content:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ",\n  extras="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->extras:Landroid/os/Bundle;

    .line 99
    .line 100
    invoke-static {v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->toLogString(Landroid/os/Bundle;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, ",\n  layoutId="

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->builderId:I

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, ",\n  style="

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->style:I

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, ",\n  bigText="

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->bigText:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v1, ",\n  inbox="

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->inbox:[Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, ",\n  bigPicture="

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->bigPicture:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v1, ",\n  priority="

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->priority:I

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v1, ",\n  importance="

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->importance:I

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v1, ",\n  defaults="

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->defaults:I

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, ",\n  category="

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->category:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v1, ",\n  sound="

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->sound:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v1, ",\n  channelId="

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->channelId:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v1, ",\n  groupId="

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->groupId:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v1, ",\n  groupSummary="

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget-boolean v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->groupSummary:Z

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v1, ",\n  intentUri="

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->intentUri:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v1, ",\n  badge="

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    iget v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->badge:I

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v1, ",\n  displayForeground="

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->displayForeground:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v1, ",\n  messageType="

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    iget v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->messageType:I

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v1, ",\n  inAppEndTime="

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    iget-wide v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->inAppEndTime:J

    .line 287
    .line 288
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v1, ",\n  targetEvent="

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->targetEvent:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v1, ",\n  appkey="

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    iget-object v1, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->appkey:Ljava/lang/String;

    .line 307
    .line 308
    const-string v2, ",\n}"

    .line 309
    .line 310
    invoke-static {v0, v1, v2}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->messageId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->overrideMessageId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->displayForeground:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-byte p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->platform:B

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->platformMessageId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->notificationId:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->smallIcon:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->color:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->largeIcon:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->title:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->content:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->extras:Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    iget p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->builderId:I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    iget p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->style:I

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->bigText:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->inbox:[Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->bigPicture:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->priority:I

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    .line 90
    .line 91
    iget p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->importance:I

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    .line 95
    .line 96
    iget p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->defaults:I

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->category:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->sound:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->channelId:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-boolean p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->groupSummary:Z

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    .line 120
    .line 121
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->groupId:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->intentUri:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->badge:I

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    .line 135
    .line 136
    iget p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->messageType:I

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    .line 140
    .line 141
    iget-wide v0, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->inAppEndTime:J

    .line 142
    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->targetEvent:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object p2, p0, Lcom/engagelab/privates/push/api/NotificationMessage;->appkey:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

###### Class com.engagelab.privates.push.api.NotificationMessage.a (com.engagelab.privates.push.api.NotificationMessage$a)
.class public final Lcom/engagelab/privates/push/api/NotificationMessage$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/api/NotificationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/engagelab/privates/push/api/NotificationMessage;",
        ">;"
    }
.end annotation


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


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 3

    .line 1
    new-instance v0, Lcom/engagelab/privates/push/api/NotificationMessage;

    invoke-direct {v0, p1}, Lcom/engagelab/privates/push/api/NotificationMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/engagelab/privates/push/api/NotificationMessage;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/push/api/NotificationMessage$a;->a(Landroid/os/Parcel;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/push/api/NotificationMessage$a;->a(I)[Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
