###### Class com.engagelab.privates.common.y (com.engagelab.privates.common.y)
.class public Lcom/engagelab/privates/common/y;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/common/y$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/View;Landroid/graphics/Point;JLcom/engagelab/privates/common/y$c;)V
    .registers 6

    if-nez p0, :cond_a

    const-string p0, "InAppAnimator"

    const-string p1, "[slideOutOfView] view is null"

    .line 1
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/engagelab/privates/common/y$a;

    invoke-direct {p1, p4}, Lcom/engagelab/privates/common/y$a;-><init>(Lcom/engagelab/privates/common/y$c;)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;JLcom/engagelab/privates/common/y$c;)V
    .registers 12

    if-nez p0, :cond_a

    const-string p0, "InAppAnimator"

    const-string p1, "[slideIntoView] view is null"

    .line 7
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/engagelab/privates/common/y$b;

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/engagelab/privates/common/y$b;-><init>(Landroid/view/View;Landroid/graphics/Point;JLcom/engagelab/privates/common/y$c;)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

###### Class com.engagelab.privates.common.y.a (com.engagelab.privates.common.y$a)
.class public final Lcom/engagelab/privates/common/y$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/y;->a(Landroid/view/View;Landroid/graphics/Point;JLcom/engagelab/privates/common/y$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/engagelab/privates/common/y$c;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/y$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/y$a;->a:Lcom/engagelab/privates/common/y$c;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    :try_start_3
    iget-object p1, p0, Lcom/engagelab/privates/common/y$a;->a:Lcom/engagelab/privates/common/y$c;

    .line 5
    .line 6
    if-eqz p1, :cond_a

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/engagelab/privates/common/y$c;->a()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_a

    .line 9
    .line 10
    .line 11
    :catchall_a
    :cond_a
    return-void
.end method

###### Class com.engagelab.privates.common.y.b (com.engagelab.privates.common.y$b)
.class public final Lcom/engagelab/privates/common/y$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/y;->a(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;JLcom/engagelab/privates/common/y$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/graphics/Point;

.field public final synthetic c:J

.field public final synthetic d:Lcom/engagelab/privates/common/y$c;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Point;JLcom/engagelab/privates/common/y$c;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/y$b;->a:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/engagelab/privates/common/y$b;->b:Landroid/graphics/Point;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/engagelab/privates/common/y$b;->c:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/engagelab/privates/common/y$b;->d:Lcom/engagelab/privates/common/y$c;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    :try_start_3
    iget-object p1, p0, Lcom/engagelab/privates/common/y$b;->a:Landroid/view/View;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/engagelab/privates/common/y$b;->b:Landroid/graphics/Point;

    .line 11
    .line 12
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 13
    .line 14
    int-to-float v0, v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/engagelab/privates/common/y$b;->b:Landroid/graphics/Point;

    .line 20
    .line 21
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 22
    .line 23
    int-to-float v0, v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-wide v0, p0, Lcom/engagelab/privates/common/y$b;->c:J

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/engagelab/privates/common/y$b;->d:Lcom/engagelab/privates/common/y$c;

    .line 45
    .line 46
    if-eqz p1, :cond_32

    .line 47
    .line 48
    invoke-interface {p1}, Lcom/engagelab/privates/common/y$c;->a()V
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_32

    .line 49
    .line 50
    .line 51
    :catchall_32
    :cond_32
    return-void
.end method

###### Class com.engagelab.privates.common.y.c (com.engagelab.privates.common.y$c)
.class public interface abstract Lcom/engagelab/privates/common/y$c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a()V
.end method
