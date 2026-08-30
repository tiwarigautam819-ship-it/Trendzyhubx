###### Class o.d (o.d)
.class public final Lo/d;
.super Lo/e;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Lo/c;

.field public b:Z

.field public final synthetic c:Lo/f;


# direct methods
.method public constructor <init>(Lo/f;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo/d;->c:Lo/f;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lo/d;->b:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lo/c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo/d;->a:Lo/c;

    .line 2
    .line 3
    if-ne p1, v0, :cond_f

    .line 4
    .line 5
    iget-object p1, v0, Lo/c;->d:Lo/c;

    .line 6
    .line 7
    iput-object p1, p0, Lo/d;->a:Lo/c;

    .line 8
    .line 9
    if-nez p1, :cond_c

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    iput-boolean p1, p0, Lo/d;->b:Z

    .line 15
    .line 16
    :cond_f
    return-void
.end method

.method public final hasNext()Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Lo/d;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_e

    .line 6
    .line 7
    iget-object v0, p0, Lo/d;->c:Lo/f;

    .line 8
    .line 9
    iget-object v0, v0, Lo/f;->a:Lo/c;

    .line 10
    .line 11
    if-eqz v0, :cond_d

    .line 12
    .line 13
    return v2

    .line 14
    :cond_d
    return v1

    .line 15
    :cond_e
    iget-object v0, p0, Lo/d;->a:Lo/c;

    .line 16
    .line 17
    if-eqz v0, :cond_17

    .line 18
    .line 19
    iget-object v0, v0, Lo/c;->c:Lo/c;

    .line 20
    .line 21
    if-eqz v0, :cond_17

    .line 22
    .line 23
    return v2

    .line 24
    :cond_17
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lo/d;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lo/d;->b:Z

    .line 7
    .line 8
    iget-object v0, p0, Lo/d;->c:Lo/f;

    .line 9
    .line 10
    iget-object v0, v0, Lo/f;->a:Lo/c;

    .line 11
    .line 12
    iput-object v0, p0, Lo/d;->a:Lo/c;

    .line 13
    .line 14
    goto :goto_18

    .line 15
    :cond_e
    iget-object v0, p0, Lo/d;->a:Lo/c;

    .line 16
    .line 17
    if-eqz v0, :cond_15

    .line 18
    .line 19
    iget-object v0, v0, Lo/c;->c:Lo/c;

    .line 20
    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    :goto_16
    iput-object v0, p0, Lo/d;->a:Lo/c;

    .line 24
    .line 25
    :goto_18
    iget-object v0, p0, Lo/d;->a:Lo/c;

    .line 26
    .line 27
    return-object v0
.end method
