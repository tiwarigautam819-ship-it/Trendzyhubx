###### Class com.engagelab.privates.push.api.PlatformTokenMessage (com.engagelab.privates.push.api.PlatformTokenMessage)
.class public Lcom/engagelab/privates/push/api/PlatformTokenMessage;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/engagelab/privates/push/api/PlatformTokenMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isUserSettings:I

.field private platform:B

.field private region:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/engagelab/privates/push/api/PlatformTokenMessage$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/engagelab/privates/push/api/PlatformTokenMessage$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->isUserSettings:I

    const-string v0, "NULL"

    .line 3
    iput-object v0, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->region:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->isUserSettings:I

    const-string v0, "NULL"

    .line 6
    iput-object v0, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->region:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->platform:B

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->token:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->region:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->isUserSettings:I

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

.method public getIsUserSettings()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->isUserSettings:I

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public getPlatform()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->platform:B

    .line 2
    .line 3
    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->region:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setIsUserSettings(Z)Lcom/engagelab/privates/push/api/PlatformTokenMessage;
    .registers 2

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->isUserSettings:I

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->isUserSettings:I

    .line 9
    .line 10
    return-object p0
.end method

.method public setPlatform(B)Lcom/engagelab/privates/push/api/PlatformTokenMessage;
    .registers 2

    .line 1
    iput-byte p1, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->platform:B

    .line 2
    .line 3
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/engagelab/privates/push/api/PlatformTokenMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->region:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/engagelab/privates/push/api/PlatformTokenMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->token:Ljava/lang/String;

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
    const-string v1, "\n{\n  platform="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-byte v1, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->platform:B

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",\n  token="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->token:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\n  region="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->region:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\n  isUserSettings="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getIsUserSettings()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, "\n}"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-byte p2, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->platform:B

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->token:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->region:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->isUserSettings:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

###### Class com.engagelab.privates.push.api.PlatformTokenMessage.a (com.engagelab.privates.push.api.PlatformTokenMessage$a)
.class public final Lcom/engagelab/privates/push/api/PlatformTokenMessage$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/api/PlatformTokenMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/engagelab/privates/push/api/PlatformTokenMessage;",
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
.method public a(Landroid/os/Parcel;)Lcom/engagelab/privates/push/api/PlatformTokenMessage;
    .registers 3

    .line 1
    new-instance v0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    invoke-direct {v0, p1}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/engagelab/privates/push/api/PlatformTokenMessage;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/push/api/PlatformTokenMessage$a;->a(Landroid/os/Parcel;)Lcom/engagelab/privates/push/api/PlatformTokenMessage;

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
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/push/api/PlatformTokenMessage$a;->a(I)[Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
