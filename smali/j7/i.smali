###### Class j7.i (j7.i)
.class public final Lj7/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Iterable;
.implements Le7/a;


# instance fields
.field public final synthetic a:Lk7/c;


# direct methods
.method public constructor <init>(Lk7/c;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj7/i;->a:Lk7/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    new-instance v0, Lk7/b;

    .line 2
    .line 3
    iget-object v1, p0, Lj7/i;->a:Lk7/c;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lk7/b;-><init>(Lk7/c;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
