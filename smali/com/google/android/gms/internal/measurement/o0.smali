###### Class com.google.android.gms.internal.measurement.o0 (com.google.android.gms.internal.measurement.o0)
.class public final Lcom/google/android/gms/internal/measurement/o0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final b:Ljava/lang/reflect/Method;

.field public static final c:Ljava/lang/reflect/Method;


# instance fields
.field public final a:Landroid/app/job/JobScheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x6

    .line 5
    const-string v3, "JobSchedulerCompat"

    .line 6
    .line 7
    const/16 v4, 0x18

    .line 8
    .line 9
    if-lt v0, v4, :cond_33

    .line 10
    .line 11
    :try_start_a
    const-class v0, Landroid/app/job/JobScheduler;

    .line 12
    .line 13
    const-string v5, "scheduleAsPackage"

    .line 14
    .line 15
    const/4 v6, 0x4

    .line 16
    new-array v6, v6, [Ljava/lang/Class;

    .line 17
    .line 18
    const-class v7, Landroid/app/job/JobInfo;

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    aput-object v7, v6, v8

    .line 22
    .line 23
    const-class v7, Ljava/lang/String;

    .line 24
    .line 25
    const/4 v8, 0x1

    .line 26
    aput-object v7, v6, v8

    .line 27
    .line 28
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    const/4 v9, 0x2

    .line 31
    aput-object v8, v6, v9

    .line 32
    .line 33
    const/4 v8, 0x3

    .line 34
    aput-object v7, v6, v8

    .line 35
    .line 36
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_27} :catch_28

    .line 40
    goto :goto_34

    .line 41
    :catch_28
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_33

    .line 46
    .line 47
    const-string v0, "No scheduleAsPackage method available, falling back to schedule"

    .line 48
    .line 49
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_33
    move-object v0, v1

    .line 53
    :goto_34
    sput-object v0, Lcom/google/android/gms/internal/measurement/o0;->b:Ljava/lang/reflect/Method;

    .line 54
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    if-lt v0, v4, :cond_4e

    .line 58
    .line 59
    :try_start_3a
    const-class v0, Landroid/os/UserHandle;

    .line 60
    .line 61
    const-string v4, "myUserId"

    .line 62
    .line 63
    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    .line 65
    .line 66
    move-result-object v1
    :try_end_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3a .. :try_end_42} :catch_43

    .line 67
    goto :goto_4e

    .line 68
    :catch_43
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4e

    .line 73
    .line 74
    const-string v0, "No myUserId method available"

    .line 75
    .line 76
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_4e
    :goto_4e
    sput-object v1, Lcom/google/android/gms/internal/measurement/o0;->c:Ljava/lang/reflect/Method;

    .line 80
    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobScheduler;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/o0;->a:Landroid/app/job/JobScheduler;

    .line 5
    .line 6
    return-void
.end method
