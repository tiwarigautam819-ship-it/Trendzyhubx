###### Class x0.a (x0.a)
.class public abstract Lx0/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static a(Landroidx/lifecycle/t;)Lx0/c;
    .registers 3

    .line 1
    new-instance v0, Lx0/c;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    check-cast v1, Landroidx/lifecycle/t0;

    .line 5
    .line 6
    invoke-interface {v1}, Landroidx/lifecycle/t0;->getViewModelStore()Landroidx/lifecycle/s0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lx0/c;-><init>(Landroidx/lifecycle/t;Landroidx/lifecycle/s0;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
