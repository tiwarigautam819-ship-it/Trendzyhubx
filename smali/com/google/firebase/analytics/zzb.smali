###### Class com.google.firebase.analytics.zzb (com.google.firebase.analytics.zzb)
.class final Lcom/google/firebase/analytics/zzb;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method public constructor <init>(Lcom/google/firebase/analytics/FirebaseAnalytics;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/firebase/analytics/zzb;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/zzb;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza(Lcom/google/firebase/analytics/FirebaseAnalytics;)Lcom/google/android/gms/internal/measurement/k1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/measurement/t0;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/internal/measurement/u1;

    .line 16
    .line 17
    const/4 v3, 0x5

    .line 18
    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/measurement/u1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Lcom/google/android/gms/internal/measurement/t0;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 22
    .line 23
    .line 24
    const-wide/32 v2, 0x1d4c0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/t0;->b(J)Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-class v1, Ljava/lang/Long;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/t0;->c(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Long;

    .line 38
    .line 39
    return-object v0
.end method
