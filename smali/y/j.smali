###### Class y.j (y.j)
.class public final Ly/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/os/Bundle;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:Ljava/lang/CharSequence;

.field public final g:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 8

    .line 1
    const v0, 0x7f080064

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->b(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, p0, Ly/j;->d:Z

    .line 18
    .line 19
    iput-object v0, p0, Ly/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->d()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x2

    .line 26
    if-ne v3, v4, :cond_21

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Ly/j;->e:I

    .line 33
    .line 34
    :cond_21
    invoke-static {p1}, Ly/p;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Ly/j;->f:Ljava/lang/CharSequence;

    .line 39
    .line 40
    iput-object p2, p0, Ly/j;->g:Landroid/app/PendingIntent;

    .line 41
    .line 42
    iput-object v1, p0, Ly/j;->a:Landroid/os/Bundle;

    .line 43
    .line 44
    iput-boolean v2, p0, Ly/j;->c:Z

    .line 45
    .line 46
    iput-boolean v2, p0, Ly/j;->d:Z

    .line 47
    .line 48
    return-void
.end method
