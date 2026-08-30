###### Class androidx.fragment.app.w0 (androidx.fragment.app.w0)
.class public final Landroidx/fragment/app/w0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroidx/fragment/app/v0;


# instance fields
.field public final a:I

.field public final synthetic b:Landroidx/fragment/app/y0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/y0;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/w0;->b:Landroidx/fragment/app/y0;

    .line 5
    .line 6
    iput p2, p0, Landroidx/fragment/app/w0;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/w0;->b:Landroidx/fragment/app/y0;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/y0;->z:Landroidx/fragment/app/c0;

    .line 4
    .line 5
    iget v2, p0, Landroidx/fragment/app/w0;->a:I

    .line 6
    .line 7
    if-eqz v1, :cond_16

    .line 8
    .line 9
    if-gez v2, :cond_16

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/fragment/app/c0;->d()Landroidx/fragment/app/y0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroidx/fragment/app/y0;->Q()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_16

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_16
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, p1, p2, v2, v1}, Landroidx/fragment/app/y0;->R(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method
