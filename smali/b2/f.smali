###### Class b2.f (b2.f)
.class public final Lb2/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lb2/f;

.field public static final b:Lb2/o;

.field public static c:Landroid/hardware/SensorManager;

.field public static d:Lb2/n;

.field public static e:Ljava/lang/String;

.field public static final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lb2/f;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb2/f;->a:Lb2/f;

    .line 7
    .line 8
    new-instance v0, Lb2/o;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lb2/f;->b:Lb2/o;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lb2/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lb2/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    return-void
.end method

.method public static final a()Ljava/lang/String;
    .registers 4

    .line 1
    const-class v0, Lb2/f;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    sget-object v1, Lb2/f;->e:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v1, :cond_1b

    .line 14
    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sput-object v1, Lb2/f;->e:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_1b

    .line 26
    :catchall_19
    move-exception v1

    .line 27
    goto :goto_23

    .line 28
    :cond_1b
    :goto_1b
    sget-object v1, Lb2/f;->e:Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, "null cannot be cast to non-null type kotlin.String"

    .line 31
    .line 32
    invoke-static {v3, v1}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_19

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :goto_23
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object v2
.end method
