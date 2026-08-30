###### Class b.d0 (b.d0)
.class public final Lb/d0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic a:Lc7/l;

.field public final synthetic b:Lc7/l;

.field public final synthetic c:Lc7/a;

.field public final synthetic d:Lc7/a;


# direct methods
.method public constructor <init>(Lc7/l;Lc7/l;Lc7/a;Lc7/a;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb/d0;->a:Lc7/l;

    .line 5
    .line 6
    iput-object p2, p0, Lb/d0;->b:Lc7/l;

    .line 7
    .line 8
    iput-object p3, p0, Lb/d0;->c:Lc7/a;

    .line 9
    .line 10
    iput-object p4, p0, Lb/d0;->d:Lc7/a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .registers 2

    .line 1
    iget-object v0, p0, Lb/d0;->d:Lc7/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lc7/a;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBackInvoked()V
    .registers 2

    .line 1
    iget-object v0, p0, Lb/d0;->c:Lc7/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lc7/a;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .registers 3

    .line 1
    const-string v0, "backEvent"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lb/b;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lb/b;-><init>(Landroid/window/BackEvent;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lb/d0;->b:Lc7/l;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lc7/l;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .registers 3

    .line 1
    const-string v0, "backEvent"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lb/b;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lb/b;-><init>(Landroid/window/BackEvent;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lb/d0;->a:Lc7/l;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lc7/l;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method
