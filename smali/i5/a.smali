###### Class i5.a (i5.a)
.class public final Li5/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lw7/d;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lr7/r;Lv7/l;Le8/q;Le8/p;)V
    .registers 6

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sink"

    .line 7
    .line 8
    invoke-static {v0, p4}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Li5/a;->b:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p2, p0, Li5/a;->c:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p3, p0, Li5/a;->d:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p4, p0, Li5/a;->e:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance p1, Lx7/a;

    .line 23
    .line 24
    invoke-direct {p1, p3}, Lx7/a;-><init>(Le8/i;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Li5/a;->f:Ljava/lang/Object;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/internal/g;)V
    .registers 6

    .line 1
    iget-object v0, p0, Li5/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv7/l;

    .line 4
    .line 5
    iget-object v0, v0, Lv7/l;->b:Lr7/x;

    .line 6
    .line 7
    iget-object v0, v0, Lr7/x;->b:Ljava/net/Proxy;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "connection.route().proxy.type()"

    .line 14
    .line 15
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p1, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v2, 0x20

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v2, p1, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Lr7/m;

    .line 38
    .line 39
    iget-boolean v3, v2, Lr7/m;->i:Z

    .line 40
    .line 41
    if-nez v3, :cond_32

    .line 42
    .line 43
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 44
    .line 45
    if-ne v0, v3, :cond_32

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    goto :goto_53

    .line 51
    :cond_32
    invoke-virtual {v2}, Lr7/m;->b()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2}, Lr7/m;->d()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_50

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const/16 v0, 0x3f

    .line 70
    .line 71
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :cond_50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :goto_53
    const-string v0, " HTTP/1.1"

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "StringBuilder().apply(builderAction).toString()"

    .line 94
    .line 95
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p1, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p1, Lr7/k;

    .line 101
    .line 102
    invoke-virtual {p0, p1, v0}, Li5/a;->k(Lr7/k;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public b(Lr7/u;)Le8/w;
    .registers 10

    .line 1
    invoke-static {p1}, Lw7/e;->a(Lr7/u;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_d

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Li5/a;->j(J)Lx7/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    const-string v0, "Transfer-Encoding"

    .line 15
    .line 16
    invoke-static {v0, p1}, Lr7/u;->a(Ljava/lang/String;Lr7/u;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "chunked"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-string v1, "state: "

    .line 27
    .line 28
    const/4 v2, 0x5

    .line 29
    const/4 v3, 0x4

    .line 30
    if-eqz v0, :cond_49

    .line 31
    .line 32
    iget-object p1, p1, Lr7/u;->a:Lcom/google/android/gms/common/internal/g;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lr7/m;

    .line 37
    .line 38
    iget v0, p0, Li5/a;->a:I

    .line 39
    .line 40
    if-ne v0, v3, :cond_31

    .line 41
    .line 42
    iput v2, p0, Li5/a;->a:I

    .line 43
    .line 44
    new-instance v0, Lx7/d;

    .line 45
    .line 46
    invoke-direct {v0, p0, p1}, Lx7/d;-><init>(Li5/a;Lr7/m;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget v0, p0, Li5/a;->a:I

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_49
    invoke-static {p1}, Ls7/b;->j(Lr7/u;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    const-wide/16 v6, -0x1

    .line 79
    .line 80
    cmp-long p1, v4, v6

    .line 81
    .line 82
    if-eqz p1, :cond_58

    .line 83
    .line 84
    invoke-virtual {p0, v4, v5}, Li5/a;->j(J)Lx7/e;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :cond_58
    iget p1, p0, Li5/a;->a:I

    .line 90
    .line 91
    if-ne p1, v3, :cond_6b

    .line 92
    .line 93
    iput v2, p0, Li5/a;->a:I

    .line 94
    .line 95
    iget-object p1, p0, Li5/a;->c:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Lv7/l;

    .line 98
    .line 99
    invoke-virtual {p1}, Lv7/l;->l()V

    .line 100
    .line 101
    .line 102
    new-instance p1, Lx7/g;

    .line 103
    .line 104
    invoke-direct {p1, p0}, Lx7/b;-><init>(Li5/a;)V

    .line 105
    .line 106
    .line 107
    return-object p1

    .line 108
    :cond_6b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget v0, p0, Li5/a;->a:I

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v0
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Li5/a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le8/h;

    .line 4
    .line 5
    invoke-interface {v0}, Le8/h;->flush()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Li5/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv7/l;

    .line 4
    .line 5
    iget-object v0, v0, Lv7/l;->c:Ljava/net/Socket;

    .line 6
    .line 7
    if-eqz v0, :cond_b

    .line 8
    .line 9
    invoke-static {v0}, Ls7/b;->e(Ljava/net/Socket;)V

    .line 10
    .line 11
    .line 12
    :cond_b
    return-void
.end method

.method public d(Lcom/google/android/gms/common/internal/g;J)Le8/u;
    .registers 9

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lr7/k;

    .line 4
    .line 5
    const-string v0, "Transfer-Encoding"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lr7/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "chunked"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const-string v0, "state: "

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz p1, :cond_3a

    .line 22
    .line 23
    iget p1, p0, Li5/a;->a:I

    .line 24
    .line 25
    if-ne p1, v2, :cond_22

    .line 26
    .line 27
    iput v1, p0, Li5/a;->a:I

    .line 28
    .line 29
    new-instance p1, Lx7/c;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lx7/c;-><init>(Li5/a;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget p2, p0, Li5/a;->a:I

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p2

    .line 59
    :cond_3a
    const-wide/16 v3, -0x1

    .line 60
    .line 61
    cmp-long p1, p2, v3

    .line 62
    .line 63
    if-eqz p1, :cond_64

    .line 64
    .line 65
    iget p1, p0, Li5/a;->a:I

    .line 66
    .line 67
    if-ne p1, v2, :cond_4c

    .line 68
    .line 69
    iput v1, p0, Li5/a;->a:I

    .line 70
    .line 71
    new-instance p1, Lx7/f;

    .line 72
    .line 73
    invoke-direct {p1, p0}, Lx7/f;-><init>(Li5/a;)V

    .line 74
    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_4c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget p2, p0, Li5/a;->a:I

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p2

    .line 101
    :cond_64
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method

.method public e()V
    .registers 2

    .line 1
    iget-object v0, p0, Li5/a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le8/h;

    .line 4
    .line 5
    invoke-interface {v0}, Le8/h;->flush()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f(Lr7/u;)J
    .registers 4

    .line 1
    invoke-static {p1}, Lw7/e;->a(Lr7/u;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_9
    const-string v0, "Transfer-Encoding"

    .line 11
    .line 12
    invoke-static {v0, p1}, Lr7/u;->a(Ljava/lang/String;Lr7/u;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "chunked"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1a

    .line 23
    .line 24
    const-wide/16 v0, -0x1

    .line 25
    .line 26
    return-wide v0

    .line 27
    :cond_1a
    invoke-static {p1}, Ls7/b;->j(Lr7/u;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    return-wide v0
.end method

.method public g(Z)Lr7/t;
    .registers 10

    .line 1
    iget-object v0, p0, Li5/a;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lx7/a;

    .line 4
    .line 5
    iget v1, p0, Li5/a;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x3

    .line 9
    if-eq v1, v2, :cond_2a

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq v1, v2, :cond_2a

    .line 13
    .line 14
    if-ne v1, v3, :cond_10

    .line 15
    .line 16
    goto :goto_2a

    .line 17
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "state: "

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Li5/a;->a:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_2a
    :goto_2a
    :try_start_2a
    iget-object v1, v0, Lx7/a;->a:Le8/i;

    .line 44
    .line 45
    iget-wide v4, v0, Lx7/a;->b:J

    .line 46
    .line 47
    invoke-interface {v1, v4, v5}, Le8/i;->i(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-wide v4, v0, Lx7/a;->b:J

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    int-to-long v6, v2

    .line 58
    sub-long/2addr v4, v6

    .line 59
    iput-wide v4, v0, Lx7/a;->b:J

    .line 60
    .line 61
    invoke-static {v1}, Lf4/f;->c(Ljava/lang/String;)Lb0/d;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget v2, v1, Lb0/d;->b:I

    .line 66
    .line 67
    new-instance v4, Lr7/t;

    .line 68
    .line 69
    invoke-direct {v4}, Lr7/t;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v5, v1, Lb0/d;->c:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v5, Lr7/s;

    .line 75
    .line 76
    iput-object v5, v4, Lr7/t;->b:Lr7/s;

    .line 77
    .line 78
    iput v2, v4, Lr7/t;->c:I

    .line 79
    .line 80
    iget-object v1, v1, Lb0/d;->d:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v1, Ljava/lang/String;

    .line 83
    .line 84
    iput-object v1, v4, Lr7/t;->d:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0}, Lx7/a;->a()Lr7/k;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lr7/k;->c()Lr7/j;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, v4, Lr7/t;->f:Lr7/j;

    .line 95
    .line 96
    const/16 v0, 0x64

    .line 97
    .line 98
    if-eqz p1, :cond_67

    .line 99
    .line 100
    if-ne v2, v0, :cond_67

    .line 101
    .line 102
    const/4 p1, 0x0

    .line 103
    return-object p1

    .line 104
    :cond_67
    if-ne v2, v0, :cond_6e

    .line 105
    .line 106
    iput v3, p0, Li5/a;->a:I

    .line 107
    .line 108
    return-object v4

    .line 109
    :catch_6c
    move-exception p1

    .line 110
    goto :goto_7d

    .line 111
    :cond_6e
    const/16 p1, 0x66

    .line 112
    .line 113
    if-gt p1, v2, :cond_79

    .line 114
    .line 115
    const/16 p1, 0xc8

    .line 116
    .line 117
    if-ge v2, p1, :cond_79

    .line 118
    .line 119
    iput v3, p0, Li5/a;->a:I

    .line 120
    .line 121
    return-object v4

    .line 122
    :cond_79
    const/4 p1, 0x4

    .line 123
    iput p1, p0, Li5/a;->a:I
    :try_end_7c
    .catch Ljava/io/EOFException; {:try_start_2a .. :try_end_7c} :catch_6c

    .line 124
    .line 125
    return-object v4

    .line 126
    :goto_7d
    iget-object v0, p0, Li5/a;->c:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, Lv7/l;

    .line 129
    .line 130
    iget-object v0, v0, Lv7/l;->b:Lr7/x;

    .line 131
    .line 132
    iget-object v0, v0, Lr7/x;->a:Lr7/a;

    .line 133
    .line 134
    iget-object v0, v0, Lr7/a;->h:Lr7/m;

    .line 135
    .line 136
    invoke-virtual {v0}, Lr7/m;->f()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    new-instance v1, Ljava/io/IOException;

    .line 141
    .line 142
    const-string v2, "unexpected end of stream on "

    .line 143
    .line 144
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    throw v1
.end method

.method public h()Lv7/l;
    .registers 2

    .line 1
    iget-object v0, p0, Li5/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv7/l;

    .line 4
    .line 5
    return-object v0
.end method

.method public i()Li5/b;
    .registers 13

    .line 1
    iget v0, p0, Li5/a;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    const-string v0, " registrationStatus"

    .line 6
    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const-string v0, ""

    .line 9
    .line 10
    :goto_9
    iget-object v1, p0, Li5/a;->f:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/lang/Long;

    .line 13
    .line 14
    if-nez v1, :cond_15

    .line 15
    .line 16
    const-string v1, " expiresInSecs"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_15
    iget-object v1, p0, Li5/a;->g:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Ljava/lang/Long;

    .line 25
    .line 26
    if-nez v1, :cond_21

    .line 27
    .line 28
    const-string v1, " tokenCreationEpochInSecs"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_21
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_53

    .line 39
    .line 40
    new-instance v2, Li5/b;

    .line 41
    .line 42
    iget-object v0, p0, Li5/a;->b:Ljava/lang/Object;

    .line 43
    .line 44
    move-object v8, v0

    .line 45
    check-cast v8, Ljava/lang/String;

    .line 46
    .line 47
    iget v5, p0, Li5/a;->a:I

    .line 48
    .line 49
    iget-object v0, p0, Li5/a;->c:Ljava/lang/Object;

    .line 50
    .line 51
    move-object v9, v0

    .line 52
    check-cast v9, Ljava/lang/String;

    .line 53
    .line 54
    iget-object v0, p0, Li5/a;->d:Ljava/lang/Object;

    .line 55
    .line 56
    move-object v10, v0

    .line 57
    check-cast v10, Ljava/lang/String;

    .line 58
    .line 59
    iget-object v0, p0, Li5/a;->f:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Ljava/lang/Long;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    iget-object v0, p0, Li5/a;->g:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Ljava/lang/Long;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide v6

    .line 75
    iget-object v0, p0, Li5/a;->e:Ljava/lang/Object;

    .line 76
    .line 77
    move-object v11, v0

    .line 78
    check-cast v11, Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct/range {v2 .. v11}, Li5/b;-><init>(JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v2

    .line 84
    :cond_53
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    const-string v2, "Missing required properties:"

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v1
.end method

.method public j(J)Lx7/e;
    .registers 5

    .line 1
    iget v0, p0, Li5/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_e

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    iput v0, p0, Li5/a;->a:I

    .line 8
    .line 9
    new-instance v0, Lx7/e;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2}, Lx7/e;-><init>(Li5/a;J)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string p2, "state: "

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p2, p0, Li5/a;->a:I

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p2
.end method

.method public k(Lr7/k;Ljava/lang/String;)V
    .registers 8

    .line 1
    iget-object v0, p0, Li5/a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le8/h;

    .line 4
    .line 5
    const-string v1, "requestLine"

    .line 6
    .line 7
    invoke-static {v1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Li5/a;->a:I

    .line 11
    .line 12
    if-nez v1, :cond_40

    .line 13
    .line 14
    invoke-interface {v0, p2}, Le8/h;->m(Ljava/lang/String;)Le8/h;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v1, "\r\n"

    .line 19
    .line 20
    invoke-interface {p2, v1}, Le8/h;->m(Ljava/lang/String;)Le8/h;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lr7/k;->size()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_1b
    if-ge v2, p2, :cond_39

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Lr7/k;->b(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v0, v3}, Le8/h;->m(Ljava/lang/String;)Le8/h;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, ": "

    .line 39
    .line 40
    invoke-interface {v3, v4}, Le8/h;->m(Ljava/lang/String;)Le8/h;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {p1, v2}, Lr7/k;->d(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-interface {v3, v4}, Le8/h;->m(Ljava/lang/String;)Le8/h;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {v3, v1}, Le8/h;->m(Ljava/lang/String;)Le8/h;

    .line 53
    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_1b

    .line 58
    :cond_39
    invoke-interface {v0, v1}, Le8/h;->m(Ljava/lang/String;)Le8/h;

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    iput p1, p0, Li5/a;->a:I

    .line 63
    .line 64
    return-void

    .line 65
    :cond_40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string p2, "state: "

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget p2, p0, Li5/a;->a:I

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p2
.end method
