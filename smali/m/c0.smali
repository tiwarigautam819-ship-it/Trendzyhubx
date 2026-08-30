###### Class m.c0 (m.c0)
.class public final Lm/c0;
.super Lm/p1;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic j:Lm/i0;

.field public final synthetic k:Lm/l0;


# direct methods
.method public constructor <init>(Lm/l0;Lm/l0;Lm/i0;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lm/c0;->k:Lm/l0;

    .line 2
    .line 3
    iput-object p3, p0, Lm/c0;->j:Lm/i0;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lm/p1;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()Ll/d0;
    .registers 2

    .line 1
    iget-object v0, p0, Lm/c0;->j:Lm/i0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lm/c0;->k:Lm/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm/l0;->getInternalPopup()Lm/k0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lm/k0;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_19

    .line 12
    .line 13
    iget-object v1, v0, Lm/l0;->f:Lm/k0;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getTextAlignment()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-interface {v1, v2, v0}, Lm/k0;->k(II)V

    .line 24
    .line 25
    .line 26
    :cond_19
    const/4 v0, 0x1

    .line 27
    return v0
.end method
