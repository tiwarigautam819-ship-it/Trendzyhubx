###### Class j0.e1 (j0.e1)
.class public Lj0/e1;
.super Lx2/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/view/WindowInsetsController;

.field public b:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsController;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj0/e1;->a:Landroid/view/WindowInsetsController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final n()V
    .registers 3

    .line 1
    iget-object v0, p0, Lj0/e1;->b:Landroid/view/Window;

    .line 2
    .line 3
    if-eqz v0, :cond_11

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    and-int/lit8 v1, v1, -0x11

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_11
    iget-object v0, p0, Lj0/e1;->a:Landroid/view/WindowInsetsController;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/a;->q(Landroid/view/WindowInsetsController;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final o()V
    .registers 3

    .line 1
    iget-object v0, p0, Lj0/e1;->b:Landroid/view/Window;

    .line 2
    .line 3
    if-eqz v0, :cond_11

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    and-int/lit16 v1, v1, -0x2001

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_11
    iget-object v0, p0, Lj0/e1;->a:Landroid/view/WindowInsetsController;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/a;->o(Landroid/view/WindowInsetsController;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
