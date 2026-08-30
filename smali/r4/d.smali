###### Class r4.d (r4.d)
.class public final Lr4/d;
.super Lr4/e;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final transient c:I

.field public final transient d:I

.field public final synthetic e:Lr4/e;


# direct methods
.method public constructor <init>(Lr4/e;II)V
    .registers 4

    .line 1
    iput-object p1, p0, Lr4/d;->e:Lr4/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lr4/d;->c:I

    .line 7
    .line 8
    iput p3, p0, Lr4/d;->d:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b()[Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lr4/d;->e:Lr4/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr4/a;->b()[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()I
    .registers 3

    .line 1
    iget-object v0, p0, Lr4/d;->e:Lr4/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr4/a;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lr4/d;->c:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    iget v1, p0, Lr4/d;->d:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    return v0
.end method

.method public final d()I
    .registers 3

    .line 1
    iget-object v0, p0, Lr4/d;->e:Lr4/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr4/a;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lr4/d;->c:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public final g(II)Lr4/e;
    .registers 4

    .line 1
    iget v0, p0, Lr4/d;->d:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lz7/l;->e(III)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lr4/d;->c:I

    .line 7
    .line 8
    add-int/2addr p1, v0

    .line 9
    add-int/2addr p2, v0

    .line 10
    iget-object v0, p0, Lr4/d;->e:Lr4/e;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lr4/e;->g(II)Lr4/e;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, Lr4/d;->d:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz7/l;->b(II)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lr4/d;->c:I

    .line 7
    .line 8
    add-int/2addr p1, v0

    .line 9
    iget-object v0, p0, Lr4/d;->e:Lr4/e;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lr4/e;->f(I)Lr4/b;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lr4/e;->f(I)Lr4/b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lr4/e;->f(I)Lr4/b;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget v0, p0, Lr4/d;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lr4/d;->g(II)Lr4/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
