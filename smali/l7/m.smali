###### Class l7.m (l7.m)
.class public final Ll7/m;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lu6/j;


# instance fields
.field public final a:Ld7/h;

.field public final b:Lu6/j;


# direct methods
.method public constructor <init>(Lu6/j;Lc7/l;)V
    .registers 4

    .line 1
    const-string v0, "baseKey"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    check-cast p2, Ld7/h;

    .line 10
    .line 11
    iput-object p2, p0, Ll7/m;->a:Ld7/h;

    .line 12
    .line 13
    instance-of p2, p1, Ll7/m;

    .line 14
    .line 15
    if-eqz p2, :cond_14

    .line 16
    .line 17
    check-cast p1, Ll7/m;

    .line 18
    .line 19
    iget-object p1, p1, Ll7/m;->b:Lu6/j;

    .line 20
    .line 21
    :cond_14
    iput-object p1, p0, Ll7/m;->b:Lu6/j;

    .line 22
    .line 23
    return-void
.end method
