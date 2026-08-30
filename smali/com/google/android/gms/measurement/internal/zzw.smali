###### Class com.google.android.gms.measurement.internal.zzw (com.google.android.gms.measurement.internal.zzw)
.class final synthetic Lcom/google/android/gms/measurement/internal/zzw;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field static final synthetic zza:[I

.field static final synthetic zzb:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    const/4 v0, 0x5

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
    sput-object v1, Lcom/google/android/gms/measurement/internal/zzw;->zzb:[I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    :try_start_b
    aput v2, v1, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_d} :catch_d

    .line 13
    .line 14
    :catch_d
    const/4 v1, 0x2

    .line 15
    :try_start_e
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzw;->zzb:[I

    .line 16
    .line 17
    aput v1, v3, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_12} :catch_12

    .line 18
    .line 19
    :catch_12
    const/4 v3, 0x3

    .line 20
    :try_start_13
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzw;->zzb:[I

    .line 21
    .line 22
    aput v3, v4, v3
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_17} :catch_17

    .line 23
    .line 24
    :catch_17
    const/4 v4, 0x4

    .line 25
    :try_start_18
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzw;->zzb:[I

    .line 26
    .line 27
    aput v4, v5, v4
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_1c} :catch_1c

    .line 28
    .line 29
    :catch_1c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/m2;->values()[Lcom/google/android/gms/internal/measurement/m2;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    array-length v5, v5

    .line 34
    new-array v5, v5, [I

    .line 35
    .line 36
    sput-object v5, Lcom/google/android/gms/measurement/internal/zzw;->zza:[I

    .line 37
    .line 38
    :try_start_25
    aput v2, v5, v2
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_27} :catch_27

    .line 39
    .line 40
    :catch_27
    :try_start_27
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzw;->zza:[I

    .line 41
    .line 42
    aput v1, v2, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_2b} :catch_2b

    .line 43
    .line 44
    :catch_2b
    :try_start_2b
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:[I

    .line 45
    .line 46
    aput v3, v1, v3
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2f} :catch_2f

    .line 47
    .line 48
    :catch_2f
    :try_start_2f
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:[I

    .line 49
    .line 50
    aput v4, v1, v4
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_33} :catch_33

    .line 51
    .line 52
    :catch_33
    :try_start_33
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:[I

    .line 53
    .line 54
    aput v0, v1, v0
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_37} :catch_37

    .line 55
    .line 56
    :catch_37
    :try_start_37
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:[I

    .line 57
    .line 58
    const/4 v1, 0x6

    .line 59
    aput v1, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_3c} :catch_3c

    .line 60
    .line 61
    :catch_3c
    return-void
.end method
