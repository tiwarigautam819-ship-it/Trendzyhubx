###### Class j2.c (j2.c)
.class public final Lj2/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lj2/c;

.field public static b:Z

.field public static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lj2/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj2/c;->a:Lj2/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .registers 10

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    :try_start_8
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_3f

    .line 13
    const-string v2, "none"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v0, :cond_13

    .line 18
    .line 19
    goto :goto_39

    .line 20
    :cond_13
    const/16 v0, 0x1e

    .line 21
    .line 22
    :try_start_15
    new-array v5, v0, [F

    .line 23
    .line 24
    move v6, v1

    .line 25
    :goto_18
    if-ge v6, v0, :cond_22

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    aput v7, v5, v6

    .line 29
    .line 30
    add-int/lit8 v6, v6, 0x1

    .line 31
    .line 32
    goto :goto_18

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    goto :goto_36

    .line 35
    :cond_22
    new-array v0, v3, [[F

    .line 36
    .line 37
    aput-object v5, v0, v1

    .line 38
    .line 39
    filled-new-array {p1}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v3, v0, p1}, Ll2/d;->f(I[[F[Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_34

    .line 48
    .line 49
    aget-object v4, p1, v1
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_20

    .line 50
    .line 51
    if-nez v4, :cond_39

    .line 52
    .line 53
    :cond_34
    move-object v4, v2

    .line 54
    goto :goto_39

    .line 55
    :goto_36
    :try_start_36
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_39
    :goto_39
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_3f

    .line 62
    xor-int/2addr p1, v3

    .line 63
    return p1

    .line 64
    :catchall_3f
    move-exception p1

    .line 65
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return v1
.end method
