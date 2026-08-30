###### Class com.engagelab.privates.core.api.Address (com.engagelab.privates.core.api.Address)
.class public Lcom/engagelab/privates/core/api/Address;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/engagelab/privates/core/api/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private defaultHost:[Ljava/lang/String;

.field private defaultIp:[Ljava/lang/String;

.field private defaultPort:I

.field private defaultReportUrl:Ljava/lang/String;

.field private sisHostArray:[Ljava/lang/String;

.field private sisIpArray:[Ljava/lang/String;

.field private sisPort:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/engagelab/privates/core/api/Address$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/engagelab/privates/core/api/Address$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/core/api/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/core/api/Address;->sisHostArray:[Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/core/api/Address;->sisIpArray:[Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/core/api/Address;->sisPort:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/core/api/Address;->defaultHost:[Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/core/api/Address;->defaultIp:[Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/core/api/Address;->defaultPort:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/engagelab/privates/core/api/Address;->defaultReportUrl:Ljava/lang/String;

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

.method public getDefaultHost()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/core/api/Address;->defaultHost:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultIp()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/core/api/Address;->defaultIp:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultPort()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/core/api/Address;->defaultPort:I

    .line 2
    .line 3
    return v0
.end method

.method public getDefaultReportUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/core/api/Address;->defaultReportUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSisHostArray()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/core/api/Address;->sisHostArray:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSisIpArray()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/core/api/Address;->sisIpArray:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSisPort()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/core/api/Address;->sisPort:I

    .line 2
    .line 3
    return v0
.end method

.method public setDefaultHost([Ljava/lang/String;)Lcom/engagelab/privates/core/api/Address;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/core/api/Address;->defaultHost:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDefaultIp([Ljava/lang/String;)Lcom/engagelab/privates/core/api/Address;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/core/api/Address;->defaultIp:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDefaultPort(I)Lcom/engagelab/privates/core/api/Address;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/core/api/Address;->defaultPort:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setDefaultReportUrl(Ljava/lang/String;)Lcom/engagelab/privates/core/api/Address;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/core/api/Address;->defaultReportUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public varargs setSisHostArray([Ljava/lang/String;)Lcom/engagelab/privates/core/api/Address;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/core/api/Address;->sisHostArray:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public varargs setSisIpArray([Ljava/lang/String;)Lcom/engagelab/privates/core/api/Address;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/core/api/Address;->sisIpArray:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSisPort(I)Lcom/engagelab/privates/core/api/Address;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/core/api/Address;->sisPort:I

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
    const-string v1, "\n{\n  sisHostArray="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/engagelab/privates/core/api/Address;->sisHostArray:[Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",\n  sisIpArray="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/engagelab/privates/core/api/Address;->sisIpArray:[Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",\n  sisPort="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/engagelab/privates/core/api/Address;->sisPort:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",\n  defaultHost="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/engagelab/privates/core/api/Address;->defaultHost:[Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, ",\n  defaultIp="

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/engagelab/privates/core/api/Address;->defaultIp:[Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/engagelab/privates/core/api/Address;->defaultHost:[Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ",\n  defaultPort="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v1, p0, Lcom/engagelab/privates/core/api/Address;->defaultPort:I

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ",\n  defaultReportUrl="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/engagelab/privates/core/api/Address;->defaultReportUrl:Ljava/lang/String;

    .line 77
    .line 78
    const-string v2, "\n}"

    .line 79
    .line 80
    invoke-static {v0, v1, v2}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/engagelab/privates/core/api/Address;->sisHostArray:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/engagelab/privates/core/api/Address;->sisIpArray:[Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/engagelab/privates/core/api/Address;->sisPort:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/engagelab/privates/core/api/Address;->defaultHost:[Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/engagelab/privates/core/api/Address;->defaultIp:[Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Lcom/engagelab/privates/core/api/Address;->defaultPort:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/engagelab/privates/core/api/Address;->defaultReportUrl:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

###### Class com.engagelab.privates.core.api.Address.a (com.engagelab.privates.core.api.Address$a)
.class public final Lcom/engagelab/privates/core/api/Address$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/core/api/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/engagelab/privates/core/api/Address;",
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
.method public a(Landroid/os/Parcel;)Lcom/engagelab/privates/core/api/Address;
    .registers 3

    .line 1
    new-instance v0, Lcom/engagelab/privates/core/api/Address;

    invoke-direct {v0, p1}, Lcom/engagelab/privates/core/api/Address;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/engagelab/privates/core/api/Address;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/engagelab/privates/core/api/Address;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/core/api/Address$a;->a(Landroid/os/Parcel;)Lcom/engagelab/privates/core/api/Address;

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
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/core/api/Address$a;->a(I)[Lcom/engagelab/privates/core/api/Address;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
