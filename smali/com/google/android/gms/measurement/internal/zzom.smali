###### Class com.google.android.gms.measurement.internal.zzom (com.google.android.gms.measurement.internal.zzom)
.class final Lcom/google/android/gms/measurement/internal/zzom;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private zza:J

.field private zzb:Lcom/google/android/gms/internal/measurement/x3;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/measurement/internal/zznt;


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
.method public final zza()Lcom/google/android/gms/measurement/internal/zzoj;
    .registers 9

    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzoj;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzom;->zza:J

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzom;->zzb:Lcom/google/android/gms/internal/measurement/x3;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzom;->zzd:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzom;->zze:Lcom/google/android/gms/measurement/internal/zznt;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzoj;-><init>(JLcom/google/android/gms/internal/measurement/x3;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zznt;Lcom/google/android/gms/measurement/internal/zzol;)V

    return-object v0
.end method

.method public final zza(J)Lcom/google/android/gms/measurement/internal/zzom;
    .registers 3

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzom;->zza:J

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/x3;)Lcom/google/android/gms/measurement/internal/zzom;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzom;->zzb:Lcom/google/android/gms/internal/measurement/x3;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zznt;)Lcom/google/android/gms/measurement/internal/zzom;
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzom;->zze:Lcom/google/android/gms/measurement/internal/zznt;

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzom;
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zza(Ljava/util/Map;)Lcom/google/android/gms/measurement/internal/zzom;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/measurement/internal/zzom;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzom;->zzd:Ljava/util/Map;

    return-object p0
.end method
