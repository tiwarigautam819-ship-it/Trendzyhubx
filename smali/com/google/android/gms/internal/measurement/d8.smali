###### Class com.google.android.gms.internal.measurement.d8 (com.google.android.gms.internal.measurement.d8)
.class public final Lcom/google/android/gms/internal/measurement/d8;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/e8;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/e5;

.field public static final b:Lcom/google/android/gms/internal/measurement/e5;


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
    const-string v0, "measurement.set_default_event_parameters_propagate_clear.client.dev"

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
    sput-object v0, Lcom/google/android/gms/internal/measurement/d8;->a:Lcom/google/android/gms/internal/measurement/e5;

    .line 26
    .line 27
    const-string v0, "measurement.set_default_event_parameters_propagate_clear.service"

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/google/android/gms/internal/measurement/d8;->b:Lcom/google/android/gms/internal/measurement/e5;

    .line 34
    .line 35
    const-string v0, "measurement.id.set_default_event_parameters_propagate_clear.experiment_id"

    .line 36
    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/f5;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/e5;

    .line 40
    .line 41
    .line 42
    return-void
.end method
