###### Class com.google.android.gms.measurement.internal.zzbi (com.google.android.gms.measurement.internal.zzbi)
.class public final Lcom/google/android/gms/measurement/internal/zzbi;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/measurement/internal/zzbf;",
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
    .registers 12

    .line 1
    invoke-static {p1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    move-object v5, v1

    .line 9
    move-object v6, v5

    .line 10
    move-object v7, v6

    .line 11
    move-wide v8, v2

    .line 12
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v1, v0, :cond_3f

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-char v2, v1

    .line 23
    const/4 v3, 0x2

    .line 24
    if-eq v2, v3, :cond_3a

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    if-eq v2, v3, :cond_30

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    if-eq v2, v3, :cond_2b

    .line 31
    .line 32
    const/4 v3, 0x5

    .line 33
    if-eq v2, v3, :cond_26

    .line 34
    .line 35
    invoke-static {v1, p1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 36
    .line 37
    .line 38
    goto :goto_b

    .line 39
    :cond_26
    invoke-static {v1, p1}, Lj7/g;->q(ILandroid/os/Parcel;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v8

    .line 43
    goto :goto_b

    .line 44
    :cond_2b
    invoke-static {v1, p1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    goto :goto_b

    .line 49
    :cond_30
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbe;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    .line 51
    invoke-static {p1, v1, v2}, Lj7/g;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    move-object v6, v1

    .line 56
    check-cast v6, Lcom/google/android/gms/measurement/internal/zzbe;

    .line 57
    .line 58
    goto :goto_b

    .line 59
    :cond_3a
    invoke-static {v1, p1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    goto :goto_b

    .line 64
    :cond_3f
    invoke-static {v0, p1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 65
    .line 66
    .line 67
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbf;

    .line 68
    .line 69
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    .line 70
    .line 71
    .line 72
    return-object v4
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/measurement/internal/zzbf;

    .line 2
    .line 3
    return-object p1
.end method
