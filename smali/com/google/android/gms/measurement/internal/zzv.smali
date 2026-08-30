###### Class com.google.android.gms.measurement.internal.zzv (com.google.android.gms.measurement.internal.zzv)
.class final Lcom/google/android/gms/measurement/internal/zzv;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Z

.field private zzc:Lcom/google/android/gms/internal/measurement/d4;

.field private zzd:Ljava/util/BitSet;

.field private zze:Ljava/util/BitSet;

.field private zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final synthetic zzh:Lcom/google/android/gms/measurement/internal/zzt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;)V
    .registers 3

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzb:Z

    .line 6
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzd:Ljava/util/BitSet;

    .line 7
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zze:Ljava/util/BitSet;

    .line 8
    new-instance p1, Ls/e;

    const/4 p2, 0x0

    .line 9
    invoke-direct {p1, p2}, Ls/j;-><init>(I)V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzf:Ljava/util/Map;

    .line 11
    new-instance p1, Ls/e;

    .line 12
    invoke-direct {p1, p2}, Ls/j;-><init>(I)V

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzg:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/d4;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/d4;",
            "Ljava/util/BitSet;",
            "Ljava/util/BitSet;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzd:Ljava/util/BitSet;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzv;->zze:Ljava/util/BitSet;

    .line 18
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzf:Ljava/util/Map;

    .line 19
    new-instance p1, Ls/e;

    const/4 p2, 0x0

    .line 20
    invoke-direct {p1, p2}, Ls/j;-><init>(I)V

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzg:Ljava/util/Map;

    if-eqz p7, :cond_3f

    .line 22
    invoke-interface {p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    .line 23
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {p7, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object p6, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzg:Ljava/util/Map;

    invoke-interface {p6, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 26
    :cond_3f
    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzb:Z

    .line 27
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/internal/measurement/d4;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/d4;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzac;)V
    .registers 9

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/measurement/internal/zzv;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/d4;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzac;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzv;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzv;)Ljava/util/BitSet;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzd:Ljava/util/BitSet;

    return-object p0
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/m3;
    .registers 9

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/m3;->r()Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v1, Lcom/google/android/gms/internal/measurement/m3;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/m3;->o(Lcom/google/android/gms/internal/measurement/m3;I)V

    .line 5
    iget-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzb:Z

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v1, Lcom/google/android/gms/internal/measurement/m3;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/m3;->q(Lcom/google/android/gms/internal/measurement/m3;Z)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Lcom/google/android/gms/internal/measurement/d4;

    if-eqz p1, :cond_28

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 10
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v1, Lcom/google/android/gms/internal/measurement/m3;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/m3;->s(Lcom/google/android/gms/internal/measurement/m3;Lcom/google/android/gms/internal/measurement/d4;)V

    .line 11
    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/d4;->z()Lcom/google/android/gms/internal/measurement/c4;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzd:Ljava/util/BitSet;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 14
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v2, Lcom/google/android/gms/internal/measurement/d4;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/d4;->s(Lcom/google/android/gms/internal/measurement/d4;Ljava/lang/Iterable;)V

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zze:Ljava/util/BitSet;

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 18
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v2, Lcom/google/android/gms/internal/measurement/d4;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/d4;->y(Lcom/google/android/gms/internal/measurement/d4;Ljava/lang/Iterable;)V

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzf:Ljava/util/Map;

    if-nez v1, :cond_56

    const/4 v1, 0x0

    goto :goto_ab

    .line 20
    :cond_56
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzf:Ljava/util/Map;

    .line 21
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzf:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6b
    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ab

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 23
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzf:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_6b

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/o3;->r()Lcom/google/android/gms/internal/measurement/n3;

    move-result-object v5

    .line 25
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 26
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v6, Lcom/google/android/gms/internal/measurement/o3;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/measurement/o3;->o(Lcom/google/android/gms/internal/measurement/o3;I)V

    .line 27
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 28
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 29
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v6, Lcom/google/android/gms/internal/measurement/o3;

    invoke-static {v6, v3, v4}, Lcom/google/android/gms/internal/measurement/o3;->p(Lcom/google/android/gms/internal/measurement/o3;J)V

    .line 30
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/o3;

    .line 31
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    :cond_ab
    :goto_ab
    if-eqz v1, :cond_b7

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 33
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v2, Lcom/google/android/gms/internal/measurement/d4;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/d4;->p(Lcom/google/android/gms/internal/measurement/d4;Ljava/util/ArrayList;)V

    .line 34
    :cond_b7
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzg:Ljava/util/Map;

    if-nez v1, :cond_be

    .line 35
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_114

    .line 36
    :cond_be
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzg:Ljava/util/Map;

    .line 37
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzg:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_114

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f4;->s()Lcom/google/android/gms/internal/measurement/e4;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 41
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v6, Lcom/google/android/gms/internal/measurement/f4;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/measurement/f4;->p(Lcom/google/android/gms/internal/measurement/f4;I)V

    .line 42
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzg:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_10a

    .line 43
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 44
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 45
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v5, Lcom/google/android/gms/internal/measurement/f4;

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/measurement/f4;->q(Lcom/google/android/gms/internal/measurement/f4;Ljava/util/List;)V

    .line 46
    :cond_10a
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/f4;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    .line 47
    :cond_114
    :goto_114
    check-cast v1, Ljava/util/List;

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 49
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v2, Lcom/google/android/gms/internal/measurement/d4;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/d4;->v(Lcom/google/android/gms/internal/measurement/d4;Ljava/lang/Iterable;)V

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 51
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v1, Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/d4;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/m3;->p(Lcom/google/android/gms/internal/measurement/m3;Lcom/google/android/gms/internal/measurement/d4;)V

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/m3;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzaa;)V
    .registers 10

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaa;->zza()I

    move-result v0

    .line 54
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    .line 55
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzv;->zze:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 56
    :cond_11
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:Ljava/lang/Boolean;

    if-eqz v1, :cond_1e

    .line 57
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzd:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 58
    :cond_1e
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Ljava/lang/Long;

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_4e

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzf:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 60
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    if-eqz v1, :cond_41

    .line 61
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_4e

    .line 62
    :cond_41
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzf:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_4e
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/Long;

    if-eqz v1, :cond_cb

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzg:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_6e

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzg:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_6e
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaa;->zzc()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 68
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 69
    :cond_77
    invoke-static {}, Lcom/google/android/gms/internal/measurement/o8;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzbp:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 71
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaa;->zzb()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 73
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 74
    :cond_93
    invoke-static {}, Lcom/google/android/gms/internal/measurement/o8;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 77
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    .line 78
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cb

    .line 79
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 80
    :cond_bd
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/Long;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 82
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_cb
    return-void
.end method
