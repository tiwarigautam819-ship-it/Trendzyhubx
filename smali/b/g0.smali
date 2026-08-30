###### Class b.g0 (b.g0)
.class public final Lb/g0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lb/c;


# instance fields
.field public final a:Lb/y;

.field public final synthetic b:Lb/i0;


# direct methods
.method public constructor <init>(Lb/i0;Lb/y;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "onBackPressedCallback"

    .line 5
    .line 6
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lb/g0;->b:Lb/i0;

    .line 10
    .line 11
    iput-object p2, p0, Lb/g0;->a:Lb/y;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 5

    .line 1
    iget-object v0, p0, Lb/g0;->b:Lb/i0;

    .line 2
    .line 3
    iget-object v1, v0, Lb/i0;->b:Ls6/e;

    .line 4
    .line 5
    iget-object v2, p0, Lb/g0;->a:Lb/y;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ls6/e;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lb/i0;->c:Lb/y;

    .line 11
    .line 12
    invoke-static {v1, v2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_17

    .line 18
    .line 19
    invoke-virtual {v2}, Lb/y;->a()V

    .line 20
    .line 21
    .line 22
    iput-object v3, v0, Lb/i0;->c:Lb/y;

    .line 23
    .line 24
    :cond_17
    iget-object v0, v2, Lb/y;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, v2, Lb/y;->c:Lb/h0;

    .line 30
    .line 31
    if-eqz v0, :cond_23

    .line 32
    .line 33
    invoke-interface {v0}, Lc7/a;->b()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_23
    iput-object v3, v2, Lb/y;->c:Lb/h0;

    .line 37
    .line 38
    return-void
.end method
