###### Class com.google.android.gms.measurement.internal.zznh (com.google.android.gms.measurement.internal.zznh)
.class final Lcom/google/android/gms/measurement/internal/zznh;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field protected zza:J

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zznb;

.field private zzc:J

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzav;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznb;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/zznk;

    .line 7
    .line 8
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zznk;-><init>(Lcom/google/android/gms/measurement/internal/zznh;Lcom/google/android/gms/measurement/internal/zzjc;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzav;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznb;->zzb()Lb4/a;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lb4/b;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:J

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zza:J

    .line 31
    .line 32
    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zznh;)V
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznb;->zzt()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznb;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zznh;->zza(ZZJ)Z

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznb;->zzc()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznb;->zzb()Lb4/a;

    move-result-object p0

    check-cast p0, Lb4/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzb;->zza(J)V

    return-void
.end method


# virtual methods
.method public final zza(J)J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zza:J

    sub-long v0, p1, v0

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zza:J

    return-wide v0
.end method

.method public final zza()V
    .registers 3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzav;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zza()V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznb;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzdb:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznb;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:J

    goto :goto_29

    :cond_25
    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:J

    .line 16
    :goto_29
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zza:J

    return-void
.end method

.method public final zza(ZZJ)Z
    .registers 9

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznb;->zzt()V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzac()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznb;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzha;->zzk:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznb;->zzb()Lb4/a;

    move-result-object v1

    check-cast v1, Lb4/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 23
    :cond_2e
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:J

    sub-long v0, p3, v0

    if-nez p1, :cond_4f

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_4f

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznb;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Screen exposed for less than 1000 ms. Event not sent. time"

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_4f
    if-nez p2, :cond_55

    .line 27
    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/measurement/internal/zznh;->zza(J)J

    move-result-wide v0

    .line 28
    :cond_55
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznb;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v2, "Recording user engagement, ms"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 30
    const-string v2, "_et"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznb;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzw()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 32
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznb;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Z)Lcom/google/android/gms/measurement/internal/zzlk;

    move-result-object v0

    .line 34
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzlk;Landroid/os/Bundle;Z)V

    if-nez p2, :cond_9a

    .line 35
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznb;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object p2

    const-string v0, "auto"

    const-string v2, "_e"

    .line 36
    invoke-virtual {p2, v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 37
    :cond_9a
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:J

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzav;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzav;->zza()V

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzav;

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzbh;->zzbc:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 p3, 0x0

    .line 40
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 41
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzav;->zza(J)V

    return v1
.end method

.method public final zzb(J)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzav;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzav;->zza()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzc(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznb;->zzt()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzav;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zza()V

    .line 9
    .line 10
    .line 11
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:J

    .line 12
    .line 13
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zza:J

    .line 14
    .line 15
    return-void
.end method
