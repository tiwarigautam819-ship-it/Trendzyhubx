###### Class l7.l (l7.l)
.class public final Ll7/l;
.super Ld7/h;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lc7/l;


# static fields
.field public static final b:Ll7/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ll7/l;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ld7/h;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ll7/l;->b:Ll7/l;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lu6/i;

    .line 2
    .line 3
    instance-of v0, p1, Ll7/n;

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    check-cast p1, Ll7/n;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method
