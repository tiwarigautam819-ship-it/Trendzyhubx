###### Class v7.n (v7.n)
.class public final Lv7/n;
.super Ljava/lang/RuntimeException;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/io/IOException;

.field public b:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv7/n;->a:Ljava/io/IOException;

    .line 5
    .line 6
    iput-object p1, p0, Lv7/n;->b:Ljava/io/IOException;

    .line 7
    .line 8
    return-void
.end method
