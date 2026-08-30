###### Class l0.d (l0.d)
.class public final Ll0/d;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:Lcom/google/firebase/messaging/j0;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Lcom/google/firebase/messaging/j0;)V
    .registers 3

    .line 1
    iput-object p2, p0, Ll0/d;->a:Lcom/google/firebase/messaging/j0;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 3
    .line 4
    goto :goto_17

    .line 5
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x19

    .line 8
    .line 9
    if-ge v1, v2, :cond_b

    .line 10
    .line 11
    goto :goto_17

    .line 12
    :cond_b
    new-instance v0, Lk1/h;

    .line 13
    .line 14
    new-instance v1, Ll0/f;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Ll0/f;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/16 v2, 0x10

    .line 20
    .line 21
    invoke-direct {v0, v2, v1}, Lk1/h;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :goto_17
    iget-object v1, p0, Ll0/d;->a:Lcom/google/firebase/messaging/j0;

    .line 25
    .line 26
    invoke-virtual {v1, v0, p2, p3}, Lcom/google/firebase/messaging/j0;->f(Lk1/h;ILandroid/os/Bundle;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_21

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_21
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1
.end method
