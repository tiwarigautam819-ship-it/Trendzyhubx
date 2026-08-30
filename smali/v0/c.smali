###### Class v0.c (v0.c)
.class public final Lv0/c;
.super Lv0/b;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    sget-object p1, Lv0/a;->b:Lv0/a;

    invoke-direct {p0, p1}, Lv0/c;-><init>(Lv0/b;)V

    return-void
.end method

.method public constructor <init>(Lv0/b;)V
    .registers 3

    const-string v0, "initialExtras"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lv0/b;-><init>()V

    .line 3
    iget-object v0, p0, Lv0/b;->a:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lv0/b;->a:Ljava/util/LinkedHashMap;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
