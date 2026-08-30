###### Class com.google.android.gms.measurement.internal.zzkx (com.google.android.gms.measurement.internal.zzkx)
.class final Lcom/google/android/gms/measurement/internal/zzkx;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzje;

.field private final synthetic zzb:J

.field private final synthetic zzc:J

.field private final synthetic zzd:Z

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzje;

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;JJZLcom/google/android/gms/measurement/internal/zzje;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zzb:J

    .line 4
    .line 5
    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zzc:J

    .line 6
    .line 7
    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zzd:Z

    .line 8
    .line 9
    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Lcom/google/android/gms/measurement/internal/zzje;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zzf:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zzf:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zzf:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcx:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_20

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zzf:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 26
    .line 27
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zzb:J

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(JZ)V

    .line 31
    .line 32
    .line 33
    :cond_20
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zzf:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 34
    .line 35
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    .line 36
    .line 37
    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zzc:J

    .line 38
    .line 39
    const/4 v8, 0x1

    .line 40
    iget-boolean v9, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zzd:Z

    .line 41
    .line 42
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;JZZ)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zzf:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Lcom/google/android/gms/measurement/internal/zzje;

    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
