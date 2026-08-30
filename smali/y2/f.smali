###### Class y2.f (y2.f)
.class public final Ly2/f;
.super Landroid/app/Dialog;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:Ly2/g;


# direct methods
.method public constructor <init>(Ly2/g;Landroidx/fragment/app/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ly2/f;->a:Ly2/g;

    .line 2
    .line 3
    const p1, 0x7f100179

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .registers 2

    .line 1
    iget-object v0, p0, Ly2/f;->a:Ly2/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
