###### Class r7.t (r7.t)
.class public final Lr7/t;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Lcom/google/android/gms/common/internal/g;

.field public b:Lr7/s;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lr7/i;

.field public f:Lr7/j;

.field public g:Lr7/w;

.field public h:Lr7/u;

.field public i:Lr7/u;

.field public j:Lr7/u;

.field public k:J

.field public l:J

.field public m:Lcom/google/firebase/messaging/p;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lr7/t;->c:I

    .line 6
    .line 7
    new-instance v0, Lr7/j;

    .line 8
    .line 9
    invoke-direct {v0}, Lr7/j;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lr7/t;->f:Lr7/j;

    .line 13
    .line 14
    return-void
.end method

.method public static b(Ljava/lang/String;Lr7/u;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_53

    .line 2
    .line 3
    iget-object v0, p1, Lr7/u;->g:Lr7/w;

    .line 4
    .line 5
    if-nez v0, :cond_43

    .line 6
    .line 7
    iget-object v0, p1, Lr7/u;->h:Lr7/u;

    .line 8
    .line 9
    if-nez v0, :cond_33

    .line 10
    .line 11
    iget-object v0, p1, Lr7/u;->i:Lr7/u;

    .line 12
    .line 13
    if-nez v0, :cond_23

    .line 14
    .line 15
    iget-object p1, p1, Lr7/u;->j:Lr7/u;

    .line 16
    .line 17
    if-nez p1, :cond_13

    .line 18
    .line 19
    goto :goto_53

    .line 20
    :cond_13
    const-string p1, ".priorResponse != null"

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_23
    const-string p1, ".cacheResponse != null"

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_33
    const-string p1, ".networkResponse != null"

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_43
    const-string p1, ".body != null"

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_53
    :goto_53
    return-void
.end method


# virtual methods
.method public final a()Lr7/u;
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v5, v0, Lr7/t;->c:I

    .line 4
    .line 5
    if-ltz v5, :cond_48

    .line 6
    .line 7
    iget-object v2, v0, Lr7/t;->a:Lcom/google/android/gms/common/internal/g;

    .line 8
    .line 9
    if-eqz v2, :cond_40

    .line 10
    .line 11
    iget-object v3, v0, Lr7/t;->b:Lr7/s;

    .line 12
    .line 13
    if-eqz v3, :cond_38

    .line 14
    .line 15
    iget-object v4, v0, Lr7/t;->d:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v4, :cond_30

    .line 18
    .line 19
    iget-object v6, v0, Lr7/t;->e:Lr7/i;

    .line 20
    .line 21
    iget-object v1, v0, Lr7/t;->f:Lr7/j;

    .line 22
    .line 23
    invoke-virtual {v1}, Lr7/j;->c()Lr7/k;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    iget-object v8, v0, Lr7/t;->g:Lr7/w;

    .line 28
    .line 29
    iget-object v9, v0, Lr7/t;->h:Lr7/u;

    .line 30
    .line 31
    iget-object v10, v0, Lr7/t;->i:Lr7/u;

    .line 32
    .line 33
    iget-object v11, v0, Lr7/t;->j:Lr7/u;

    .line 34
    .line 35
    iget-wide v12, v0, Lr7/t;->k:J

    .line 36
    .line 37
    iget-wide v14, v0, Lr7/t;->l:J

    .line 38
    .line 39
    iget-object v1, v0, Lr7/t;->m:Lcom/google/firebase/messaging/p;

    .line 40
    .line 41
    move-object/from16 v16, v1

    .line 42
    .line 43
    new-instance v1, Lr7/u;

    .line 44
    .line 45
    invoke-direct/range {v1 .. v16}, Lr7/u;-><init>(Lcom/google/android/gms/common/internal/g;Lr7/s;Ljava/lang/String;ILr7/i;Lr7/k;Lr7/w;Lr7/u;Lr7/u;Lr7/u;JJLcom/google/firebase/messaging/p;)V

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v2, "message == null"

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_38
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v2, "protocol == null"

    .line 60
    .line 61
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v1

    .line 65
    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v2, "request == null"

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v1

    .line 73
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "code < 0: "

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget v2, v0, Lr7/t;->c:I

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v2
.end method
