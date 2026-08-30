###### Class com.engagelab.privates.push.api.TagMessage (com.engagelab.privates.push.api.TagMessage)
.class public Lcom/engagelab/privates/push/api/TagMessage;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/engagelab/privates/push/api/TagMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:I

.field private queryTag:Ljava/lang/String;

.field private queryTagValid:Z

.field private sequence:I

.field private tags:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/engagelab/privates/push/api/TagMessage$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/engagelab/privates/push/api/TagMessage$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/push/api/TagMessage;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Lcom/engagelab/privates/push/api/TagMessage;->sequence:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/engagelab/privates/push/api/TagMessage;->code:I

    .line 4
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/engagelab/privates/push/api/TagMessage;->tags:[Ljava/lang/String;

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lcom/engagelab/privates/push/api/TagMessage;->queryTag:Ljava/lang/String;

    .line 6
    iput-boolean v0, p0, Lcom/engagelab/privates/push/api/TagMessage;->queryTagValid:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/engagelab/privates/push/api/TagMessage;->sequence:I

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/engagelab/privates/push/api/TagMessage;->code:I

    .line 10
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/engagelab/privates/push/api/TagMessage;->tags:[Ljava/lang/String;

    const-string v1, ""

    .line 11
    iput-object v1, p0, Lcom/engagelab/privates/push/api/TagMessage;->queryTag:Ljava/lang/String;

    .line 12
    iput-boolean v0, p0, Lcom/engagelab/privates/push/api/TagMessage;->queryTagValid:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/engagelab/privates/push/api/TagMessage;->sequence:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/engagelab/privates/push/api/TagMessage;->code:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/engagelab/privates/push/api/TagMessage;->tags:[Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/engagelab/privates/push/api/TagMessage;->queryTag:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_32

    const/4 v0, 0x1

    :cond_32
    iput-boolean v0, p0, Lcom/engagelab/privates/push/api/TagMessage;->queryTagValid:Z

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/engagelab/privates/push/api/TagMessage;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/engagelab/privates/push/api/TagMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/TagMessage;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public getQueryTag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/TagMessage;->queryTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSequence()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/TagMessage;->sequence:I

    .line 2
    .line 3
    return v0
.end method

.method public getTags()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/push/api/TagMessage;->tags:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isQueryTagValid()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/engagelab/privates/push/api/TagMessage;->queryTagValid:Z

    .line 2
    .line 3
    return v0
.end method

.method public setCode(I)Lcom/engagelab/privates/push/api/TagMessage;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/TagMessage;->code:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setQueryTag(Ljava/lang/String;)Lcom/engagelab/privates/push/api/TagMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/TagMessage;->queryTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setQueryTagValid(Z)Lcom/engagelab/privates/push/api/TagMessage;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/engagelab/privates/push/api/TagMessage;->queryTagValid:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setSequence(I)Lcom/engagelab/privates/push/api/TagMessage;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/TagMessage;->sequence:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setTags([Ljava/lang/String;)Lcom/engagelab/privates/push/api/TagMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/push/api/TagMessage;->tags:[Ljava/lang/String;

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
    const-string v1, "\n{\n  sequence="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/engagelab/privates/push/api/TagMessage;->sequence:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",\n  code="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/engagelab/privates/push/api/TagMessage;->code:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",\n  tag="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/engagelab/privates/push/api/TagMessage;->tags:[Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ",\n  queryTag="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/engagelab/privates/push/api/TagMessage;->queryTag:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ",\n  queryTagValid="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/engagelab/privates/push/api/TagMessage;->queryTagValid:Z

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, "\n}"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget p2, p0, Lcom/engagelab/privates/push/api/TagMessage;->sequence:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/engagelab/privates/push/api/TagMessage;->code:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/engagelab/privates/push/api/TagMessage;->tags:[Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/engagelab/privates/push/api/TagMessage;->queryTag:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean p2, p0, Lcom/engagelab/privates/push/api/TagMessage;->queryTagValid:Z

    .line 22
    .line 23
    int-to-byte p2, p2

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

###### Class com.engagelab.privates.push.api.TagMessage.a (com.engagelab.privates.push.api.TagMessage$a)
.class public final Lcom/engagelab/privates/push/api/TagMessage$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/api/TagMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/engagelab/privates/push/api/TagMessage;",
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
.method public a(Landroid/os/Parcel;)Lcom/engagelab/privates/push/api/TagMessage;
    .registers 3

    .line 1
    new-instance v0, Lcom/engagelab/privates/push/api/TagMessage;

    invoke-direct {v0, p1}, Lcom/engagelab/privates/push/api/TagMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/engagelab/privates/push/api/TagMessage;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/engagelab/privates/push/api/TagMessage;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/push/api/TagMessage$a;->a(Landroid/os/Parcel;)Lcom/engagelab/privates/push/api/TagMessage;

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
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/push/api/TagMessage$a;->a(I)[Lcom/engagelab/privates/push/api/TagMessage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
