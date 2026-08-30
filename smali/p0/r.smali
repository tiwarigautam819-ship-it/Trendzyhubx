###### Class p0.r (p0.r)
.class public final Lp0/r;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final d:Lo3/a;


# instance fields
.field public final a:Lp0/j;

.field public b:I

.field public final c:Lp0/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lo3/a;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lo3/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lp0/r;->d:Lo3/a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lp0/j;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lp0/r;->b:I

    .line 6
    .line 7
    new-instance v0, Lp0/d;

    .line 8
    .line 9
    invoke-direct {v0}, Lp0/d;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lp0/r;->c:Lp0/d;

    .line 13
    .line 14
    iput-object p1, p0, Lp0/r;->a:Lp0/j;

    .line 15
    .line 16
    return-void
.end method
