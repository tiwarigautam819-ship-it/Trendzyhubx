###### Class com.google.android.gms.internal.measurement.o4 (com.google.android.gms.internal.measurement.o4)
.class public abstract Lcom/google/android/gms/internal/measurement/o4;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/q4;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/p4;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/p4;->a:Lcom/google/android/gms/internal/measurement/q4;

    .line 5
    .line 6
    if-nez v1, :cond_12

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/measurement/q4;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/q4;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/p4;->i(Lcom/google/android/gms/internal/measurement/q4;)V

    .line 14
    .line 15
    .line 16
    goto :goto_12

    .line 17
    :catchall_10
    move-exception v1

    .line 18
    goto :goto_18

    .line 19
    :cond_12
    :goto_12
    sget-object v1, Lcom/google/android/gms/internal/measurement/p4;->a:Lcom/google/android/gms/internal/measurement/q4;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_10

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    sput-object v1, Lcom/google/android/gms/internal/measurement/o4;->a:Lcom/google/android/gms/internal/measurement/q4;

    .line 23
    .line 24
    return-void

    .line 25
    :goto_18
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_10

    .line 26
    throw v1
.end method
