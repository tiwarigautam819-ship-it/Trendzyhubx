###### Class j0.g1 (j0.g1)
.class public final Lj0/g1;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lx2/a;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_17

    .line 9
    new-instance v0, Lj0/f1;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/a;->d(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v1

    invoke-direct {v0, v1}, Lj0/e1;-><init>(Landroid/view/WindowInsetsController;)V

    .line 11
    iput-object p1, v0, Lj0/e1;->b:Landroid/view/Window;

    .line 12
    iput-object v0, p0, Lj0/g1;->a:Lx2/a;

    return-void

    :cond_17
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_29

    .line 13
    new-instance v0, Lj0/e1;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/a;->d(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v1

    invoke-direct {v0, v1}, Lj0/e1;-><init>(Landroid/view/WindowInsetsController;)V

    .line 15
    iput-object p1, v0, Lj0/e1;->b:Landroid/view/Window;

    .line 16
    iput-object v0, p0, Lj0/g1;->a:Lx2/a;

    return-void

    :cond_29
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_35

    .line 17
    new-instance v0, Lj0/d1;

    .line 18
    invoke-direct {v0, p1}, Lj0/c1;-><init>(Landroid/view/Window;)V

    .line 19
    iput-object v0, p0, Lj0/g1;->a:Lx2/a;

    return-void

    .line 20
    :cond_35
    new-instance v0, Lj0/c1;

    .line 21
    invoke-direct {v0, p1}, Lj0/c1;-><init>(Landroid/view/Window;)V

    .line 22
    iput-object v0, p0, Lj0/g1;->a:Lx2/a;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsController;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_11

    .line 3
    new-instance v0, Lj0/f1;

    .line 4
    invoke-direct {v0, p1}, Lj0/e1;-><init>(Landroid/view/WindowInsetsController;)V

    .line 5
    iput-object v0, p0, Lj0/g1;->a:Lx2/a;

    return-void

    .line 6
    :cond_11
    new-instance v0, Lj0/e1;

    invoke-direct {v0, p1}, Lj0/e1;-><init>(Landroid/view/WindowInsetsController;)V

    iput-object v0, p0, Lj0/g1;->a:Lx2/a;

    return-void
.end method
