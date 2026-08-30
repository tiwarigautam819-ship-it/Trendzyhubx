###### Class v7.k (v7.k)
.class public final Lv7/k;
.super Ld7/h;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lc7/a;


# instance fields
.field public final synthetic b:Lr7/d;

.field public final synthetic c:Lr7/i;

.field public final synthetic d:Lr7/a;


# direct methods
.method public constructor <init>(Lr7/d;Lr7/i;Lr7/a;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lv7/k;->b:Lr7/d;

    .line 2
    .line 3
    iput-object p2, p0, Lv7/k;->c:Lr7/i;

    .line 4
    .line 5
    iput-object p3, p0, Lv7/k;->d:Lr7/a;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Ld7/h;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lv7/k;->b:Lr7/d;

    .line 2
    .line 3
    iget-object v0, v0, Lr7/d;->b:Ld4/a;

    .line 4
    .line 5
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lv7/k;->c:Lr7/i;

    .line 9
    .line 10
    invoke-virtual {v1}, Lr7/i;->a()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lv7/k;->d:Lr7/a;

    .line 15
    .line 16
    iget-object v2, v2, Lr7/a;->h:Lr7/m;

    .line 17
    .line 18
    iget-object v2, v2, Lr7/m;->d:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Ld4/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
