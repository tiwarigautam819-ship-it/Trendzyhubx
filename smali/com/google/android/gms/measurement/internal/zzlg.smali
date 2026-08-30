###### Class com.google.android.gms.measurement.internal.zzlg (com.google.android.gms.measurement.internal.zzlg)
.class final Lcom/google/android/gms/measurement/internal/zzlg;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Ljava/net/URL;

.field private final zzb:Lcom/google/android/gms/measurement/internal/zzld;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzle;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzld;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/zzld;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzle;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p6}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zza:Ljava/net/URL;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzb:Lcom/google/android/gms/measurement/internal/zzld;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Ljava/lang/String;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzd:Ljava/util/Map;

    .line 23
    .line 24
    return-void
.end method

.method private final zzb(ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Exception;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzle;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzlf;

    .line 8
    .line 9
    move-object v2, p0

    .line 10
    move v3, p1

    .line 11
    move-object v4, p2

    .line 12
    move-object v5, p3

    .line 13
    move-object v6, p4

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlf;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzle;->zzr()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_7
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zza:Ljava/net/URL;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_9} :catch_50
    .catchall {:try_start_7 .. :try_end_9} :catchall_4c

    .line 9
    .line 10
    :try_start_9
    const-class v3, Lcom/google/android/gms/internal/measurement/q0;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    monitor-exit v3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_62
    .catchall {:try_start_9 .. :try_end_d} :catchall_60

    .line 14
    :try_start_d
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    if-eqz v3, :cond_54

    .line 21
    .line 22
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 25
    .line 26
    .line 27
    const v3, 0xea60

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 31
    .line 32
    .line 33
    const v3, 0xee48

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2d} :catch_50
    .catchall {:try_start_d .. :try_end_2d} :catchall_4c

    .line 44
    .line 45
    .line 46
    :try_start_2d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object v3
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_35} :catch_49
    .catchall {:try_start_2d .. :try_end_35} :catchall_46

    .line 54
    :try_start_35
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzle;

    .line 55
    .line 56
    invoke-static {v4, v2}, Lcom/google/android/gms/measurement/internal/zzle;->zza(Lcom/google/android/gms/measurement/internal/zzle;Ljava/net/HttpURLConnection;)[B

    .line 57
    .line 58
    .line 59
    move-result-object v4
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3b} :catch_44
    .catchall {:try_start_35 .. :try_end_3b} :catchall_42

    .line 60
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_42
    move-exception v4

    .line 68
    goto :goto_64

    .line 69
    :catch_44
    move-exception v4

    .line 70
    goto :goto_6d

    .line 71
    :catchall_46
    move-exception v4

    .line 72
    move-object v3, v0

    .line 73
    goto :goto_64

    .line 74
    :catch_49
    move-exception v4

    .line 75
    move-object v3, v0

    .line 76
    goto :goto_6d

    .line 77
    :catchall_4c
    move-exception v4

    .line 78
    :goto_4d
    move-object v2, v0

    .line 79
    move-object v3, v2

    .line 80
    goto :goto_64

    .line 81
    :catch_50
    move-exception v4

    .line 82
    :goto_51
    move-object v2, v0

    .line 83
    move-object v3, v2

    .line 84
    goto :goto_6d

    .line 85
    :cond_54
    :try_start_54
    new-instance v2, Ljava/io/IOException;

    .line 86
    .line 87
    const-string v3, "Failed to obtain HTTP connection"

    .line 88
    .line 89
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v2
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5c} :catch_50
    .catchall {:try_start_54 .. :try_end_5c} :catchall_4c

    .line 93
    :goto_5c
    move-object v4, v2

    .line 94
    goto :goto_4d

    .line 95
    :goto_5e
    move-object v4, v2

    .line 96
    goto :goto_51

    .line 97
    :catchall_60
    move-exception v2

    .line 98
    goto :goto_5c

    .line 99
    :catch_62
    move-exception v2

    .line 100
    goto :goto_5e

    .line 101
    :goto_64
    if-eqz v2, :cond_69

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    .line 105
    .line 106
    :cond_69
    invoke-direct {p0, v1, v0, v0, v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 107
    .line 108
    .line 109
    throw v4

    .line 110
    :goto_6d
    if-eqz v2, :cond_72

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 113
    .line 114
    .line 115
    :cond_72
    invoke-direct {p0, v1, v4, v0, v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final synthetic zza(ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzb:Lcom/google/android/gms/measurement/internal/zzld;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Ljava/lang/String;

    .line 4
    .line 5
    move v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzld;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzlf (com.google.android.gms.measurement.internal.zzlf)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzlf;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzlg;

.field private synthetic zzb:I

.field private synthetic zzc:Ljava/lang/Exception;

.field private synthetic zzd:[B

.field private synthetic zze:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzlg;ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zza:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzb:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzc:Ljava/lang/Exception;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzd:[B

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zze:Ljava/util/Map;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zza:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzb:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzc:Ljava/lang/Exception;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzd:[B

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zze:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzlg;->zza(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
