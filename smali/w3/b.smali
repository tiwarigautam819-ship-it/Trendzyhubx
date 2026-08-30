###### Class w3.b (w3.b)
.class public final Lw3/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final b:Lw3/b;


# instance fields
.field public final a:Lx1/w;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lx1/w;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lx1/w;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lw3/b;

    .line 12
    .line 13
    invoke-direct {v2, v0, v1}, Lw3/b;-><init>(Lx1/w;Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    sput-object v2, Lw3/b;->b:Lw3/b;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lx1/w;Landroid/os/Looper;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw3/b;->a:Lx1/w;

    .line 5
    .line 6
    return-void
.end method
