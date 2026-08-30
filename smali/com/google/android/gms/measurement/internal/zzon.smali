###### Class com.google.android.gms.measurement.internal.zzon (com.google.android.gms.measurement.internal.zzon)
.class public final Lcom/google/android/gms/measurement/internal/zzon;
.super Ly3/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/zzon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:J

.field public final zzc:Ljava/lang/Long;

.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/lang/String;

.field public final zzf:Ljava/lang/Double;

.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzoq;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzoq;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzg:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Ljava/lang/Long;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1d

    if-eqz p6, :cond_19

    .line 6
    invoke-virtual {p6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    goto :goto_1f

    .line 7
    :cond_1d
    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    .line 8
    :goto_1f
    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzon;->zze:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzop;)V
    .registers 8

    .line 32
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzop;->zzd:J

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzg:I

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    .line 14
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    .line 15
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzon;->zze:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p4, :cond_19

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Ljava/lang/Long;

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Ljava/lang/String;

    return-void

    .line 19
    :cond_19
    instance-of p2, p4, Ljava/lang/Long;

    if-eqz p2, :cond_26

    .line 20
    check-cast p4, Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Ljava/lang/Long;

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Ljava/lang/String;

    return-void

    .line 23
    :cond_26
    instance-of p2, p4, Ljava/lang/String;

    if-eqz p2, :cond_33

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Ljava/lang/Long;

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    .line 26
    check-cast p4, Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Ljava/lang/String;

    return-void

    .line 27
    :cond_33
    instance-of p2, p4, Ljava/lang/Double;

    if-eqz p2, :cond_40

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Ljava/lang/Long;

    .line 29
    check-cast p4, Ljava/lang/Double;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Ljava/lang/String;

    return-void

    .line 31
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User attribute given of un-supported type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

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
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzg:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x4

    .line 11
    invoke-static {p1, v1, v2}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lz7/d;->m(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    const/16 v4, 0x8

    .line 27
    .line 28
    invoke-static {p1, v3, v4}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Ljava/lang/Long;

    .line 35
    .line 36
    if-nez v0, :cond_26

    .line 37
    .line 38
    goto :goto_30

    .line 39
    :cond_26
    invoke-static {p1, v2, v4}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    .line 48
    .line 49
    :goto_30
    const/4 v0, 0x6

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p1, v0, v1}, Lz7/d;->m(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x7

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zze:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p1, v0, v1}, Lz7/d;->m(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    .line 62
    .line 63
    if-nez v0, :cond_41

    .line 64
    .line 65
    goto :goto_4b

    .line 66
    :cond_41
    invoke-static {p1, v4, v4}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 74
    .line 75
    .line 76
    :goto_4b
    invoke-static {p2, p1}, Lz7/d;->q(ILandroid/os/Parcel;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final zza()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Ljava/lang/Long;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    .line 7
    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_f

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method
