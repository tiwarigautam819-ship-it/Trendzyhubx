###### Class com.google.android.gms.internal.measurement.i8 (com.google.android.gms.internal.measurement.i8)
.class public final Lcom/google/android/gms/internal/measurement/i8;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/f8;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/e5;

.field public static final b:Lcom/google/android/gms/internal/measurement/e5;

.field public static final c:Lcom/google/android/gms/internal/measurement/e5;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    const-string v0, "com.google.android.gms.measurement"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/c5;->a(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/measurement/f5;

    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    const-string v3, ""

    .line 11
    .line 12
    const-string v4, ""

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/f5;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 16
    .line 17
    .line 18
    const-string v0, "measurement.dma_consent.client"

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 22
    .line 23
    .line 24
    const-string v0, "measurement.dma_consent.client_bow_check2"

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 27
    .line 28
    .line 29
    const-string v0, "measurement.dma_consent.separate_service_calls_fix"

    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 32
    .line 33
    .line 34
    const-string v0, "measurement.dma_consent.service"

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 37
    .line 38
    .line 39
    const-string v0, "measurement.dma_consent.service_database_update_fix"

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/google/android/gms/internal/measurement/i8;->a:Lcom/google/android/gms/internal/measurement/e5;

    .line 46
    .line 47
    const-string v0, "measurement.dma_consent.service_dcu_event"

    .line 48
    .line 49
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 50
    .line 51
    .line 52
    const-string v0, "measurement.dma_consent.service_dcu_event2"

    .line 53
    .line 54
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Lcom/google/android/gms/internal/measurement/i8;->b:Lcom/google/android/gms/internal/measurement/e5;

    .line 59
    .line 60
    const-string v0, "measurement.dma_consent.service_npa_remote_default"

    .line 61
    .line 62
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 63
    .line 64
    .line 65
    const-string v0, "measurement.dma_consent.service_split_batch_on_consent"

    .line 66
    .line 67
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 68
    .line 69
    .line 70
    const-string v0, "measurement.dma_consent.set_consent_inline_on_worker"

    .line 71
    .line 72
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 73
    .line 74
    .line 75
    const-string v0, "measurement.dma_consent.setting_npa_inline_fix"

    .line 76
    .line 77
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/google/android/gms/internal/measurement/i8;->c:Lcom/google/android/gms/internal/measurement/e5;

    .line 82
    .line 83
    return-void
.end method
