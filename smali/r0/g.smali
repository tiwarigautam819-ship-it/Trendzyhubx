###### Class r0.g (r0.g)
.class public final Lr0/g;
.super Lb2/k;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lr0/f;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lr0/f;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lr0/f;-><init>(Landroid/widget/TextView;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lr0/g;->a:Lr0/f;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 3

    .line 1
    sget-object v0, Lp0/k;->k:Lp0/k;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    if-nez v0, :cond_a

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_a
    iget-object v0, p0, Lr0/g;->a:Lr0/f;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lr0/f;->f([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Z)V
    .registers 3

    .line 1
    sget-object v0, Lp0/k;->k:Lp0/k;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    if-nez v0, :cond_a

    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    iget-object v0, p0, Lr0/g;->a:Lr0/f;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lr0/f;->i(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final j(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lr0/g;->a:Lr0/f;

    .line 2
    .line 3
    sget-object v1, Lp0/k;->k:Lp0/k;

    .line 4
    .line 5
    if-eqz v1, :cond_8

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v1, 0x0

    .line 10
    :goto_9
    if-nez v1, :cond_e

    .line 11
    .line 12
    iput-boolean p1, v0, Lr0/f;->c:Z

    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    invoke-virtual {v0, p1}, Lr0/f;->j(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
