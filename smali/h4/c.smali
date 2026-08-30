###### Class h4.c (h4.c)
.class public abstract Lh4/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lv3/c;

.field public static final b:[Lv3/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lv3/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lv3/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lh4/c;->a:Lv3/c;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v1, v1, [Lv3/c;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v0, v1, v2

    .line 13
    .line 14
    sput-object v1, Lh4/c;->b:[Lv3/c;

    .line 15
    .line 16
    return-void
.end method
