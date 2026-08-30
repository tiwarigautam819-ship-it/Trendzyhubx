###### Class k.f (k.f)
.class public final Lk/f;
.super Landroid/view/ActionMode;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lk/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lk/b;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk/f;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lk/f;->b:Lk/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final finish()V
    .registers 2

    .line 1
    iget-object v0, p0, Lk/f;->b:Lk/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/b;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lk/f;->b:Lk/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/b;->b()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .registers 4

    .line 1
    new-instance v0, Ll/c0;

    .line 2
    .line 3
    iget-object v1, p0, Lk/f;->b:Lk/b;

    .line 4
    .line 5
    invoke-virtual {v1}, Lk/b;->c()Ll/n;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lk/f;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Ll/c0;-><init>(Landroid/content/Context;Ll/n;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .line 1
    iget-object v0, p0, Lk/f;->b:Lk/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/b;->e()Landroid/view/MenuInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lk/f;->b:Lk/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/b;->f()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lk/f;->b:Lk/b;

    .line 2
    .line 3
    iget-object v0, v0, Lk/b;->a:Ljava/lang/Object;

    .line 4
    .line 5
    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lk/f;->b:Lk/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/b;->g()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getTitleOptionalHint()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lk/f;->b:Lk/b;

    .line 2
    .line 3
    iget-boolean v0, v0, Lk/b;->b:Z

    .line 4
    .line 5
    return v0
.end method

.method public final invalidate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lk/f;->b:Lk/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/b;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final isTitleOptional()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lk/f;->b:Lk/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/b;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lk/f;->b:Lk/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lk/b;->k(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSubtitle(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Lk/f;->b:Lk/b;

    invoke-virtual {v0, p1}, Lk/b;->l(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lk/f;->b:Lk/b;

    invoke-virtual {v0, p1}, Lk/b;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lk/f;->b:Lk/b;

    .line 2
    .line 3
    iput-object p1, v0, Lk/b;->a:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method public final setTitle(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Lk/f;->b:Lk/b;

    invoke-virtual {v0, p1}, Lk/b;->n(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lk/f;->b:Lk/b;

    invoke-virtual {v0, p1}, Lk/b;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lk/f;->b:Lk/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lk/b;->p(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
