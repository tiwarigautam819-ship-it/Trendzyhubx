###### Class y7.x (y7.x)
.class public final Ly7/x;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Le8/h;

.field public final b:Le8/g;

.field public c:I

.field public d:Z

.field public final e:Ly7/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Ly7/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Ly7/x;->f:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Le8/p;)V
    .registers 3

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ly7/x;->a:Le8/h;

    .line 10
    .line 11
    new-instance p1, Le8/g;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Ly7/x;->b:Le8/g;

    .line 17
    .line 18
    const/16 v0, 0x4000

    .line 19
    .line 20
    iput v0, p0, Ly7/x;->c:I

    .line 21
    .line 22
    new-instance v0, Ly7/d;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Ly7/d;-><init>(Le8/g;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Ly7/x;->e:Ly7/d;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ly7/a0;)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "peerSettings"

    .line 3
    .line 4
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Ly7/x;->d:Z

    .line 8
    .line 9
    if-nez v0, :cond_77

    .line 10
    .line 11
    iget v0, p0, Ly7/x;->c:I

    .line 12
    .line 13
    iget v1, p1, Ly7/a0;->a:I

    .line 14
    .line 15
    and-int/lit8 v2, v1, 0x20

    .line 16
    .line 17
    if-eqz v2, :cond_17

    .line 18
    .line 19
    iget-object v0, p1, Ly7/a0;->b:[I

    .line 20
    .line 21
    const/4 v2, 0x5

    .line 22
    aget v0, v0, v2

    .line 23
    .line 24
    :cond_17
    iput v0, p0, Ly7/x;->c:I

    .line 25
    .line 26
    and-int/lit8 v0, v1, 0x2

    .line 27
    .line 28
    const/4 v2, -0x1

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v0, :cond_24

    .line 31
    .line 32
    iget-object v0, p1, Ly7/a0;->b:[I

    .line 33
    .line 34
    aget v0, v0, v3

    .line 35
    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v0, v2

    .line 38
    :goto_25
    const/4 v4, 0x0

    .line 39
    if-eq v0, v2, :cond_6c

    .line 40
    .line 41
    iget-object v0, p0, Ly7/x;->e:Ly7/d;

    .line 42
    .line 43
    and-int/lit8 v1, v1, 0x2

    .line 44
    .line 45
    if-eqz v1, :cond_32

    .line 46
    .line 47
    iget-object p1, p1, Ly7/a0;->b:[I

    .line 48
    .line 49
    aget v2, p1, v3

    .line 50
    .line 51
    :cond_32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const/16 p1, 0x4000

    .line 55
    .line 56
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget v1, v0, Ly7/d;->d:I

    .line 61
    .line 62
    if-ne v1, p1, :cond_40

    .line 63
    .line 64
    goto :goto_6c

    .line 65
    :cond_40
    if-ge p1, v1, :cond_4a

    .line 66
    .line 67
    iget v1, v0, Ly7/d;->b:I

    .line 68
    .line 69
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iput v1, v0, Ly7/d;->b:I

    .line 74
    .line 75
    :cond_4a
    iput-boolean v3, v0, Ly7/d;->c:Z

    .line 76
    .line 77
    iput p1, v0, Ly7/d;->d:I

    .line 78
    .line 79
    iget v1, v0, Ly7/d;->h:I

    .line 80
    .line 81
    if-ge p1, v1, :cond_6c

    .line 82
    .line 83
    if-nez p1, :cond_65

    .line 84
    .line 85
    iget-object p1, v0, Ly7/d;->e:[Ly7/b;

    .line 86
    .line 87
    array-length v1, p1

    .line 88
    invoke-static {p1, v4, v1}, Ls6/f;->n([Ljava/lang/Object;II)V

    .line 89
    .line 90
    .line 91
    iget-object p1, v0, Ly7/d;->e:[Ly7/b;

    .line 92
    .line 93
    array-length p1, p1

    .line 94
    sub-int/2addr p1, v3

    .line 95
    iput p1, v0, Ly7/d;->f:I

    .line 96
    .line 97
    iput v4, v0, Ly7/d;->g:I

    .line 98
    .line 99
    iput v4, v0, Ly7/d;->h:I

    .line 100
    .line 101
    goto :goto_6c

    .line 102
    :cond_65
    sub-int/2addr v1, p1

    .line 103
    invoke-virtual {v0, v1}, Ly7/d;->a(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_6c

    .line 107
    :catchall_6a
    move-exception p1

    .line 108
    goto :goto_7f

    .line 109
    :cond_6c
    :goto_6c
    const/4 p1, 0x4

    .line 110
    invoke-virtual {p0, v4, v4, p1, v3}, Ly7/x;->g(IIII)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Ly7/x;->a:Le8/h;

    .line 114
    .line 115
    invoke-interface {p1}, Le8/h;->flush()V
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_6a

    .line 116
    .line 117
    .line 118
    monitor-exit p0

    .line 119
    return-void

    .line 120
    :cond_77
    :try_start_77
    new-instance p1, Ljava/io/IOException;

    .line 121
    .line 122
    const-string v0, "closed"

    .line 123
    .line 124
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :goto_7f
    monitor-exit p0
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_6a

    .line 129
    throw p1
.end method

.method public final declared-synchronized c(ZILe8/g;I)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Ly7/x;->d:Z

    .line 3
    .line 4
    if-nez v0, :cond_16

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p2, p4, v0, p1}, Ly7/x;->g(IIII)V

    .line 8
    .line 9
    .line 10
    if-lez p4, :cond_14

    .line 11
    .line 12
    iget-object p1, p0, Ly7/x;->a:Le8/h;

    .line 13
    .line 14
    invoke-static {p3}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    int-to-long v0, p4

    .line 18
    invoke-interface {p1, v0, v1, p3}, Le8/u;->n(JLe8/g;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1e

    .line 19
    .line 20
    .line 21
    :cond_14
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :cond_16
    :try_start_16
    new-instance p1, Ljava/io/IOException;

    .line 24
    .line 25
    const-string p2, "closed"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :catchall_1e
    move-exception p1

    .line 32
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    .line 33
    throw p1
.end method

.method public final declared-synchronized close()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_2
    iput-boolean v0, p0, Ly7/x;->d:Z

    .line 4
    .line 5
    iget-object v0, p0, Ly7/x;->a:Le8/h;

    .line 6
    .line 7
    invoke-interface {v0}, Le8/u;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception v0

    .line 13
    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    .line 14
    throw v0
.end method

.method public final declared-synchronized flush()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Ly7/x;->d:Z

    .line 3
    .line 4
    if-nez v0, :cond_e

    .line 5
    .line 6
    iget-object v0, p0, Ly7/x;->a:Le8/h;

    .line 7
    .line 8
    invoke-interface {v0}, Le8/h;->flush()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_c
    move-exception v0

    .line 14
    goto :goto_16

    .line 15
    :cond_e
    :try_start_e
    new-instance v0, Ljava/io/IOException;

    .line 16
    .line 17
    const-string v1, "closed"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_c

    .line 24
    throw v0
.end method

.method public final g(IIII)V
    .registers 7

    .line 1
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 2
    .line 3
    sget-object v1, Ly7/x;->f:Ljava/util/logging/Logger;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0, p1, p2, p3, p4}, Ly7/f;->a(ZIIII)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_12
    iget v0, p0, Ly7/x;->c:I

    .line 20
    .line 21
    if-gt p2, v0, :cond_59

    .line 22
    .line 23
    const/high16 v0, -0x80000000

    .line 24
    .line 25
    and-int/2addr v0, p1

    .line 26
    if-nez v0, :cond_49

    .line 27
    .line 28
    sget-object v0, Ls7/b;->a:[B

    .line 29
    .line 30
    const-string v0, "<this>"

    .line 31
    .line 32
    iget-object v1, p0, Ly7/x;->a:Le8/h;

    .line 33
    .line 34
    invoke-static {v0, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    ushr-int/lit8 v0, p2, 0x10

    .line 38
    .line 39
    and-int/lit16 v0, v0, 0xff

    .line 40
    .line 41
    invoke-interface {v1, v0}, Le8/h;->writeByte(I)Le8/h;

    .line 42
    .line 43
    .line 44
    ushr-int/lit8 v0, p2, 0x8

    .line 45
    .line 46
    and-int/lit16 v0, v0, 0xff

    .line 47
    .line 48
    invoke-interface {v1, v0}, Le8/h;->writeByte(I)Le8/h;

    .line 49
    .line 50
    .line 51
    and-int/lit16 p2, p2, 0xff

    .line 52
    .line 53
    invoke-interface {v1, p2}, Le8/h;->writeByte(I)Le8/h;

    .line 54
    .line 55
    .line 56
    and-int/lit16 p2, p3, 0xff

    .line 57
    .line 58
    invoke-interface {v1, p2}, Le8/h;->writeByte(I)Le8/h;

    .line 59
    .line 60
    .line 61
    and-int/lit16 p2, p4, 0xff

    .line 62
    .line 63
    invoke-interface {v1, p2}, Le8/h;->writeByte(I)Le8/h;

    .line 64
    .line 65
    .line 66
    const p2, 0x7fffffff

    .line 67
    .line 68
    .line 69
    and-int/2addr p1, p2

    .line 70
    invoke-interface {v1, p1}, Le8/h;->writeInt(I)Le8/h;

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_49
    const-string p2, "reserved bit set: "

    .line 75
    .line 76
    invoke-static {p1, p2}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p2

    .line 90
    :cond_59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string p3, "FRAME_SIZE_ERROR length > "

    .line 93
    .line 94
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget p3, p0, Ly7/x;->c:I

    .line 98
    .line 99
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p3, ": "

    .line 103
    .line 104
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p2
.end method

.method public final declared-synchronized o([BII)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "errorCode"

    .line 3
    .line 4
    invoke-static {p3, v0}, La1/a;->n(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Ly7/x;->d:Z

    .line 8
    .line 9
    if-nez v0, :cond_41

    .line 10
    .line 11
    invoke-static {p3}, Landroidx/fragment/app/m1;->e(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eq v0, v1, :cond_39

    .line 17
    .line 18
    array-length v0, p1

    .line 19
    add-int/lit8 v0, v0, 0x8

    .line 20
    .line 21
    const/4 v1, 0x7

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0, v2, v0, v1, v2}, Ly7/x;->g(IIII)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Ly7/x;->a:Le8/h;

    .line 27
    .line 28
    invoke-interface {v0, p2}, Le8/h;->writeInt(I)Le8/h;

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Ly7/x;->a:Le8/h;

    .line 32
    .line 33
    invoke-static {p3}, Landroidx/fragment/app/m1;->e(I)I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    invoke-interface {p2, p3}, Le8/h;->writeInt(I)Le8/h;

    .line 38
    .line 39
    .line 40
    array-length p2, p1

    .line 41
    if-nez p2, :cond_2b

    .line 42
    .line 43
    goto :goto_30

    .line 44
    :cond_2b
    iget-object p2, p0, Ly7/x;->a:Le8/h;

    .line 45
    .line 46
    invoke-interface {p2, p1}, Le8/h;->write([B)Le8/h;

    .line 47
    .line 48
    .line 49
    :goto_30
    iget-object p1, p0, Ly7/x;->a:Le8/h;

    .line 50
    .line 51
    invoke-interface {p1}, Le8/h;->flush()V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 52
    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :catchall_37
    move-exception p1

    .line 57
    goto :goto_49

    .line 58
    :cond_39
    :try_start_39
    const-string p1, "errorCode.httpCode == -1"

    .line 59
    .line 60
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p2

    .line 66
    :cond_41
    new-instance p1, Ljava/io/IOException;

    .line 67
    .line 68
    const-string p2, "closed"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :goto_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_39 .. :try_end_4a} :catchall_37

    .line 75
    throw p1
.end method

.method public final declared-synchronized s(ZILjava/util/ArrayList;)V
    .registers 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Ly7/x;->d:Z

    .line 3
    .line 4
    if-nez v0, :cond_58

    .line 5
    .line 6
    iget-object v0, p0, Ly7/x;->e:Ly7/d;

    .line 7
    .line 8
    invoke-virtual {v0, p3}, Ly7/d;->d(Ljava/util/ArrayList;)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p0, Ly7/x;->b:Le8/g;

    .line 12
    .line 13
    iget-wide v0, p3, Le8/g;->b:J

    .line 14
    .line 15
    iget p3, p0, Ly7/x;->c:I

    .line 16
    .line 17
    int-to-long v2, p3

    .line 18
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    cmp-long p3, v0, v2

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x4

    .line 26
    if-nez p3, :cond_1d

    .line 27
    .line 28
    move v6, v5

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v6, v4

    .line 31
    :goto_1e
    if-eqz p1, :cond_22

    .line 32
    .line 33
    or-int/lit8 v6, v6, 0x1

    .line 34
    .line 35
    :cond_22
    long-to-int p1, v2

    .line 36
    const/4 v7, 0x1

    .line 37
    invoke-virtual {p0, p2, p1, v7, v6}, Ly7/x;->g(IIII)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Ly7/x;->a:Le8/h;

    .line 41
    .line 42
    iget-object v6, p0, Ly7/x;->b:Le8/g;

    .line 43
    .line 44
    invoke-interface {p1, v2, v3, v6}, Le8/u;->n(JLe8/g;)V

    .line 45
    .line 46
    .line 47
    if-lez p3, :cond_54

    .line 48
    .line 49
    sub-long/2addr v0, v2

    .line 50
    :goto_31
    const-wide/16 v2, 0x0

    .line 51
    .line 52
    cmp-long p1, v0, v2

    .line 53
    .line 54
    if-lez p1, :cond_54

    .line 55
    .line 56
    iget p1, p0, Ly7/x;->c:I

    .line 57
    .line 58
    int-to-long v6, p1

    .line 59
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v6

    .line 63
    sub-long/2addr v0, v6

    .line 64
    long-to-int p1, v6

    .line 65
    cmp-long p3, v0, v2

    .line 66
    .line 67
    if-nez p3, :cond_46

    .line 68
    .line 69
    move p3, v5

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move p3, v4

    .line 72
    :goto_47
    const/16 v2, 0x9

    .line 73
    .line 74
    invoke-virtual {p0, p2, p1, v2, p3}, Ly7/x;->g(IIII)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Ly7/x;->a:Le8/h;

    .line 78
    .line 79
    iget-object p3, p0, Ly7/x;->b:Le8/g;

    .line 80
    .line 81
    invoke-interface {p1, v6, v7, p3}, Le8/u;->n(JLe8/g;)V
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_56

    .line 82
    .line 83
    .line 84
    goto :goto_31

    .line 85
    :cond_54
    monitor-exit p0

    .line 86
    return-void

    .line 87
    :catchall_56
    move-exception p1

    .line 88
    goto :goto_60

    .line 89
    :cond_58
    :try_start_58
    new-instance p1, Ljava/io/IOException;

    .line 90
    .line 91
    const-string p2, "closed"

    .line 92
    .line 93
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :goto_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_56

    .line 98
    throw p1
.end method

.method public final declared-synchronized t(IIZ)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Ly7/x;->d:Z

    .line 3
    .line 4
    if-nez v0, :cond_1f

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    const/4 v1, 0x6

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, p3}, Ly7/x;->g(IIII)V

    .line 11
    .line 12
    .line 13
    iget-object p3, p0, Ly7/x;->a:Le8/h;

    .line 14
    .line 15
    invoke-interface {p3, p1}, Le8/h;->writeInt(I)Le8/h;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Ly7/x;->a:Le8/h;

    .line 19
    .line 20
    invoke-interface {p1, p2}, Le8/h;->writeInt(I)Le8/h;

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Ly7/x;->a:Le8/h;

    .line 24
    .line 25
    invoke-interface {p1}, Le8/h;->flush()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    goto :goto_27

    .line 32
    :cond_1f
    :try_start_1f
    new-instance p1, Ljava/io/IOException;

    .line 33
    .line 34
    const-string p2, "closed"

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :goto_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_1d

    .line 41
    throw p1
.end method

.method public final declared-synchronized u(II)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "errorCode"

    .line 3
    .line 4
    invoke-static {p2, v0}, La1/a;->n(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Ly7/x;->d:Z

    .line 8
    .line 9
    if-nez v0, :cond_31

    .line 10
    .line 11
    invoke-static {p2}, Landroidx/fragment/app/m1;->e(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eq v0, v1, :cond_29

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x4

    .line 21
    invoke-virtual {p0, p1, v2, v0, v1}, Ly7/x;->g(IIII)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Ly7/x;->a:Le8/h;

    .line 25
    .line 26
    invoke-static {p2}, Landroidx/fragment/app/m1;->e(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-interface {p1, p2}, Le8/h;->writeInt(I)Le8/h;

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Ly7/x;->a:Le8/h;

    .line 34
    .line 35
    invoke-interface {p1}, Le8/h;->flush()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_27
    move-exception p1

    .line 41
    goto :goto_39

    .line 42
    :cond_29
    :try_start_29
    const-string p1, "Failed requirement."

    .line 43
    .line 44
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p2

    .line 50
    :cond_31
    new-instance p1, Ljava/io/IOException;

    .line 51
    .line 52
    const-string p2, "closed"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :goto_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_27

    .line 59
    throw p1
.end method

.method public final declared-synchronized v(Ly7/a0;)V
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "settings"

    .line 3
    .line 4
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Ly7/x;->d:Z

    .line 8
    .line 9
    if-nez v0, :cond_4d

    .line 10
    .line 11
    iget v0, p1, Ly7/a0;->a:I

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    mul-int/lit8 v0, v0, 0x6

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v2, v0, v1, v2}, Ly7/x;->g(IIII)V

    .line 22
    .line 23
    .line 24
    move v0, v2

    .line 25
    :goto_18
    const/16 v3, 0xa

    .line 26
    .line 27
    if-ge v0, v3, :cond_46

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    shl-int v4, v3, v0

    .line 31
    .line 32
    iget v5, p1, Ly7/a0;->a:I

    .line 33
    .line 34
    and-int/2addr v4, v5

    .line 35
    if-eqz v4, :cond_25

    .line 36
    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move v3, v2

    .line 39
    :goto_26
    if-eqz v3, :cond_43

    .line 40
    .line 41
    if-eq v0, v1, :cond_31

    .line 42
    .line 43
    const/4 v3, 0x7

    .line 44
    if-eq v0, v3, :cond_2f

    .line 45
    .line 46
    move v3, v0

    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    move v3, v1

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    const/4 v3, 0x3

    .line 51
    :goto_32
    iget-object v4, p0, Ly7/x;->a:Le8/h;

    .line 52
    .line 53
    invoke-interface {v4, v3}, Le8/h;->writeShort(I)Le8/h;

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Ly7/x;->a:Le8/h;

    .line 57
    .line 58
    iget-object v4, p1, Ly7/a0;->b:[I

    .line 59
    .line 60
    aget v4, v4, v0

    .line 61
    .line 62
    invoke-interface {v3, v4}, Le8/h;->writeInt(I)Le8/h;

    .line 63
    .line 64
    .line 65
    goto :goto_43

    .line 66
    :catchall_41
    move-exception p1

    .line 67
    goto :goto_55

    .line 68
    :cond_43
    :goto_43
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_18

    .line 71
    :cond_46
    iget-object p1, p0, Ly7/x;->a:Le8/h;

    .line 72
    .line 73
    invoke-interface {p1}, Le8/h;->flush()V
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_41

    .line 74
    .line 75
    .line 76
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :cond_4d
    :try_start_4d
    new-instance p1, Ljava/io/IOException;

    .line 79
    .line 80
    const-string v0, "closed"

    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :goto_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_41

    .line 87
    throw p1
.end method

.method public final declared-synchronized w(IJ)V
    .registers 7

    .line 1
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_3
    iget-boolean v1, p0, Ly7/x;->d:Z

    .line 5
    .line 6
    if-nez v1, :cond_40

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    cmp-long v1, p2, v1

    .line 11
    .line 12
    if-eqz v1, :cond_2a

    .line 13
    .line 14
    const-wide/32 v1, 0x7fffffff

    .line 15
    .line 16
    .line 17
    cmp-long v1, p2, v1

    .line 18
    .line 19
    if-gtz v1, :cond_2a

    .line 20
    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x4

    .line 25
    invoke-virtual {p0, p1, v2, v0, v1}, Ly7/x;->g(IIII)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Ly7/x;->a:Le8/h;

    .line 29
    .line 30
    long-to-int p2, p2

    .line 31
    invoke-interface {p1, p2}, Le8/h;->writeInt(I)Le8/h;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Ly7/x;->a:Le8/h;

    .line 35
    .line 36
    invoke-interface {p1}, Le8/h;->flush()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_28
    move-exception p1

    .line 42
    goto :goto_48

    .line 43
    :cond_2a
    :try_start_2a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p2

    .line 65
    :cond_40
    new-instance p1, Ljava/io/IOException;

    .line 66
    .line 67
    const-string p2, "closed"

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :goto_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_2a .. :try_end_49} :catchall_28

    .line 74
    throw p1
.end method
