###### Class com.google.android.gms.measurement.internal.zzje (com.google.android.gms.measurement.internal.zzje)
.class public final Lcom/google/android/gms/measurement/internal/zzje;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/zzje$zza;
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/measurement/internal/zzje;


# instance fields
.field private final zzb:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/google/android/gms/measurement/internal/zzje$zza;",
            "Lcom/google/android/gms/measurement/internal/zzjh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzje;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x64

    .line 5
    .line 6
    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzje;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzje;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V
    .registers 6

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    .line 7
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzje$zza;->zza:Lcom/google/android/gms/measurement/internal/zzje$zza;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:I

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumMap;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/google/android/gms/measurement/internal/zzje$zza;",
            "Lcom/google/android/gms/measurement/internal/zzjh;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    .line 4
    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:I

    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zzjh;)C
    .registers 2

    if-eqz p0, :cond_19

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    goto :goto_19

    :cond_10
    const/16 p0, 0x31

    return p0

    :cond_13
    const/16 p0, 0x30

    return p0

    :cond_16
    const/16 p0, 0x2b

    return p0

    :cond_19
    :goto_19
    const/16 p0, 0x2d

    return p0
.end method

.method public static zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzje;
    .registers 8

    if-nez p0, :cond_9

    .line 18
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzje;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzje;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    return-object p0

    .line 19
    :cond_9
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 20
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjg;->zza:Lcom/google/android/gms/measurement/internal/zzjg;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjg;->zza(Lcom/google/android/gms/measurement/internal/zzjg;)[Lcom/google/android/gms/measurement/internal/zzje$zza;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_2c

    aget-object v4, v1, v3

    .line 21
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzje$zza;->zze:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object v5

    .line 23
    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 24
    :cond_2c
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzje;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzje;-><init>(Ljava/util/EnumMap;I)V

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zzjh;Lcom/google/android/gms/measurement/internal/zzjh;I)Lcom/google/android/gms/measurement/internal/zzje;
    .registers 4

    .line 25
    new-instance p2, Ljava/util/EnumMap;

    const-class v0, Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-direct {p2, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 26
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zza:Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-virtual {p2, v0, p0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-virtual {p2, p0, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzje;

    const/16 p1, -0xa

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzje;-><init>(Ljava/util/EnumMap;I)V

    return-object p0
.end method

.method public static zza(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzje;
    .registers 8

    .line 29
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    if-nez p0, :cond_b

    .line 30
    const-string p0, ""

    .line 31
    :cond_b
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjg;->zza:Lcom/google/android/gms/measurement/internal/zzjg;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjg;->zza()[Lcom/google/android/gms/measurement/internal/zzje$zza;

    move-result-object v1

    const/4 v2, 0x0

    .line 32
    :goto_12
    array-length v3, v1

    if-ge v2, v3, :cond_33

    .line 33
    aget-object v3, v1, v2

    add-int/lit8 v4, v2, 0x2

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2b

    .line 35
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzje;->zza(C)Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object v4

    .line 36
    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 37
    :cond_2b
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 38
    :cond_33
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzje;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzje;-><init>(Ljava/util/EnumMap;I)V

    return-object p0
.end method

.method public static zza(C)Lcom/google/android/gms/measurement/internal/zzjh;
    .registers 2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_15

    const/16 v0, 0x30

    if-eq p0, v0, :cond_12

    const/16 v0, 0x31

    if-eq p0, v0, :cond_f

    .line 10
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object p0

    .line 11
    :cond_f
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object p0

    .line 12
    :cond_12
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object p0

    .line 13
    :cond_15
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzb:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object p0
.end method

.method public static zza(Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzjh;
    .registers 1

    if-nez p0, :cond_5

    .line 14
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object p0

    .line 15
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 16
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object p0

    .line 17
    :cond_e
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object p0
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjh;
    .registers 2

    if-nez p0, :cond_5

    .line 4
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object p0

    .line 5
    :cond_5
    const-string v0, "granted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object p0

    .line 7
    :cond_10
    const-string v0, "denied"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 8
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object p0

    .line 9
    :cond_1b
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object p0
.end method

.method public static zza(I)Ljava/lang/String;
    .registers 2

    const/16 v0, -0x1e

    if-eq p0, v0, :cond_2f

    const/16 v0, -0x14

    if-eq p0, v0, :cond_2c

    const/16 v0, -0xa

    if-eq p0, v0, :cond_29

    if-eqz p0, :cond_26

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_23

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_20

    const/16 v0, 0x64

    if-eq p0, v0, :cond_1d

    .line 49
    const-string p0, "OTHER"

    return-object p0

    .line 50
    :cond_1d
    const-string p0, "UNKNOWN"

    return-object p0

    .line 51
    :cond_20
    const-string p0, "REMOTE_CONFIG"

    return-object p0

    .line 52
    :cond_23
    const-string p0, "1P_INIT"

    return-object p0

    .line 53
    :cond_26
    const-string p0, "1P_API"

    return-object p0

    .line 54
    :cond_29
    const-string p0, "MANIFEST"

    return-object p0

    .line 55
    :cond_2c
    const-string p0, "API"

    return-object p0

    .line 56
    :cond_2f
    const-string p0, "TCF"

    return-object p0
.end method

.method public static zza(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 7

    .line 57
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjg;->zza:Lcom/google/android/gms/measurement/internal/zzjg;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjg;->zza(Lcom/google/android/gms/measurement/internal/zzjg;)[Lcom/google/android/gms/measurement/internal/zzje$zza;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    const/4 v3, 0x0

    if-ge v2, v1, :cond_38

    aget-object v4, v0, v2

    .line 58
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzje$zza;->zze:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 59
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzje$zza;->zze:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 60
    const-string v5, "granted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 61
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_32

    .line 62
    :cond_28
    const-string v5, "denied"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 63
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_32
    :goto_32
    if-nez v3, :cond_35

    return-object v4

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_38
    return-object v3
.end method

.method public static zza(II)Z
    .registers 4

    .line 1
    const/16 v0, -0x1e

    const/16 v1, -0x14

    if-ne p0, v1, :cond_8

    if-eq p1, v0, :cond_12

    :cond_8
    if-ne p0, v0, :cond_d

    if-ne p1, v1, :cond_d

    goto :goto_12

    :cond_d
    if-ne p0, p1, :cond_10

    goto :goto_12

    :cond_10
    if-ge p0, p1, :cond_14

    :cond_12
    :goto_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;
    .registers 2

    const/16 v0, 0x64

    .line 5
    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/measurement/internal/zzjh;)Ljava/lang/String;
    .registers 2

    .line 12
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 13
    :cond_c
    const-string p0, "granted"

    return-object p0

    .line 14
    :cond_f
    const-string p0, "denied"

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/measurement/internal/zzje;

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
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzje;

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjg;->zza:Lcom/google/android/gms/measurement/internal/zzjg;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjg;->zza(Lcom/google/android/gms/measurement/internal/zzjg;)[Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v2, v0

    .line 16
    move v3, v1

    .line 17
    :goto_10
    if-ge v3, v2, :cond_26

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    .line 22
    .line 23
    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    .line 28
    .line 29
    invoke-virtual {v6, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eq v5, v4, :cond_23

    .line 34
    .line 35
    return v1

    .line 36
    :cond_23
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_10

    .line 39
    :cond_26
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:I

    .line 40
    .line 41
    iget p1, p1, Lcom/google/android/gms/measurement/internal/zzje;->zzc:I

    .line 42
    .line 43
    if-ne v0, p1, :cond_2e

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    return p1

    .line 47
    :cond_2e
    return v1
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x11

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_22

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/google/android/gms/measurement/internal/zzjh;

    .line 26
    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/2addr v0, v2

    .line 34
    goto :goto_e

    .line 35
    :cond_22
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

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
    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:I

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
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjg;->zza:Lcom/google/android/gms/measurement/internal/zzjg;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjg;->zza(Lcom/google/android/gms/measurement/internal/zzjg;)[Lcom/google/android/gms/measurement/internal/zzje$zza;

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
    if-ge v3, v2, :cond_3d

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
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

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
    if-nez v4, :cond_37

    .line 53
    .line 54
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    .line 55
    .line 56
    :cond_37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_18

    .line 62
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method public final zza()I
    .registers 2

    .line 3
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:I

    return v0
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzje;)Lcom/google/android/gms/measurement/internal/zzje;
    .registers 10

    .line 39
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 40
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjg;->zza:Lcom/google/android/gms/measurement/internal/zzjg;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjg;->zza(Lcom/google/android/gms/measurement/internal/zzjg;)[Lcom/google/android/gms/measurement/internal/zzje$zza;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_4d

    aget-object v4, v1, v3

    .line 41
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    .line 42
    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzjh;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    invoke-virtual {v6, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzjh;

    if-nez v5, :cond_26

    goto :goto_35

    :cond_26
    if-nez v6, :cond_29

    goto :goto_45

    .line 43
    :cond_29
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    if-ne v5, v7, :cond_2e

    goto :goto_35

    :cond_2e
    if-ne v6, v7, :cond_31

    goto :goto_45

    .line 44
    :cond_31
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzjh;->zzb:Lcom/google/android/gms/measurement/internal/zzjh;

    if-ne v5, v7, :cond_37

    :goto_35
    move-object v5, v6

    goto :goto_45

    :cond_37
    if-ne v6, v7, :cond_3a

    goto :goto_45

    .line 45
    :cond_3a
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzjh;

    if-eq v5, v7, :cond_44

    if-ne v6, v7, :cond_41

    goto :goto_44

    .line 46
    :cond_41
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzjh;

    goto :goto_45

    :cond_44
    :goto_44
    move-object v5, v7

    :goto_45
    if-eqz v5, :cond_4a

    .line 47
    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 48
    :cond_4d
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzje;

    const/16 v1, 0x64

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzje;-><init>(Ljava/util/EnumMap;I)V

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzje$zza;)Z
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzjh;

    .line 67
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzjh;

    if-ne p1, v0, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method public final varargs zza(Lcom/google/android/gms/measurement/internal/zzje;[Lcom/google/android/gms/measurement/internal/zzje$zza;)Z
    .registers 8

    .line 64
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_18

    aget-object v3, p2, v2

    .line 65
    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_18
    return v1
.end method

.method public final zzb()Landroid/os/Bundle;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzjh;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzje;->zzb(Lcom/google/android/gms/measurement/internal/zzjh;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzje$zza;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje$zza;->zze:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_33
    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzje;)Lcom/google/android/gms/measurement/internal/zzje;
    .registers 9

    .line 6
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 7
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjg;->zza:Lcom/google/android/gms/measurement/internal/zzjg;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjg;->zza(Lcom/google/android/gms/measurement/internal/zzjg;)[Lcom/google/android/gms/measurement/internal/zzje$zza;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_2f

    aget-object v4, v1, v3

    .line 8
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzjh;

    .line 9
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    if-ne v5, v6, :cond_27

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzjh;

    :cond_27
    if-eqz v5, :cond_2c

    .line 10
    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 11
    :cond_2f
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzje;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzje;-><init>(Ljava/util/EnumMap;I)V

    return-object p1
.end method

.method public final varargs zzb(Lcom/google/android/gms/measurement/internal/zzje;[Lcom/google/android/gms/measurement/internal/zzje$zza;)Z
    .registers 9

    .line 15
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_22

    aget-object v3, p2, v2

    .line 16
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzjh;

    .line 17
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    invoke-virtual {v5, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzjh;

    .line 18
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzjh;

    if-ne v4, v5, :cond_1f

    if-eq v3, v5, :cond_1f

    const/4 p1, 0x1

    return p1

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_22
    return v1
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzjh;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zza:Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzjh;

    if-nez v0, :cond_e

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    :cond_e
    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/measurement/internal/zzje;)Z
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    .line 4
    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzb(Lcom/google/android/gms/measurement/internal/zzje;[Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    move-result p1

    return p1
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzjh;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

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

.method public final zze()Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "G1"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjg;->zza:Lcom/google/android/gms/measurement/internal/zzjg;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjg;->zza()[Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    array-length v2, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_f
    if-ge v3, v2, :cond_3a

    .line 17
    .line 18
    aget-object v4, v1, v3

    .line 19
    .line 20
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    .line 21
    .line 22
    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/google/android/gms/measurement/internal/zzjh;

    .line 27
    .line 28
    const/16 v5, 0x2d

    .line 29
    .line 30
    if-eqz v4, :cond_34

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_34

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    if-eq v4, v6, :cond_32

    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    if-eq v4, v6, :cond_2f

    .line 43
    .line 44
    const/4 v6, 0x3

    .line 45
    if-eq v4, v6, :cond_32

    .line 46
    .line 47
    goto :goto_34

    .line 48
    :cond_2f
    const/16 v5, 0x30

    .line 49
    .line 50
    goto :goto_34

    .line 51
    :cond_32
    const/16 v5, 0x31

    .line 52
    .line 53
    :cond_34
    :goto_34
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_f

    .line 59
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "G1"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjg;->zza:Lcom/google/android/gms/measurement/internal/zzjg;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjg;->zza()[Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    array-length v2, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_f
    if-ge v3, v2, :cond_25

    .line 17
    .line 18
    aget-object v4, v1, v3

    .line 19
    .line 20
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

    .line 21
    .line 22
    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/google/android/gms/measurement/internal/zzjh;

    .line 27
    .line 28
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzjh;)C

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_f

    .line 38
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public final zzg()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zza:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzh()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzi()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Ljava/util/EnumMap;

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

###### Class com.google.android.gms.measurement.internal.zzje.zza (com.google.android.gms.measurement.internal.zzje$zza)
.class public final enum Lcom/google/android/gms/measurement/internal/zzje$zza;
.super Ljava/lang/Enum;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzje;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/measurement/internal/zzje$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzje$zza;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/zzje$zza;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/zzje$zza;

.field private static final synthetic zzf:[Lcom/google/android/gms/measurement/internal/zzje$zza;


# instance fields
.field public final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 2
    .line 3
    const-string v1, "ad_storage"

    .line 4
    .line 5
    const-string v2, "AD_STORAGE"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzje$zza;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zza:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 14
    .line 15
    const-string v2, "analytics_storage"

    .line 16
    .line 17
    const-string v4, "ANALYTICS_STORAGE"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzje$zza;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 24
    .line 25
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 26
    .line 27
    const-string v4, "ad_user_data"

    .line 28
    .line 29
    const-string v6, "AD_USER_DATA"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzje$zza;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 36
    .line 37
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 38
    .line 39
    const-string v6, "ad_personalization"

    .line 40
    .line 41
    const-string v8, "AD_PERSONALIZATION"

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    invoke-direct {v4, v8, v9, v6}, Lcom/google/android/gms/measurement/internal/zzje$zza;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 48
    .line 49
    const/4 v6, 0x4

    .line 50
    new-array v6, v6, [Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 51
    .line 52
    aput-object v0, v6, v3

    .line 53
    .line 54
    aput-object v1, v6, v5

    .line 55
    .line 56
    aput-object v2, v6, v7

    .line 57
    .line 58
    aput-object v4, v6, v9

    .line 59
    .line 60
    sput-object v6, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzf:[Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 61
    .line 62
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zze:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzje$zza;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzf:[Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzje$zza;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 8
    .line 9
    return-object v0
.end method
