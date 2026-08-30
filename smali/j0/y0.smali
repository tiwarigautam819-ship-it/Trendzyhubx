###### Class j0.y0 (j0.y0)
.class public final Lj0/y0;
.super Lj0/x0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final q:Lj0/b1;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/measurement/internal/a;->c()Landroid/view/WindowInsets;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lj0/b1;->g(Landroid/view/WindowInsets;Landroid/view/View;)Lj0/b1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lj0/y0;->q:Lj0/b1;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lj0/b1;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lj0/x0;-><init>(Lj0/b1;Landroid/view/WindowInsets;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .registers 2

    .line 1
    return-void
.end method

.method public f(I)Lc0/c;
    .registers 3

    .line 1
    iget-object v0, p0, Lj0/u0;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {p1}, Lj0/a1;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/a;->b(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lc0/c;->b(Landroid/graphics/Insets;)Lc0/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
