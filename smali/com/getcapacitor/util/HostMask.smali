###### Class com.getcapacitor.util.HostMask (com.getcapacitor.util.HostMask)
.class public interface abstract Lcom/getcapacitor/util/HostMask;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getcapacitor/util/HostMask$Util;,
        Lcom/getcapacitor/util/HostMask$Nothing;,
        Lcom/getcapacitor/util/HostMask$Any;,
        Lcom/getcapacitor/util/HostMask$Simple;,
        Lcom/getcapacitor/util/HostMask$Parser;
    }
.end annotation


# virtual methods
.method public abstract matches(Ljava/lang/String;)Z
.end method

###### Class com.getcapacitor.util.HostMask.Any (com.getcapacitor.util.HostMask$Any)
.class public Lcom/getcapacitor/util/HostMask$Any;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/getcapacitor/util/HostMask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/util/HostMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Any"
.end annotation


# instance fields
.field private final masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/getcapacitor/util/HostMask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/getcapacitor/util/HostMask;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/getcapacitor/util/HostMask$Any;->masks:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method

.method public static varargs parse([Ljava/lang/String;)Lcom/getcapacitor/util/HostMask$Any;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_7
    if-ge v2, v1, :cond_15

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    invoke-static {v3}, Lcom/getcapacitor/util/HostMask$Simple;->parse(Ljava/lang/String;)Lcom/getcapacitor/util/HostMask$Simple;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_7

    .line 22
    :cond_15
    new-instance p0, Lcom/getcapacitor/util/HostMask$Any;

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/getcapacitor/util/HostMask$Any;-><init>(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/util/HostMask$Any;->masks:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1a

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/getcapacitor/util/HostMask;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lcom/getcapacitor/util/HostMask;->matches(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_6

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    return p1
.end method

###### Class com.getcapacitor.util.HostMask.Nothing (com.getcapacitor.util.HostMask$Nothing)
.class public Lcom/getcapacitor/util/HostMask$Nothing;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/getcapacitor/util/HostMask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/util/HostMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nothing"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

###### Class com.getcapacitor.util.HostMask.Parser (com.getcapacitor.util.HostMask$Parser)
.class public Lcom/getcapacitor/util/HostMask$Parser;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/util/HostMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# static fields
.field private static NOTHING:Lcom/getcapacitor/util/HostMask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/getcapacitor/util/HostMask$Nothing;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/getcapacitor/util/HostMask$Nothing;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/getcapacitor/util/HostMask$Parser;->NOTHING:Lcom/getcapacitor/util/HostMask;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/getcapacitor/util/HostMask;
    .registers 1

    if-nez p0, :cond_5

    .line 2
    sget-object p0, Lcom/getcapacitor/util/HostMask$Parser;->NOTHING:Lcom/getcapacitor/util/HostMask;

    return-object p0

    :cond_5
    invoke-static {p0}, Lcom/getcapacitor/util/HostMask$Simple;->parse(Ljava/lang/String;)Lcom/getcapacitor/util/HostMask$Simple;

    move-result-object p0

    return-object p0
.end method

.method public static parse([Ljava/lang/String;)Lcom/getcapacitor/util/HostMask;
    .registers 1

    if-nez p0, :cond_5

    .line 1
    sget-object p0, Lcom/getcapacitor/util/HostMask$Parser;->NOTHING:Lcom/getcapacitor/util/HostMask;

    return-object p0

    :cond_5
    invoke-static {p0}, Lcom/getcapacitor/util/HostMask$Any;->parse([Ljava/lang/String;)Lcom/getcapacitor/util/HostMask$Any;

    move-result-object p0

    return-object p0
.end method

###### Class com.getcapacitor.util.HostMask.Simple (com.getcapacitor.util.HostMask$Simple)
.class public Lcom/getcapacitor/util/HostMask$Simple;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/getcapacitor/util/HostMask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/util/HostMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation


# instance fields
.field private final maskParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_8

    .line 5
    .line 6
    iput-object p1, p0, Lcom/getcapacitor/util/HostMask$Simple;->maskParts:Ljava/util/List;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "Mask parts can not be null"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public static parse(Ljava/lang/String;)Lcom/getcapacitor/util/HostMask$Simple;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/getcapacitor/util/HostMask$Util;->splitAndReverse(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/getcapacitor/util/HostMask$Simple;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/getcapacitor/util/HostMask$Simple;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    invoke-static {p1}, Lcom/getcapacitor/util/HostMask$Util;->splitAndReverse(Ljava/lang/String;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/getcapacitor/util/HostMask$Simple;->maskParts:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-le v2, v3, :cond_18

    .line 21
    .line 22
    if-eq v1, v2, :cond_18

    .line 23
    .line 24
    return v0

    .line 25
    :cond_18
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    move v2, v0

    .line 30
    :goto_1d
    if-ge v2, v1, :cond_37

    .line 31
    .line 32
    iget-object v4, p0, Lcom/getcapacitor/util/HostMask$Simple;->maskParts:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v4, v5}, Lcom/getcapacitor/util/HostMask$Util;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_34

    .line 51
    .line 52
    return v0

    .line 53
    :cond_34
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_1d

    .line 56
    :cond_37
    return v3
.end method

###### Class com.getcapacitor.util.HostMask.Util (com.getcapacitor.util.HostMask$Util)
.class public Lcom/getcapacitor/util/HostMask$Util;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/util/HostMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    const-string v1, "*"

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_e

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_e
    if-nez p1, :cond_11

    .line 16
    .line 17
    return v0

    .line 18
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public static splitAndReverse(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_10

    .line 2
    .line 3
    const-string v0, "\\."

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, "Can not split null argument"

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method
