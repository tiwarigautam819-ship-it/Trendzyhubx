###### Class x0.b (x0.b)
.class public Lx0/b;
.super Landroidx/lifecycle/p0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final c:Landroidx/fragment/app/b1;


# instance fields
.field public final b:Ls/k;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroidx/fragment/app/b1;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Landroidx/fragment/app/b1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lx0/b;->c:Landroidx/fragment/app/b1;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/p0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ls/k;

    .line 5
    .line 6
    invoke-direct {v0}, Ls/k;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lx0/b;->b:Ls/k;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 7

    .line 1
    iget-object v0, p0, Lx0/b;->b:Ls/k;

    .line 2
    .line 3
    iget v1, v0, Ls/k;->c:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-gtz v1, :cond_15

    .line 7
    .line 8
    iget-object v3, v0, Ls/k;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    move v4, v2

    .line 11
    :goto_a
    if-ge v4, v1, :cond_12

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    aput-object v5, v3, v4

    .line 15
    .line 16
    add-int/lit8 v4, v4, 0x1

    .line 17
    .line 18
    goto :goto_a

    .line 19
    :cond_12
    iput v2, v0, Ls/k;->c:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    iget-object v0, v0, Ls/k;->b:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object v0, v0, v2

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/ClassCastException;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw v0
.end method
