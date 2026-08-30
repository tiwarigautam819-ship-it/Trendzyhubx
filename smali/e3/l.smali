###### Class e3.l (e3.l)
.class public final Le3/l;
.super Le3/s;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Le3/j;

.field public final d:Ljava/lang/Integer;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(JJLe3/j;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 10

    .line 1
    sget-object v0, Le3/w;->a:Le3/w;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Le3/l;->a:J

    .line 7
    .line 8
    iput-wide p3, p0, Le3/l;->b:J

    .line 9
    .line 10
    iput-object p5, p0, Le3/l;->c:Le3/j;

    .line 11
    .line 12
    iput-object p6, p0, Le3/l;->d:Ljava/lang/Integer;

    .line 13
    .line 14
    iput-object p7, p0, Le3/l;->e:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p8, p0, Le3/l;->f:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 11

    .line 1
    if-ne p1, p0, :cond_3

    .line 2
    .line 3
    goto :goto_55

    .line 4
    :cond_3
    instance-of v0, p1, Le3/s;

    .line 5
    .line 6
    if-eqz v0, :cond_57

    .line 7
    .line 8
    check-cast p1, Le3/s;

    .line 9
    .line 10
    check-cast p1, Le3/l;

    .line 11
    .line 12
    sget-object v0, Le3/w;->a:Le3/w;

    .line 13
    .line 14
    iget-object v1, p1, Le3/l;->f:Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v2, p1, Le3/l;->e:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, p1, Le3/l;->d:Ljava/lang/Integer;

    .line 19
    .line 20
    iget-object v4, p1, Le3/l;->c:Le3/j;

    .line 21
    .line 22
    iget-wide v5, p1, Le3/l;->a:J

    .line 23
    .line 24
    iget-wide v7, p0, Le3/l;->a:J

    .line 25
    .line 26
    cmp-long v5, v7, v5

    .line 27
    .line 28
    if-nez v5, :cond_57

    .line 29
    .line 30
    iget-wide v5, p0, Le3/l;->b:J

    .line 31
    .line 32
    iget-wide v7, p1, Le3/l;->b:J

    .line 33
    .line 34
    cmp-long p1, v5, v7

    .line 35
    .line 36
    if-nez p1, :cond_57

    .line 37
    .line 38
    iget-object p1, p0, Le3/l;->c:Le3/j;

    .line 39
    .line 40
    invoke-virtual {p1, v4}, Le3/j;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_57

    .line 45
    .line 46
    iget-object p1, p0, Le3/l;->d:Ljava/lang/Integer;

    .line 47
    .line 48
    if-nez p1, :cond_34

    .line 49
    .line 50
    if-nez v3, :cond_57

    .line 51
    .line 52
    goto :goto_3a

    .line 53
    :cond_34
    invoke-virtual {p1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_57

    .line 58
    .line 59
    :goto_3a
    iget-object p1, p0, Le3/l;->e:Ljava/lang/String;

    .line 60
    .line 61
    if-nez p1, :cond_41

    .line 62
    .line 63
    if-nez v2, :cond_57

    .line 64
    .line 65
    goto :goto_47

    .line 66
    :cond_41
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_57

    .line 71
    .line 72
    :goto_47
    iget-object p1, p0, Le3/l;->f:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_57

    .line 79
    .line 80
    invoke-virtual {v0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_57

    .line 85
    .line 86
    :goto_55
    const/4 p1, 0x1

    .line 87
    return p1

    .line 88
    :cond_57
    const/4 p1, 0x0

    .line 89
    return p1
.end method

.method public final hashCode()I
    .registers 8

    .line 1
    iget-wide v0, p0, Le3/l;->a:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v3, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v3

    .line 8
    long-to-int v0, v0

    .line 9
    const v1, 0xf4243

    .line 10
    .line 11
    .line 12
    xor-int/2addr v0, v1

    .line 13
    mul-int/2addr v0, v1

    .line 14
    iget-wide v3, p0, Le3/l;->b:J

    .line 15
    .line 16
    ushr-long v5, v3, v2

    .line 17
    .line 18
    xor-long/2addr v3, v5

    .line 19
    long-to-int v2, v3

    .line 20
    xor-int/2addr v0, v2

    .line 21
    mul-int/2addr v0, v1

    .line 22
    iget-object v2, p0, Le3/l;->c:Le3/j;

    .line 23
    .line 24
    invoke-virtual {v2}, Le3/j;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    xor-int/2addr v0, v2

    .line 29
    mul-int/2addr v0, v1

    .line 30
    const/4 v2, 0x0

    .line 31
    iget-object v3, p0, Le3/l;->d:Ljava/lang/Integer;

    .line 32
    .line 33
    if-nez v3, :cond_24

    .line 34
    .line 35
    move v3, v2

    .line 36
    goto :goto_28

    .line 37
    :cond_24
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    :goto_28
    xor-int/2addr v0, v3

    .line 42
    mul-int/2addr v0, v1

    .line 43
    iget-object v3, p0, Le3/l;->e:Ljava/lang/String;

    .line 44
    .line 45
    if-nez v3, :cond_2f

    .line 46
    .line 47
    goto :goto_33

    .line 48
    :cond_2f
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    :goto_33
    xor-int/2addr v0, v2

    .line 53
    mul-int/2addr v0, v1

    .line 54
    iget-object v2, p0, Le3/l;->f:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    xor-int/2addr v0, v2

    .line 61
    mul-int/2addr v0, v1

    .line 62
    sget-object v1, Le3/w;->a:Le3/w;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    xor-int/2addr v0, v1

    .line 69
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LogRequest{requestTimeMs="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Le3/l;->a:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", requestUptimeMs="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Le3/l;->b:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", clientInfo="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Le3/l;->c:Le3/j;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", logSource="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Le3/l;->d:Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", logSourceName="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Le3/l;->e:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", logEvents="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Le3/l;->f:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", qosTier="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    sget-object v1, Le3/w;->a:Le3/w;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "}"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method
