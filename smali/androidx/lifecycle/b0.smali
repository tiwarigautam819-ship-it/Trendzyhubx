###### Class androidx.lifecycle.b0 (androidx.lifecycle.b0)
.class public final Landroidx/lifecycle/b0;
.super Landroidx/lifecycle/g;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/c0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/c0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/b0;->this$0:Landroidx/lifecycle/c0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p2, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v0, 0x1d

    .line 9
    .line 10
    if-ge p2, v0, :cond_24

    .line 11
    .line 12
    sget p2, Landroidx/lifecycle/f0;->b:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "null cannot be cast to non-null type androidx.lifecycle.ReportFragment"

    .line 25
    .line 26
    invoke-static {p2, p1}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    check-cast p1, Landroidx/lifecycle/f0;

    .line 30
    .line 31
    iget-object p2, p0, Landroidx/lifecycle/b0;->this$0:Landroidx/lifecycle/c0;

    .line 32
    .line 33
    iget-object p2, p2, Landroidx/lifecycle/c0;->h:Lo5/c;

    .line 34
    .line 35
    iput-object p2, p1, Landroidx/lifecycle/f0;->a:Lo5/c;

    .line 36
    .line 37
    :cond_24
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/lifecycle/b0;->this$0:Landroidx/lifecycle/c0;

    .line 7
    .line 8
    iget v0, p1, Landroidx/lifecycle/c0;->b:I

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    iput v0, p1, Landroidx/lifecycle/c0;->b:I

    .line 13
    .line 14
    if-nez v0, :cond_1b

    .line 15
    .line 16
    iget-object v0, p1, Landroidx/lifecycle/c0;->e:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p1, Landroidx/lifecycle/c0;->g:La2/g;

    .line 22
    .line 23
    const-wide/16 v1, 0x2bc

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    :cond_1b
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p2, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Landroidx/lifecycle/b0$a;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/lifecycle/b0;->this$0:Landroidx/lifecycle/c0;

    .line 9
    .line 10
    invoke-direct {p2, v0}, Landroidx/lifecycle/b0$a;-><init>(Landroidx/lifecycle/c0;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Landroidx/lifecycle/a0;->a(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/lifecycle/b0;->this$0:Landroidx/lifecycle/c0;

    .line 7
    .line 8
    iget v0, p1, Landroidx/lifecycle/c0;->a:I

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    iput v0, p1, Landroidx/lifecycle/c0;->a:I

    .line 13
    .line 14
    if-nez v0, :cond_1d

    .line 15
    .line 16
    iget-boolean v0, p1, Landroidx/lifecycle/c0;->c:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1d

    .line 19
    .line 20
    iget-object v0, p1, Landroidx/lifecycle/c0;->f:Landroidx/lifecycle/v;

    .line 21
    .line 22
    sget-object v1, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p1, Landroidx/lifecycle/c0;->d:Z

    .line 29
    .line 30
    :cond_1d
    return-void
.end method

###### Class androidx.lifecycle.b0.a (androidx.lifecycle.b0$a)
.class public final Landroidx/lifecycle/b0$a;
.super Landroidx/lifecycle/g;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/b0;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/c0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/c0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/b0$a;->this$0:Landroidx/lifecycle/c0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .registers 3

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/lifecycle/b0$a;->this$0:Landroidx/lifecycle/c0;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/lifecycle/c0;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .registers 4

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/lifecycle/b0$a;->this$0:Landroidx/lifecycle/c0;

    .line 7
    .line 8
    iget v0, p1, Landroidx/lifecycle/c0;->a:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    add-int/2addr v0, v1

    .line 12
    iput v0, p1, Landroidx/lifecycle/c0;->a:I

    .line 13
    .line 14
    if-ne v0, v1, :cond_1d

    .line 15
    .line 16
    iget-boolean v0, p1, Landroidx/lifecycle/c0;->d:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1d

    .line 19
    .line 20
    iget-object v0, p1, Landroidx/lifecycle/c0;->f:Landroidx/lifecycle/v;

    .line 21
    .line 22
    sget-object v1, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p1, Landroidx/lifecycle/c0;->d:Z

    .line 29
    .line 30
    :cond_1d
    return-void
.end method
