###### Class s5.f (s5.f)
.class public final Ls5/f;
.super Lq5/x;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Lq5/x;

.field public final synthetic b:Z

.field public final synthetic c:Lq5/l;

.field public final synthetic d:Lw5/a;

.field public final synthetic e:Ls5/g;


# direct methods
.method public constructor <init>(Ls5/g;ZLq5/l;Lw5/a;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls5/f;->e:Ls5/g;

    .line 5
    .line 6
    iput-boolean p2, p0, Ls5/f;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Ls5/f;->c:Lq5/l;

    .line 9
    .line 10
    iput-object p4, p0, Ls5/f;->d:Lw5/a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lx5/a;Ljava/lang/Object;)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Ls5/f;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Ls5/f;->a:Lq5/x;

    .line 10
    .line 11
    if-eqz v0, :cond_d

    .line 12
    .line 13
    goto :goto_3d

    .line 14
    :cond_d
    iget-object v0, p0, Ls5/f;->c:Lq5/l;

    .line 15
    .line 16
    iget-object v1, v0, Lq5/l;->e:Ljava/util/List;

    .line 17
    .line 18
    iget-object v2, p0, Ls5/f;->e:Ls5/g;

    .line 19
    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1b

    .line 25
    .line 26
    iget-object v2, v0, Lq5/l;->d:Lt5/c;

    .line 27
    .line 28
    :cond_1b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v3, 0x0

    .line 33
    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget-object v5, p0, Ls5/f;->d:Lw5/a;

    .line 38
    .line 39
    if-eqz v4, :cond_41

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lq5/y;

    .line 46
    .line 47
    if-nez v3, :cond_34

    .line 48
    .line 49
    if-ne v4, v2, :cond_20

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    goto :goto_20

    .line 53
    :cond_34
    invoke-interface {v4, v0, v5}, Lq5/y;->a(Lq5/l;Lw5/a;)Lq5/x;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_20

    .line 58
    .line 59
    iput-object v4, p0, Ls5/f;->a:Lq5/x;

    .line 60
    .line 61
    move-object v0, v4

    .line 62
    :goto_3d
    invoke-virtual {v0, p1, p2}, Lq5/x;->a(Lx5/a;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v0, "GSON cannot serialize "

    .line 71
    .line 72
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method
