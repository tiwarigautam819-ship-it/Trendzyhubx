###### Class com.google.android.gms.internal.measurement.z4 (com.google.android.gms.internal.measurement.z4)
.class public final Lcom/google/android/gms/internal/measurement/z4;
.super Landroid/database/ContentObserver;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# virtual methods
.method public final onChange(Z)V
    .registers 2

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/measurement/e5;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    return-void
.end method
