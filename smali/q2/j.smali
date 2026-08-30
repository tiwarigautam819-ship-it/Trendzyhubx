###### Class q2.j (q2.j)
.class public abstract synthetic Lq2/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

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
    const/4 v2, 0x1

    .line 10
    :try_start_9
    aput v2, v1, v2
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_b} :catch_b

    .line 11
    .line 12
    :catch_b
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x2

    .line 14
    :try_start_d
    aput v3, v1, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_f} :catch_f

    .line 15
    .line 16
    :catch_f
    :try_start_f
    aput v0, v1, v3
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_11} :catch_11

    .line 17
    .line 18
    :catch_11
    sput-object v1, Lq2/j;->a:[I

    .line 19
    .line 20
    return-void
.end method
