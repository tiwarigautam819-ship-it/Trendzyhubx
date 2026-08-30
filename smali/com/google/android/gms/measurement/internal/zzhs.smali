###### Class com.google.android.gms.measurement.internal.zzhs (com.google.android.gms.measurement.internal.zzhs)
.class public final Lcom/google/android/gms/measurement/internal/zzhs;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private final zza:Landroid/content/res/Resources;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zza:Landroid/content/res/Resources;

    .line 12
    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_15

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zzb:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhs;->zza(Landroid/content/Context;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zzb:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method public static zza(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0047

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    .line 5
    :catch_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zza:Landroid/content/res/Resources;

    const-string v1, "string"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zzb:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_e

    return-object v0

    .line 2
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhs;->zza:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_14} :catch_15

    return-object p1

    :catch_15
    return-object v0
.end method
