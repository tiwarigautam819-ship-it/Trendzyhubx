###### Class androidx.fragment.app.i (androidx.fragment.app.i)
.class public final Landroidx/fragment/app/i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/fragment/app/l1;

.field public final synthetic e:Landroidx/fragment/app/j;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/l1;Landroidx/fragment/app/j;)V
    .registers 6

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/i;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/fragment/app/i;->b:Landroid/view/View;

    .line 4
    .line 5
    iput-boolean p3, p0, Landroidx/fragment/app/i;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/fragment/app/i;->d:Landroidx/fragment/app/l1;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    .line 1
    const-string v0, "anim"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/fragment/app/i;->a:Landroid/view/ViewGroup;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/i;->b:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Landroidx/fragment/app/i;->c:Z

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/fragment/app/i;->d:Landroidx/fragment/app/l1;

    .line 16
    .line 17
    if-eqz v1, :cond_1c

    .line 18
    .line 19
    iget v1, v2, Landroidx/fragment/app/l1;->a:I

    .line 20
    .line 21
    const-string v3, "viewToAnimate"

    .line 22
    .line 23
    invoke-static {v3, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0, p1}, Landroidx/fragment/app/m1;->a(ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-object p1, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    .line 30
    .line 31
    iget-object v0, p1, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/h;

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/fragment/app/m;->a:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Landroidx/fragment/app/l1;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroidx/fragment/app/l1;->c(Landroidx/fragment/app/k1;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x2

    .line 41
    invoke-static {p1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_46

    .line 46
    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v0, "Animator from operation "

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, " has ended."

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v0, "FragmentManager"

    .line 67
    .line 68
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_46
    return-void
.end method
