###### Class u.a (u.a)
.class public final Lu/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final c:Lu/a;

.field public static final d:Lu/a;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-boolean v0, Lu/h;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 5
    .line 6
    sput-object v1, Lu/a;->d:Lu/a;

    .line 7
    .line 8
    sput-object v1, Lu/a;->c:Lu/a;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Lu/a;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v0, v2, v1}, Lu/a;-><init>(ZLjava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lu/a;->d:Lu/a;

    .line 18
    .line 19
    new-instance v0, Lu/a;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {v0, v2, v1}, Lu/a;-><init>(ZLjava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lu/a;->c:Lu/a;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(ZLjava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lu/a;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lu/a;->b:Ljava/lang/Throwable;

    .line 7
    .line 8
    return-void
.end method
