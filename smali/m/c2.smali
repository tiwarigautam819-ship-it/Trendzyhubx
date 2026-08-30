###### Class m.c2 (m.c2)
.class public final Lm/c2;
.super Lm/x1;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lm/y1;


# static fields
.field public static final L:Ljava/lang/reflect/Method;


# instance fields
.field public K:Lk1/h;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-gt v0, v1, :cond_18

    .line 6
    .line 7
    const-class v0, Landroid/widget/PopupWindow;

    .line 8
    .line 9
    const-string v1, "setTouchModal"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v3, v2, v4

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lm/c2;->L:Ljava/lang/reflect/Method;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_18} :catch_19

    .line 24
    .line 25
    :cond_18
    return-void

    .line 26
    :catch_19
    const-string v0, "MenuPopupWindow"

    .line 27
    .line 28
    const-string v1, "Could not find method setTouchModal() on PopupWindow. Oh well."

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final l(Ll/n;Ll/p;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm/c2;->K:Lk1/h;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lk1/h;->l(Ll/n;Ll/p;)V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public final n(Ll/n;Landroid/view/MenuItem;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm/c2;->K:Lk1/h;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lk1/h;->n(Ll/n;Landroid/view/MenuItem;)V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public final q(Landroid/content/Context;Z)Lm/m1;
    .registers 4

    .line 1
    new-instance v0, Lm/b2;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lm/b2;-><init>(Landroid/content/Context;Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lm/b2;->setHoverListener(Lm/y1;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
