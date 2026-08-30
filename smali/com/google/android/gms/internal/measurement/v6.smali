###### Class com.google.android.gms.internal.measurement.v6 (com.google.android.gms.internal.measurement.v6)
.class public final Lcom/google/android/gms/internal/measurement/v6;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/b7;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/i5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/i5;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/v6;->a:Lcom/google/android/gms/internal/measurement/i5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, La1/a;->o(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/z5;)I
    .registers 2

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c7;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/z5;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 5
    .line 6
    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/c7;->e:Z

    .line 7
    .line 8
    if-eqz v1, :cond_c

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/c7;->e:Z

    .line 12
    .line 13
    :cond_c
    invoke-static {p1}, La1/a;->o(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method public final d(Lcom/google/android/gms/internal/measurement/z5;)I
    .registers 9

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 2
    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/measurement/c7;->d:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_8

    .line 7
    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_a
    iget v2, p1, Lcom/google/android/gms/internal/measurement/c7;->a:I

    .line 12
    .line 13
    if-ge v0, v2, :cond_35

    .line 14
    .line 15
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/c7;->b:[I

    .line 16
    .line 17
    aget v2, v2, v0

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    ushr-int/2addr v2, v3

    .line 21
    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/c7;->c:[Ljava/lang/Object;

    .line 22
    .line 23
    aget-object v4, v4, v0

    .line 24
    .line 25
    check-cast v4, Lcom/google/android/gms/internal/measurement/p5;

    .line 26
    .line 27
    const/16 v5, 0x8

    .line 28
    .line 29
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    shl-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    const/16 v6, 0x10

    .line 36
    .line 37
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-static {v2, v6, v5}, La1/a;->h(III)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/q5;->p(ILcom/google/android/gms/internal/measurement/p5;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    add-int/2addr v3, v2

    .line 50
    add-int/2addr v1, v3

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_a

    .line 54
    :cond_35
    iput v1, p1, Lcom/google/android/gms/internal/measurement/c7;->d:I

    .line 55
    .line 56
    return v1
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/a5;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;)Z
    .registers 3

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/c7;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_c

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_c
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public final g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/m5;)V
    .registers 6

    .line 1
    move-object p2, p1

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/measurement/z5;

    .line 3
    .line 4
    iget-object p3, p2, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 5
    .line 6
    sget-object p4, Lcom/google/android/gms/internal/measurement/c7;->f:Lcom/google/android/gms/internal/measurement/c7;

    .line 7
    .line 8
    if-ne p3, p4, :cond_f

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/c7;->e()Lcom/google/android/gms/internal/measurement/c7;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    iput-object p3, p2, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 15
    .line 16
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/lang/ClassCastException;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final h(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/o6;)V
    .registers 3

    .line 1
    invoke-static {p1}, La1/a;->o(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public final zza()Lcom/google/android/gms/internal/measurement/z5;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v6;->a:Lcom/google/android/gms/internal/measurement/i5;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/z5;

    .line 4
    .line 5
    if-eqz v1, :cond_10

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/z5;

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/z5;->e(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/measurement/z5;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_10
    check-cast v0, Lcom/google/android/gms/internal/measurement/z5;

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/z5;->e(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/measurement/y5;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y5;->d()Lcom/google/android/gms/internal/measurement/z5;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
