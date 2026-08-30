###### Class com.google.android.gms.measurement.internal.zzht (com.google.android.gms.measurement.internal.zzht)
.class final synthetic Lcom/google/android/gms/measurement/internal/zzht;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field static final synthetic zza:[I

.field static final synthetic zzb:[I

.field static final synthetic zzc:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/m1;->h(I)[I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    array-length v1, v1

    .line 7
    new-array v1, v1, [I

    .line 8
    .line 9
    sput-object v1, Lcom/google/android/gms/measurement/internal/zzht;->zzc:[I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x2

    .line 13
    :try_start_c
    aput v2, v1, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_e} :catch_e

    .line 14
    .line 15
    :catch_e
    :try_start_e
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzht;->zzc:[I

    .line 16
    .line 17
    aput v3, v1, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_12} :catch_12

    .line 18
    .line 19
    :catch_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/r2;->values()[Lcom/google/android/gms/internal/measurement/r2;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    array-length v1, v1

    .line 24
    new-array v1, v1, [I

    .line 25
    .line 26
    sput-object v1, Lcom/google/android/gms/measurement/internal/zzht;->zzb:[I

    .line 27
    .line 28
    :try_start_1b
    aput v2, v1, v2
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1d} :catch_1d

    .line 29
    .line 30
    :catch_1d
    :try_start_1d
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzht;->zzb:[I

    .line 31
    .line 32
    aput v3, v1, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_21} :catch_21

    .line 33
    .line 34
    :catch_21
    :try_start_21
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzht;->zzb:[I

    .line 35
    .line 36
    aput v0, v1, v0
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_25} :catch_25

    .line 37
    .line 38
    :catch_25
    const/4 v1, 0x4

    .line 39
    :try_start_26
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzht;->zzb:[I

    .line 40
    .line 41
    aput v1, v4, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2a} :catch_2a

    .line 42
    .line 43
    :catch_2a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ra;->values()[Lcom/google/android/gms/internal/measurement/ra;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    array-length v4, v4

    .line 48
    new-array v4, v4, [I

    .line 49
    .line 50
    sput-object v4, Lcom/google/android/gms/measurement/internal/zzht;->zza:[I

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    :try_start_34
    aput v2, v4, v5
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_36} :catch_36

    .line 54
    .line 55
    :catch_36
    :try_start_36
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzht;->zza:[I

    .line 56
    .line 57
    aput v3, v4, v2
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_3a} :catch_3a

    .line 58
    .line 59
    :catch_3a
    :try_start_3a
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzht;->zza:[I

    .line 60
    .line 61
    aput v0, v2, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3e} :catch_3e

    .line 62
    .line 63
    :catch_3e
    :try_start_3e
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzht;->zza:[I

    .line 64
    .line 65
    aput v1, v2, v0
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_42} :catch_42

    .line 66
    .line 67
    :catch_42
    return-void
.end method
