###### Class g.v (g.v)
.class public final Lg/v;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lm/d1;
.implements Ll/y;


# instance fields
.field public final synthetic a:Lg/f0;


# direct methods
.method public synthetic constructor <init>(Lg/f0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lg/v;->a:Lg/f0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Ll/n;Z)V
    .registers 12

    .line 1
    invoke-virtual {p1}, Ll/n;->k()Ll/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, p1, :cond_a

    .line 8
    .line 9
    move v3, v2

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v3, v1

    .line 12
    :goto_b
    if-eqz v3, :cond_e

    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :cond_e
    iget-object v4, p0, Lg/v;->a:Lg/f0;

    .line 16
    .line 17
    iget-object v5, v4, Lg/f0;->T:[Lg/e0;

    .line 18
    .line 19
    if-eqz v5, :cond_16

    .line 20
    .line 21
    array-length v6, v5

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v6, v1

    .line 24
    :goto_17
    if-ge v1, v6, :cond_25

    .line 25
    .line 26
    aget-object v7, v5, v1

    .line 27
    .line 28
    if-eqz v7, :cond_22

    .line 29
    .line 30
    iget-object v8, v7, Lg/e0;->h:Ll/n;

    .line 31
    .line 32
    if-ne v8, p1, :cond_22

    .line 33
    .line 34
    goto :goto_26

    .line 35
    :cond_22
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_17

    .line 38
    :cond_25
    const/4 v7, 0x0

    .line 39
    :goto_26
    if-eqz v7, :cond_36

    .line 40
    .line 41
    if-eqz v3, :cond_33

    .line 42
    .line 43
    iget p1, v7, Lg/e0;->a:I

    .line 44
    .line 45
    invoke-virtual {v4, p1, v7, v0}, Lg/f0;->r(ILg/e0;Ll/n;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v7, v2}, Lg/f0;->t(Lg/e0;Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_33
    invoke-virtual {v4, v7, p2}, Lg/f0;->t(Lg/e0;Z)V

    .line 53
    .line 54
    .line 55
    :cond_36
    return-void
.end method

.method public f(Ll/n;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Ll/n;->k()Ll/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne p1, v0, :cond_1d

    .line 6
    .line 7
    iget-object v0, p0, Lg/v;->a:Lg/f0;

    .line 8
    .line 9
    iget-boolean v1, v0, Lg/f0;->N:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1d

    .line 12
    .line 13
    iget-object v1, v0, Lg/f0;->l:Landroid/view/Window;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1d

    .line 20
    .line 21
    iget-boolean v0, v0, Lg/f0;->Y:Z

    .line 22
    .line 23
    if-nez v0, :cond_1d

    .line 24
    .line 25
    const/16 v0, 0x6c

    .line 26
    .line 27
    invoke-interface {v1, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 28
    .line 29
    .line 30
    :cond_1d
    const/4 p1, 0x1

    .line 31
    return p1
.end method
