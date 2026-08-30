###### Class v3.h (v3.h)
.class public Lv3/h;
.super Landroidx/fragment/app/t;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public t0:Landroid/app/Dialog;

.field public u0:Landroid/content/DialogInterface$OnCancelListener;

.field public v0:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/t;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final K(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3

    .line 1
    iget-object p1, p0, Lv3/h;->t0:Landroid/app/Dialog;

    .line 2
    .line 3
    if-nez p1, :cond_1f

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Landroidx/fragment/app/t;->k0:Z

    .line 7
    .line 8
    iget-object p1, p0, Lv3/h;->v0:Landroid/app/AlertDialog;

    .line 9
    .line 10
    if-nez p1, :cond_1d

    .line 11
    .line 12
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->e()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lv3/h;->v0:Landroid/app/AlertDialog;

    .line 29
    .line 30
    :cond_1d
    iget-object p1, p0, Lv3/h;->v0:Landroid/app/AlertDialog;

    .line 31
    .line 32
    :cond_1f
    return-object p1
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lv3/h;->u0:Landroid/content/DialogInterface$OnCancelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method
