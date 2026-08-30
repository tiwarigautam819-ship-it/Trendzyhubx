###### Class k7.c (k7.c)
.class public final Lk7/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lj7/e;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:Ld7/h;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ILc7/p;)V
    .registers 5

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lk7/c;->a:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iput p2, p0, Lk7/c;->b:I

    .line 12
    .line 13
    check-cast p3, Ld7/h;

    .line 14
    .line 15
    iput-object p3, p0, Lk7/c;->c:Ld7/h;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    new-instance v0, Lk7/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lk7/b;-><init>(Lk7/c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
