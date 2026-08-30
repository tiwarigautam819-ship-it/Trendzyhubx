###### Class com.google.android.gms.internal.measurement.ga (com.google.android.gms.internal.measurement.ga)
.class public final Lcom/google/android/gms/internal/measurement/ga;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ha;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/e5;

.field public static final b:Lcom/google/android/gms/internal/measurement/e5;

.field public static final c:Lcom/google/android/gms/internal/measurement/e5;

.field public static final d:Lcom/google/android/gms/internal/measurement/e5;

.field public static final e:Lcom/google/android/gms/internal/measurement/e5;


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
    const-string v0, "measurement.sgtm.google_signal.enable"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/measurement/ga;->a:Lcom/google/android/gms/internal/measurement/e5;

    .line 26
    .line 27
    const-string v0, "measurement.sgtm.preview_mode_enabled"

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/google/android/gms/internal/measurement/ga;->b:Lcom/google/android/gms/internal/measurement/e5;

    .line 35
    .line 36
    const-string v0, "measurement.sgtm.rollout_percentage_fix"

    .line 37
    .line 38
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/google/android/gms/internal/measurement/ga;->c:Lcom/google/android/gms/internal/measurement/e5;

    .line 43
    .line 44
    const-string v0, "measurement.sgtm.service"

    .line 45
    .line 46
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/google/android/gms/internal/measurement/ga;->d:Lcom/google/android/gms/internal/measurement/e5;

    .line 51
    .line 52
    const-string v0, "measurement.sgtm.upload_queue"

    .line 53
    .line 54
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Lcom/google/android/gms/internal/measurement/ga;->e:Lcom/google/android/gms/internal/measurement/e5;

    .line 59
    .line 60
    const-string v0, "measurement.id.sgtm"

    .line 61
    .line 62
    const-wide/16 v2, 0x0

    .line 63
    .line 64
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/f5;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/e5;

    .line 65
    .line 66
    .line 67
    return-void
.end method
