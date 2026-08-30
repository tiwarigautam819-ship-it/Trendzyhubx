###### Class h1.k (h1.k)
.class public final Lh1/k;
.super Lh1/l;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Ljava/util/ArrayList;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public final j:Landroid/graphics/Matrix;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lh1/k;->a:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh1/k;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lh1/k;->c:F

    .line 5
    iput v0, p0, Lh1/k;->d:F

    .line 6
    iput v0, p0, Lh1/k;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    iput v1, p0, Lh1/k;->f:F

    .line 8
    iput v1, p0, Lh1/k;->g:F

    .line 9
    iput v0, p0, Lh1/k;->h:F

    .line 10
    iput v0, p0, Lh1/k;->i:F

    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lh1/k;->j:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lh1/k;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lh1/k;Ls/e;)V
    .registers 9

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lh1/k;->a:Landroid/graphics/Matrix;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh1/k;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lh1/k;->c:F

    .line 17
    iput v0, p0, Lh1/k;->d:F

    .line 18
    iput v0, p0, Lh1/k;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    iput v1, p0, Lh1/k;->f:F

    .line 20
    iput v1, p0, Lh1/k;->g:F

    .line 21
    iput v0, p0, Lh1/k;->h:F

    .line 22
    iput v0, p0, Lh1/k;->i:F

    .line 23
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lh1/k;->j:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    .line 24
    iput-object v3, p0, Lh1/k;->k:Ljava/lang/String;

    .line 25
    iget v3, p1, Lh1/k;->c:F

    iput v3, p0, Lh1/k;->c:F

    .line 26
    iget v3, p1, Lh1/k;->d:F

    iput v3, p0, Lh1/k;->d:F

    .line 27
    iget v3, p1, Lh1/k;->e:F

    iput v3, p0, Lh1/k;->e:F

    .line 28
    iget v3, p1, Lh1/k;->f:F

    iput v3, p0, Lh1/k;->f:F

    .line 29
    iget v3, p1, Lh1/k;->g:F

    iput v3, p0, Lh1/k;->g:F

    .line 30
    iget v3, p1, Lh1/k;->h:F

    iput v3, p0, Lh1/k;->h:F

    .line 31
    iget v3, p1, Lh1/k;->i:F

    iput v3, p0, Lh1/k;->i:F

    .line 32
    iget-object v3, p1, Lh1/k;->k:Ljava/lang/String;

    iput-object v3, p0, Lh1/k;->k:Ljava/lang/String;

    if-eqz v3, :cond_51

    .line 33
    invoke-virtual {p2, v3, p0}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_51
    iget-object v3, p1, Lh1/k;->j:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 35
    iget-object p1, p1, Lh1/k;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 36
    :goto_59
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_eb

    .line 37
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 38
    instance-of v4, v3, Lh1/k;

    if-eqz v4, :cond_74

    .line 39
    check-cast v3, Lh1/k;

    .line 40
    iget-object v4, p0, Lh1/k;->b:Ljava/util/ArrayList;

    new-instance v5, Lh1/k;

    invoke-direct {v5, v3, p2}, Lh1/k;-><init>(Lh1/k;Ls/e;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_df

    .line 41
    :cond_74
    instance-of v4, v3, Lh1/j;

    if-eqz v4, :cond_c8

    .line 42
    new-instance v4, Lh1/j;

    check-cast v3, Lh1/j;

    .line 43
    invoke-direct {v4, v3}, Lh1/m;-><init>(Lh1/m;)V

    .line 44
    iput v0, v4, Lh1/j;->e:F

    .line 45
    iput v1, v4, Lh1/j;->g:F

    .line 46
    iput v1, v4, Lh1/j;->h:F

    .line 47
    iput v0, v4, Lh1/j;->i:F

    .line 48
    iput v1, v4, Lh1/j;->j:F

    .line 49
    iput v0, v4, Lh1/j;->k:F

    .line 50
    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v5, v4, Lh1/j;->l:Landroid/graphics/Paint$Cap;

    .line 51
    sget-object v5, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v5, v4, Lh1/j;->m:Landroid/graphics/Paint$Join;

    const/high16 v5, 0x40800000    # 4.0f

    .line 52
    iput v5, v4, Lh1/j;->n:F

    .line 53
    iget-object v5, v3, Lh1/j;->d:Lb0/d;

    iput-object v5, v4, Lh1/j;->d:Lb0/d;

    .line 54
    iget v5, v3, Lh1/j;->e:F

    iput v5, v4, Lh1/j;->e:F

    .line 55
    iget v5, v3, Lh1/j;->g:F

    iput v5, v4, Lh1/j;->g:F

    .line 56
    iget-object v5, v3, Lh1/j;->f:Lb0/d;

    iput-object v5, v4, Lh1/j;->f:Lb0/d;

    .line 57
    iget v5, v3, Lh1/m;->c:I

    iput v5, v4, Lh1/m;->c:I

    .line 58
    iget v5, v3, Lh1/j;->h:F

    iput v5, v4, Lh1/j;->h:F

    .line 59
    iget v5, v3, Lh1/j;->i:F

    iput v5, v4, Lh1/j;->i:F

    .line 60
    iget v5, v3, Lh1/j;->j:F

    iput v5, v4, Lh1/j;->j:F

    .line 61
    iget v5, v3, Lh1/j;->k:F

    iput v5, v4, Lh1/j;->k:F

    .line 62
    iget-object v5, v3, Lh1/j;->l:Landroid/graphics/Paint$Cap;

    iput-object v5, v4, Lh1/j;->l:Landroid/graphics/Paint$Cap;

    .line 63
    iget-object v5, v3, Lh1/j;->m:Landroid/graphics/Paint$Join;

    iput-object v5, v4, Lh1/j;->m:Landroid/graphics/Paint$Join;

    .line 64
    iget v3, v3, Lh1/j;->n:F

    iput v3, v4, Lh1/j;->n:F

    goto :goto_d3

    .line 65
    :cond_c8
    instance-of v4, v3, Lh1/i;

    if-eqz v4, :cond_e3

    .line 66
    new-instance v4, Lh1/i;

    check-cast v3, Lh1/i;

    .line 67
    invoke-direct {v4, v3}, Lh1/m;-><init>(Lh1/m;)V

    .line 68
    :goto_d3
    iget-object v3, p0, Lh1/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v3, v4, Lh1/m;->b:Ljava/lang/String;

    if-eqz v3, :cond_df

    .line 70
    invoke-virtual {p2, v3, v4}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_df
    :goto_df
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_59

    .line 71
    :cond_e3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown object in the tree!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_eb
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lh1/k;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-ge v1, v3, :cond_1b

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lh1/l;

    .line 16
    .line 17
    invoke-virtual {v2}, Lh1/l;->a()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_18

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_18
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1b
    return v0
.end method

.method public final b([I)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lh1/k;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-ge v0, v3, :cond_18

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lh1/l;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Lh1/l;->b([I)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    or-int/2addr v1, v2

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_18
    return v1
.end method

.method public final c()V
    .registers 5

    .line 1
    iget-object v0, p0, Lh1/k;->j:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lh1/k;->d:F

    .line 7
    .line 8
    neg-float v1, v1

    .line 9
    iget v2, p0, Lh1/k;->e:F

    .line 10
    .line 11
    neg-float v2, v2

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lh1/k;->f:F

    .line 16
    .line 17
    iget v2, p0, Lh1/k;->g:F

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lh1/k;->c:F

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lh1/k;->h:F

    .line 29
    .line 30
    iget v2, p0, Lh1/k;->d:F

    .line 31
    .line 32
    add-float/2addr v1, v2

    .line 33
    iget v2, p0, Lh1/k;->i:F

    .line 34
    .line 35
    iget v3, p0, Lh1/k;->e:F

    .line 36
    .line 37
    add-float/2addr v2, v3

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lh1/k;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 1
    iget-object v0, p0, Lh1/k;->j:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPivotX()F
    .registers 2

    .line 1
    iget v0, p0, Lh1/k;->d:F

    .line 2
    .line 3
    return v0
.end method

.method public getPivotY()F
    .registers 2

    .line 1
    iget v0, p0, Lh1/k;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public getRotation()F
    .registers 2

    .line 1
    iget v0, p0, Lh1/k;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public getScaleX()F
    .registers 2

    .line 1
    iget v0, p0, Lh1/k;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public getScaleY()F
    .registers 2

    .line 1
    iget v0, p0, Lh1/k;->g:F

    .line 2
    .line 3
    return v0
.end method

.method public getTranslateX()F
    .registers 2

    .line 1
    iget v0, p0, Lh1/k;->h:F

    .line 2
    .line 3
    return v0
.end method

.method public getTranslateY()F
    .registers 2

    .line 1
    iget v0, p0, Lh1/k;->i:F

    .line 2
    .line 3
    return v0
.end method

.method public setPivotX(F)V
    .registers 3

    .line 1
    iget v0, p0, Lh1/k;->d:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    iput p1, p0, Lh1/k;->d:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lh1/k;->c()V

    .line 10
    .line 11
    .line 12
    :cond_b
    return-void
.end method

.method public setPivotY(F)V
    .registers 3

    .line 1
    iget v0, p0, Lh1/k;->e:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    iput p1, p0, Lh1/k;->e:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lh1/k;->c()V

    .line 10
    .line 11
    .line 12
    :cond_b
    return-void
.end method

.method public setRotation(F)V
    .registers 3

    .line 1
    iget v0, p0, Lh1/k;->c:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    iput p1, p0, Lh1/k;->c:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lh1/k;->c()V

    .line 10
    .line 11
    .line 12
    :cond_b
    return-void
.end method

.method public setScaleX(F)V
    .registers 3

    .line 1
    iget v0, p0, Lh1/k;->f:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    iput p1, p0, Lh1/k;->f:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lh1/k;->c()V

    .line 10
    .line 11
    .line 12
    :cond_b
    return-void
.end method

.method public setScaleY(F)V
    .registers 3

    .line 1
    iget v0, p0, Lh1/k;->g:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    iput p1, p0, Lh1/k;->g:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lh1/k;->c()V

    .line 10
    .line 11
    .line 12
    :cond_b
    return-void
.end method

.method public setTranslateX(F)V
    .registers 3

    .line 1
    iget v0, p0, Lh1/k;->h:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    iput p1, p0, Lh1/k;->h:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lh1/k;->c()V

    .line 10
    .line 11
    .line 12
    :cond_b
    return-void
.end method

.method public setTranslateY(F)V
    .registers 3

    .line 1
    iget v0, p0, Lh1/k;->i:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    iput p1, p0, Lh1/k;->i:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lh1/k;->c()V

    .line 10
    .line 11
    .line 12
    :cond_b
    return-void
.end method
