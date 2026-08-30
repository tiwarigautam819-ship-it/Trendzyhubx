###### Class v3.f (v3.f)
.class public abstract Lv3/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static b:Z = false

.field public static c:Z = false

.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final synthetic e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv3/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lv3/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 6

    .line 1
    sget-boolean v0, Lv3/f;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_3c

    .line 6
    .line 7
    :try_start_6
    invoke-static {p0}, Ld4/c;->a(Landroid/content/Context;)Ld4/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v3, "com.google.android.gms"

    .line 12
    .line 13
    const/16 v4, 0x40

    .line 14
    .line 15
    invoke-virtual {v0, v4, v3}, Ld4/b;->c(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p0}, Lv3/g;->a(Landroid/content/Context;)Lv3/g;

    .line 20
    .line 21
    .line 22
    if-eqz v0, :cond_2a

    .line 23
    .line 24
    invoke-static {v0, v1}, Lv3/g;->d(Landroid/content/pm/PackageInfo;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_2a

    .line 29
    .line 30
    invoke-static {v0, v2}, Lv3/g;->d(Landroid/content/pm/PackageInfo;Z)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_2a

    .line 35
    .line 36
    sput-boolean v2, Lv3/f;->b:Z

    .line 37
    .line 38
    goto :goto_2c

    .line 39
    :catchall_26
    move-exception p0

    .line 40
    goto :goto_39

    .line 41
    :catch_28
    move-exception p0

    .line 42
    goto :goto_2f

    .line 43
    :cond_2a
    sput-boolean v1, Lv3/f;->b:Z
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_2c} :catch_28
    .catchall {:try_start_6 .. :try_end_2c} :catchall_26

    .line 44
    .line 45
    :goto_2c
    sput-boolean v2, Lv3/f;->c:Z

    .line 46
    .line 47
    goto :goto_3c

    .line 48
    :goto_2f
    :try_start_2f
    const-string v0, "GooglePlayServicesUtil"

    .line 49
    .line 50
    const-string v3, "Cannot find Google Play services package name."

    .line 51
    .line 52
    invoke-static {v0, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_26

    .line 53
    .line 54
    .line 55
    sput-boolean v2, Lv3/f;->c:Z

    .line 56
    .line 57
    goto :goto_3c

    .line 58
    :goto_39
    sput-boolean v2, Lv3/f;->c:Z

    .line 59
    .line 60
    throw p0

    .line 61
    :cond_3c
    :goto_3c
    sget-boolean p0, Lv3/f;->b:Z

    .line 62
    .line 63
    if-nez p0, :cond_4c

    .line 64
    .line 65
    const-string p0, "user"

    .line 66
    .line 67
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-nez p0, :cond_4b

    .line 74
    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    return v1

    .line 77
    :cond_4c
    :goto_4c
    return v2
.end method
