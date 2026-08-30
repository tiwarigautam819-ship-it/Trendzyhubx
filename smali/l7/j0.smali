###### Class l7.j0 (l7.j0)
.class public final Ll7/j0;
.super Ll7/o0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final e:Lc7/l;


# direct methods
.method public constructor <init>(Lc7/l;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lp7/j;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll7/j0;->e:Lc7/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ll7/j0;->o(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lr6/j;->a:Lr6/j;

    .line 7
    .line 8
    return-object p1
.end method

.method public final o(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ll7/j0;->e:Lc7/l;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lc7/l;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method
