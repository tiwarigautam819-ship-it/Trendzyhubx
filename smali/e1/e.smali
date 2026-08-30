###### Class e1.e (e1.e)
.class public final Le1/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lo/f;

.field public b:Z

.field public c:Landroid/os/Bundle;

.field public d:Z

.field public e:Le1/a;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lo/f;

    .line 5
    .line 6
    invoke-direct {v0}, Lo/f;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Le1/e;->a:Lo/f;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Le1/e;->f:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    .line 1
    iget-boolean v0, p0, Le1/e;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_23

    .line 4
    .line 5
    iget-object v0, p0, Le1/e;->c:Landroid/os/Bundle;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_22

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Le1/e;->c:Landroid/os/Bundle;

    .line 15
    .line 16
    if-eqz v2, :cond_14

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_14
    iget-object p1, p0, Le1/e;->c:Landroid/os/Bundle;

    .line 22
    .line 23
    if-eqz p1, :cond_1f

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1f

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1f
    iput-object v1, p0, Le1/e;->c:Landroid/os/Bundle;

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_22
    return-object v1

    .line 36
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v0, "You can consumeRestoredStateForKey only after super.onCreate of corresponding component"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public final b()Le1/d;
    .registers 5

    .line 1
    iget-object v0, p0, Le1/e;->a:Lo/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo/f;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_6
    move-object v1, v0

    .line 8
    check-cast v1, Lo/b;

    .line 9
    .line 10
    invoke-virtual {v1}, Lo/b;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_2f

    .line 15
    .line 16
    invoke-virtual {v1}, Lo/b;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/util/Map$Entry;

    .line 21
    .line 22
    const-string v2, "components"

    .line 23
    .line 24
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Le1/d;

    .line 38
    .line 39
    const-string v3, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    .line 40
    .line 41
    invoke-static {v2, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_6

    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_2f
    const/4 v0, 0x0

    .line 49
    return-object v0
.end method

.method public final c(Ljava/lang/String;Le1/d;)V
    .registers 5

    .line 1
    const-string v0, "provider"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le1/e;->a:Lo/f;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lo/f;->a(Ljava/lang/Object;)Lo/c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_10

    .line 13
    .line 14
    iget-object p1, v1, Lo/c;->b:Ljava/lang/Object;

    .line 15
    .line 16
    goto :goto_2b

    .line 17
    :cond_10
    new-instance v1, Lo/c;

    .line 18
    .line 19
    invoke-direct {v1, p1, p2}, Lo/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget p1, v0, Lo/f;->d:I

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    iput p1, v0, Lo/f;->d:I

    .line 27
    .line 28
    iget-object p1, v0, Lo/f;->b:Lo/c;

    .line 29
    .line 30
    if-nez p1, :cond_24

    .line 31
    .line 32
    iput-object v1, v0, Lo/f;->a:Lo/c;

    .line 33
    .line 34
    iput-object v1, v0, Lo/f;->b:Lo/c;

    .line 35
    .line 36
    goto :goto_2a

    .line 37
    :cond_24
    iput-object v1, p1, Lo/c;->c:Lo/c;

    .line 38
    .line 39
    iput-object p1, v1, Lo/c;->d:Lo/c;

    .line 40
    .line 41
    iput-object v1, v0, Lo/f;->b:Lo/c;

    .line 42
    .line 43
    :goto_2a
    const/4 p1, 0x0

    .line 44
    :goto_2b
    check-cast p1, Le1/d;

    .line 45
    .line 46
    if-nez p1, :cond_30

    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p2, "SavedStateProvider with the given key is already registered"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public final d()V
    .registers 6

    .line 1
    const-class v0, Landroidx/lifecycle/j;

    .line 2
    .line 3
    iget-boolean v1, p0, Le1/e;->f:Z

    .line 4
    .line 5
    if-eqz v1, :cond_43

    .line 6
    .line 7
    iget-object v1, p0, Le1/e;->e:Le1/a;

    .line 8
    .line 9
    if-nez v1, :cond_f

    .line 10
    .line 11
    new-instance v1, Le1/a;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Le1/a;-><init>(Le1/e;)V

    .line 14
    .line 15
    .line 16
    :cond_f
    iput-object v1, p0, Le1/e;->e:Le1/a;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :try_start_12
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_15} :catch_25

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Le1/e;->e:Le1/a;

    .line 23
    .line 24
    if-eqz v1, :cond_24

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, v1, Le1/a;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Ljava/util/LinkedHashSet;

    .line 33
    .line 34
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_24
    return-void

    .line 38
    :catch_25
    move-exception v1

    .line 39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v4, "Class "

    .line 44
    .line 45
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, " must have default constructor in order to be automatically recreated"

    .line 56
    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw v2

    .line 68
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v1, "Can not perform this action after onSaveInstanceState"

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0
.end method
