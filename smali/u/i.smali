###### Class u.i (u.i)
.class public final Lu/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lu/k;

.field public c:Lu/l;

.field public d:Z


# virtual methods
.method public final finalize()V
    .registers 5

    .line 1
    iget-object v0, p0, Lu/i;->b:Lu/k;

    .line 2
    .line 3
    if-eqz v0, :cond_25

    .line 4
    .line 5
    iget-object v0, v0, Lu/k;->b:Lu/j;

    .line 6
    .line 7
    invoke-virtual {v0}, Lu/h;->isDone()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_25

    .line 12
    .line 13
    new-instance v1, Lu/b;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lu/i;->a:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-direct {v1, v2, v3}, Lu/b;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lu/h;->k(Ljava/lang/Throwable;)Z

    .line 36
    .line 37
    .line 38
    :cond_25
    iget-boolean v0, p0, Lu/i;->d:Z

    .line 39
    .line 40
    if-nez v0, :cond_31

    .line 41
    .line 42
    iget-object v0, p0, Lu/i;->c:Lu/l;

    .line 43
    .line 44
    if-eqz v0, :cond_31

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Lu/h;->j(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_31
    return-void
.end method
