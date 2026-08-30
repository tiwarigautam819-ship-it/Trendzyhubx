###### Class com.google.android.gms.internal.measurement.m4 (com.google.android.gms.internal.measurement.m4)
.class public abstract synthetic Lcom/google/android/gms/internal/measurement/m4;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/p4;->b:[I

    .line 2
    .line 3
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [I

    .line 8
    .line 9
    array-length v0, v0

    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    sput-object v0, Lcom/google/android/gms/internal/measurement/m4;->a:[I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x3

    .line 16
    :try_start_f
    aput v1, v0, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_11} :catch_11

    .line 17
    .line 18
    :catch_11
    const/4 v0, 0x2

    .line 19
    const/4 v3, 0x4

    .line 20
    :try_start_13
    sget-object v4, Lcom/google/android/gms/internal/measurement/m4;->a:[I

    .line 21
    .line 22
    aput v0, v4, v3
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_17} :catch_17

    .line 23
    .line 24
    :catch_17
    :try_start_17
    sget-object v4, Lcom/google/android/gms/internal/measurement/m4;->a:[I

    .line 25
    .line 26
    aput v2, v4, v0
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_1b} :catch_1b

    .line 27
    .line 28
    :catch_1b
    const/4 v0, 0x5

    .line 29
    :try_start_1c
    sget-object v2, Lcom/google/android/gms/internal/measurement/m4;->a:[I

    .line 30
    .line 31
    aput v3, v2, v0
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_20} :catch_20

    .line 32
    .line 33
    :catch_20
    const/4 v2, 0x6

    .line 34
    :try_start_21
    sget-object v3, Lcom/google/android/gms/internal/measurement/m4;->a:[I

    .line 35
    .line 36
    aput v0, v3, v2
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_25} :catch_25

    .line 37
    .line 38
    :catch_25
    :try_start_25
    sget-object v0, Lcom/google/android/gms/internal/measurement/m4;->a:[I

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    aput v2, v0, v3
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_2a} :catch_2a

    .line 42
    .line 43
    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/gms/internal/measurement/m4;->a:[I

    .line 44
    .line 45
    const/4 v2, 0x7

    .line 46
    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2f} :catch_2f

    .line 47
    .line 48
    :catch_2f
    return-void
.end method
