###### Class b.f0 (b.f0)
.class public final Lb/f0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroidx/lifecycle/r;
.implements Lb/c;


# instance fields
.field public final a:Landroidx/lifecycle/o;

.field public final b:Lb/y;

.field public c:Lb/g0;

.field public final synthetic d:Lb/i0;


# direct methods
.method public constructor <init>(Lb/i0;Landroidx/lifecycle/o;Lb/y;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "onBackPressedCallback"

    .line 5
    .line 6
    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lb/f0;->d:Lb/i0;

    .line 10
    .line 11
    iput-object p2, p0, Lb/f0;->a:Landroidx/lifecycle/o;

    .line 12
    .line 13
    iput-object p3, p0, Lb/f0;->b:Lb/y;

    .line 14
    .line 15
    invoke-virtual {p2, p0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .registers 6

    .line 1
    sget-object p1, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 2
    .line 3
    if-ne p2, p1, :cond_2d

    .line 4
    .line 5
    iget-object p1, p0, Lb/f0;->d:Lb/i0;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string p2, "onBackPressedCallback"

    .line 11
    .line 12
    iget-object v0, p0, Lb/f0;->b:Lb/y;

    .line 13
    .line 14
    invoke-static {p2, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p1, Lb/i0;->b:Ls6/e;

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ls6/e;->addLast(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lb/g0;

    .line 23
    .line 24
    invoke-direct {p2, p1, v0}, Lb/g0;-><init>(Lb/i0;Lb/y;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lb/y;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lb/i0;->e()V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lb/h0;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-direct {v1, v2, p1}, Lb/h0;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, v0, Lb/y;->c:Lb/h0;

    .line 42
    .line 43
    iput-object p2, p0, Lb/f0;->c:Lb/g0;

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2d
    sget-object p1, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 47
    .line 48
    if-ne p2, p1, :cond_39

    .line 49
    .line 50
    iget-object p1, p0, Lb/f0;->c:Lb/g0;

    .line 51
    .line 52
    if-eqz p1, :cond_40

    .line 53
    .line 54
    invoke-virtual {p1}, Lb/g0;->cancel()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_39
    sget-object p1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    .line 59
    .line 60
    if-ne p2, p1, :cond_40

    .line 61
    .line 62
    invoke-virtual {p0}, Lb/f0;->cancel()V

    .line 63
    .line 64
    .line 65
    :cond_40
    return-void
.end method

.method public final cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lb/f0;->a:Landroidx/lifecycle/o;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb/f0;->b:Lb/y;

    .line 7
    .line 8
    iget-object v0, v0, Lb/y;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lb/f0;->c:Lb/g0;

    .line 14
    .line 15
    if-eqz v0, :cond_13

    .line 16
    .line 17
    invoke-virtual {v0}, Lb/g0;->cancel()V

    .line 18
    .line 19
    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lb/f0;->c:Lb/g0;

    .line 22
    .line 23
    return-void
.end method
