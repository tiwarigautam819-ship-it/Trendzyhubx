###### Class com.google.android.gms.measurement.internal.zzax (com.google.android.gms.measurement.internal.zzax)
.class public final Lcom/google/android/gms/measurement/internal/zzax;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final zza:Lcom/google/android/gms/measurement/internal/zzax;


# instance fields
.field private final zzb:I

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/Boolean;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/google/android/gms/measurement/internal/zzje$zza;",
            "Lcom/google/android/gms/measurement/internal/zzjh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzax;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x64

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Ljava/lang/Boolean;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzax;->zza:Lcom/google/android/gms/measurement/internal/zzax;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;I)V
    .registers 3

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p1, p1}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V
    .registers 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzf:Ljava/util/EnumMap;

    .line 4
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object p1

    .line 6
    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzb:I

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzax;->zzh()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzc:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzd:Ljava/lang/Boolean;

    .line 10
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzax;->zze:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/google/android/gms/measurement/internal/zzje$zza;",
            "Lcom/google/android/gms/measurement/internal/zzjh;",
            ">;I",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzf:Ljava/util/EnumMap;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    .line 14
    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzb:I

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzax;->zzh()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzc:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzd:Ljava/lang/Boolean;

    .line 17
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzax;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzax;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 2
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzax;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Ljava/lang/Boolean;I)V

    return-object p0

    .line 3
    :cond_9
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 4
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjg;->zzb:Lcom/google/android/gms/measurement/internal/zzjg;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjg;->zza()[Lcom/google/android/gms/measurement/internal/zzje$zza;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_2c

    aget-object v5, v2, v4

    .line 5
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzje$zza;->zze:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object v6

    .line 8
    invoke-virtual {v1, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 9
    :cond_2c
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzax;

    .line 10
    const-string v3, "is_dma_region"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 11
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 12
    :cond_3e
    const-string v3, "cps_display_str"

    .line 13
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p1, v0, p0}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object v2
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zzjh;I)Lcom/google/android/gms/measurement/internal/zzax;
    .registers 4

    .line 14
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 15
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-virtual {p1, v0, p0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzax;

    const/16 v0, -0xa

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p0
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;
    .registers 10

    if-eqz p0, :cond_44

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_44

    .line 18
    :cond_9
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 19
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 20
    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 21
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjg;->zzb:Lcom/google/android/gms/measurement/internal/zzjg;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjg;->zza()[Lcom/google/android/gms/measurement/internal/zzje$zza;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x1

    move v6, v0

    :goto_26
    if-ge v6, v4, :cond_3d

    aget-object v7, v3, v6

    add-int/lit8 v8, v5, 0x1

    .line 22
    aget-object v5, p0, v5

    .line 23
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzje;->zza(C)Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object v5

    .line 24
    invoke-virtual {v2, v7, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_26

    .line 25
    :cond_3d
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzax;

    const/4 v0, 0x0

    invoke-direct {p0, v2, v1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p0

    .line 26
    :cond_44
    :goto_44
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzax;->zza:Lcom/google/android/gms/measurement/internal/zzax;

    return-object p0
.end method

.method public static zza(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 27
    :cond_4
    const-string v1, "ad_personalization"

    .line 28
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object p0

    if-nez p0, :cond_11

    return-object v0

    .line 30
    :cond_11
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzba;->zza:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_23

    const/4 v1, 0x4

    if-eq p0, v1, :cond_20

    return-object v0

    .line 31
    :cond_20
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 32
    :cond_23
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private final zzh()Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzb:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjg;->zzb:Lcom/google/android/gms/measurement/internal/zzjg;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjg;->zza()[Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    array-length v2, v1

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_12
    if-ge v3, v2, :cond_2d

    .line 20
    .line 21
    aget-object v4, v1, v3

    .line 22
    .line 23
    const-string v5, ":"

    .line 24
    .line 25
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzf:Ljava/util/EnumMap;

    .line 29
    .line 30
    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/google/android/gms/measurement/internal/zzjh;

    .line 35
    .line 36
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzjh;)C

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_12

    .line 46
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/measurement/internal/zzax;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    return v1

    .line 7
    :cond_6
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzax;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzc:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzax;->zzc:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_13

    .line 18
    .line 19
    return v1

    .line 20
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzd:Ljava/lang/Boolean;

    .line 21
    .line 22
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzax;->zzd:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1e

    .line 29
    .line 30
    return v1

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzax;->zze:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzax;->zze:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzd:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    goto :goto_e

    .line 7
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    if-ne v0, v1, :cond_c

    .line 10
    .line 11
    const/4 v0, 0x7

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    const/16 v0, 0xd

    .line 14
    .line 15
    :goto_e
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zze:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v1, :cond_15

    .line 18
    .line 19
    const/16 v1, 0x11

    .line 20
    .line 21
    goto :goto_19

    .line 22
    :cond_15
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :goto_19
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzc:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    mul-int/lit8 v0, v0, 0x1d

    .line 33
    .line 34
    add-int/2addr v0, v2

    .line 35
    mul-int/lit16 v1, v1, 0x89

    .line 36
    .line 37
    add-int/2addr v1, v0

    .line 38
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "source="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzb:I

    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zza(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjg;->zzb:Lcom/google/android/gms/measurement/internal/zzjg;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjg;->zza()[Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    array-length v2, v1

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_18
    if-ge v3, v2, :cond_68

    .line 26
    .line 27
    aget-object v4, v1, v3

    .line 28
    .line 29
    const-string v5, ","

    .line 30
    .line 31
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzje$zza;->zze:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v5, "="

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzf:Ljava/util/EnumMap;

    .line 45
    .line 46
    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lcom/google/android/gms/measurement/internal/zzjh;

    .line 51
    .line 52
    const-string v5, "uninitialized"

    .line 53
    .line 54
    if-nez v4, :cond_3b

    .line 55
    .line 56
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    goto :goto_65

    .line 60
    :cond_3b
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzba;->zza:[I

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    aget v4, v6, v4

    .line 67
    .line 68
    const/4 v6, 0x1

    .line 69
    if-eq v4, v6, :cond_62

    .line 70
    .line 71
    const/4 v5, 0x2

    .line 72
    if-eq v4, v5, :cond_5c

    .line 73
    .line 74
    const/4 v5, 0x3

    .line 75
    if-eq v4, v5, :cond_56

    .line 76
    .line 77
    const/4 v5, 0x4

    .line 78
    if-eq v4, v5, :cond_50

    .line 79
    .line 80
    goto :goto_65

    .line 81
    :cond_50
    const-string v4, "granted"

    .line 82
    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto :goto_65

    .line 87
    :cond_56
    const-string v4, "denied"

    .line 88
    .line 89
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_65

    .line 93
    :cond_5c
    const-string v4, "eu_consent_policy"

    .line 94
    .line 95
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_65

    .line 99
    :cond_62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    :goto_65
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    goto :goto_18

    .line 105
    :cond_68
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzd:Ljava/lang/Boolean;

    .line 106
    .line 107
    if-eqz v1, :cond_76

    .line 108
    .line 109
    const-string v1, ",isDmaRegion="

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzd:Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    :cond_76
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zze:Ljava/lang/String;

    .line 120
    .line 121
    if-eqz v1, :cond_84

    .line 122
    .line 123
    const-string v1, ",cpsDisplayStr="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zze:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    :cond_84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    return-object v0
.end method

.method public final zza()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzb:I

    return v0
.end method

.method public final zzb()Landroid/os/Bundle;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzf:Ljava/util/EnumMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_33

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/google/android/gms/measurement/internal/zzjh;

    .line 33
    .line 34
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzje;->zzb(Lcom/google/android/gms/measurement/internal/zzjh;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_f

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje$zza;->zze:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_f

    .line 52
    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzd:Ljava/lang/Boolean;

    .line 53
    .line 54
    if-eqz v1, :cond_40

    .line 55
    .line 56
    const-string v2, "is_dma_region"

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zze:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v1, :cond_49

    .line 68
    .line 69
    const-string v2, "cps_display_str"

    .line 70
    .line 71
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_49
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzjh;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzf:Ljava/util/EnumMap;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/measurement/internal/zzjh;

    .line 10
    .line 11
    if-nez v0, :cond_e

    .line 12
    .line 13
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    .line 14
    .line 15
    :cond_e
    return-object v0
.end method

.method public final zzd()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzd:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzax;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzg()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzf:Ljava/util/EnumMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1c

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/google/android/gms/measurement/internal/zzjh;

    .line 22
    .line 23
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    .line 24
    .line 25
    if-eq v1, v2, :cond_a

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    return v0
.end method
