###### Class com.google.android.gms.internal.measurement.z6 (com.google.android.gms.internal.measurement.z6)
.class public final Lcom/google/android/gms/internal/measurement/z6;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final c:Lcom/google/android/gms/internal/measurement/z6;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/o6;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/z6;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/z6;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/z6;->c:Lcom/google/android/gms/internal/measurement/z6;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/z6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/o6;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/gms/internal/measurement/o6;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/r6;

    .line 17
    .line 18
    sget-object v3, Lcom/google/android/gms/internal/measurement/a6;->b:Lcom/google/android/gms/internal/measurement/a6;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v3, v2, v4

    .line 22
    .line 23
    sget-object v3, Lcom/google/android/gms/internal/measurement/o6;->b:Lcom/google/android/gms/internal/measurement/a6;

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    aput-object v3, v2, v4

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    sget-object v2, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    .line 37
    .line 38
    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/z6;->a:Lcom/google/android/gms/internal/measurement/o6;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/b7;
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    if-eqz p1, :cond_50

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/z6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/google/android/gms/internal/measurement/b7;

    .line 12
    .line 13
    if-nez v1, :cond_4f

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/z6;->a:Lcom/google/android/gms/internal/measurement/o6;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-class v2, Lcom/google/android/gms/internal/measurement/z5;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 23
    .line 24
    .line 25
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lcom/google/android/gms/internal/measurement/o6;

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/o6;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/a7;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v2, v1, Lcom/google/android/gms/internal/measurement/a7;->d:I

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    and-int/2addr v2, v3

    .line 37
    if-ne v2, v3, :cond_2e

    .line 38
    .line 39
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/a7;->a:Lcom/google/android/gms/internal/measurement/i5;

    .line 40
    .line 41
    new-instance v2, Lcom/google/android/gms/internal/measurement/v6;

    .line 42
    .line 43
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/v6;-><init>(Lcom/google/android/gms/internal/measurement/i5;)V

    .line 44
    .line 45
    .line 46
    goto :goto_45

    .line 47
    :cond_2e
    sget-object v2, Lcom/google/android/gms/internal/measurement/p6;->a:[I

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/a7;->a()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v3}, Landroidx/fragment/app/m1;->e(I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    aget v2, v2, v3

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    if-eq v2, v3, :cond_40

    .line 61
    .line 62
    sget-object v2, Lcom/google/android/gms/internal/measurement/q0;->a:Lcom/google/android/gms/internal/measurement/a6;

    .line 63
    .line 64
    goto :goto_41

    .line 65
    :cond_40
    const/4 v2, 0x0

    .line 66
    :goto_41
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/u6;->k(Lcom/google/android/gms/internal/measurement/a7;Lcom/google/android/gms/internal/measurement/a6;)Lcom/google/android/gms/internal/measurement/u6;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :goto_45
    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lcom/google/android/gms/internal/measurement/b7;

    .line 75
    .line 76
    if-eqz p1, :cond_4e

    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_4e
    return-object v2

    .line 80
    :cond_4f
    return-object v1

    .line 81
    :cond_50
    new-instance p1, Ljava/lang/NullPointerException;

    .line 82
    .line 83
    const-string v0, "messageType"

    .line 84
    .line 85
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method
