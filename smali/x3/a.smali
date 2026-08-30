###### Class x3.a (x3.a)
.class public final Lx3/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:I

.field public final b:Lu3/o;

.field public final c:Lcom/google/android/gms/common/internal/s;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lu3/o;Lcom/google/android/gms/common/internal/s;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx3/a;->b:Lu3/o;

    .line 5
    .line 6
    iput-object p2, p0, Lx3/a;->c:Lcom/google/android/gms/common/internal/s;

    .line 7
    .line 8
    iput-object p3, p0, Lx3/a;->d:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aput-object p1, v0, v1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    aput-object p2, v0, p1

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    aput-object p3, v0, p1

    .line 21
    .line 22
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lx3/a;->a:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 2
    .line 3
    goto :goto_2d

    .line 4
    :cond_3
    if-ne p1, p0, :cond_6

    .line 5
    .line 6
    goto :goto_2b

    .line 7
    :cond_6
    instance-of v0, p1, Lx3/a;

    .line 8
    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    goto :goto_2d

    .line 12
    :cond_b
    check-cast p1, Lx3/a;

    .line 13
    .line 14
    iget-object v0, p0, Lx3/a;->b:Lu3/o;

    .line 15
    .line 16
    iget-object v1, p1, Lx3/a;->b:Lu3/o;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/d0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2d

    .line 23
    .line 24
    iget-object v0, p0, Lx3/a;->c:Lcom/google/android/gms/common/internal/s;

    .line 25
    .line 26
    iget-object v1, p1, Lx3/a;->c:Lcom/google/android/gms/common/internal/s;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/d0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2d

    .line 33
    .line 34
    iget-object v0, p0, Lx3/a;->d:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p1, p1, Lx3/a;->d:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/d0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2d

    .line 43
    .line 44
    :goto_2b
    const/4 p1, 0x1

    .line 45
    return p1

    .line 46
    :cond_2d
    :goto_2d
    const/4 p1, 0x0

    .line 47
    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lx3/a;->a:I

    .line 2
    .line 3
    return v0
.end method
