###### Class com.google.android.gms.internal.measurement.v5 (com.google.android.gms.internal.measurement.v5)
.class public abstract synthetic Lcom/google/android/gms/internal/measurement/v5;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/k6;->values()[Lcom/google/android/gms/internal/measurement/k6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/measurement/v5;->a:[I

    .line 9
    .line 10
    :try_start_9
    sget-object v1, Lcom/google/android/gms/internal/measurement/k6;->h:Lcom/google/android/gms/internal/measurement/k6;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    .line 18
    .line 19
    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/android/gms/internal/measurement/v5;->a:[I

    .line 20
    .line 21
    sget-object v1, Lcom/google/android/gms/internal/measurement/k6;->j:Lcom/google/android/gms/internal/measurement/k6;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x2

    .line 28
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    .line 29
    .line 30
    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/google/android/gms/internal/measurement/v5;->a:[I

    .line 31
    .line 32
    sget-object v1, Lcom/google/android/gms/internal/measurement/k6;->a:Lcom/google/android/gms/internal/measurement/k6;

    .line 33
    .line 34
    const/4 v1, 0x6

    .line 35
    const/4 v2, 0x3

    .line 36
    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_25} :catch_25

    .line 37
    .line 38
    :catch_25
    return-void
.end method
