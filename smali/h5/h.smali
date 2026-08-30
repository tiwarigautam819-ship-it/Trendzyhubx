###### Class h5.h (h5.h)
.class public final Lh5/h;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lh5/j;


# instance fields
.field public final a:Lp4/j;


# direct methods
.method public constructor <init>(Lp4/j;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh5/h;->a:Lp4/j;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Li5/b;)Z
    .registers 4

    .line 1
    iget v0, p1, Li5/b;->b:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_6

    .line 5
    .line 6
    goto :goto_d

    .line 7
    :cond_6
    const/4 v1, 0x4

    .line 8
    if-ne v0, v1, :cond_a

    .line 9
    .line 10
    goto :goto_d

    .line 11
    :cond_a
    const/4 v1, 0x5

    .line 12
    if-ne v0, v1, :cond_16

    .line 13
    .line 14
    :goto_d
    iget-object v0, p0, Lh5/h;->a:Lp4/j;

    .line 15
    .line 16
    iget-object p1, p1, Li5/b;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lp4/j;->c(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public final b(Ljava/lang/Exception;)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
