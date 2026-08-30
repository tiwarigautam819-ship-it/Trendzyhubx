###### Class com.google.android.gms.common.internal.h (com.google.android.gms.common.internal.h)
.class public final Lcom/google/android/gms/common/internal/h;
.super Ly3/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/android/gms/common/internal/p;

.field public final b:Z

.field public final c:Z

.field public final d:[I

.field public final e:I

.field public final f:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, La/c;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-direct {v0, v1}, La/c;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/common/internal/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/internal/p;ZZ[II[I)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/internal/h;->a:Lcom/google/android/gms/common/internal/p;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/common/internal/h;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/google/android/gms/common/internal/h;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/common/internal/h;->d:[I

    .line 11
    .line 12
    iput p5, p0, Lcom/google/android/gms/common/internal/h;->e:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/common/internal/h;->f:[I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {v0, p1}, Lz7/d;->p(ILandroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/common/internal/h;->a:Lcom/google/android/gms/common/internal/p;

    .line 9
    .line 10
    invoke-static {p1, v1, v2, p2}, Lz7/d;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 11
    .line 12
    .line 13
    const/4 p2, 0x2

    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-static {p1, p2, v1}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 16
    .line 17
    .line 18
    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/h;->b:Z

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    const/4 p2, 0x3

    .line 24
    invoke-static {p1, p2, v1}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 25
    .line 26
    .line 27
    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/h;->c:Z

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/google/android/gms/common/internal/h;->d:[I

    .line 33
    .line 34
    if-nez p2, :cond_24

    .line 35
    .line 36
    goto :goto_2e

    .line 37
    :cond_24
    invoke-static {v1, p1}, Lz7/d;->p(ILandroid/os/Parcel;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2, p1}, Lz7/d;->q(ILandroid/os/Parcel;)V

    .line 45
    .line 46
    .line 47
    :goto_2e
    const/4 p2, 0x5

    .line 48
    invoke-static {p1, p2, v1}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 49
    .line 50
    .line 51
    iget p2, p0, Lcom/google/android/gms/common/internal/h;->e:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/google/android/gms/common/internal/h;->f:[I

    .line 57
    .line 58
    if-nez p2, :cond_3c

    .line 59
    .line 60
    goto :goto_47

    .line 61
    :cond_3c
    const/4 v1, 0x6

    .line 62
    invoke-static {v1, p1}, Lz7/d;->p(ILandroid/os/Parcel;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v1, p1}, Lz7/d;->q(ILandroid/os/Parcel;)V

    .line 70
    .line 71
    .line 72
    :goto_47
    invoke-static {v0, p1}, Lz7/d;->q(ILandroid/os/Parcel;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
