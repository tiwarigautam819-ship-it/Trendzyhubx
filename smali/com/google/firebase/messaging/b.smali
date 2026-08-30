###### Class com.google.firebase.messaging.b (com.google.firebase.messaging.b)
.class public final Lcom/google/firebase/messaging/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lz4/d;


# static fields
.field public static final a:Lcom/google/firebase/messaging/b;

.field public static final b:Lz4/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/firebase/messaging/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/messaging/b;->a:Lcom/google/firebase/messaging/b;

    .line 7
    .line 8
    new-instance v0, Lc5/a;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lc5/a;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const-class v1, Lc5/e;

    .line 15
    .line 16
    invoke-static {v1, v0}, La1/a;->k(Ljava/lang/Class;Lc5/a;)Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lz4/c;

    .line 21
    .line 22
    invoke-static {v0}, La1/a;->l(Ljava/util/HashMap;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "messagingClientEvent"

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lz4/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    sput-object v1, Lcom/google/firebase/messaging/b;->b:Lz4/c;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Ln5/e;

    .line 2
    .line 3
    check-cast p2, Lz4/e;

    .line 4
    .line 5
    sget-object v0, Lcom/google/firebase/messaging/b;->b:Lz4/c;

    .line 6
    .line 7
    iget-object p1, p1, Ln5/e;->a:Ln5/d;

    .line 8
    .line 9
    invoke-interface {p2, v0, p1}, Lz4/e;->e(Lz4/c;Ljava/lang/Object;)Lz4/e;

    .line 10
    .line 11
    .line 12
    return-void
.end method
