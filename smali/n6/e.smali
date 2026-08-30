###### Class n6.e (n6.e)
.class public abstract Ln6/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lr7/p;

.field public static final b:Lr7/r;

.field public static final c:Ljava/util/concurrent/ExecutorService;

.field public static volatile d:Ljava/lang/String;

.field public static volatile e:Ljava/lang/String;

.field public static volatile f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Lr7/p;->e:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const-string v0, "application/json; charset=utf-8"

    .line 4
    .line 5
    invoke-static {v0}, Ly1/j;->i(Ljava/lang/String;)Lr7/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Ln6/e;->a:Lr7/p;

    .line 10
    .line 11
    new-instance v0, Lr7/r;

    .line 12
    .line 13
    new-instance v1, Lr7/q;

    .line 14
    .line 15
    invoke-direct {v1}, Lr7/q;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lr7/r;-><init>(Lr7/q;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Ln6/e;->b:Lr7/r;

    .line 22
    .line 23
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Ln6/e;->c:Ljava/util/concurrent/ExecutorService;

    .line 28
    .line 29
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    sput-object p0, Ln6/e;->d:Ljava/lang/String;

    .line 2
    .line 3
    sput-object p1, Ln6/e;->e:Ljava/lang/String;

    .line 4
    .line 5
    sput-object p2, Ln6/e;->f:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "init: measurementId="

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, ", clientId="

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, ", apiSecret="

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "GA4Reporter"

    .line 38
    .line 39
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 1
    sget-object v0, Ln6/e;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1a

    .line 4
    .line 5
    sget-object v0, Ln6/e;->e:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_1a

    .line 8
    .line 9
    sget-object v0, Ln6/e;->f:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_d

    .line 12
    .line 13
    goto :goto_1a

    .line 14
    :cond_d
    sget-object v0, Ln6/e;->c:Ljava/util/concurrent/ExecutorService;

    .line 15
    .line 16
    new-instance v1, La2/i;

    .line 17
    .line 18
    const/16 v2, 0xf

    .line 19
    .line 20
    invoke-direct {v1, p0, v2, p1}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    :goto_1a
    const-string p0, "GA4Reporter"

    .line 28
    .line 29
    const-string p1, "logEvent ignored, GA4Reporter not initialized"

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void
.end method
