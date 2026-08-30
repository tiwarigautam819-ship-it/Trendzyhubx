###### Class j7.k (j7.k)
.class public final Lj7/k;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lj7/e;


# instance fields
.field public final a:Lj7/e;

.field public final b:Ld7/h;


# direct methods
.method public constructor <init>(Lj7/e;Lc7/l;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj7/k;->a:Lj7/e;

    .line 5
    .line 6
    check-cast p2, Ld7/h;

    .line 7
    .line 8
    iput-object p2, p0, Lj7/k;->b:Ld7/h;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    new-instance v0, Lj7/j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lj7/j;-><init>(Lj7/k;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
