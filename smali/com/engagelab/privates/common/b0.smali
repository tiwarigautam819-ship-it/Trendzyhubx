###### Class com.engagelab.privates.common.b0 (com.engagelab.privates.common.b0)
.class public Lcom/engagelab/privates/common/b0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/common/b0$e;
    }
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:Landroid/view/View;

.field public d:Lcom/engagelab/privates/common/b0$e;

.field public e:I

.field public f:F

.field public g:F

.field public h:Z

.field public i:I

.field public j:Ljava/lang/Object;

.field public k:Landroid/view/VelocityTracker;

.field public l:F

.field public m:I


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/f0;Ljava/lang/Object;ILcom/engagelab/privates/common/b0$e;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/engagelab/privates/common/b0;->e:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/engagelab/privates/common/f0;->d()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, p0, Lcom/engagelab/privates/common/b0;->a:I

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 29
    .line 30
    .line 31
    const-wide/16 v0, 0x1f4

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/engagelab/privates/common/b0;->b:J

    .line 34
    .line 35
    iput-object p1, p0, Lcom/engagelab/privates/common/b0;->c:Landroid/view/View;

    .line 36
    .line 37
    iput p3, p0, Lcom/engagelab/privates/common/b0;->m:I

    .line 38
    .line 39
    iput-object p2, p0, Lcom/engagelab/privates/common/b0;->j:Ljava/lang/Object;

    .line 40
    .line 41
    iput-object p4, p0, Lcom/engagelab/privates/common/b0;->d:Lcom/engagelab/privates/common/b0$e;

    .line 42
    .line 43
    return-void
.end method

.method public static synthetic a(Lcom/engagelab/privates/common/b0;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/engagelab/privates/common/b0;->b()V

    return-void
.end method

.method public static synthetic b(Lcom/engagelab/privates/common/b0;)Lcom/engagelab/privates/common/b0$e;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/engagelab/privates/common/b0;->d:Lcom/engagelab/privates/common/b0$e;

    return-object p0
.end method

.method public static synthetic c(Lcom/engagelab/privates/common/b0;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/engagelab/privates/common/b0;->c:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic d(Lcom/engagelab/privates/common/b0;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/engagelab/privates/common/b0;->j:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()F
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/engagelab/privates/common/b0;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public a(F)V
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/engagelab/privates/common/b0;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final a(FFLandroid/animation/AnimatorListenerAdapter;)V
    .registers 12

    const-string v1, "InAppSWTouchListener"

    const-string v0, "animateTo, beginTranslation: "

    .line 7
    :try_start_4
    invoke-virtual {p0}, Lcom/engagelab/privates/common/b0;->a()F

    move-result v4

    sub-float v5, p1, v4

    .line 8
    iget-object p1, p0, Lcom/engagelab/privates/common/b0;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v6

    sub-float v7, p2, v6

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", translationDiff: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", beginAlpha: , alphaDiff: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 10
    new-array p1, p1, [F

    fill-array-data p1, :array_64

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 11
    iget-wide v2, p0, Lcom/engagelab/privates/common/b0;->b:J

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    new-instance v2, Lcom/engagelab/privates/common/b0$b;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/engagelab/privates/common/b0$b;-><init>(Lcom/engagelab/privates/common/b0;FFFF)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p3, :cond_54

    .line 13
    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_54

    :catchall_51
    move-exception v0

    move-object p1, v0

    goto :goto_58

    .line 14
    :cond_54
    :goto_54
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_57
    .catchall {:try_start_4 .. :try_end_57} :catchall_51

    :cond_57
    return-void

    .line 15
    :goto_58
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[animateTo] failed"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {p1, p2, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    nop

    :array_64
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(Z)V
    .registers 5

    if-eqz p1, :cond_7

    .line 4
    iget v0, p0, Lcom/engagelab/privates/common/b0;->e:I

    neg-int v0, v0

    :goto_5
    int-to-float v0, v0

    goto :goto_a

    :cond_7
    iget v0, p0, Lcom/engagelab/privates/common/b0;->e:I

    goto :goto_5

    .line 5
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[startDismissAnimationY] dismissTop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", viewHeight: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/engagelab/privates/common/b0;->e:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InAppSWTouchListener"

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/engagelab/privates/common/b0$a;

    invoke-direct {p1, p0}, Lcom/engagelab/privates/common/b0$a;-><init>(Lcom/engagelab/privates/common/b0;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/engagelab/privates/common/b0;->a(FFLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public final b()V
    .registers 6

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/engagelab/privates/common/b0;->c:Landroid/view/View;

    if-eqz v0, :cond_38

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/engagelab/privates/common/b0;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 6
    iget-object v1, p0, Lcom/engagelab/privates/common/b0;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    .line 7
    filled-new-array {v1, v2}, [I

    move-result-object v2

    .line 8
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-wide v3, p0, Lcom/engagelab/privates/common/b0;->b:J

    .line 9
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 10
    new-instance v3, Lcom/engagelab/privates/common/b0$c;

    invoke-direct {v3, p0, v0, v1}, Lcom/engagelab/privates/common/b0$c;-><init>(Lcom/engagelab/privates/common/b0;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    new-instance v1, Lcom/engagelab/privates/common/b0$d;

    invoke-direct {v1, p0, v0}, Lcom/engagelab/privates/common/b0$d;-><init>(Lcom/engagelab/privates/common/b0;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v0

    goto :goto_39

    :cond_38
    return-void

    .line 13
    :goto_39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[performDismiss] failed."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "InAppSWTouchListener"

    .line 14
    invoke-static {v0, v1, v2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public b(F)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/engagelab/privates/common/b0;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public c()V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v2, v0, v1}, Lcom/engagelab/privates/common/b0;->a(FFLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_1
    iget v0, p0, Lcom/engagelab/privates/common/b0;->l:F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/engagelab/privates/common/b0;->e:I

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-ge v0, v2, :cond_18

    .line 12
    .line 13
    iget-object v0, p0, Lcom/engagelab/privates/common/b0;->c:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/engagelab/privates/common/b0;->e:I

    .line 20
    .line 21
    goto :goto_18

    .line 22
    :catchall_15
    move-exception p2

    .line 23
    goto/16 :goto_149

    .line 24
    .line 25
    :cond_18
    :goto_18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_127

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eq v0, v4, :cond_d5

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    if-eq v0, v2, :cond_3e

    .line 37
    .line 38
    if-eq v0, v5, :cond_29

    .line 39
    .line 40
    goto/16 :goto_155

    .line 41
    .line 42
    :cond_29
    iget-object p2, p0, Lcom/engagelab/privates/common/b0;->k:Landroid/view/VelocityTracker;

    .line 43
    .line 44
    if-nez p2, :cond_2f

    .line 45
    .line 46
    goto/16 :goto_155

    .line 47
    .line 48
    :cond_2f
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    .line 49
    .line 50
    .line 51
    iput-object v3, p0, Lcom/engagelab/privates/common/b0;->k:Landroid/view/VelocityTracker;

    .line 52
    .line 53
    iput v1, p0, Lcom/engagelab/privates/common/b0;->l:F

    .line 54
    .line 55
    iput v1, p0, Lcom/engagelab/privates/common/b0;->f:F

    .line 56
    .line 57
    iput v1, p0, Lcom/engagelab/privates/common/b0;->g:F

    .line 58
    .line 59
    iput-boolean p1, p0, Lcom/engagelab/privates/common/b0;->h:Z

    .line 60
    .line 61
    goto/16 :goto_155

    .line 62
    .line 63
    :cond_3e
    iget-object v0, p0, Lcom/engagelab/privates/common/b0;->k:Landroid/view/VelocityTracker;

    .line 64
    .line 65
    if-nez v0, :cond_44

    .line 66
    .line 67
    goto/16 :goto_155

    .line 68
    .line 69
    :cond_44
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget v2, p0, Lcom/engagelab/privates/common/b0;->f:F

    .line 77
    .line 78
    sub-float/2addr v0, v2

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    iget v3, p0, Lcom/engagelab/privates/common/b0;->g:F

    .line 84
    .line 85
    sub-float/2addr v2, v3

    .line 86
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    iget v6, p0, Lcom/engagelab/privates/common/b0;->a:I

    .line 91
    .line 92
    int-to-float v6, v6

    .line 93
    cmpl-float v3, v3, v6

    .line 94
    .line 95
    const/high16 v6, 0x40000000    # 2.0f

    .line 96
    .line 97
    if-lez v3, :cond_ae

    .line 98
    .line 99
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    div-float/2addr v3, v6

    .line 108
    cmpg-float v0, v0, v3

    .line 109
    .line 110
    if-gez v0, :cond_ae

    .line 111
    .line 112
    iget v0, p0, Lcom/engagelab/privates/common/b0;->m:I

    .line 113
    .line 114
    if-nez v0, :cond_79

    .line 115
    .line 116
    cmpl-float v0, v2, v1

    .line 117
    .line 118
    if-lez v0, :cond_81

    .line 119
    .line 120
    goto/16 :goto_155

    .line 121
    .line 122
    :cond_79
    if-ne v0, v4, :cond_81

    .line 123
    .line 124
    cmpg-float v0, v2, v1

    .line 125
    .line 126
    if-gez v0, :cond_81

    .line 127
    .line 128
    goto/16 :goto_155

    .line 129
    .line 130
    :cond_81
    iput-boolean v4, p0, Lcom/engagelab/privates/common/b0;->h:Z

    .line 131
    .line 132
    cmpl-float v0, v2, v1

    .line 133
    .line 134
    if-lez v0, :cond_8a

    .line 135
    .line 136
    iget v0, p0, Lcom/engagelab/privates/common/b0;->a:I

    .line 137
    .line 138
    goto :goto_8d

    .line 139
    :cond_8a
    iget v0, p0, Lcom/engagelab/privates/common/b0;->a:I

    .line 140
    .line 141
    neg-int v0, v0

    .line 142
    :goto_8d
    iput v0, p0, Lcom/engagelab/privates/common/b0;->i:I

    .line 143
    .line 144
    iget-object v0, p0, Lcom/engagelab/privates/common/b0;->c:Landroid/view/View;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 151
    .line 152
    .line 153
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    shl-int/lit8 p2, p2, 0x8

    .line 162
    .line 163
    or-int/2addr p2, v5

    .line 164
    invoke-virtual {v0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 165
    .line 166
    .line 167
    iget-object p2, p0, Lcom/engagelab/privates/common/b0;->c:Landroid/view/View;

    .line 168
    .line 169
    invoke-virtual {p2, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 173
    .line 174
    .line 175
    :cond_ae
    iget-boolean p2, p0, Lcom/engagelab/privates/common/b0;->h:Z

    .line 176
    .line 177
    if-eqz p2, :cond_155

    .line 178
    .line 179
    iput v2, p0, Lcom/engagelab/privates/common/b0;->l:F

    .line 180
    .line 181
    iget p2, p0, Lcom/engagelab/privates/common/b0;->i:I

    .line 182
    .line 183
    int-to-float p2, p2

    .line 184
    sub-float p2, v2, p2

    .line 185
    .line 186
    invoke-virtual {p0, p2}, Lcom/engagelab/privates/common/b0;->b(F)V

    .line 187
    .line 188
    .line 189
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    mul-float/2addr p2, v6

    .line 194
    iget v0, p0, Lcom/engagelab/privates/common/b0;->e:I

    .line 195
    .line 196
    int-to-float v0, v0

    .line 197
    div-float/2addr p2, v0

    .line 198
    const/high16 v0, 0x3f800000    # 1.0f

    .line 199
    .line 200
    sub-float p2, v0, p2

    .line 201
    .line 202
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    .line 207
    .line 208
    .line 209
    move-result p2

    .line 210
    invoke-virtual {p0, p2}, Lcom/engagelab/privates/common/b0;->a(F)V

    .line 211
    .line 212
    .line 213
    return v4

    .line 214
    :cond_d5
    iget-object v0, p0, Lcom/engagelab/privates/common/b0;->k:Landroid/view/VelocityTracker;

    .line 215
    .line 216
    if-nez v0, :cond_db

    .line 217
    .line 218
    goto/16 :goto_155

    .line 219
    .line 220
    :cond_db
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    iget v5, p0, Lcom/engagelab/privates/common/b0;->f:F

    .line 225
    .line 226
    sub-float/2addr v0, v5

    .line 227
    iget-object v5, p0, Lcom/engagelab/privates/common/b0;->k:Landroid/view/VelocityTracker;

    .line 228
    .line 229
    invoke-virtual {v5, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 230
    .line 231
    .line 232
    iget-object p2, p0, Lcom/engagelab/privates/common/b0;->k:Landroid/view/VelocityTracker;

    .line 233
    .line 234
    const/16 v5, 0x3e8

    .line 235
    .line 236
    invoke-virtual {p2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 237
    .line 238
    .line 239
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    iget v5, p0, Lcom/engagelab/privates/common/b0;->e:I

    .line 244
    .line 245
    div-int/2addr v5, v2

    .line 246
    int-to-float v2, v5

    .line 247
    cmpl-float p2, p2, v2

    .line 248
    .line 249
    if-lez p2, :cond_106

    .line 250
    .line 251
    iget-boolean p2, p0, Lcom/engagelab/privates/common/b0;->h:Z

    .line 252
    .line 253
    if-eqz p2, :cond_106

    .line 254
    .line 255
    cmpg-float p2, v0, v1

    .line 256
    .line 257
    if-gez p2, :cond_104

    .line 258
    .line 259
    move p2, v4

    .line 260
    goto :goto_108

    .line 261
    :cond_104
    move p2, p1

    .line 262
    goto :goto_108

    .line 263
    :cond_106
    move p2, p1

    .line 264
    move v4, p2

    .line 265
    :goto_108
    if-eqz v4, :cond_10e

    .line 266
    .line 267
    invoke-virtual {p0, p2}, Lcom/engagelab/privates/common/b0;->a(Z)V

    .line 268
    .line 269
    .line 270
    goto :goto_115

    .line 271
    :cond_10e
    iget-boolean p2, p0, Lcom/engagelab/privates/common/b0;->h:Z

    .line 272
    .line 273
    if-eqz p2, :cond_115

    .line 274
    .line 275
    invoke-virtual {p0}, Lcom/engagelab/privates/common/b0;->c()V

    .line 276
    .line 277
    .line 278
    :cond_115
    :goto_115
    iget-object p2, p0, Lcom/engagelab/privates/common/b0;->k:Landroid/view/VelocityTracker;

    .line 279
    .line 280
    if-eqz p2, :cond_11c

    .line 281
    .line 282
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    .line 283
    .line 284
    .line 285
    :cond_11c
    iput-object v3, p0, Lcom/engagelab/privates/common/b0;->k:Landroid/view/VelocityTracker;

    .line 286
    .line 287
    iput v1, p0, Lcom/engagelab/privates/common/b0;->l:F

    .line 288
    .line 289
    iput v1, p0, Lcom/engagelab/privates/common/b0;->f:F

    .line 290
    .line 291
    iput v1, p0, Lcom/engagelab/privates/common/b0;->g:F

    .line 292
    .line 293
    iput-boolean p1, p0, Lcom/engagelab/privates/common/b0;->h:Z

    .line 294
    .line 295
    goto :goto_155

    .line 296
    :cond_127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    iput v0, p0, Lcom/engagelab/privates/common/b0;->f:F

    .line 301
    .line 302
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    iput v0, p0, Lcom/engagelab/privates/common/b0;->g:F

    .line 307
    .line 308
    iget-object v0, p0, Lcom/engagelab/privates/common/b0;->d:Lcom/engagelab/privates/common/b0$e;

    .line 309
    .line 310
    if-eqz v0, :cond_148

    .line 311
    .line 312
    iget-object v1, p0, Lcom/engagelab/privates/common/b0;->j:Ljava/lang/Object;

    .line 313
    .line 314
    invoke-interface {v0, v1}, Lcom/engagelab/privates/common/b0$e;->a(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_148

    .line 319
    .line 320
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    iput-object v0, p0, Lcom/engagelab/privates/common/b0;->k:Landroid/view/VelocityTracker;

    .line 325
    .line 326
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
    :try_end_148
    .catchall {:try_start_1 .. :try_end_148} :catchall_15

    .line 327
    .line 328
    .line 329
    :cond_148
    return p1

    .line 330
    :goto_149
    new-instance v0, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    const-string v1, "onTouch error."

    .line 333
    .line 334
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string v1, "InAppSWTouchListener"

    .line 338
    .line 339
    invoke-static {p2, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :cond_155
    :goto_155
    return p1
.end method

###### Class com.engagelab.privates.common.b0.a (com.engagelab.privates.common.b0$a)
.class public Lcom/engagelab/privates/common/b0$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/b0;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/engagelab/privates/common/b0;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/b0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/b0$a;->a:Lcom/engagelab/privates/common/b0;

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
    iget-object p1, p0, Lcom/engagelab/privates/common/b0$a;->a:Lcom/engagelab/privates/common/b0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/engagelab/privates/common/b0;->a(Lcom/engagelab/privates/common/b0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

###### Class com.engagelab.privates.common.b0.b (com.engagelab.privates.common.b0$b)
.class public Lcom/engagelab/privates/common/b0$b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/b0;->a(FFLandroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Lcom/engagelab/privates/common/b0;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/b0;FFFF)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/b0$b;->e:Lcom/engagelab/privates/common/b0;

    .line 2
    .line 3
    iput p2, p0, Lcom/engagelab/privates/common/b0$b;->a:F

    .line 4
    .line 5
    iput p3, p0, Lcom/engagelab/privates/common/b0$b;->b:F

    .line 6
    .line 7
    iput p4, p0, Lcom/engagelab/privates/common/b0$b;->c:F

    .line 8
    .line 9
    iput p5, p0, Lcom/engagelab/privates/common/b0$b;->d:F

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/engagelab/privates/common/b0$b;->a:F

    .line 6
    .line 7
    iget v2, p0, Lcom/engagelab/privates/common/b0$b;->b:F

    .line 8
    .line 9
    mul-float/2addr v0, v2

    .line 10
    add-float/2addr v0, v1

    .line 11
    iget v1, p0, Lcom/engagelab/privates/common/b0$b;->c:F

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget v2, p0, Lcom/engagelab/privates/common/b0$b;->d:F

    .line 18
    .line 19
    mul-float/2addr p1, v2

    .line 20
    add-float/2addr p1, v1

    .line 21
    iget-object v1, p0, Lcom/engagelab/privates/common/b0$b;->e:Lcom/engagelab/privates/common/b0;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/engagelab/privates/common/b0;->b(F)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/engagelab/privates/common/b0$b;->e:Lcom/engagelab/privates/common/b0;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/common/b0;->a(F)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

###### Class com.engagelab.privates.common.b0.c (com.engagelab.privates.common.b0$c)
.class public Lcom/engagelab/privates/common/b0$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/b0;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic b:I

.field public final synthetic c:Lcom/engagelab/privates/common/b0;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/b0;Landroid/view/ViewGroup$LayoutParams;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/b0$c;->c:Lcom/engagelab/privates/common/b0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/engagelab/privates/common/b0$c;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    iput p3, p0, Lcom/engagelab/privates/common/b0$c;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    const-string p1, "InAppSWTouchListener"

    .line 2
    .line 3
    const-string v0, "[onAnimationEnd] ..."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/engagelab/privates/common/b0$c;->c:Lcom/engagelab/privates/common/b0;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/engagelab/privates/common/b0;->b(Lcom/engagelab/privates/common/b0;)Lcom/engagelab/privates/common/b0$e;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_24

    .line 15
    .line 16
    iget-object p1, p0, Lcom/engagelab/privates/common/b0$c;->c:Lcom/engagelab/privates/common/b0;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/engagelab/privates/common/b0;->b(Lcom/engagelab/privates/common/b0;)Lcom/engagelab/privates/common/b0$e;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/engagelab/privates/common/b0$c;->c:Lcom/engagelab/privates/common/b0;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/engagelab/privates/common/b0;->c(Lcom/engagelab/privates/common/b0;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/engagelab/privates/common/b0$c;->c:Lcom/engagelab/privates/common/b0;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/engagelab/privates/common/b0;->d(Lcom/engagelab/privates/common/b0;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {p1, v0, v1}, Lcom/engagelab/privates/common/b0$e;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_24
    iget-object p1, p0, Lcom/engagelab/privates/common/b0$c;->c:Lcom/engagelab/privates/common/b0;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/engagelab/privates/common/b0;->c(Lcom/engagelab/privates/common/b0;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/engagelab/privates/common/b0$c;->c:Lcom/engagelab/privates/common/b0;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/engagelab/privates/common/b0;->c(Lcom/engagelab/privates/common/b0;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/engagelab/privates/common/b0$c;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    iget v0, p0, Lcom/engagelab/privates/common/b0$c;->b:I

    .line 61
    .line 62
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    .line 64
    iget-object p1, p0, Lcom/engagelab/privates/common/b0$c;->c:Lcom/engagelab/privates/common/b0;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/engagelab/privates/common/b0;->c(Lcom/engagelab/privates/common/b0;)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/engagelab/privates/common/b0$c;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

###### Class com.engagelab.privates.common.b0.d (com.engagelab.privates.common.b0$d)
.class public Lcom/engagelab/privates/common/b0$d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/b0;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic b:Lcom/engagelab/privates/common/b0;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/b0;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/b0$d;->b:Lcom/engagelab/privates/common/b0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/engagelab/privates/common/b0$d;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/b0$d;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14
    .line 15
    iget-object p1, p0, Lcom/engagelab/privates/common/b0$d;->b:Lcom/engagelab/privates/common/b0;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/engagelab/privates/common/b0;->c(Lcom/engagelab/privates/common/b0;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/engagelab/privates/common/b0$d;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

###### Class com.engagelab.privates.common.b0.e (com.engagelab.privates.common.b0$e)
.class public interface abstract Lcom/engagelab/privates/common/b0$e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "e"
.end annotation


# virtual methods
.method public abstract a(Landroid/view/View;Ljava/lang/Object;)V
.end method

.method public abstract a(Ljava/lang/Object;)Z
.end method
