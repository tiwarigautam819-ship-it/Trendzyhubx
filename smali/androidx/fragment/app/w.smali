###### Class androidx.fragment.app.w (androidx.fragment.app.w)
.class public final Landroidx/fragment/app/w;
.super Landroidx/fragment/app/b0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/c0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/c0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/c0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/c0;->a0:Le1/f;

    .line 4
    .line 5
    invoke-virtual {v1}, Le1/f;->a()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/lifecycle/j0;->d(Le1/g;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 12
    .line 13
    if-eqz v1, :cond_15

    .line 14
    .line 15
    const-string v2, "registryState"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v1, 0x0

    .line 23
    :goto_16
    iget-object v0, v0, Landroidx/fragment/app/c0;->a0:Le1/f;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Le1/f;->b(Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
