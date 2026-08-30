###### Class androidx.fragment.app.y (androidx.fragment.app.y)
.class public final Landroidx/fragment/app/y;
.super Landroidx/fragment/app/b0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:Lo5/c;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Le/a;

.field public final synthetic d:Ld/b;

.field public final synthetic e:Landroidx/fragment/app/c0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/c0;Lo5/c;Ljava/util/concurrent/atomic/AtomicReference;Le/a;Ld/b;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/y;->e:Landroidx/fragment/app/c0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/fragment/app/y;->a:Lo5/c;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/fragment/app/y;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/fragment/app/y;->c:Le/a;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/fragment/app/y;->d:Ld/b;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "fragment_"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/fragment/app/y;->e:Landroidx/fragment/app/c0;

    .line 9
    .line 10
    iget-object v2, v1, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "_rq#"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, v1, Landroidx/fragment/app/c0;->b0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v2, p0, Landroidx/fragment/app/y;->a:Lo5/c;

    .line 34
    .line 35
    iget-object v2, v2, Lo5/c;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Landroidx/fragment/app/c0;

    .line 38
    .line 39
    iget-object v3, v2, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 40
    .line 41
    if-eqz v3, :cond_31

    .line 42
    .line 43
    iget-object v2, v3, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 44
    .line 45
    invoke-virtual {v2}, Lb/p;->getActivityResultRegistry()Ld/h;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    goto :goto_39

    .line 50
    :cond_31
    invoke-virtual {v2}, Landroidx/fragment/app/c0;->E()Landroidx/fragment/app/h0;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lb/p;->getActivityResultRegistry()Ld/h;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :goto_39
    iget-object v3, p0, Landroidx/fragment/app/y;->c:Le/a;

    .line 59
    .line 60
    iget-object v4, p0, Landroidx/fragment/app/y;->d:Ld/b;

    .line 61
    .line 62
    invoke-virtual {v2, v0, v1, v3, v4}, Ld/h;->c(Ljava/lang/String;Landroidx/lifecycle/t;Le/a;Ld/b;)Ld/g;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Landroidx/fragment/app/y;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
