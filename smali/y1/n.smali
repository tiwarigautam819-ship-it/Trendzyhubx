###### Class y1.n (y1.n)
.class public final Ly1/n;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 2
    new-instance v0, Ly1/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ly1/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Ly1/n;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 5
    new-instance v0, Ly1/k;

    invoke-direct {v0, p1, p2}, Ly1/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Ly1/n;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/common/internal/q;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/n;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4

    .line 1
    sget-object v0, Lx1/r;->a:Lx1/r;

    .line 2
    .line 3
    invoke-static {}, Lx1/j0;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 8
    .line 9
    iget-object v0, p0, Ly1/n;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ly1/k;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Ly1/k;->g(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_f
    return-void
.end method
