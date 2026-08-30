###### Class d.e (d.e)
.class public final Ld/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ld/b;

.field public final b:Le/a;


# direct methods
.method public constructor <init>(Le/a;Ld/b;)V
    .registers 4

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "contract"

    .line 7
    .line 8
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Ld/e;->a:Ld/b;

    .line 15
    .line 16
    iput-object p1, p0, Ld/e;->b:Le/a;

    .line 17
    .line 18
    return-void
.end method
