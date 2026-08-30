###### Class com.google.android.gms.internal.measurement.d5 (com.google.android.gms.internal.measurement.d5)
.class public final synthetic Lcom/google/android/gms/internal/measurement/d5;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/e5;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    return-void
.end method
