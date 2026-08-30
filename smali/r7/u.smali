###### Class r7.u (r7.u)
.class public final Lr7/u;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lcom/google/android/gms/common/internal/g;

.field public final b:Lr7/s;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Lr7/i;

.field public final f:Lr7/k;

.field public final g:Lr7/w;

.field public final h:Lr7/u;

.field public final i:Lr7/u;

.field public final j:Lr7/u;

.field public final k:J

.field public final l:J

.field public final m:Lcom/google/firebase/messaging/p;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/g;Lr7/s;Ljava/lang/String;ILr7/i;Lr7/k;Lr7/w;Lr7/u;Lr7/u;Lr7/u;JJLcom/google/firebase/messaging/p;)V
    .registers 17

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "protocol"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "message"

    .line 12
    .line 13
    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lr7/u;->a:Lcom/google/android/gms/common/internal/g;

    .line 20
    .line 21
    iput-object p2, p0, Lr7/u;->b:Lr7/s;

    .line 22
    .line 23
    iput-object p3, p0, Lr7/u;->c:Ljava/lang/String;

    .line 24
    .line 25
    iput p4, p0, Lr7/u;->d:I

    .line 26
    .line 27
    iput-object p5, p0, Lr7/u;->e:Lr7/i;

    .line 28
    .line 29
    iput-object p6, p0, Lr7/u;->f:Lr7/k;

    .line 30
    .line 31
    iput-object p7, p0, Lr7/u;->g:Lr7/w;

    .line 32
    .line 33
    iput-object p8, p0, Lr7/u;->h:Lr7/u;

    .line 34
    .line 35
    iput-object p9, p0, Lr7/u;->i:Lr7/u;

    .line 36
    .line 37
    iput-object p10, p0, Lr7/u;->j:Lr7/u;

    .line 38
    .line 39
    iput-wide p11, p0, Lr7/u;->k:J

    .line 40
    .line 41
    iput-wide p13, p0, Lr7/u;->l:J

    .line 42
    .line 43
    move-object/from16 p1, p15

    .line 44
    .line 45
    iput-object p1, p0, Lr7/u;->m:Lcom/google/firebase/messaging/p;

    .line 46
    .line 47
    return-void
.end method

.method public static a(Ljava/lang/String;Lr7/u;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lr7/u;->f:Lr7/k;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lr7/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_c

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    :cond_c
    return-object p0
.end method


# virtual methods
.method public final c()Lr7/t;
    .registers 4

    .line 1
    new-instance v0, Lr7/t;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lr7/u;->a:Lcom/google/android/gms/common/internal/g;

    .line 7
    .line 8
    iput-object v1, v0, Lr7/t;->a:Lcom/google/android/gms/common/internal/g;

    .line 9
    .line 10
    iget-object v1, p0, Lr7/u;->b:Lr7/s;

    .line 11
    .line 12
    iput-object v1, v0, Lr7/t;->b:Lr7/s;

    .line 13
    .line 14
    iget v1, p0, Lr7/u;->d:I

    .line 15
    .line 16
    iput v1, v0, Lr7/t;->c:I

    .line 17
    .line 18
    iget-object v1, p0, Lr7/u;->c:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, v0, Lr7/t;->d:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lr7/u;->e:Lr7/i;

    .line 23
    .line 24
    iput-object v1, v0, Lr7/t;->e:Lr7/i;

    .line 25
    .line 26
    iget-object v1, p0, Lr7/u;->f:Lr7/k;

    .line 27
    .line 28
    invoke-virtual {v1}, Lr7/k;->c()Lr7/j;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, v0, Lr7/t;->f:Lr7/j;

    .line 33
    .line 34
    iget-object v1, p0, Lr7/u;->g:Lr7/w;

    .line 35
    .line 36
    iput-object v1, v0, Lr7/t;->g:Lr7/w;

    .line 37
    .line 38
    iget-object v1, p0, Lr7/u;->h:Lr7/u;

    .line 39
    .line 40
    iput-object v1, v0, Lr7/t;->h:Lr7/u;

    .line 41
    .line 42
    iget-object v1, p0, Lr7/u;->i:Lr7/u;

    .line 43
    .line 44
    iput-object v1, v0, Lr7/t;->i:Lr7/u;

    .line 45
    .line 46
    iget-object v1, p0, Lr7/u;->j:Lr7/u;

    .line 47
    .line 48
    iput-object v1, v0, Lr7/t;->j:Lr7/u;

    .line 49
    .line 50
    iget-wide v1, p0, Lr7/u;->k:J

    .line 51
    .line 52
    iput-wide v1, v0, Lr7/t;->k:J

    .line 53
    .line 54
    iget-wide v1, p0, Lr7/u;->l:J

    .line 55
    .line 56
    iput-wide v1, v0, Lr7/t;->l:J

    .line 57
    .line 58
    iget-object v1, p0, Lr7/u;->m:Lcom/google/firebase/messaging/p;

    .line 59
    .line 60
    iput-object v1, v0, Lr7/t;->m:Lcom/google/firebase/messaging/p;

    .line 61
    .line 62
    return-object v0
.end method

.method public final close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lr7/u;->g:Lr7/w;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0}, Lr7/w;->close()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "response is not eligible for a body and must not be closed"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Response{protocol="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lr7/u;->b:Lr7/s;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", code="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lr7/u;->d:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", message="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lr7/u;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", url="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lr7/u;->a:Lcom/google/android/gms/common/internal/g;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lr7/m;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v1, 0x7d

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
