###### Class com.engagelab.privates.push.api.InAppMessage (com.engagelab.privates.push.api.InAppMessage)
.class public Lcom/engagelab/privates/push/api/InAppMessage;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appkey:Ljava/lang/String;

.field private click:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private delay:J

.field private duration:J

.field private expired:J

.field private extras:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private interval:J

.field private isNotification:Z

.field private localImageUrl:Ljava/lang/String;

.field private messageId:Ljava/lang/String;

.field private msgTime:J

.field private priority:I

.field private target:Ljava/lang/String;

.field private targetEvent:Ljava/lang/String;

.field private type:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/engagelab/privates/push/api/InAppMessage$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/engagelab/privates/push/api/InAppMessage$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/push/api/InAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->isNotification:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->isNotification:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->appkey:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->messageId:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->target:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->targetEvent:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->imageUrl:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->localImageUrl:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->click:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->extras:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->content:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->expired:J

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->delay:J

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->interval:J

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->duration:J

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->msgTime:J

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->type:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->priority:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6d

    const/4 v0, 0x1

    :cond_6d
    iput-boolean v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->isNotification:Z

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
    iget-object v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->appkey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClick()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->click:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDelay()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->delay:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getExpired()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->expired:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getExtras()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->extras:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->imageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInterval()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->interval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLocalImageUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->localImageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->messageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMsgTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->msgTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPriority()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->priority:I

    .line 2
    .line 3
    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->target:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTargetEvent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->targetEvent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public isNotification()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->isNotification:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAppkey(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->appkey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setClick(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->click:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDelay(J)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->delay:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setDuration(J)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->duration:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setExpired(J)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->expired:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setExtras(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->extras:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->imageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setInterval(J)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->interval:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsNotification(Z)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->isNotification:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setLocalImageUrl(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->localImageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->messageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMsgTime(J)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->msgTime:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setPriority(I)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->priority:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->target:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTargetEvent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->targetEvent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setType(I)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->type:I

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
    const-string v1, "InAppMessage{messageId=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->messageId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', appkey=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->appkey:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', target=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->target:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\', targetEvent=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->targetEvent:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\', imageUrl=\'"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->imageUrl:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "\', click=\'"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->click:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "\', extras=\'"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->extras:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "\', content=\'"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->content:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, "\', expired="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-wide v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->expired:J

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", delay="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-wide v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->delay:J

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", interval="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-wide v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->interval:J

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", duration="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-wide v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->duration:J

    .line 119
    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", msgTime="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-wide v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->msgTime:J

    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", type="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->type:I

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", priority="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->priority:I

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ", isNotification="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-boolean v1, p0, Lcom/engagelab/privates/push/api/InAppMessage;->isNotification:Z

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const/16 v1, 0x7d

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/engagelab/privates/push/api/InAppMessage;->appkey:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/engagelab/privates/push/api/InAppMessage;->messageId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/engagelab/privates/push/api/InAppMessage;->target:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/engagelab/privates/push/api/InAppMessage;->targetEvent:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/engagelab/privates/push/api/InAppMessage;->imageUrl:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/engagelab/privates/push/api/InAppMessage;->localImageUrl:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/engagelab/privates/push/api/InAppMessage;->click:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/engagelab/privates/push/api/InAppMessage;->extras:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/engagelab/privates/push/api/InAppMessage;->content:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-wide v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->expired:J

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    .line 50
    .line 51
    iget-wide v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->delay:J

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    .line 55
    .line 56
    iget-wide v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->interval:J

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    .line 60
    .line 61
    iget-wide v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->duration:J

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    .line 65
    .line 66
    iget-wide v0, p0, Lcom/engagelab/privates/push/api/InAppMessage;->msgTime:J

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    .line 70
    .line 71
    iget p2, p0, Lcom/engagelab/privates/push/api/InAppMessage;->type:I

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    .line 75
    .line 76
    iget p2, p0, Lcom/engagelab/privates/push/api/InAppMessage;->priority:I

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    .line 80
    .line 81
    iget-boolean p2, p0, Lcom/engagelab/privates/push/api/InAppMessage;->isNotification:Z

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

###### Class com.engagelab.privates.push.api.InAppMessage.a (com.engagelab.privates.push.api.InAppMessage$a)
.class public final Lcom/engagelab/privates/push/api/InAppMessage$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/api/InAppMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/engagelab/privates/push/api/InAppMessage;",
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
.method public a(Landroid/os/Parcel;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 3

    .line 1
    new-instance v0, Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-direct {v0, p1}, Lcom/engagelab/privates/push/api/InAppMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/engagelab/privates/push/api/InAppMessage;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/push/api/InAppMessage$a;->a(Landroid/os/Parcel;)Lcom/engagelab/privates/push/api/InAppMessage;

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
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/push/api/InAppMessage$a;->a(I)[Lcom/engagelab/privates/push/api/InAppMessage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
