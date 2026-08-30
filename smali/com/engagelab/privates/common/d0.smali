###### Class com.engagelab.privates.common.d0 (com.engagelab.privates.common.d0)
.class public Lcom/engagelab/privates/common/d0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/common/d0;->e:F

    return v0
.end method

.method public a(F)Lcom/engagelab/privates/common/d0;
    .registers 2

    .line 3
    iput p1, p0, Lcom/engagelab/privates/common/d0;->e:F

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/engagelab/privates/common/d0;
    .registers 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/engagelab/privates/common/d0;->b:I

    return-object p0
.end method

.method public b()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/common/d0;->g:F

    return v0
.end method

.method public b(F)Lcom/engagelab/privates/common/d0;
    .registers 2

    .line 3
    iput p1, p0, Lcom/engagelab/privates/common/d0;->g:F

    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Lcom/engagelab/privates/common/d0;
    .registers 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/engagelab/privates/common/d0;->a:I

    return-object p0
.end method

.method public c()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/common/d0;->f:F

    return v0
.end method

.method public c(F)Lcom/engagelab/privates/common/d0;
    .registers 2

    .line 3
    iput p1, p0, Lcom/engagelab/privates/common/d0;->f:F

    return-object p0
.end method

.method public c(Ljava/lang/Integer;)Lcom/engagelab/privates/common/d0;
    .registers 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/engagelab/privates/common/d0;->d:I

    return-object p0
.end method

.method public d()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/common/d0;->b:I

    return v0
.end method

.method public d(Ljava/lang/Integer;)Lcom/engagelab/privates/common/d0;
    .registers 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/engagelab/privates/common/d0;->c:I

    return-object p0
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/common/d0;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public f()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/common/d0;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public g()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/common/d0;->c:I

    .line 2
    .line 3
    return v0
.end method
