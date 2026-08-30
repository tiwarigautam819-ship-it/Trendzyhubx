###### Class s5.l (s5.l)
.class public final Ls5/l;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field public a:Ls5/l;

.field public b:Ls5/l;

.field public c:Ls5/l;

.field public d:Ls5/l;

.field public e:Ls5/l;

.field public final f:Ljava/lang/Object;

.field public final g:Z

.field public h:Ljava/lang/Object;

.field public i:I


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ls5/l;->f:Ljava/lang/Object;

    .line 3
    iput-boolean p1, p0, Ls5/l;->g:Z

    .line 4
    iput-object p0, p0, Ls5/l;->e:Ls5/l;

    iput-object p0, p0, Ls5/l;->d:Ls5/l;

    return-void
.end method

.method public constructor <init>(ZLs5/l;Ljava/lang/Object;Ls5/l;Ls5/l;)V
    .registers 6

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Ls5/l;->a:Ls5/l;

    .line 7
    iput-object p3, p0, Ls5/l;->f:Ljava/lang/Object;

    .line 8
    iput-boolean p1, p0, Ls5/l;->g:Z

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Ls5/l;->i:I

    .line 10
    iput-object p4, p0, Ls5/l;->d:Ls5/l;

    .line 11
    iput-object p5, p0, Ls5/l;->e:Ls5/l;

    .line 12
    iput-object p0, p5, Ls5/l;->d:Ls5/l;

    .line 13
    iput-object p0, p4, Ls5/l;->e:Ls5/l;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_33

    .line 5
    .line 6
    check-cast p1, Ljava/util/Map$Entry;

    .line 7
    .line 8
    iget-object v0, p0, Ls5/l;->f:Ljava/lang/Object;

    .line 9
    .line 10
    if-nez v0, :cond_12

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_33

    .line 17
    .line 18
    goto :goto_1c

    .line 19
    :cond_12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_33

    .line 28
    .line 29
    :goto_1c
    iget-object v0, p0, Ls5/l;->h:Ljava/lang/Object;

    .line 30
    .line 31
    if-nez v0, :cond_27

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_33

    .line 38
    .line 39
    goto :goto_31

    .line 40
    :cond_27
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_33

    .line 49
    .line 50
    :goto_31
    const/4 p1, 0x1

    .line 51
    return p1

    .line 52
    :cond_33
    return v1
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/l;->f:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/l;->h:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ls5/l;->f:Ljava/lang/Object;

    .line 3
    .line 4
    if-nez v1, :cond_7

    .line 5
    .line 6
    move v1, v0

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_b
    iget-object v2, p0, Ls5/l;->h:Ljava/lang/Object;

    .line 13
    .line 14
    if-nez v2, :cond_10

    .line 15
    .line 16
    goto :goto_14

    .line 17
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_14
    xor-int/2addr v0, v1

    .line 22
    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    if-nez p1, :cond_f

    .line 2
    .line 3
    iget-boolean v0, p0, Ls5/l;->g:Z

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_f

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    .line 9
    .line 10
    const-string v0, "value == null"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :cond_f
    :goto_f
    iget-object v0, p0, Ls5/l;->h:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p1, p0, Ls5/l;->h:Ljava/lang/Object;

    .line 19
    .line 20
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ls5/l;->f:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Ls5/l;->h:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
