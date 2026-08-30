###### Class i.c (i.c)
.class public final Li/c;
.super Landroid/support/v4/media/session/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/animation/ObjectAnimator;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .registers 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p2, :cond_d

    .line 10
    .line 11
    add-int/lit8 v2, v0, -0x1

    .line 12
    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move v2, v1

    .line 15
    :goto_e
    const/4 v3, 0x1

    .line 16
    if-eqz p2, :cond_13

    .line 17
    .line 18
    move v0, v1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    sub-int/2addr v0, v3

    .line 21
    :goto_14
    new-instance v4, Li/d;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    iput v5, v4, Li/d;->b:I

    .line 31
    .line 32
    iget-object v6, v4, Li/d;->a:[I

    .line 33
    .line 34
    if-eqz v6, :cond_26

    .line 35
    .line 36
    array-length v6, v6

    .line 37
    if-ge v6, v5, :cond_2a

    .line 38
    .line 39
    :cond_26
    new-array v6, v5, [I

    .line 40
    .line 41
    iput-object v6, v4, Li/d;->a:[I

    .line 42
    .line 43
    :cond_2a
    iget-object v6, v4, Li/d;->a:[I

    .line 44
    .line 45
    move v7, v1

    .line 46
    :goto_2d
    if-ge v1, v5, :cond_40

    .line 47
    .line 48
    if-eqz p2, :cond_35

    .line 49
    .line 50
    sub-int v8, v5, v1

    .line 51
    .line 52
    sub-int/2addr v8, v3

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move v8, v1

    .line 55
    :goto_36
    invoke-virtual {p1, v8}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    aput v8, v6, v1

    .line 60
    .line 61
    add-int/2addr v7, v8

    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_2d

    .line 65
    :cond_40
    iput v7, v4, Li/d;->c:I

    .line 66
    .line 67
    const-string p2, "currentIndex"

    .line 68
    .line 69
    filled-new-array {v2, v0}, [I

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 78
    .line 79
    .line 80
    iget p2, v4, Li/d;->c:I

    .line 81
    .line 82
    int-to-long v0, p2

    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 87
    .line 88
    .line 89
    iput-boolean p3, p0, Li/c;->b:Z

    .line 90
    .line 91
    iput-object p1, p0, Li/c;->a:Landroid/animation/ObjectAnimator;

    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public final b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Li/c;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final i()V
    .registers 2

    .line 1
    iget-object v0, p0, Li/c;->a:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final l()V
    .registers 2

    .line 1
    iget-object v0, p0, Li/c;->a:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m()V
    .registers 2

    .line 1
    iget-object v0, p0, Li/c;->a:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
