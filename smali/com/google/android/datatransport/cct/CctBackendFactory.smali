###### Class com.google.android.datatransport.cct.CctBackendFactory (com.google.android.datatransport.cct.CctBackendFactory)
.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


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
.method public create(Lg3/c;)Lg3/e;
    .registers 5

    .line 1
    new-instance v0, Ld3/c;

    .line 2
    .line 3
    check-cast p1, Lg3/b;

    .line 4
    .line 5
    iget-object v1, p1, Lg3/b;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p1, Lg3/b;->b:Lo3/a;

    .line 8
    .line 9
    iget-object p1, p1, Lg3/b;->c:Lo3/a;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, p1}, Ld3/c;-><init>(Landroid/content/Context;Lo3/a;Lo3/a;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
