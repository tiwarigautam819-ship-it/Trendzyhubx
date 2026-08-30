###### Class t5.i (t5.i)
.class public final Lt5/i;
.super Lq5/x;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final b:Lt5/a;


# instance fields
.field public final a:Lq5/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lt5/a;

    .line 2
    .line 3
    sget-object v1, Lq5/w;->a:Lq5/s;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lt5/a;-><init>(Lq5/w;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lt5/i;->b:Lt5/a;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lq5/l;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt5/i;->a:Lq5/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lx5/a;Ljava/lang/Object;)V
    .registers 5

    .line 1
    if-nez p2, :cond_6

    .line 2
    .line 3
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lw5/a;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lw5/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lt5/i;->a:Lq5/l;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lq5/l;->b(Lw5/a;)Lq5/x;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Lt5/i;

    .line 23
    .line 24
    if-eqz v1, :cond_20

    .line 25
    .line 26
    invoke-virtual {p1}, Lx5/a;->g()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lx5/a;->t()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_20
    invoke-virtual {v0, p1, p2}, Lq5/x;->a(Lx5/a;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
