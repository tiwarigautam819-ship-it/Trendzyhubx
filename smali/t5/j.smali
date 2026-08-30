###### Class t5.j (t5.j)
.class public final Lt5/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/reflect/Field;

.field public final c:Z

.field public final synthetic d:Ljava/lang/reflect/Method;

.field public final synthetic e:Z

.field public final synthetic f:Lq5/x;

.field public final synthetic g:Lq5/l;

.field public final synthetic h:Lw5/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/reflect/Method;ZLq5/x;Lq5/l;Lw5/a;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lt5/j;->d:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    iput-boolean p5, p0, Lt5/j;->e:Z

    .line 7
    .line 8
    iput-object p6, p0, Lt5/j;->f:Lq5/x;

    .line 9
    .line 10
    iput-object p7, p0, Lt5/j;->g:Lq5/l;

    .line 11
    .line 12
    iput-object p8, p0, Lt5/j;->h:Lw5/a;

    .line 13
    .line 14
    iput-object p1, p0, Lt5/j;->a:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lt5/j;->b:Ljava/lang/reflect/Field;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    iput-boolean p3, p0, Lt5/j;->c:Z

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lx5/a;Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lt5/j;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    goto :goto_2f

    .line 6
    :cond_5
    iget-object v0, p0, Lt5/j;->d:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    if-eqz v0, :cond_27

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_a
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_e} :catch_f

    .line 15
    goto :goto_2d

    .line 16
    :catch_f
    move-exception p1

    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-static {v0, p2}, Lu5/c;->d(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance v0, Landroidx/fragment/app/a0;

    .line 23
    .line 24
    const-string v1, "Accessor "

    .line 25
    .line 26
    const-string v2, " threw exception"

    .line 27
    .line 28
    invoke-static {v1, p2, v2}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_27
    iget-object v0, p0, Lt5/j;->b:Ljava/lang/reflect/Field;

    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_2d
    if-ne v0, p2, :cond_30

    .line 47
    .line 48
    :goto_2f
    return-void

    .line 49
    :cond_30
    iget-object p2, p0, Lt5/j;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lx5/a;->u(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-boolean p2, p0, Lt5/j;->e:Z

    .line 55
    .line 56
    iget-object v1, p0, Lt5/j;->f:Lq5/x;

    .line 57
    .line 58
    if-eqz p2, :cond_3c

    .line 59
    .line 60
    goto :goto_48

    .line 61
    :cond_3c
    new-instance p2, Lt5/o;

    .line 62
    .line 63
    iget-object v2, p0, Lt5/j;->h:Lw5/a;

    .line 64
    .line 65
    iget-object v2, v2, Lw5/a;->b:Ljava/lang/reflect/Type;

    .line 66
    .line 67
    iget-object v3, p0, Lt5/j;->g:Lq5/l;

    .line 68
    .line 69
    invoke-direct {p2, v2, v3, v1}, Lt5/o;-><init>(Ljava/lang/reflect/Type;Lq5/l;Lq5/x;)V

    .line 70
    .line 71
    .line 72
    move-object v1, p2

    .line 73
    :goto_48
    invoke-virtual {v1, p1, v0}, Lq5/x;->a(Lx5/a;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
