###### Class i3.a (i3.a)
.class public final Li3/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Li3/g;

.field public final b:Ljava/util/List;

.field public final c:Li3/b;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Li3/g;Ljava/util/List;Li3/b;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li3/a;->a:Li3/g;

    .line 5
    .line 6
    iput-object p2, p0, Li3/a;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Li3/a;->c:Li3/b;

    .line 9
    .line 10
    iput-object p4, p0, Li3/a;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method
