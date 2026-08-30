###### Class v4.n (v4.n)
.class public final Lv4/n;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lg5/a;


# static fields
.field public static final c:Lcom/getcapacitor/n;

.field public static final d:Lcom/google/firebase/messaging/l;


# instance fields
.field public a:Lcom/getcapacitor/n;

.field public volatile b:Lg5/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/getcapacitor/n;

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/getcapacitor/n;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lv4/n;->c:Lcom/getcapacitor/n;

    .line 9
    .line 10
    new-instance v0, Lcom/google/firebase/messaging/l;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/l;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lv4/n;->d:Lcom/google/firebase/messaging/l;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lv4/n;->b:Lg5/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lg5/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
