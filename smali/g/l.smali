###### Class g.l (g.l)
.class public final Lg/l;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lc/b;


# instance fields
.field public final synthetic a:Lg/m;


# direct methods
.method public constructor <init>(Lg/m;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg/l;->a:Lg/m;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lb/p;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lg/l;->a:Lg/m;

    .line 2
    .line 3
    invoke-virtual {p1}, Lg/m;->getDelegate()Lg/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lg/s;->a()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lb/p;->getSavedStateRegistry()Le1/e;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "androidx:appcompat"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Le1/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lg/s;->e()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
