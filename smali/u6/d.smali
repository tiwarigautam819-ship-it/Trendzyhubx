###### Class u6.d (u6.d)
.class public final Lu6/d;
.super Ld7/h;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lc7/p;


# instance fields
.field public final synthetic b:[Lu6/k;

.field public final synthetic c:Ld7/j;


# direct methods
.method public constructor <init>([Lu6/k;Ld7/j;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lu6/d;->b:[Lu6/k;

    .line 2
    .line 3
    iput-object p2, p0, Lu6/d;->c:Ld7/j;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1}, Ld7/h;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lr6/j;

    .line 2
    .line 3
    check-cast p2, Lu6/i;

    .line 4
    .line 5
    const-string v0, "<anonymous parameter 0>"

    .line 6
    .line 7
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lu6/d;->c:Ld7/j;

    .line 11
    .line 12
    iget v0, p1, Ld7/j;->a:I

    .line 13
    .line 14
    add-int/lit8 v1, v0, 0x1

    .line 15
    .line 16
    iput v1, p1, Ld7/j;->a:I

    .line 17
    .line 18
    iget-object p1, p0, Lu6/d;->b:[Lu6/k;

    .line 19
    .line 20
    aput-object p2, p1, v0

    .line 21
    .line 22
    sget-object p1, Lr6/j;->a:Lr6/j;

    .line 23
    .line 24
    return-object p1
.end method
