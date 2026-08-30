###### Class f3.q (f3.q)
.class public final Lf3/q;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile e:Lf3/j;


# instance fields
.field public final a:Lo3/a;

.field public final b:Lo3/a;

.field public final c:Lk3/b;

.field public final d:Ll3/i;


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lk3/b;Ll3/i;Lcom/google/firebase/messaging/y;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf3/q;->a:Lo3/a;

    .line 5
    .line 6
    iput-object p2, p0, Lf3/q;->b:Lo3/a;

    .line 7
    .line 8
    iput-object p3, p0, Lf3/q;->c:Lk3/b;

    .line 9
    .line 10
    iput-object p4, p0, Lf3/q;->d:Ll3/i;

    .line 11
    .line 12
    iget-object p1, p5, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    new-instance p2, La2/g;

    .line 17
    .line 18
    const/16 p3, 0x8

    .line 19
    .line 20
    invoke-direct {p2, p3, p5}, La2/g;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static a()Lf3/q;
    .registers 2

    .line 1
    sget-object v0, Lf3/q;->e:Lf3/j;

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    iget-object v0, v0, Lf3/j;->f:Lq6/a;

    .line 6
    .line 7
    invoke-interface {v0}, Lq6/a;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lf3/q;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v1, "Not initialized!"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 5

    .line 1
    sget-object v0, Lf3/q;->e:Lf3/j;

    .line 2
    .line 3
    if-nez v0, :cond_24

    .line 4
    .line 5
    const-class v0, Lf3/q;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lf3/q;->e:Lf3/j;

    .line 9
    .line 10
    if-nez v1, :cond_20

    .line 11
    .line 12
    new-instance v1, Lk1/h;

    .line 13
    .line 14
    const/4 v2, 0x7

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v1, v2, v3}, Lk1/h;-><init>(IB)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iput-object p0, v1, Lk1/h;->b:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v1}, Lk1/h;->q()Lf3/j;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sput-object p0, Lf3/q;->e:Lf3/j;

    .line 29
    .line 30
    goto :goto_20

    .line 31
    :catchall_1e
    move-exception p0

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    :goto_20
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_1e

    .line 36
    throw p0

    .line 37
    :cond_24
    return-void
.end method


# virtual methods
.method public final c(Lf3/k;)Lf3/p;
    .registers 8

    .line 1
    new-instance v0, Lf3/p;

    .line 2
    .line 3
    if-eqz p1, :cond_b

    .line 4
    .line 5
    sget-object v1, Ld3/a;->d:Ljava/util/Set;

    .line 6
    .line 7
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_16

    .line 12
    :cond_b
    new-instance v1, Lc3/c;

    .line 13
    .line 14
    const-string v2, "proto"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Lc3/c;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_16
    invoke-static {}, Lf3/i;->a()Lc5/h;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string v3, "cct"

    .line 31
    .line 32
    iput-object v3, v2, Lc5/h;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ld3/a;

    .line 35
    .line 36
    iget-object v3, p1, Ld3/a;->a:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p1, p1, Ld3/a;->b:Ljava/lang/String;

    .line 39
    .line 40
    if-nez p1, :cond_2d

    .line 41
    .line 42
    if-nez v3, :cond_2d

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    goto :goto_51

    .line 46
    :cond_2d
    if-nez p1, :cond_31

    .line 47
    .line 48
    const-string p1, ""

    .line 49
    .line 50
    :cond_31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v5, "1$"

    .line 53
    .line 54
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, "\\"

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v3, "UTF-8"

    .line 73
    .line 74
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :goto_51
    iput-object p1, v2, Lc5/h;->c:Ljava/lang/Object;

    .line 83
    .line 84
    invoke-virtual {v2}, Lc5/h;->g()Lf3/i;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {v0, v1, p1, p0}, Lf3/p;-><init>(Ljava/util/Set;Lf3/i;Lf3/q;)V

    .line 89
    .line 90
    .line 91
    return-object v0
.end method
