###### Class com.engagelab.privates.push.api.NotificationLayout (com.engagelab.privates.push.api.NotificationLayout)
.class public Lcom/engagelab/privates/push/api/NotificationLayout;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/engagelab/privates/push/api/NotificationLayout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentViewId:I

.field private iconResourceId:I

.field private iconViewId:I

.field private layoutId:I

.field private timeViewId:I

.field private titleViewId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/engagelab/privates/push/api/NotificationLayout$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/engagelab/privates/push/api/NotificationLayout$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/push/api/NotificationLayout;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->layoutId:I

    .line 3
    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->iconViewId:I

    .line 4
    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->iconResourceId:I

    .line 5
    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->titleViewId:I

    .line 6
    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->contentViewId:I

    .line 7
    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->timeViewId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->layoutId:I

    .line 10
    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->iconViewId:I

    .line 11
    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->iconResourceId:I

    .line 12
    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->titleViewId:I

    .line 13
    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->contentViewId:I

    .line 14
    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->timeViewId:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->layoutId:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->iconViewId:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->iconResourceId:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->titleViewId:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->contentViewId:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->timeViewId:I

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

.method public getContentViewId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->contentViewId:I

    .line 2
    .line 3
    return v0
.end method

.method public getIconResourceId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->iconResourceId:I

    .line 2
    .line 3
    return v0
.end method

.method public getIconViewId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->iconViewId:I

    .line 2
    .line 3
    return v0
.end method

.method public getLayoutId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->layoutId:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimeViewId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->timeViewId:I

    .line 2
    .line 3
    return v0
.end method

.method public getTitleViewId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->titleViewId:I

    .line 2
    .line 3
    return v0
.end method

.method public setContentViewId(I)Lcom/engagelab/privates/push/api/NotificationLayout;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->contentViewId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setIconResourceId(I)Lcom/engagelab/privates/push/api/NotificationLayout;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->iconResourceId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setIconViewId(I)Lcom/engagelab/privates/push/api/NotificationLayout;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->iconViewId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setLayoutId(I)Lcom/engagelab/privates/push/api/NotificationLayout;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->layoutId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setTimeViewId(I)Lcom/engagelab/privates/push/api/NotificationLayout;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->timeViewId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setTitleViewId(I)Lcom/engagelab/privates/push/api/NotificationLayout;
    .registers 2

    .line 1
    iput p1, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->titleViewId:I

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
    const-string v1, "\n{\n  layoutId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->layoutId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",\n  iconViewId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->iconViewId:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",\n  titleViewId="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->titleViewId:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",\n  contentViewId="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->contentViewId:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ",\n  timeViewId="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->timeViewId:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "\n}"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget p2, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->layoutId:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->iconViewId:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->iconResourceId:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->titleViewId:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->contentViewId:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Lcom/engagelab/privates/push/api/NotificationLayout;->timeViewId:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

###### Class com.engagelab.privates.push.api.NotificationLayout.a (com.engagelab.privates.push.api.NotificationLayout$a)
.class public final Lcom/engagelab/privates/push/api/NotificationLayout$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/api/NotificationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/engagelab/privates/push/api/NotificationLayout;",
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
.method public a(Landroid/os/Parcel;)Lcom/engagelab/privates/push/api/NotificationLayout;
    .registers 3

    .line 1
    new-instance v0, Lcom/engagelab/privates/push/api/NotificationLayout;

    invoke-direct {v0, p1}, Lcom/engagelab/privates/push/api/NotificationLayout;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/engagelab/privates/push/api/NotificationLayout;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/engagelab/privates/push/api/NotificationLayout;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/push/api/NotificationLayout$a;->a(Landroid/os/Parcel;)Lcom/engagelab/privates/push/api/NotificationLayout;

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
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/push/api/NotificationLayout$a;->a(I)[Lcom/engagelab/privates/push/api/NotificationLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
