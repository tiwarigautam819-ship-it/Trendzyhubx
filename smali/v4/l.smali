###### Class v4.l (v4.l)
.class public final Lv4/l;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lg5/a;


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:Lg5/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv4/l;->c:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lg5/a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lv4/l;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v0, p0, Lv4/l;->a:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p1, p0, Lv4/l;->b:Lg5/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lv4/l;->a:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lv4/l;->c:Ljava/lang/Object;

    .line 4
    .line 5
    if-ne v0, v1, :cond_1d

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_7
    iget-object v0, p0, Lv4/l;->a:Ljava/lang/Object;

    .line 9
    .line 10
    if-ne v0, v1, :cond_19

    .line 11
    .line 12
    iget-object v0, p0, Lv4/l;->b:Lg5/a;

    .line 13
    .line 14
    invoke-interface {v0}, Lg5/a;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lv4/l;->a:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lv4/l;->b:Lg5/a;

    .line 22
    .line 23
    goto :goto_19

    .line 24
    :catchall_17
    move-exception v0

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    :goto_19
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_17

    .line 29
    throw v0

    .line 30
    :cond_1d
    return-object v0
.end method
