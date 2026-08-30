###### Class n4.d (n4.d)
.class public final Ln4/d;
.super Ly3/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ln4/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln4/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ln4/e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ln4/d;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ln4/d;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p1, p0, Ln4/d;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    const/16 p2, 0x4f45

    .line 2
    .line 3
    invoke-static {p2, p1}, Lz7/d;->p(ILandroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iget-object v0, p0, Ln4/d;->a:Ljava/util/List;

    .line 8
    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    goto :goto_16

    .line 12
    :cond_b
    const/4 v1, 0x1

    .line 13
    invoke-static {v1, p1}, Lz7/d;->p(ILandroid/os/Parcel;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p1}, Lz7/d;->q(ILandroid/os/Parcel;)V

    .line 21
    .line 22
    .line 23
    :goto_16
    const/4 v0, 0x2

    .line 24
    iget-object v1, p0, Ln4/d;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1, v0, v1}, Lz7/d;->m(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p1}, Lz7/d;->q(ILandroid/os/Parcel;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
