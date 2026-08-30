###### Class com.google.android.gms.measurement.internal.zzam (com.google.android.gms.measurement.internal.zzam)
.class public final Lcom/google/android/gms/measurement/internal/zzam;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/measurement/internal/zzaj;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {p1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v2, v0, :cond_1c

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-char v3, v2

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eq v3, v4, :cond_17

    .line 19
    .line 20
    invoke-static {v2, p1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 21
    .line 22
    .line 23
    goto :goto_5

    .line 24
    :cond_17
    invoke-static {v2, p1}, Lj7/g;->e(ILandroid/os/Parcel;)Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_5

    .line 29
    :cond_1c
    invoke-static {v0, p1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaj;

    .line 33
    .line 34
    invoke-direct {p1, v1}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/measurement/internal/zzaj;

    .line 2
    .line 3
    return-object p1
.end method
