###### Class f3.j (f3.j)
.class public final Lf3/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:Lq6/a;

.field public b:Lo5/c;

.field public c:Lq6/a;

.field public d:Lo5/c;

.field public e:Lq6/a;

.field public f:Lq6/a;


# virtual methods
.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lf3/j;->e:Lq6/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lq6/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm3/d;

    .line 8
    .line 9
    check-cast v0, Lm3/h;

    .line 10
    .line 11
    invoke-virtual {v0}, Lm3/h;->close()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
