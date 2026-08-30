###### Class r7.q (r7.q)
.class public final Lr7/q;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lcom/google/firebase/messaging/y;

.field public b:Lk1/h;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lcom/getcapacitor/n;

.field public f:Z

.field public final g:Lr7/b;

.field public h:Z

.field public i:Z

.field public final j:Lr7/b;

.field public final k:Lr7/b;

.field public final l:Lr7/b;

.field public final m:Ljavax/net/SocketFactory;

.field public final n:Ljava/util/List;

.field public final o:Ljava/util/List;

.field public final p:Ld8/c;

.field public final q:Lr7/d;

.field public r:I

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/firebase/messaging/y;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/y;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lr7/q;->a:Lcom/google/firebase/messaging/y;

    .line 12
    .line 13
    new-instance v0, Lk1/h;

    .line 14
    .line 15
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    invoke-direct {v0, v1}, Lk1/h;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lr7/q;->b:Lk1/h;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lr7/q;->c:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lr7/q;->d:Ljava/util/ArrayList;

    .line 36
    .line 37
    new-instance v0, Lcom/getcapacitor/n;

    .line 38
    .line 39
    const/16 v1, 0x12

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcom/getcapacitor/n;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lr7/q;->e:Lcom/getcapacitor/n;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lr7/q;->f:Z

    .line 48
    .line 49
    sget-object v1, Lr7/b;->a:Lr7/b;

    .line 50
    .line 51
    iput-object v1, p0, Lr7/q;->g:Lr7/b;

    .line 52
    .line 53
    iput-boolean v0, p0, Lr7/q;->h:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Lr7/q;->i:Z

    .line 56
    .line 57
    sget-object v0, Lr7/b;->b:Lr7/b;

    .line 58
    .line 59
    iput-object v0, p0, Lr7/q;->j:Lr7/b;

    .line 60
    .line 61
    sget-object v0, Lr7/b;->c:Lr7/b;

    .line 62
    .line 63
    iput-object v0, p0, Lr7/q;->k:Lr7/b;

    .line 64
    .line 65
    iput-object v1, p0, Lr7/q;->l:Lr7/b;

    .line 66
    .line 67
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "getDefault()"

    .line 72
    .line 73
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lr7/q;->m:Ljavax/net/SocketFactory;

    .line 77
    .line 78
    sget-object v0, Lr7/r;->I:Ljava/util/List;

    .line 79
    .line 80
    iput-object v0, p0, Lr7/q;->n:Ljava/util/List;

    .line 81
    .line 82
    sget-object v0, Lr7/r;->H:Ljava/util/List;

    .line 83
    .line 84
    iput-object v0, p0, Lr7/q;->o:Ljava/util/List;

    .line 85
    .line 86
    sget-object v0, Ld8/c;->a:Ld8/c;

    .line 87
    .line 88
    iput-object v0, p0, Lr7/q;->p:Ld8/c;

    .line 89
    .line 90
    sget-object v0, Lr7/d;->c:Lr7/d;

    .line 91
    .line 92
    iput-object v0, p0, Lr7/q;->q:Lr7/d;

    .line 93
    .line 94
    const/16 v0, 0x2710

    .line 95
    .line 96
    iput v0, p0, Lr7/q;->r:I

    .line 97
    .line 98
    iput v0, p0, Lr7/q;->s:I

    .line 99
    .line 100
    iput v0, p0, Lr7/q;->t:I

    .line 101
    .line 102
    return-void
.end method
