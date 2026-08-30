###### Class com.engagelab.privates.core.api.WakeMessage (com.engagelab.privates.core.api.WakeMessage)
.class public Lcom/engagelab/privates/core/api/WakeMessage;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTIVITY:I = 0x8

.field public static final BIND_SERVICE:I = 0x2

.field public static final CONTENT_PROVIDER:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/engagelab/privates/core/api/WakeMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_SERVICE:I = 0x1


# instance fields
.field private packageName:Ljava/lang/String;

.field private type:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/engagelab/privates/core/api/WakeMessage$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/engagelab/privates/core/api/WakeMessage$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/core/api/WakeMessage;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/core/api/WakeMessage;->type:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/engagelab/privates/core/api/WakeMessage;->packageName:Ljava/lang/String;

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

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/core/api/WakeMessage;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/core/api/WakeMessage;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/engagelab/privates/core/api/WakeMessage;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/core/api/WakeMessage;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setType(I)Lcom/engagelab/privates/core/api/WakeMessage;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/core/api/WakeMessage;->type:I

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
    const-string v1, "\n{\n  type="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/engagelab/privates/core/api/WakeMessage;->type:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",\n  packageName="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/engagelab/privates/core/api/WakeMessage;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "\n}"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget p2, p0, Lcom/engagelab/privates/core/api/WakeMessage;->type:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/engagelab/privates/core/api/WakeMessage;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

###### Class com.engagelab.privates.core.api.WakeMessage.a (com.engagelab.privates.core.api.WakeMessage$a)
.class public final Lcom/engagelab/privates/core/api/WakeMessage$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/core/api/WakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/engagelab/privates/core/api/WakeMessage;",
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
.method public a(Landroid/os/Parcel;)Lcom/engagelab/privates/core/api/WakeMessage;
    .registers 3

    .line 1
    new-instance v0, Lcom/engagelab/privates/core/api/WakeMessage;

    invoke-direct {v0, p1}, Lcom/engagelab/privates/core/api/WakeMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/engagelab/privates/core/api/WakeMessage;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/engagelab/privates/core/api/WakeMessage;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/core/api/WakeMessage$a;->a(Landroid/os/Parcel;)Lcom/engagelab/privates/core/api/WakeMessage;

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
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/core/api/WakeMessage$a;->a(I)[Lcom/engagelab/privates/core/api/WakeMessage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
