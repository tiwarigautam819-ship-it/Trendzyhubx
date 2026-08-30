###### Class com.engagelab.privates.core.api.MTProtocol (com.engagelab.privates.core.api.MTProtocol)
.class public Lcom/engagelab/privates/core/api/MTProtocol;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/engagelab/privates/core/api/MTProtocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private body:[B

.field private command:I

.field private rid:J

.field private threadName:Ljava/lang/String;

.field private version:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/engagelab/privates/core/api/MTProtocol$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/engagelab/privates/core/api/MTProtocol$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/core/api/MTProtocol;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/engagelab/privates/core/api/MTProtocol;->rid:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/engagelab/privates/core/api/MTProtocol;->rid:J

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/engagelab/privates/core/api/MTProtocol;->rid:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/core/api/MTProtocol;->command:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/core/api/MTProtocol;->version:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/core/api/MTProtocol;->body:[B

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/engagelab/privates/core/api/MTProtocol;->threadName:Ljava/lang/String;

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

.method public getBody()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/core/api/MTProtocol;->body:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getCommand()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/core/api/MTProtocol;->command:I

    .line 2
    .line 3
    return v0
.end method

.method public getRid()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/engagelab/privates/core/api/MTProtocol;->rid:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getThreadName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/core/api/MTProtocol;->threadName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/core/api/MTProtocol;->version:I

    .line 2
    .line 3
    return v0
.end method

.method public setBody([B)Lcom/engagelab/privates/core/api/MTProtocol;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/core/api/MTProtocol;->body:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public setCommand(I)Lcom/engagelab/privates/core/api/MTProtocol;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/core/api/MTProtocol;->command:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setRid(J)Lcom/engagelab/privates/core/api/MTProtocol;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/engagelab/privates/core/api/MTProtocol;->rid:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setThreadName(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTProtocol;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/core/api/MTProtocol;->threadName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setVersion(I)Lcom/engagelab/privates/core/api/MTProtocol;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/core/api/MTProtocol;->version:I

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
    const-string v1, "\n{\n  rid="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/engagelab/privates/core/api/MTProtocol;->rid:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",\n  command="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/engagelab/privates/core/api/MTProtocol;->command:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",\n  version="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/engagelab/privates/core/api/MTProtocol;->version:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",\n  body="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/engagelab/privates/core/api/MTProtocol;->body:[B

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ",\n  threadName="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/engagelab/privates/core/api/MTProtocol;->threadName:Ljava/lang/String;

    .line 49
    .line 50
    const-string v2, "\n}"

    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/engagelab/privates/core/api/MTProtocol;->rid:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/engagelab/privates/core/api/MTProtocol;->command:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/engagelab/privates/core/api/MTProtocol;->version:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/engagelab/privates/core/api/MTProtocol;->body:[B

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/engagelab/privates/core/api/MTProtocol;->threadName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

###### Class com.engagelab.privates.core.api.MTProtocol.a (com.engagelab.privates.core.api.MTProtocol$a)
.class public final Lcom/engagelab/privates/core/api/MTProtocol$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/core/api/MTProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/engagelab/privates/core/api/MTProtocol;",
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
.method public a(Landroid/os/Parcel;)Lcom/engagelab/privates/core/api/MTProtocol;
    .registers 3

    .line 1
    new-instance v0, Lcom/engagelab/privates/core/api/MTProtocol;

    invoke-direct {v0, p1}, Lcom/engagelab/privates/core/api/MTProtocol;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/engagelab/privates/core/api/MTProtocol;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/engagelab/privates/core/api/MTProtocol;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/core/api/MTProtocol$a;->a(Landroid/os/Parcel;)Lcom/engagelab/privates/core/api/MTProtocol;

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
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/core/api/MTProtocol$a;->a(I)[Lcom/engagelab/privates/core/api/MTProtocol;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
