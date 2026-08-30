###### Class e2.a (e2.a)
.class public final Le2/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final b:Z


# instance fields
.field public final a:Ly1/n;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    sget-object v0, Lf7/e;->a:Lf7/d;

    .line 2
    .line 3
    sget-object v0, Lf7/e;->b:Lf7/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lf7/a;->a()Ljava/util/Random;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmpg-double v0, v0, v2

    .line 19
    .line 20
    if-gtz v0, :cond_17

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    :goto_18
    sput-boolean v0, Le2/a;->b:Z

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ly1/n;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ly1/n;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Le2/a;->a:Ly1/n;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4

    .line 1
    sget-boolean v0, Le2/a;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_11

    .line 4
    .line 5
    const-string v0, "gps"

    .line 6
    .line 7
    invoke-static {p2, v0}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_11

    .line 12
    .line 13
    iget-object v0, p0, Le2/a;->a:Ly1/n;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Ly1/n;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method
