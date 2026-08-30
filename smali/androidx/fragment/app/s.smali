###### Class androidx.fragment.app.s (androidx.fragment.app.s)
.class public final Landroidx/fragment/app/s;
.super Lh8/b;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/x;

.field public final synthetic b:Landroidx/fragment/app/t;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/t;Landroidx/fragment/app/x;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/t;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/x;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n(I)Landroid/view/View;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/x;->o()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_d

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/fragment/app/x;->n(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/t;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 17
    .line 18
    if-eqz v0, :cond_18

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_18
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method public final o()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/x;->o()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_11

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/t;

    .line 10
    .line 11
    iget-boolean v0, v0, Landroidx/fragment/app/t;->s0:Z

    .line 12
    .line 13
    if-eqz v0, :cond_f

    .line 14
    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 19
    return v0
.end method
