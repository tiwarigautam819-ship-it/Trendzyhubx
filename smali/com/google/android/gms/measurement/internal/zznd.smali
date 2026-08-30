###### Class com.google.android.gms.measurement.internal.zznd (com.google.android.gms.measurement.internal.zznd)
.class final Lcom/google/android/gms/measurement/internal/zznd;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:J

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zznb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznb;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zznd;->zza:J

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zznd;->zza:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zznb;->zza(Lcom/google/android/gms/measurement/internal/zznb;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
