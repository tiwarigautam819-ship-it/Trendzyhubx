###### Class androidx.fragment.app.c0 (androidx.fragment.app.c0)
.class public abstract Landroidx/fragment/app/c0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/t;
.implements Landroidx/lifecycle/t0;
.implements Landroidx/lifecycle/i;
.implements Le1/g;


# static fields
.field public static final e0:Ljava/lang/Object;


# instance fields
.field public A:I

.field public B:Landroidx/fragment/app/y0;

.field public C:Landroidx/fragment/app/g0;

.field public D:Landroidx/fragment/app/z0;

.field public E:Landroidx/fragment/app/c0;

.field public F:I

.field public G:I

.field public H:Ljava/lang/String;

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public final M:Z

.field public N:Z

.field public O:Landroid/view/ViewGroup;

.field public P:Landroid/view/View;

.field public Q:Z

.field public R:Z

.field public S:Landroidx/fragment/app/z;

.field public T:Z

.field public U:Z

.field public V:Ljava/lang/String;

.field public W:Landroidx/lifecycle/n;

.field public X:Landroidx/lifecycle/v;

.field public Y:Landroidx/fragment/app/i1;

.field public final Z:Landroidx/lifecycle/y;

.field public a:I

.field public a0:Le1/f;

.field public b:Landroid/os/Bundle;

.field public final b0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public c:Landroid/util/SparseArray;

.field public final c0:Ljava/util/ArrayList;

.field public d:Landroid/os/Bundle;

.field public final d0:Landroidx/fragment/app/w;

.field public e:Ljava/lang/String;

.field public f:Landroid/os/Bundle;

.field public g:Landroidx/fragment/app/c0;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/Boolean;

.field public k:Z

.field public l:Z

.field public m:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/fragment/app/c0;->e0:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/fragment/app/c0;->a:I

    .line 6
    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroidx/fragment/app/c0;->h:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/fragment/app/c0;->j:Ljava/lang/Boolean;

    .line 21
    .line 22
    new-instance v0, Landroidx/fragment/app/z0;

    .line 23
    .line 24
    invoke-direct {v0}, Landroidx/fragment/app/y0;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->M:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->R:Z

    .line 33
    .line 34
    new-instance v0, Landroidx/fragment/app/p;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/p;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Landroidx/lifecycle/n;->e:Landroidx/lifecycle/n;

    .line 41
    .line 42
    iput-object v0, p0, Landroidx/fragment/app/c0;->W:Landroidx/lifecycle/n;

    .line 43
    .line 44
    new-instance v0, Landroidx/lifecycle/y;

    .line 45
    .line 46
    invoke-direct {v0}, Landroidx/lifecycle/y;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Landroidx/fragment/app/c0;->Z:Landroidx/lifecycle/y;

    .line 50
    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Landroidx/fragment/app/c0;->b0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Landroidx/fragment/app/c0;->c0:Ljava/util/ArrayList;

    .line 64
    .line 65
    new-instance v0, Landroidx/fragment/app/w;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Landroidx/fragment/app/w;-><init>(Landroidx/fragment/app/c0;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Landroidx/fragment/app/c0;->d0:Landroidx/fragment/app/w;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->i()V

    .line 73
    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public A()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    return-void
.end method

.method public B(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    return-void
.end method

.method public C(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->P()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->z:Z

    .line 8
    .line 9
    new-instance v0, Landroidx/fragment/app/i1;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->getViewModelStore()Landroidx/lifecycle/s0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Landroidx/fragment/app/u;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Landroidx/fragment/app/u;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, v1, v2}, Landroidx/fragment/app/i1;-><init>(Landroidx/fragment/app/c0;Landroidx/lifecycle/s0;Landroidx/fragment/app/u;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/c0;->r(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 31
    .line 32
    if-eqz p1, :cond_6f

    .line 33
    .line 34
    iget-object p1, p0, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/fragment/app/i1;->b()V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x3

    .line 40
    invoke-static {p1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_4a

    .line 45
    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p2, "Setting ViewLifecycleOwner on View "

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p2, " for Fragment "

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "FragmentManager"

    .line 71
    .line 72
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_4a
    iget-object p1, p0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 76
    .line 77
    iget-object p2, p0, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 78
    .line 79
    invoke-static {p1, p2}, Landroidx/lifecycle/j0;->f(Landroid/view/View;Landroidx/lifecycle/t;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 83
    .line 84
    iget-object p2, p0, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 85
    .line 86
    const-string p3, "<this>"

    .line 87
    .line 88
    invoke-static {p3, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    const p3, 0x7f0900fa

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 98
    .line 99
    iget-object p2, p0, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 100
    .line 101
    invoke-static {p1, p2}, Lf4/f;->d(Landroid/view/View;Le1/g;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Landroidx/fragment/app/c0;->Z:Landroidx/lifecycle/y;

    .line 105
    .line 106
    iget-object p2, p0, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroidx/lifecycle/y;->d(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_6f
    iget-object p1, p0, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 113
    .line 114
    iget-object p1, p1, Landroidx/fragment/app/i1;->d:Landroidx/lifecycle/v;

    .line 115
    .line 116
    if-nez p1, :cond_79

    .line 117
    .line 118
    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 120
    .line 121
    return-void

    .line 122
    :cond_79
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    .line 125
    .line 126
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1
.end method

.method public final D(Le/a;Ld/b;)Ld/c;
    .registers 9

    .line 1
    new-instance v2, Lo5/c;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {v2, v0, p0}, Lo5/c;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Landroidx/fragment/app/c0;->a:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-gt v0, v1, :cond_2b

    .line 11
    .line 12
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroidx/fragment/app/y;

    .line 18
    .line 19
    move-object v1, p0

    .line 20
    move-object v4, p1

    .line 21
    move-object v5, p2

    .line 22
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/y;-><init>(Landroidx/fragment/app/c0;Lo5/c;Ljava/util/concurrent/atomic/AtomicReference;Le/a;Ld/b;)V

    .line 23
    .line 24
    .line 25
    iget p1, v1, Landroidx/fragment/app/c0;->a:I

    .line 26
    .line 27
    if-ltz p1, :cond_20

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/y;->a()V

    .line 30
    .line 31
    .line 32
    goto :goto_25

    .line 33
    :cond_20
    iget-object p1, v1, Landroidx/fragment/app/c0;->c0:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :goto_25
    new-instance p1, Landroidx/fragment/app/v;

    .line 39
    .line 40
    invoke-direct {p1, v3}, Landroidx/fragment/app/v;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_2b
    move-object v1, p0

    .line 45
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "Fragment "

    .line 48
    .line 49
    const-string v0, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."

    .line 50
    .line 51
    invoke-static {p2, p0, v0}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public final E()Landroidx/fragment/app/h0;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->c()Landroidx/fragment/app/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Fragment "

    .line 11
    .line 12
    const-string v2, " not attached to an activity."

    .line 13
    .line 14
    invoke-static {v1, p0, v2}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public final F()Landroid/content/Context;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->e()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Fragment "

    .line 11
    .line 12
    const-string v2, " not attached to a context."

    .line 13
    .line 14
    invoke-static {v1, p0, v2}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public final G()Landroid/view/View;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Fragment "

    .line 9
    .line 10
    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    .line 11
    .line 12
    invoke-static {v1, p0, v2}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public final H(IIII)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    if-nez p1, :cond_d

    .line 6
    .line 7
    if-nez p2, :cond_d

    .line 8
    .line 9
    if-nez p3, :cond_d

    .line 10
    .line 11
    if-nez p4, :cond_d

    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->b()Landroidx/fragment/app/z;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput p1, v0, Landroidx/fragment/app/z;->b:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->b()Landroidx/fragment/app/z;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput p2, p1, Landroidx/fragment/app/z;->c:I

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->b()Landroidx/fragment/app/z;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput p3, p1, Landroidx/fragment/app/z;->d:I

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->b()Landroidx/fragment/app/z;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput p4, p1, Landroidx/fragment/app/z;->e:I

    .line 37
    .line 38
    return-void
.end method

.method public final I()V
    .registers 4

    .line 1
    sget-object v0, Lt0/c;->a:Lt0/b;

    .line 2
    .line 3
    new-instance v0, Lt0/d;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Attempting to set retain instance for fragment "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, p0, v1}, Lt0/e;-><init>(Landroidx/fragment/app/c0;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lt0/c;->b(Lt0/e;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lt0/c;->a(Landroidx/fragment/app/c0;)Lt0/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->K:Z

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 36
    .line 37
    if-eqz v1, :cond_2c

    .line 38
    .line 39
    iget-object v0, v1, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Landroidx/fragment/app/c1;->c(Landroidx/fragment/app/c0;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2c
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->L:Z

    .line 46
    .line 47
    return-void
.end method

.method public final J(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 2
    .line 3
    if-eqz v0, :cond_40

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Landroidx/fragment/app/y0;->C:Ld/g;

    .line 10
    .line 11
    if-eqz v1, :cond_25

    .line 12
    .line 13
    new-instance v1, Landroidx/fragment/app/u0;

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v1, v2, p2}, Landroidx/fragment/app/u0;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, v0, Landroidx/fragment/app/y0;->F:Ljava/util/ArrayDeque;

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    if-eqz p3, :cond_1f

    .line 26
    .line 27
    const-string p2, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 28
    .line 29
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    :cond_1f
    iget-object p2, v0, Landroidx/fragment/app/y0;->C:Ld/g;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ld/g;->a(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_25
    iget-object v0, v0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const-string v1, "intent"

    .line 44
    .line 45
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const/4 v1, -0x1

    .line 49
    if-ne p2, v1, :cond_38

    .line 50
    .line 51
    iget-object p2, v0, Landroidx/fragment/app/g0;->b:Landroidx/fragment/app/h0;

    .line 52
    .line 53
    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string p2, "Fragment "

    .line 68
    .line 69
    const-string p3, " not attached to Activity"

    .line 70
    .line 71
    invoke-static {p2, p0, p3}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public a()Lh8/b;
    .registers 2

    .line 1
    new-instance v0, Landroidx/fragment/app/x;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/fragment/app/x;-><init>(Landroidx/fragment/app/c0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final b()Landroidx/fragment/app/z;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 2
    .line 3
    if-nez v0, :cond_1a

    .line 4
    .line 5
    new-instance v0, Landroidx/fragment/app/z;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Landroidx/fragment/app/c0;->e0:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v1, v0, Landroidx/fragment/app/z;->g:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v1, v0, Landroidx/fragment/app/z;->h:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object v1, v0, Landroidx/fragment/app/z;->i:Ljava/lang/Object;

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    iput v1, v0, Landroidx/fragment/app/z;->j:F

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Landroidx/fragment/app/z;->k:Landroid/view/View;

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 26
    .line 27
    :cond_1a
    iget-object v0, p0, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 28
    .line 29
    return-object v0
.end method

.method public final c()Landroidx/fragment/app/h0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/g0;->a:Landroidx/fragment/app/h0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final d()Landroidx/fragment/app/y0;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Fragment "

    .line 11
    .line 12
    const-string v2, " has not been attached yet."

    .line 13
    .line 14
    invoke-static {v1, p0, v2}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public final e()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/g0;->b:Landroidx/fragment/app/h0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final f()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->W:Landroidx/lifecycle/n;

    .line 2
    .line 3
    sget-object v1, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1a

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/fragment/app/c0;->E:Landroidx/fragment/app/c0;

    .line 8
    .line 9
    if-nez v1, :cond_b

    .line 10
    .line 11
    goto :goto_1a

    .line 12
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Landroidx/fragment/app/c0;->E:Landroidx/fragment/app/c0;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/fragment/app/c0;->f()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1a
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public final g()Landroidx/fragment/app/y0;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Fragment "

    .line 9
    .line 10
    const-string v2, " not associated with a fragment manager."

    .line 11
    .line 12
    invoke-static {v1, p0, v2}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public final getDefaultViewModelCreationExtras()Lv0/b;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->F()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_8
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 10
    .line 11
    if-eqz v1, :cond_1a

    .line 12
    .line 13
    instance-of v1, v0, Landroid/app/Application;

    .line 14
    .line 15
    if-eqz v1, :cond_13

    .line 16
    .line 17
    check-cast v0, Landroid/app/Application;

    .line 18
    .line 19
    goto :goto_1b

    .line 20
    :cond_13
    check-cast v0, Landroid/content/ContextWrapper;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_8

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    if-nez v0, :cond_44

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    invoke-static {v1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_44

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Could not find Application instance from Context "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->F()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v2, "FragmentManager"

    .line 65
    .line 66
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_44
    new-instance v1, Lv0/c;

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-direct {v1, v2}, Lv0/c;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iget-object v2, v1, Lv0/b;->a:Ljava/util/LinkedHashMap;

    .line 76
    .line 77
    if-eqz v0, :cond_53

    .line 78
    .line 79
    sget-object v3, Landroidx/lifecycle/q0;->e:Le5/e;

    .line 80
    .line 81
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_53
    sget-object v0, Landroidx/lifecycle/j0;->a:Le5/e;

    .line 85
    .line 86
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    sget-object v0, Landroidx/lifecycle/j0;->b:Le5/e;

    .line 90
    .line 91
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Landroidx/fragment/app/c0;->f:Landroid/os/Bundle;

    .line 95
    .line 96
    if-eqz v0, :cond_66

    .line 97
    .line 98
    sget-object v3, Landroidx/lifecycle/j0;->c:Le5/e;

    .line 99
    .line 100
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_66
    return-object v1
.end method

.method public final getLifecycle()Landroidx/lifecycle/o;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->X:Landroidx/lifecycle/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSavedStateRegistry()Le1/e;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->a0:Le1/f;

    .line 2
    .line 3
    iget-object v0, v0, Le1/f;->b:Le1/e;

    .line 4
    .line 5
    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/s0;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 2
    .line 3
    if-eqz v0, :cond_2e

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->f()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_26

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/fragment/app/c1;->d:Ljava/util/HashMap;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/lifecycle/s0;

    .line 25
    .line 26
    if-nez v1, :cond_25

    .line 27
    .line 28
    new-instance v1, Landroidx/lifecycle/s0;

    .line 29
    .line 30
    invoke-direct {v1}, Landroidx/lifecycle/s0;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_25
    return-object v1

    .line 39
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v1, "Can\'t access ViewModels from detached fragment"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method

.method public final h()Landroid/content/res/Resources;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->F()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final i()V
    .registers 4

    .line 1
    new-instance v0, Landroidx/lifecycle/v;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroidx/fragment/app/c0;->X:Landroidx/lifecycle/v;

    .line 7
    .line 8
    new-instance v0, Le1/f;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Le1/f;-><init>(Le1/g;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/fragment/app/c0;->a0:Le1/f;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/c0;->c0:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/fragment/app/c0;->d0:Landroidx/fragment/app/w;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_23

    .line 24
    .line 25
    iget v2, p0, Landroidx/fragment/app/c0;->a:I

    .line 26
    .line 27
    if-ltz v2, :cond_20

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/fragment/app/w;->a()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_23
    return-void
.end method

.method public final j()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/fragment/app/c0;->V:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->k:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->l:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->v:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->w:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->y:Z

    .line 28
    .line 29
    iput v0, p0, Landroidx/fragment/app/c0;->A:I

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 33
    .line 34
    new-instance v2, Landroidx/fragment/app/z0;

    .line 35
    .line 36
    invoke-direct {v2}, Landroidx/fragment/app/y0;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 40
    .line 41
    iput-object v1, p0, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 42
    .line 43
    iput v0, p0, Landroidx/fragment/app/c0;->F:I

    .line 44
    .line 45
    iput v0, p0, Landroidx/fragment/app/c0;->G:I

    .line 46
    .line 47
    iput-object v1, p0, Landroidx/fragment/app/c0;->H:Ljava/lang/String;

    .line 48
    .line 49
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->I:Z

    .line 50
    .line 51
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->J:Z

    .line 52
    .line 53
    return-void
.end method

.method public final k()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/c0;->k:Z

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final l()Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/c0;->I:Z

    .line 2
    .line 3
    if-nez v0, :cond_1a

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_19

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/fragment/app/c0;->E:Landroidx/fragment/app/c0;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    if-nez v2, :cond_12

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_16

    .line 19
    :cond_12
    invoke-virtual {v2}, Landroidx/fragment/app/c0;->l()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    :goto_16
    if-eqz v0, :cond_19

    .line 24
    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    return v1

    .line 27
    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public final m()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/c0;->A:I

    .line 2
    .line 3
    if-lez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public n()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    return-void
.end method

.method public o(IILandroid/content/Intent;)V
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_32

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Fragment "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " received the following in onActivityResult(): requestCode: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " resultCode: "

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " data: "

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "FragmentManager"

    .line 47
    .line 48
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_32
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->E()Landroidx/fragment/app/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onLowMemory()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    return-void
.end method

.method public p(Landroid/content/Context;)V
    .registers 3

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 5
    .line 6
    if-nez v0, :cond_9

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    iget-object v0, v0, Landroidx/fragment/app/g0;->a:Landroidx/fragment/app/h0;

    .line 11
    .line 12
    :goto_b
    if-eqz v0, :cond_f

    .line 13
    .line 14
    iput-boolean p1, p0, Landroidx/fragment/app/c0;->N:Z

    .line 15
    .line 16
    :cond_f
    return-void
.end method

.method public q(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_22

    .line 8
    .line 9
    const-string v2, "childFragmentManager"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_22

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Landroidx/fragment/app/y0;->U(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 23
    .line 24
    iput-boolean v1, v0, Landroidx/fragment/app/y0;->H:Z

    .line 25
    .line 26
    iput-boolean v1, v0, Landroidx/fragment/app/y0;->I:Z

    .line 27
    .line 28
    iget-object v2, v0, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 29
    .line 30
    iput-boolean v1, v2, Landroidx/fragment/app/c1;->g:Z

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroidx/fragment/app/y0;->u(I)V

    .line 33
    .line 34
    .line 35
    :cond_22
    iget-object v0, p0, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 36
    .line 37
    iget v2, v0, Landroidx/fragment/app/y0;->v:I

    .line 38
    .line 39
    if-lt v2, p1, :cond_29

    .line 40
    .line 41
    return-void

    .line 42
    :cond_29
    iput-boolean v1, v0, Landroidx/fragment/app/y0;->H:Z

    .line 43
    .line 44
    iput-boolean v1, v0, Landroidx/fragment/app/y0;->I:Z

    .line 45
    .line 46
    iget-object v2, v0, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 47
    .line 48
    iput-boolean v1, v2, Landroidx/fragment/app/c1;->g:Z

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroidx/fragment/app/y0;->u(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public r(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public s()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    return-void
.end method

.method public t()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "{"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "} ("

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v1, p0, Landroidx/fragment/app/c0;->F:I

    .line 46
    .line 47
    if-eqz v1, :cond_3e

    .line 48
    .line 49
    const-string v1, " id=0x"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v1, p0, Landroidx/fragment/app/c0;->F:I

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_3e
    iget-object v1, p0, Landroidx/fragment/app/c0;->H:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v1, :cond_4c

    .line 66
    .line 67
    const-string v1, " tag="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Landroidx/fragment/app/c0;->H:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_4c
    const-string v1, ")"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method

.method public u()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    return-void
.end method

.method public v(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 2
    .line 3
    if-eqz p1, :cond_16

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/fragment/app/y0;->f:Landroidx/fragment/app/m0;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public w()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    return-void
.end method

.method public x()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    return-void
.end method

.method public abstract y(Landroid/os/Bundle;)V
.end method

.method public z()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    return-void
.end method
