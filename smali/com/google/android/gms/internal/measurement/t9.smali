###### Class com.google.android.gms.internal.measurement.t9 (com.google.android.gms.internal.measurement.t9)
.class public final Lcom/google/android/gms/internal/measurement/t9;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/q9;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/e5;

.field public static final b:Lcom/google/android/gms/internal/measurement/e5;

.field public static final c:Lcom/google/android/gms/internal/measurement/e5;

.field public static final d:Lcom/google/android/gms/internal/measurement/e5;

.field public static final e:Lcom/google/android/gms/internal/measurement/e5;

.field public static final f:Lcom/google/android/gms/internal/measurement/e5;


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
    const-string v0, "measurement.test.boolean_flag"

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
    sput-object v0, Lcom/google/android/gms/internal/measurement/t9;->a:Lcom/google/android/gms/internal/measurement/e5;

    .line 26
    .line 27
    const-string v0, "measurement.test.cached_long_flag"

    .line 28
    .line 29
    const-wide/16 v2, -0x1

    .line 30
    .line 31
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/f5;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/e5;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/measurement/t9;->b:Lcom/google/android/gms/internal/measurement/e5;

    .line 36
    .line 37
    const-wide/high16 v4, -0x3ff8000000000000L    # -3.0

    .line 38
    .line 39
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v4, Lcom/google/android/gms/internal/measurement/e5;->g:Ljava/lang/Object;

    .line 44
    .line 45
    new-instance v4, Lcom/google/android/gms/internal/measurement/e5;

    .line 46
    .line 47
    const/4 v5, 0x1

    .line 48
    const-string v6, "measurement.test.double_flag"

    .line 49
    .line 50
    invoke-direct {v4, v1, v6, v0, v5}, Lcom/google/android/gms/internal/measurement/e5;-><init>(Lcom/google/android/gms/internal/measurement/f5;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    sput-object v4, Lcom/google/android/gms/internal/measurement/t9;->c:Lcom/google/android/gms/internal/measurement/e5;

    .line 54
    .line 55
    const-string v0, "measurement.test.int_flag"

    .line 56
    .line 57
    const-wide/16 v4, -0x2

    .line 58
    .line 59
    invoke-virtual {v1, v0, v4, v5}, Lcom/google/android/gms/internal/measurement/f5;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/e5;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/google/android/gms/internal/measurement/t9;->d:Lcom/google/android/gms/internal/measurement/e5;

    .line 64
    .line 65
    const-string v0, "measurement.test.long_flag"

    .line 66
    .line 67
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/f5;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/e5;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/google/android/gms/internal/measurement/t9;->e:Lcom/google/android/gms/internal/measurement/e5;

    .line 72
    .line 73
    const-string v0, "measurement.test.string_flag"

    .line 74
    .line 75
    const-string v2, "---"

    .line 76
    .line 77
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/f5;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e5;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/google/android/gms/internal/measurement/t9;->f:Lcom/google/android/gms/internal/measurement/e5;

    .line 82
    .line 83
    return-void
.end method
