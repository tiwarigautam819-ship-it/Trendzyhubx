###### Class u.d (u.d)
.class public final Lu/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final d:Lu/d;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/Executor;

.field public c:Lu/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lu/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Lu/d;-><init>(Ls4/b;Ljava/util/concurrent/Executor;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lu/d;->d:Lu/d;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ls4/b;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu/d;->a:Ljava/lang/Runnable;

    .line 5
    .line 6
    iput-object p2, p0, Lu/d;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-void
.end method
