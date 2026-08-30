###### Class j5.a (j5.a)
.class public final Lj5/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lj5/b;

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj5/b;I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj5/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lj5/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lj5/a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lj5/a;->d:Lj5/b;

    .line 11
    .line 12
    iput p5, p0, Lj5/a;->e:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    if-ne p1, p0, :cond_3

    .line 2
    .line 3
    goto :goto_54

    .line 4
    :cond_3
    instance-of v0, p1, Lj5/a;

    .line 5
    .line 6
    if-eqz v0, :cond_56

    .line 7
    .line 8
    check-cast p1, Lj5/a;

    .line 9
    .line 10
    iget v0, p1, Lj5/a;->e:I

    .line 11
    .line 12
    iget-object v1, p1, Lj5/a;->d:Lj5/b;

    .line 13
    .line 14
    iget-object v2, p1, Lj5/a;->c:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, p1, Lj5/a;->b:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p1, p1, Lj5/a;->a:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v4, p0, Lj5/a;->a:Ljava/lang/String;

    .line 21
    .line 22
    if-nez v4, :cond_1a

    .line 23
    .line 24
    if-nez p1, :cond_56

    .line 25
    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_56

    .line 32
    .line 33
    :goto_20
    iget-object p1, p0, Lj5/a;->b:Ljava/lang/String;

    .line 34
    .line 35
    if-nez p1, :cond_27

    .line 36
    .line 37
    if-nez v3, :cond_56

    .line 38
    .line 39
    goto :goto_2d

    .line 40
    :cond_27
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_56

    .line 45
    .line 46
    :goto_2d
    iget-object p1, p0, Lj5/a;->c:Ljava/lang/String;

    .line 47
    .line 48
    if-nez p1, :cond_34

    .line 49
    .line 50
    if-nez v2, :cond_56

    .line 51
    .line 52
    goto :goto_3a

    .line 53
    :cond_34
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_56

    .line 58
    .line 59
    :goto_3a
    iget-object p1, p0, Lj5/a;->d:Lj5/b;

    .line 60
    .line 61
    if-nez p1, :cond_41

    .line 62
    .line 63
    if-nez v1, :cond_56

    .line 64
    .line 65
    goto :goto_47

    .line 66
    :cond_41
    invoke-virtual {p1, v1}, Lj5/b;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_56

    .line 71
    .line 72
    :goto_47
    iget p1, p0, Lj5/a;->e:I

    .line 73
    .line 74
    if-nez p1, :cond_4e

    .line 75
    .line 76
    if-nez v0, :cond_56

    .line 77
    .line 78
    goto :goto_54

    .line 79
    :cond_4e
    invoke-static {p1, v0}, Landroidx/fragment/app/m1;->b(II)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_56

    .line 84
    .line 85
    :goto_54
    const/4 p1, 0x1

    .line 86
    return p1

    .line 87
    :cond_56
    const/4 p1, 0x0

    .line 88
    return p1
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lj5/a;->a:Ljava/lang/String;

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
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_b
    const v2, 0xf4243

    .line 13
    .line 14
    .line 15
    xor-int/2addr v1, v2

    .line 16
    mul-int/2addr v1, v2

    .line 17
    iget-object v3, p0, Lj5/a;->b:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v3, :cond_16

    .line 20
    .line 21
    move v3, v0

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    :goto_1a
    xor-int/2addr v1, v3

    .line 28
    mul-int/2addr v1, v2

    .line 29
    iget-object v3, p0, Lj5/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    if-nez v3, :cond_22

    .line 32
    .line 33
    move v3, v0

    .line 34
    goto :goto_26

    .line 35
    :cond_22
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    :goto_26
    xor-int/2addr v1, v3

    .line 40
    mul-int/2addr v1, v2

    .line 41
    iget-object v3, p0, Lj5/a;->d:Lj5/b;

    .line 42
    .line 43
    if-nez v3, :cond_2e

    .line 44
    .line 45
    move v3, v0

    .line 46
    goto :goto_32

    .line 47
    :cond_2e
    invoke-virtual {v3}, Lj5/b;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    :goto_32
    xor-int/2addr v1, v3

    .line 52
    mul-int/2addr v1, v2

    .line 53
    iget v2, p0, Lj5/a;->e:I

    .line 54
    .line 55
    if-nez v2, :cond_39

    .line 56
    .line 57
    goto :goto_3d

    .line 58
    :cond_39
    invoke-static {v2}, Landroidx/fragment/app/m1;->e(I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    :goto_3d
    xor-int/2addr v0, v1

    .line 63
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "InstallationResponse{uri="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lj5/a;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", fid="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lj5/a;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", refreshToken="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lj5/a;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", authToken="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lj5/a;->d:Lj5/b;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", responseCode="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    iget v2, p0, Lj5/a;->e:I

    .line 50
    .line 51
    if-eq v2, v1, :cond_3d

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    if-eq v2, v1, :cond_3a

    .line 55
    .line 56
    const-string v1, "null"

    .line 57
    .line 58
    goto :goto_3f

    .line 59
    :cond_3a
    const-string v1, "BAD_CONFIG"

    .line 60
    .line 61
    goto :goto_3f

    .line 62
    :cond_3d
    const-string v1, "OK"

    .line 63
    .line 64
    :goto_3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, "}"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method
