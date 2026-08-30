###### Class com.google.android.gms.internal.measurement.w7 (com.google.android.gms.internal.measurement.w7)
.class public final Lcom/google/android/gms/internal/measurement/w7;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/t7;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/e5;


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
    const-string v0, "measurement.client.consent_state_v1"

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 22
    .line 23
    .line 24
    const-string v0, "measurement.client.3p_consent_state_v1"

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 27
    .line 28
    .line 29
    const-string v0, "measurement.service.consent_state_v1_W36"

    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/e5;

    .line 32
    .line 33
    .line 34
    const-string v0, "measurement.service.storage_consent_support_version"

    .line 35
    .line 36
    const-wide/32 v2, 0x31b50

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/f5;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/e5;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/google/android/gms/internal/measurement/w7;->a:Lcom/google/android/gms/internal/measurement/e5;

    .line 44
    .line 45
    return-void
.end method
