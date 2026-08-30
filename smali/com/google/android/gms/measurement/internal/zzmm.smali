###### Class com.google.android.gms.measurement.internal.zzmm (com.google.android.gms.measurement.internal.zzmm)
.class final Lcom/google/android/gms/measurement/internal/zzmm;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzae;

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzae;

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzls;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzls;ZLcom/google/android/gms/measurement/internal/zzo;ZLcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzae;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zza:Z

    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzc:Z

    .line 7
    .line 8
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzd:Lcom/google/android/gms/measurement/internal/zzae;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zze:Lcom/google/android/gms/measurement/internal/zzae;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzgb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_18

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "Discarding data. Failed to send conditional user property to service"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_18
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zza:Z

    .line 26
    .line 27
    if-eqz v1, :cond_31

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 35
    .line 36
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzc:Z

    .line 37
    .line 38
    if-eqz v2, :cond_29

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzd:Lcom/google/android/gms/measurement/internal/zzae;

    .line 43
    .line 44
    :goto_2b
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzgb;Ly3/a;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 47
    .line 48
    .line 49
    goto :goto_5f

    .line 50
    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zze:Lcom/google/android/gms/measurement/internal/zzae;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_4a

    .line 59
    .line 60
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzd:Lcom/google/android/gms/measurement/internal/zzae;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 68
    .line 69
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 70
    .line 71
    .line 72
    goto :goto_5f

    .line 73
    :catch_48
    move-exception v0

    .line 74
    goto :goto_50

    .line 75
    :cond_4a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzd:Lcom/google/android/gms/measurement/internal/zzae;

    .line 76
    .line 77
    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Lcom/google/android/gms/measurement/internal/zzae;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_4f} :catch_48

    .line 78
    .line 79
    .line 80
    goto :goto_5f

    .line 81
    :goto_50
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v2, "Failed to send conditional user property to the service"

    .line 92
    .line 93
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :goto_5f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zze(Lcom/google/android/gms/measurement/internal/zzls;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method
