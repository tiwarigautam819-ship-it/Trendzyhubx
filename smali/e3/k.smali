###### Class e3.k (e3.k)
.class public final Le3/k;
.super Le3/r;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/Integer;

.field public final c:J

.field public final d:[B

.field public final e:Ljava/lang/String;

.field public final f:J

.field public final g:Le3/v;


# direct methods
.method public constructor <init>(JLjava/lang/Integer;J[BLjava/lang/String;JLe3/v;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Le3/k;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Le3/k;->b:Ljava/lang/Integer;

    .line 7
    .line 8
    iput-wide p4, p0, Le3/k;->c:J

    .line 9
    .line 10
    iput-object p6, p0, Le3/k;->d:[B

    .line 11
    .line 12
    iput-object p7, p0, Le3/k;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-wide p8, p0, Le3/k;->f:J

    .line 15
    .line 16
    iput-object p10, p0, Le3/k;->g:Le3/v;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 12

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Le3/r;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_67

    .line 9
    .line 10
    check-cast p1, Le3/r;

    .line 11
    .line 12
    move-object v1, p1

    .line 13
    check-cast v1, Le3/k;

    .line 14
    .line 15
    iget-object v3, v1, Le3/k;->g:Le3/v;

    .line 16
    .line 17
    iget-object v4, v1, Le3/k;->e:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v5, v1, Le3/k;->b:Ljava/lang/Integer;

    .line 20
    .line 21
    iget-wide v6, v1, Le3/k;->a:J

    .line 22
    .line 23
    iget-wide v8, p0, Le3/k;->a:J

    .line 24
    .line 25
    cmp-long v6, v8, v6

    .line 26
    .line 27
    if-nez v6, :cond_67

    .line 28
    .line 29
    iget-object v6, p0, Le3/k;->b:Ljava/lang/Integer;

    .line 30
    .line 31
    if-nez v6, :cond_23

    .line 32
    .line 33
    if-nez v5, :cond_67

    .line 34
    .line 35
    goto :goto_29

    .line 36
    :cond_23
    invoke-virtual {v6, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_67

    .line 41
    .line 42
    :goto_29
    iget-wide v5, p0, Le3/k;->c:J

    .line 43
    .line 44
    iget-wide v7, v1, Le3/k;->c:J

    .line 45
    .line 46
    cmp-long v5, v5, v7

    .line 47
    .line 48
    if-nez v5, :cond_67

    .line 49
    .line 50
    instance-of v5, p1, Le3/k;

    .line 51
    .line 52
    if-eqz v5, :cond_3a

    .line 53
    .line 54
    check-cast p1, Le3/k;

    .line 55
    .line 56
    iget-object p1, p1, Le3/k;->d:[B

    .line 57
    .line 58
    goto :goto_3c

    .line 59
    :cond_3a
    iget-object p1, v1, Le3/k;->d:[B

    .line 60
    .line 61
    :goto_3c
    iget-object v5, p0, Le3/k;->d:[B

    .line 62
    .line 63
    invoke-static {v5, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_67

    .line 68
    .line 69
    iget-object p1, p0, Le3/k;->e:Ljava/lang/String;

    .line 70
    .line 71
    if-nez p1, :cond_4b

    .line 72
    .line 73
    if-nez v4, :cond_67

    .line 74
    .line 75
    goto :goto_51

    .line 76
    :cond_4b
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_67

    .line 81
    .line 82
    :goto_51
    iget-wide v4, p0, Le3/k;->f:J

    .line 83
    .line 84
    iget-wide v6, v1, Le3/k;->f:J

    .line 85
    .line 86
    cmp-long p1, v4, v6

    .line 87
    .line 88
    if-nez p1, :cond_67

    .line 89
    .line 90
    iget-object p1, p0, Le3/k;->g:Le3/v;

    .line 91
    .line 92
    if-nez p1, :cond_60

    .line 93
    .line 94
    if-nez v3, :cond_67

    .line 95
    .line 96
    goto :goto_66

    .line 97
    :cond_60
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_67

    .line 102
    .line 103
    :goto_66
    return v0

    .line 104
    :cond_67
    return v2
.end method

.method public final hashCode()I
    .registers 9

    .line 1
    iget-wide v0, p0, Le3/k;->a:J

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
    const/4 v3, 0x0

    .line 15
    iget-object v4, p0, Le3/k;->b:Ljava/lang/Integer;

    .line 16
    .line 17
    if-nez v4, :cond_14

    .line 18
    .line 19
    move v4, v3

    .line 20
    goto :goto_18

    .line 21
    :cond_14
    invoke-virtual {v4}, Ljava/lang/Integer;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    :goto_18
    xor-int/2addr v0, v4

    .line 26
    mul-int/2addr v0, v1

    .line 27
    iget-wide v4, p0, Le3/k;->c:J

    .line 28
    .line 29
    ushr-long v6, v4, v2

    .line 30
    .line 31
    xor-long/2addr v4, v6

    .line 32
    long-to-int v4, v4

    .line 33
    xor-int/2addr v0, v4

    .line 34
    mul-int/2addr v0, v1

    .line 35
    iget-object v4, p0, Le3/k;->d:[B

    .line 36
    .line 37
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    xor-int/2addr v0, v4

    .line 42
    mul-int/2addr v0, v1

    .line 43
    iget-object v4, p0, Le3/k;->e:Ljava/lang/String;

    .line 44
    .line 45
    if-nez v4, :cond_30

    .line 46
    .line 47
    move v4, v3

    .line 48
    goto :goto_34

    .line 49
    :cond_30
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    :goto_34
    xor-int/2addr v0, v4

    .line 54
    mul-int/2addr v0, v1

    .line 55
    iget-wide v4, p0, Le3/k;->f:J

    .line 56
    .line 57
    ushr-long v6, v4, v2

    .line 58
    .line 59
    xor-long/2addr v4, v6

    .line 60
    long-to-int v2, v4

    .line 61
    xor-int/2addr v0, v2

    .line 62
    mul-int/2addr v0, v1

    .line 63
    iget-object v1, p0, Le3/k;->g:Le3/v;

    .line 64
    .line 65
    if-nez v1, :cond_43

    .line 66
    .line 67
    goto :goto_47

    .line 68
    :cond_43
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    :goto_47
    xor-int/2addr v0, v3

    .line 73
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LogEvent{eventTimeMs="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Le3/k;->a:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", eventCode="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Le3/k;->b:Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", eventUptimeMs="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Le3/k;->c:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", sourceExtension="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Le3/k;->d:[B

    .line 39
    .line 40
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", sourceExtensionJsonProto3="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Le3/k;->e:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", timezoneOffsetSeconds="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-wide v1, p0, Le3/k;->f:J

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ", networkConnectionInfo="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Le3/k;->g:Le3/v;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, "}"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method
