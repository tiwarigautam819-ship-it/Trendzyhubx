###### Class com.engagelab.privates.push.api.CustomMessage (com.engagelab.privates.push.api.CustomMessage)
.class public Lcom/engagelab/privates/push/api/CustomMessage;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/engagelab/privates/push/api/CustomMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private extras:Landroid/os/Bundle;

.field private messageId:Ljava/lang/String;

.field private platform:B

.field private platformMessageId:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/engagelab/privates/push/api/CustomMessage$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/engagelab/privates/push/api/CustomMessage$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/push/api/CustomMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->messageId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput-byte v1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->platform:B

    .line 4
    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->platformMessageId:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->title:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->content:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->contentType:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->messageId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 11
    iput-byte v1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->platform:B

    .line 12
    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->platformMessageId:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->title:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->content:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->contentType:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->extras:Landroid/os/Bundle;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->messageId:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->platform:B

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->platformMessageId:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->title:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->content:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->contentType:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->extras:Landroid/os/Bundle;

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

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->messageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlatform()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->platform:B

    .line 2
    .line 3
    return v0
.end method

.method public getPlatformMessageId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->platformMessageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/CustomMessage;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setContent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/CustomMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/engagelab/privates/push/api/CustomMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/engagelab/privates/push/api/CustomMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/CustomMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->messageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlatform(B)Lcom/engagelab/privates/push/api/CustomMessage;
    .registers 2

    .line 1
    iput-byte p1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->platform:B

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlatformMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/CustomMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->platformMessageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/engagelab/privates/push/api/CustomMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

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
    iget-object v1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->messageId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",\n  platform="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-byte v1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->platform:B

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",\n  platformMessageId="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->platformMessageId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",\n  title="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->title:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ",\n  content="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->content:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ",\n  contentType="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->contentType:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ",\n  extras="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/engagelab/privates/push/api/CustomMessage;->extras:Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->toLogString(Landroid/os/Bundle;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, "\n}"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/engagelab/privates/push/api/CustomMessage;->messageId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-byte p2, p0, Lcom/engagelab/privates/push/api/CustomMessage;->platform:B

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/engagelab/privates/push/api/CustomMessage;->platformMessageId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/engagelab/privates/push/api/CustomMessage;->title:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/engagelab/privates/push/api/CustomMessage;->content:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/engagelab/privates/push/api/CustomMessage;->contentType:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/engagelab/privates/push/api/CustomMessage;->extras:Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

###### Class com.engagelab.privates.push.api.CustomMessage.a (com.engagelab.privates.push.api.CustomMessage$a)
.class public final Lcom/engagelab/privates/push/api/CustomMessage$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/api/CustomMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/engagelab/privates/push/api/CustomMessage;",
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
.method public a(Landroid/os/Parcel;)Lcom/engagelab/privates/push/api/CustomMessage;
    .registers 3

    .line 1
    new-instance v0, Lcom/engagelab/privates/push/api/CustomMessage;

    invoke-direct {v0, p1}, Lcom/engagelab/privates/push/api/CustomMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/engagelab/privates/push/api/CustomMessage;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/engagelab/privates/push/api/CustomMessage;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/push/api/CustomMessage$a;->a(Landroid/os/Parcel;)Lcom/engagelab/privates/push/api/CustomMessage;

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
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/push/api/CustomMessage$a;->a(I)[Lcom/engagelab/privates/push/api/CustomMessage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
