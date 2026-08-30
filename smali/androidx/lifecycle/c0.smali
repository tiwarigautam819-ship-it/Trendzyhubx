###### Class androidx.lifecycle.c0 (androidx.lifecycle.c0)
.class public final Landroidx/lifecycle/c0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroidx/lifecycle/t;


# static fields
.field public static final i:Landroidx/lifecycle/c0;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Landroid/os/Handler;

.field public final f:Landroidx/lifecycle/v;

.field public final g:La2/g;

.field public final h:Lo5/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/lifecycle/c0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/lifecycle/c0;->i:Landroidx/lifecycle/c0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/lifecycle/c0;->c:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/lifecycle/c0;->d:Z

    .line 8
    .line 9
    new-instance v0, Landroidx/lifecycle/v;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/lifecycle/c0;->f:Landroidx/lifecycle/v;

    .line 15
    .line 16
    new-instance v0, La2/g;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1, p0}, La2/g;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/lifecycle/c0;->g:La2/g;

    .line 23
    .line 24
    new-instance v0, Lo5/c;

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    invoke-direct {v0, v1, p0}, Lo5/c;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/lifecycle/c0;->h:Lo5/c;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/lifecycle/c0;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/lifecycle/c0;->b:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_21

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/lifecycle/c0;->c:Z

    .line 10
    .line 11
    if-eqz v0, :cond_17

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/lifecycle/c0;->f:Landroidx/lifecycle/v;

    .line 14
    .line 15
    sget-object v1, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Landroidx/lifecycle/c0;->c:Z

    .line 22
    .line 23
    return-void

    .line 24
    :cond_17
    iget-object v0, p0, Landroidx/lifecycle/c0;->e:Landroid/os/Handler;

    .line 25
    .line 26
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/lifecycle/c0;->g:La2/g;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    :cond_21
    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/o;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/c0;->f:Landroidx/lifecycle/v;

    .line 2
    .line 3
    return-object v0
.end method
