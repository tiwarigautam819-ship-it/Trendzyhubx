###### Class d7.b (d7.b)
.class public abstract Ld7/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Li7/a;
.implements Ljava/io/Serializable;


# instance fields
.field public transient a:Li7/a;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld7/b;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Ld7/b;->c:Ljava/lang/Class;

    .line 7
    .line 8
    iput-object p3, p0, Ld7/b;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Ld7/b;->e:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Ld7/b;->f:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ld7/c;
    .registers 3

    .line 1
    iget-boolean v0, p0, Ld7/b;->f:Z

    .line 2
    .line 3
    iget-object v1, p0, Ld7/b;->c:Ljava/lang/Class;

    .line 4
    .line 5
    if-eqz v0, :cond_11

    .line 6
    .line 7
    sget-object v0, Ld7/l;->a:Ld7/m;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v0, Ld7/i;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ld7/i;-><init>(Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_11
    invoke-static {v1}, Ld7/l;->a(Ljava/lang/Class;)Ld7/d;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
