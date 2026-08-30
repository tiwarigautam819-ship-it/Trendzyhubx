###### Class s2.c (s2.c)
.class public abstract synthetic Ls2/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Ls2/b;->values()[Ls2/b;

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
    const/4 v1, 0x1

    .line 9
    :try_start_8
    aput v1, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_a} :catch_a

    .line 10
    .line 11
    :catch_a
    const/4 v1, 0x2

    .line 12
    :try_start_b
    aput v1, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_d} :catch_d

    .line 13
    .line 14
    :catch_d
    const/4 v1, 0x3

    .line 15
    :try_start_e
    aput v1, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_10} :catch_10

    .line 16
    .line 17
    :catch_10
    const/4 v1, 0x4

    .line 18
    :try_start_11
    aput v1, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_13} :catch_13

    .line 19
    .line 20
    :catch_13
    const/4 v1, 0x5

    .line 21
    :try_start_14
    aput v1, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_16} :catch_16

    .line 22
    .line 23
    :catch_16
    sput-object v0, Ls2/c;->a:[I

    .line 24
    .line 25
    return-void
.end method
