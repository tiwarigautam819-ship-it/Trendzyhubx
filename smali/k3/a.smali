###### Class k3.a (k3.a)
.class public final Lk3/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lk3/b;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lc5/h;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lg3/d;

.field public final d:Lm3/d;

.field public final e:Ln3/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lf3/q;

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
    sput-object v0, Lk3/a;->f:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lg3/d;Lc5/h;Lm3/d;Ln3/c;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk3/a;->b:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Lk3/a;->c:Lg3/d;

    .line 7
    .line 8
    iput-object p3, p0, Lk3/a;->a:Lc5/h;

    .line 9
    .line 10
    iput-object p4, p0, Lk3/a;->d:Lm3/d;

    .line 11
    .line 12
    iput-object p5, p0, Lk3/a;->e:Ln3/c;

    .line 13
    .line 14
    return-void
.end method
