###### Class c5.h (c5.h)
.class public final Lc5/h;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lh3/b;
.implements Ll0/g;
.implements Lp4/d;
.implements Lq2/f0;


# static fields
.field public static e:Lc5/h;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lc5/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 4

    const/16 v0, 0xe

    iput v0, p0, Lc5/h;->a:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lc5/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .registers 4

    const/16 v0, 0x9

    iput v0, p0, Lc5/h;->a:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lg/p0;

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 23
    iput-object p2, p0, Lc5/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/s0;Landroidx/lifecycle/r0;Lv0/b;)V
    .registers 5

    const/16 v0, 0x12

    iput v0, p0, Lc5/h;->a:I

    const-string v0, "store"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "extras"

    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lc5/h;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/messaging/FirebaseMessagingService;Lk1/h;Ljava/util/concurrent/ExecutorService;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lc5/h;->a:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p3, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lc5/h;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/messaging/y;Lo3/a;Lp0/d;Ljava/util/Set;)V
    .registers 12

    const/16 v0, 0xf

    iput v0, p0, Lc5/h;->a:I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 27
    iput-object p3, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 28
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_3d

    .line 29
    :cond_14
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    .line 30
    new-instance v1, Ljava/lang/String;

    const/4 p3, 0x0

    array-length p4, p2

    invoke-direct {v1, p2, p3, p4}, Ljava/lang/String;-><init>([III)V

    .line 31
    new-instance v6, Ln6/d;

    const/4 p2, 0x1

    invoke-direct {v6, v1, p2}, Ln6/d;-><init>(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lc5/h;->r(Ljava/lang/CharSequence;IIIZLp0/o;)Ljava/lang/Object;

    goto :goto_18

    :cond_3d
    :goto_3d
    return-void
.end method

.method public constructor <init>(Lf3/i;Lc3/c;Lcom/getcapacitor/n;Lf3/q;)V
    .registers 5

    const/4 p3, 0x7

    iput p3, p0, Lc5/h;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 10
    iput-object p4, p0, Lc5/h;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5

    .line 2
    iput p4, p0, Lc5/h;->a:I

    iput-object p1, p0, Lc5/h;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc5/h;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc5/h;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x10

    iput v0, p0, Lc5/h;->a:I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/measurement/y4;

    const/16 v1, 0x19

    const/4 v2, 0x0

    .line 35
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/y4;-><init>(IZ)V

    .line 36
    iput-object v0, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 37
    iput-object v0, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lc5/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk1/h;)V
    .registers 7

    const/4 v0, 0x4

    iput v0, p0, Lc5/h;->a:I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "gcm.n.title"

    invoke-virtual {p1, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 41
    invoke-virtual {p1, v0}, Lk1/h;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    invoke-virtual {p1, v0}, Lk1/h;->w(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    goto :goto_2b

    .line 43
    :cond_19
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    move v3, v1

    .line 44
    :goto_1d
    array-length v4, v0

    if-ge v3, v4, :cond_2b

    .line 45
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 46
    :cond_2b
    :goto_2b
    const-string v0, "gcm.n.body"

    invoke-virtual {p1, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 47
    invoke-virtual {p1, v0}, Lk1/h;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    invoke-virtual {p1, v0}, Lk1/h;->w(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3d

    goto :goto_4e

    .line 49
    :cond_3d
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 50
    :goto_40
    array-length v3, v0

    if-ge v1, v3, :cond_4e

    .line 51
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 52
    :cond_4e
    :goto_4e
    const-string v0, "gcm.n.icon"

    invoke-virtual {p1, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    const-string v0, "gcm.n.sound2"

    invoke-virtual {p1, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 55
    const-string v0, "gcm.n.sound"

    invoke-virtual {p1, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    :cond_64
    const-string v0, "gcm.n.tag"

    invoke-virtual {p1, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    const-string v0, "gcm.n.color"

    invoke-virtual {p1, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    const-string v0, "gcm.n.click_action"

    invoke-virtual {p1, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 59
    const-string v0, "gcm.n.android_channel_id"

    invoke-virtual {p1, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    const-string v0, "gcm.n.link_android"

    invoke-virtual {p1, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 62
    const-string v0, "gcm.n.link"

    invoke-virtual {p1, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_8d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_96

    .line 64
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    :cond_96
    const-string v0, "gcm.n.image"

    invoke-virtual {p1, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    const-string v0, "gcm.n.ticker"

    invoke-virtual {p1, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    const-string v0, "gcm.n.notification_priority"

    invoke-virtual {p1, v0}, Lk1/h;->t(Ljava/lang/String;)Ljava/lang/Integer;

    .line 68
    const-string v0, "gcm.n.visibility"

    invoke-virtual {p1, v0}, Lk1/h;->t(Ljava/lang/String;)Ljava/lang/Integer;

    .line 69
    const-string v0, "gcm.n.notification_count"

    invoke-virtual {p1, v0}, Lk1/h;->t(Ljava/lang/String;)Ljava/lang/Integer;

    .line 70
    const-string v0, "gcm.n.sticky"

    invoke-virtual {p1, v0}, Lk1/h;->s(Ljava/lang/String;)Z

    .line 71
    const-string v0, "gcm.n.local_only"

    invoke-virtual {p1, v0}, Lk1/h;->s(Ljava/lang/String;)Z

    .line 72
    const-string v0, "gcm.n.default_sound"

    invoke-virtual {p1, v0}, Lk1/h;->s(Ljava/lang/String;)Z

    .line 73
    const-string v0, "gcm.n.default_vibrate_timings"

    invoke-virtual {p1, v0}, Lk1/h;->s(Ljava/lang/String;)Z

    .line 74
    const-string v0, "gcm.n.default_light_settings"

    invoke-virtual {p1, v0}, Lk1/h;->s(Ljava/lang/String;)Z

    .line 75
    invoke-virtual {p1}, Lk1/h;->y()Ljava/lang/Long;

    .line 76
    invoke-virtual {p1}, Lk1/h;->v()[I

    .line 77
    invoke-virtual {p1}, Lk1/h;->B()[J

    return-void
.end method

.method public static h(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_c

    .line 11
    .line 12
    goto :goto_4b

    .line 13
    :cond_c
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, -0x1

    .line 22
    if-eq p1, v2, :cond_4b

    .line 23
    .line 24
    if-eq v1, v2, :cond_4b

    .line 25
    .line 26
    if-eq p1, v1, :cond_1c

    .line 27
    .line 28
    goto :goto_4b

    .line 29
    :cond_1c
    const-class v2, Lp0/w;

    .line 30
    .line 31
    invoke-interface {p0, p1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, [Lp0/w;

    .line 36
    .line 37
    if-eqz v1, :cond_4b

    .line 38
    .line 39
    array-length v2, v1

    .line 40
    if-lez v2, :cond_4b

    .line 41
    .line 42
    array-length v2, v1

    .line 43
    move v3, v0

    .line 44
    :goto_2b
    if-ge v3, v2, :cond_4b

    .line 45
    .line 46
    aget-object v4, v1, v3

    .line 47
    .line 48
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz p2, :cond_3b

    .line 57
    .line 58
    if-eq v5, p1, :cond_43

    .line 59
    .line 60
    :cond_3b
    if-nez p2, :cond_3f

    .line 61
    .line 62
    if-eq v4, p1, :cond_43

    .line 63
    .line 64
    :cond_3f
    if-le p1, v5, :cond_48

    .line 65
    .line 66
    if-ge p1, v4, :cond_48

    .line 67
    .line 68
    :cond_43
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    return p0

    .line 73
    :cond_48
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_2b

    .line 76
    :cond_4b
    :goto_4b
    return v0
.end method

.method public static q(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lc5/h;
    .registers 6

    .line 1
    new-instance v0, Lc5/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {v0, p0, p1}, Lc5/h;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/os/Bundle;

    .line 4
    .line 5
    iget-object v1, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ly2/j;

    .line 8
    .line 9
    :try_start_8
    const-string v2, "com.facebook.platform.extra.USER_ID"

    .line 10
    .line 11
    if-eqz p1, :cond_16

    .line 12
    .line 13
    const-string v3, "id"

    .line 14
    .line 15
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_17

    .line 20
    :catch_13
    move-exception v0

    .line 21
    move-object p1, v0

    .line 22
    goto :goto_22

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    :goto_17
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Ly2/m;

    .line 30
    .line 31
    invoke-virtual {v1, p1, v0}, Ly2/j;->l(Ly2/m;Landroid/os/Bundle;)V
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_21} :catch_13

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :goto_22
    invoke-virtual {v1}, Ly2/t;->d()Ly2/o;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v1}, Ly2/t;->d()Ly2/o;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v3, v1, Ly2/o;->g:Ly2/m;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "Caught exception"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    if-eqz p1, :cond_3f

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_3f
    const-string p1, ": "

    .line 65
    .line 66
    invoke-static {p1, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    new-instance v2, Ly2/n;

    .line 71
    .line 72
    const/4 v4, 0x3

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v7, 0x0

    .line 75
    invoke-direct/range {v2 .. v7}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ly2/o;->c(Ly2/n;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public b()Ljava/lang/Object;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/net/Uri;

    .line 4
    .line 5
    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 7

    .line 1
    iget v0, p0, Lc5/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_4e

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    new-instance v0, Lc5/h;

    .line 12
    .line 13
    iget-object v1, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lcom/google/android/gms/internal/measurement/c;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/c;->clone()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/google/android/gms/internal/measurement/c;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-direct {v0, v2}, Lc5/h;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lc5/h;->b:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/c;->clone()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/google/android/gms/internal/measurement/c;

    .line 34
    .line 35
    iput-object v1, v0, Lc5/h;->c:Ljava/lang/Object;

    .line 36
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Lc5/h;->d:Ljava/lang/Object;

    .line 43
    .line 44
    iget-object v1, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x0

    .line 53
    :goto_34
    if-ge v3, v2, :cond_4c

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    check-cast v4, Lcom/google/android/gms/internal/measurement/c;

    .line 62
    .line 63
    iget-object v5, v0, Lc5/h;->d:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v5, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/c;->clone()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/google/android/gms/internal/measurement/c;

    .line 72
    .line 73
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_34

    .line 77
    :cond_4c
    return-object v0

    .line 78
    nop

    .line 79
    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_a
    .end packed-switch
.end method

.method public d()V
    .registers 1

    .line 1
    return-void
.end method

.method public e()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/net/Uri;

    .line 4
    .line 5
    return-object v0
.end method

.method public f(Lx1/l;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ly2/j;

    .line 4
    .line 5
    invoke-virtual {v0}, Ly2/t;->d()Ly2/o;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ly2/t;->d()Ly2/o;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v3, v0, Ly2/o;->g:Ly2/m;

    .line 14
    .line 15
    if-eqz p1, :cond_15

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    :goto_16
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "Caught exception"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_25

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_25
    const-string p1, ": "

    .line 39
    .line 40
    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    new-instance v2, Ly2/n;

    .line 45
    .line 46
    const/4 v4, 0x3

    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-direct/range {v2 .. v7}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ly2/o;->c(Ly2/n;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public g()Lf3/i;
    .registers 5

    .line 1
    iget-object v0, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    const-string v0, " backendName"

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const-string v0, ""

    .line 11
    .line 12
    :goto_b
    iget-object v1, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lc3/d;

    .line 15
    .line 16
    if-nez v1, :cond_17

    .line 17
    .line 18
    const-string v1, " priority"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_17
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2f

    .line 29
    .line 30
    new-instance v0, Lf3/i;

    .line 31
    .line 32
    iget-object v1, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v2, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, [B

    .line 39
    .line 40
    iget-object v3, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Lc3/d;

    .line 43
    .line 44
    invoke-direct {v0, v1, v2, v3}, Lf3/i;-><init>(Ljava/lang/String;[BLc3/d;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v2, "Missing required properties:"

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1
.end method

.method public get()Ljava/lang/Object;
    .registers 12

    .line 1
    iget v0, p0, Lc5/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_5e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lq6/a;

    .line 9
    .line 10
    invoke-interface {v0}, Lq6/a;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/content/Context;

    .line 15
    .line 16
    iget-object v1, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lq6/a;

    .line 19
    .line 20
    invoke-interface {v1}, Lq6/a;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lm3/d;

    .line 25
    .line 26
    iget-object v2, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Le5/e;

    .line 29
    .line 30
    invoke-virtual {v2}, Le5/e;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ll3/a;

    .line 35
    .line 36
    new-instance v3, Lc5/h;

    .line 37
    .line 38
    const/16 v4, 0xd

    .line 39
    .line 40
    invoke-direct {v3, v0, v1, v2, v4}, Lc5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    return-object v3

    .line 44
    :pswitch_2b
    new-instance v6, Lo3/a;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-direct {v6, v0}, Lo3/a;-><init>(I)V

    .line 48
    .line 49
    .line 50
    new-instance v7, Lo3/a;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-direct {v7, v0}, Lo3/a;-><init>(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lcom/google/firebase/messaging/z;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/firebase/messaging/z;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v8, v0

    .line 65
    check-cast v8, Lk3/b;

    .line 66
    .line 67
    iget-object v0, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lm/h3;

    .line 70
    .line 71
    invoke-virtual {v0}, Lm/h3;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    move-object v9, v0

    .line 76
    check-cast v9, Ll3/i;

    .line 77
    .line 78
    iget-object v0, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lcom/google/firebase/messaging/y;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/google/firebase/messaging/y;->get()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    move-object v10, v0

    .line 87
    check-cast v10, Lcom/google/firebase/messaging/y;

    .line 88
    .line 89
    new-instance v5, Lf3/q;

    .line 90
    .line 91
    invoke-direct/range {v5 .. v10}, Lf3/q;-><init>(Lo3/a;Lo3/a;Lk3/b;Ll3/i;Lcom/google/firebase/messaging/y;)V

    .line 92
    .line 93
    .line 94
    return-object v5

    .line 95
    :pswitch_data_5e
    .packed-switch 0x8
        :pswitch_2b
    .end packed-switch
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .registers 2

    .line 1
    iget-object v0, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/ClipDescription;

    .line 4
    .line 5
    return-object v0
.end method

.method public i(Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)V
    .registers 7

    .line 1
    new-instance v0, Lc5/f;

    .line 2
    .line 3
    iget-object v1, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object v2, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/HashMap;

    .line 10
    .line 11
    iget-object v3, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lz4/d;

    .line 14
    .line 15
    invoke-direct {v0, p2, v1, v2, v3}, Lc5/f;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/HashMap;Ljava/util/HashMap;Lz4/d;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lz4/d;

    .line 27
    .line 28
    if-eqz p2, :cond_21

    .line 29
    .line 30
    invoke-interface {p2, p1, v0}, Lz4/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    new-instance p2, Lz4/b;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "No encoder for "

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p2
.end method

.method public j(I)Landroid/content/res/ColorStateList;
    .registers 5

    .line 1
    iget-object v0, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1c

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1c

    .line 17
    .line 18
    iget-object v2, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v2, v1}, Lz7/l;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1c

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_1c
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public k(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    iget-object v0, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1a

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1a

    .line 17
    .line 18
    iget-object p1, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p1, v1}, Lz7/l;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1a
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public l(I)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 1
    iget-object v0, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2a

    .line 10
    .line 11
    iget-object v0, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/content/res/TypedArray;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_2a

    .line 21
    .line 22
    invoke-static {}, Lm/p;->a()Lm/p;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Landroid/content/Context;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_1e
    iget-object v2, v0, Lm/p;->a:Lm/f2;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-virtual {v2, v1, p1, v3}, Lm/f2;->g(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_27

    .line 38
    monitor-exit v0

    .line 39
    return-object p1

    .line 40
    :catchall_27
    move-exception p1

    .line 41
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    .line 42
    throw p1

    .line 43
    :cond_2a
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method public m(IILe6/b;)Landroid/graphics/Typeface;
    .registers 15

    .line 1
    iget-object v0, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 7
    .line 8
    .line 9
    move-result v5

    .line 10
    const/4 p1, 0x0

    .line 11
    if-nez v5, :cond_d

    .line 12
    .line 13
    goto :goto_2b

    .line 14
    :cond_d
    iget-object v0, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroid/util/TypedValue;

    .line 17
    .line 18
    if-nez v0, :cond_1a

    .line 19
    .line 20
    new-instance v0, Landroid/util/TypedValue;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 26
    .line 27
    :cond_1a
    iget-object v0, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v2, v0

    .line 30
    check-cast v2, Landroid/content/Context;

    .line 31
    .line 32
    iget-object v0, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Landroid/util/TypedValue;

    .line 35
    .line 36
    sget-object v1, Lb0/l;->a:Ljava/lang/ThreadLocal;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2c

    .line 43
    .line 44
    :goto_2b
    return-object p1

    .line 45
    :cond_2c
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-virtual {v4, v5, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 51
    .line 52
    .line 53
    const-string v1, "ResourcesCompat"

    .line 54
    .line 55
    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 56
    .line 57
    if-eqz v3, :cond_fe

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    const-string v3, "res/"

    .line 64
    .line 65
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_4b

    .line 70
    .line 71
    invoke-virtual {p3}, Le6/b;->a()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_fd

    .line 75
    .line 76
    :cond_4b
    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 77
    .line 78
    sget-object v8, Lc0/f;->b:Ls/i;

    .line 79
    .line 80
    invoke-static {v4, v5, v6, v3, p2}, Lc0/f;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v8, v3}, Ls/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Landroid/graphics/Typeface;

    .line 89
    .line 90
    const/4 v9, 0x2

    .line 91
    if-eqz v3, :cond_70

    .line 92
    .line 93
    new-instance p1, Landroid/os/Handler;

    .line 94
    .line 95
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    .line 101
    .line 102
    new-instance p2, La2/i;

    .line 103
    .line 104
    invoke-direct {p2, p3, v9, v3}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    .line 109
    .line 110
    move-object p1, v3

    .line 111
    goto/16 :goto_fd

    .line 112
    .line 113
    :cond_70
    :try_start_70
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const-string v7, ".xml"

    .line 118
    .line 119
    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_b6

    .line 124
    .line 125
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v3, v4}, Lb0/b;->g(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Lb0/e;

    .line 130
    .line 131
    .line 132
    move-result-object v3
    :try_end_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_84} :catch_b3
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_84} :catch_b0

    .line 133
    if-nez v3, :cond_9e

    .line 134
    .line 135
    :try_start_86
    const-string p2, "Failed to find font-family tag"

    .line 136
    .line 137
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3}, Le6/b;->a()V
    :try_end_8e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_86 .. :try_end_8e} :catch_97
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8e} :catch_90

    .line 141
    .line 142
    .line 143
    goto/16 :goto_fd

    .line 144
    .line 145
    :catch_90
    move-exception v0

    .line 146
    move-object p2, v0

    .line 147
    move-object v10, p3

    .line 148
    move-object p3, p2

    .line 149
    move-object p2, v10

    .line 150
    goto/16 :goto_e7

    .line 151
    .line 152
    :catch_97
    move-exception v0

    .line 153
    move-object p2, v0

    .line 154
    move-object v10, p3

    .line 155
    move-object p3, p2

    .line 156
    move-object p2, v10

    .line 157
    goto/16 :goto_f1

    .line 158
    .line 159
    :cond_9e
    :try_start_9e
    iget v7, v0, Landroid/util/TypedValue;->assetCookie:I
    :try_end_a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9e .. :try_end_a0} :catch_b3
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a0} :catch_b0

    .line 160
    .line 161
    move v8, p2

    .line 162
    move-object v9, p3

    .line 163
    :try_start_a2
    invoke-static/range {v2 .. v9}, Lc0/f;->a(Landroid/content/Context;Lb0/e;Landroid/content/res/Resources;ILjava/lang/String;IILe6/b;)Landroid/graphics/Typeface;

    .line 164
    .line 165
    .line 166
    move-result-object p1
    :try_end_a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_a6} :catch_ac
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a6} :catch_a8

    .line 167
    goto/16 :goto_fd

    .line 168
    .line 169
    :catch_a8
    move-exception v0

    .line 170
    move-object p2, v9

    .line 171
    :goto_aa
    move-object p3, v0

    .line 172
    goto :goto_e7

    .line 173
    :catch_ac
    move-exception v0

    .line 174
    move-object p2, v9

    .line 175
    :goto_ae
    move-object p3, v0

    .line 176
    goto :goto_f1

    .line 177
    :catch_b0
    move-exception v0

    .line 178
    move-object p2, p3

    .line 179
    goto :goto_aa

    .line 180
    :catch_b3
    move-exception v0

    .line 181
    move-object p2, p3

    .line 182
    goto :goto_ae

    .line 183
    :cond_b6
    move v7, p2

    .line 184
    move-object p2, p3

    .line 185
    :try_start_b8
    iget p3, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 186
    .line 187
    move-object v3, v2

    .line 188
    sget-object v2, Lc0/f;->a:Lx2/a;

    .line 189
    .line 190
    invoke-virtual/range {v2 .. v7}, Lx2/a;->e(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    if-eqz v0, :cond_ca

    .line 195
    .line 196
    invoke-static {v4, v5, v6, p3, v7}, Lc0/f;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p3

    .line 200
    invoke-virtual {v8, p3, v0}, Ls/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    :cond_ca
    if-eqz v0, :cond_df

    .line 204
    .line 205
    new-instance p3, Landroid/os/Handler;

    .line 206
    .line 207
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-direct {p3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 212
    .line 213
    .line 214
    new-instance v2, La2/i;

    .line 215
    .line 216
    invoke-direct {v2, p2, v9, v0}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    .line 221
    .line 222
    :goto_dd
    move-object p1, v0

    .line 223
    goto :goto_fd

    .line 224
    :cond_df
    invoke-virtual {p2}, Le6/b;->a()V
    :try_end_e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b8 .. :try_end_e2} :catch_e5
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_e2} :catch_e3

    .line 225
    .line 226
    .line 227
    goto :goto_dd

    .line 228
    :catch_e3
    move-exception v0

    .line 229
    goto :goto_aa

    .line 230
    :catch_e5
    move-exception v0

    .line 231
    goto :goto_ae

    .line 232
    :goto_e7
    const-string v0, "Failed to read xml resource "

    .line 233
    .line 234
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {v1, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .line 240
    .line 241
    goto :goto_fa

    .line 242
    :goto_f1
    const-string v0, "Failed to parse xml resource "

    .line 243
    .line 244
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-static {v1, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .line 250
    .line 251
    :goto_fa
    invoke-virtual {p2}, Le6/b;->a()V

    .line 252
    .line 253
    .line 254
    :goto_fd
    return-object p1

    .line 255
    :cond_fe
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 256
    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string p3, "Resource \""

    .line 260
    .line 261
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p3

    .line 268
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string p3, "\" ("

    .line 272
    .line 273
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p3

    .line 280
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string p3, ") is not a Font: "

    .line 284
    .line 285
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw p1
.end method

.method public n(Ld7/d;Ljava/lang/String;)Landroidx/lifecycle/p0;
    .registers 9

    .line 1
    iget-object v0, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/lifecycle/r0;

    .line 4
    .line 5
    const-string v1, "key"

    .line 6
    .line 7
    invoke-static {v1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroidx/lifecycle/s0;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v1, v1, Landroidx/lifecycle/s0;->a:Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroidx/lifecycle/p0;

    .line 24
    .line 25
    iget-object v3, p1, Ld7/d;->a:Ljava/lang/Class;

    .line 26
    .line 27
    sget-object v4, Ld7/d;->b:Ljava/util/Map;

    .line 28
    .line 29
    const-string v5, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>"

    .line 30
    .line 31
    invoke-static {v5, v4}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Ljava/lang/Integer;

    .line 39
    .line 40
    if-eqz v4, :cond_32

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-static {v3, v2}, Ld7/o;->b(ILjava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    goto :goto_44

    .line 51
    :cond_32
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_40

    .line 56
    .line 57
    invoke-static {v3}, Ld7/l;->a(Ljava/lang/Class;)Ld7/d;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v3}, Lm1/j;->j(Li7/b;)Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    :cond_40
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    :goto_44
    if-eqz v3, :cond_61

    .line 70
    .line 71
    instance-of p1, v0, Landroidx/lifecycle/n0;

    .line 72
    .line 73
    if-eqz p1, :cond_5b

    .line 74
    .line 75
    check-cast v0, Landroidx/lifecycle/n0;

    .line 76
    .line 77
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, v0, Landroidx/lifecycle/n0;->d:Landroidx/lifecycle/o;

    .line 81
    .line 82
    if-eqz p1, :cond_5b

    .line 83
    .line 84
    iget-object p2, v0, Landroidx/lifecycle/n0;->e:Le1/e;

    .line 85
    .line 86
    invoke-static {p2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v2, p2, p1}, Landroidx/lifecycle/j0;->a(Landroidx/lifecycle/p0;Le1/e;Landroidx/lifecycle/o;)V

    .line 90
    .line 91
    .line 92
    :cond_5b
    const-string p1, "null cannot be cast to non-null type T of androidx.lifecycle.viewmodel.ViewModelProviderImpl.getViewModel"

    .line 93
    .line 94
    invoke-static {p1, v2}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-object v2

    .line 98
    :cond_61
    new-instance v2, Lv0/c;

    .line 99
    .line 100
    iget-object v3, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v3, Lv0/b;

    .line 103
    .line 104
    invoke-direct {v2, v3}, Lv0/c;-><init>(Lv0/b;)V

    .line 105
    .line 106
    .line 107
    sget-object v3, Lw0/b;->a:Lw0/b;

    .line 108
    .line 109
    iget-object v4, v2, Lv0/b;->a:Ljava/util/LinkedHashMap;

    .line 110
    .line 111
    invoke-interface {v4, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :try_start_71
    invoke-interface {v0, p1, v2}, Landroidx/lifecycle/r0;->c(Ld7/d;Lv0/c;)Landroidx/lifecycle/p0;

    .line 115
    .line 116
    .line 117
    move-result-object p1
    :try_end_75
    .catch Ljava/lang/AbstractMethodError; {:try_start_71 .. :try_end_75} :catch_76

    .line 118
    goto :goto_87

    .line 119
    :catch_76
    :try_start_76
    invoke-static {p1}, Lm1/j;->i(Ld7/d;)Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-interface {v0, v3, v2}, Landroidx/lifecycle/r0;->b(Ljava/lang/Class;Lv0/c;)Landroidx/lifecycle/p0;

    .line 124
    .line 125
    .line 126
    move-result-object p1
    :try_end_7e
    .catch Ljava/lang/AbstractMethodError; {:try_start_76 .. :try_end_7e} :catch_7f

    .line 127
    goto :goto_87

    .line 128
    :catch_7f
    invoke-static {p1}, Lm1/j;->i(Ld7/d;)Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-interface {v0, p1}, Landroidx/lifecycle/r0;->a(Ljava/lang/Class;)Landroidx/lifecycle/p0;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    :goto_87
    const-string v0, "viewModel"

    .line 137
    .line 138
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    check-cast p2, Landroidx/lifecycle/p0;

    .line 146
    .line 147
    if-eqz p2, :cond_97

    .line 148
    .line 149
    invoke-virtual {p2}, Landroidx/lifecycle/p0;->a()V

    .line 150
    .line 151
    .line 152
    :cond_97
    return-object p1
.end method

.method public o()Z
    .registers 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lc5/h;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lk1/h;

    .line 6
    .line 7
    const-string v2, "gcm.n.noui"

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lk1/h;->s(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_10

    .line 15
    .line 16
    return v2

    .line 17
    :cond_10
    iget-object v0, v1, Lc5/h;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessagingService;

    .line 20
    .line 21
    const-string v3, "keyguard"

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/app/KeyguardManager;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz v3, :cond_24

    .line 35
    .line 36
    goto :goto_51

    .line 37
    :cond_24
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const-string v5, "activity"

    .line 42
    .line 43
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/app/ActivityManager;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_51

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_51

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 70
    .line 71
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 72
    .line 73
    if-ne v6, v3, :cond_3a

    .line 74
    .line 75
    iget v0, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 76
    .line 77
    const/16 v3, 0x64

    .line 78
    .line 79
    if-ne v0, v3, :cond_51

    .line 80
    .line 81
    return v4

    .line 82
    :cond_51
    :goto_51
    iget-object v0, v1, Lc5/h;->d:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lk1/h;

    .line 85
    .line 86
    const-string v3, "gcm.n.image"

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    const-string v6, "FirebaseMessaging"

    .line 97
    .line 98
    if-eqz v3, :cond_65

    .line 99
    .line 100
    :goto_63
    const/4 v3, 0x0

    .line 101
    goto :goto_82

    .line 102
    :cond_65
    :try_start_65
    new-instance v3, Lcom/google/firebase/messaging/r;

    .line 103
    .line 104
    new-instance v7, Ljava/net/URL;

    .line 105
    .line 106
    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v3, v7}, Lcom/google/firebase/messaging/r;-><init>(Ljava/net/URL;)V
    :try_end_6f
    .catch Ljava/net/MalformedURLException; {:try_start_65 .. :try_end_6f} :catch_70

    .line 110
    .line 111
    .line 112
    goto :goto_82

    .line 113
    :catch_70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v7, "Not downloading image, bad URL: "

    .line 116
    .line 117
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    goto :goto_63

    .line 131
    :goto_82
    if-eqz v3, :cond_9e

    .line 132
    .line 133
    iget-object v0, v1, Lc5/h;->b:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 136
    .line 137
    new-instance v7, Lp4/j;

    .line 138
    .line 139
    invoke-direct {v7}, Lp4/j;-><init>()V

    .line 140
    .line 141
    .line 142
    new-instance v8, La2/i;

    .line 143
    .line 144
    const/16 v9, 0x9

    .line 145
    .line 146
    invoke-direct {v8, v3, v9, v7}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iput-object v0, v3, Lcom/google/firebase/messaging/r;->b:Ljava/util/concurrent/Future;

    .line 154
    .line 155
    iget-object v0, v7, Lp4/j;->a:Lp4/q;

    .line 156
    .line 157
    iput-object v0, v3, Lcom/google/firebase/messaging/r;->c:Lp4/q;

    .line 158
    .line 159
    :cond_9e
    iget-object v0, v1, Lc5/h;->c:Ljava/lang/Object;

    .line 160
    .line 161
    move-object v7, v0

    .line 162
    check-cast v7, Lcom/google/firebase/messaging/FirebaseMessagingService;

    .line 163
    .line 164
    iget-object v0, v1, Lc5/h;->d:Ljava/lang/Object;

    .line 165
    .line 166
    move-object v8, v0

    .line 167
    check-cast v8, Lk1/h;

    .line 168
    .line 169
    sget-object v0, Lcom/google/firebase/messaging/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 170
    .line 171
    const-string v9, "Couldn\'t get own application info: "

    .line 172
    .line 173
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    const/16 v11, 0x80

    .line 182
    .line 183
    :try_start_b6
    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    if-eqz v0, :cond_d2

    .line 188
    .line 189
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_be
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b6 .. :try_end_be} :catch_c2

    .line 190
    .line 191
    if-eqz v0, :cond_d2

    .line 192
    .line 193
    :goto_c0
    move-object v10, v0

    .line 194
    goto :goto_d5

    .line 195
    :catch_c2
    move-exception v0

    .line 196
    new-instance v10, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    :cond_d2
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 212
    .line 213
    goto :goto_c0

    .line 214
    :goto_d5
    const-string v0, "gcm.n.android_channel_id"

    .line 215
    .line 216
    invoke-virtual {v8, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 221
    .line 222
    const/16 v12, 0x1a

    .line 223
    .line 224
    if-ge v11, v12, :cond_e4

    .line 225
    .line 226
    :catch_e1
    :goto_e1
    const/4 v0, 0x0

    .line 227
    goto/16 :goto_16b

    .line 228
    .line 229
    :cond_e4
    :try_start_e4
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 230
    .line 231
    .line 232
    move-result-object v11

    .line 233
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v13

    .line 237
    invoke-virtual {v11, v13, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_f2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e4 .. :try_end_f2} :catch_e1

    .line 242
    .line 243
    if-ge v11, v12, :cond_f5

    .line 244
    .line 245
    goto :goto_e1

    .line 246
    :cond_f5
    const-class v11, Landroid/app/NotificationManager;

    .line 247
    .line 248
    invoke-virtual {v7, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v11

    .line 252
    check-cast v11, Landroid/app/NotificationManager;

    .line 253
    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 255
    .line 256
    .line 257
    move-result v12

    .line 258
    if-nez v12, :cond_120

    .line 259
    .line 260
    invoke-static {v11, v0}, Lr1/a;->d(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 261
    .line 262
    .line 263
    move-result-object v12

    .line 264
    if-eqz v12, :cond_10a

    .line 265
    .line 266
    goto :goto_16b

    .line 267
    :cond_10a
    new-instance v12, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v13, "Notification Channel requested ("

    .line 270
    .line 271
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v0, ") has not been created by the app. Manifest configuration, or default, value will be used."

    .line 278
    .line 279
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    :cond_120
    const-string v0, "com.google.firebase.messaging.default_notification_channel_id"

    .line 290
    .line 291
    invoke-virtual {v10, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 296
    .line 297
    .line 298
    move-result v12

    .line 299
    if-nez v12, :cond_139

    .line 300
    .line 301
    invoke-static {v11, v0}, Lr1/a;->d(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 302
    .line 303
    .line 304
    move-result-object v12

    .line 305
    if-eqz v12, :cond_133

    .line 306
    .line 307
    goto :goto_16b

    .line 308
    :cond_133
    const-string v0, "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used."

    .line 309
    .line 310
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    goto :goto_13e

    .line 314
    :cond_139
    const-string v0, "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used."

    .line 315
    .line 316
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    :goto_13e
    invoke-static {v11}, Lcom/getcapacitor/plugin/util/a;->d(Landroid/app/NotificationManager;)Landroid/app/NotificationChannel;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    if-nez v0, :cond_169

    .line 324
    .line 325
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    const-string v12, "string"

    .line 330
    .line 331
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v13

    .line 335
    const-string v14, "fcm_fallback_notification_channel_label"

    .line 336
    .line 337
    invoke-virtual {v0, v14, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-nez v0, :cond_15e

    .line 342
    .line 343
    const-string v0, "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name."

    .line 344
    .line 345
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    const-string v0, "Misc"

    .line 349
    .line 350
    goto :goto_162

    .line 351
    :cond_15e
    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    :goto_162
    invoke-static {v0}, Lcom/getcapacitor/plugin/util/a;->e(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v11, v0}, Lcom/getcapacitor/plugin/util/a;->u(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 360
    .line 361
    .line 362
    :cond_169
    const-string v0, "fcm_fallback_notification_channel"

    .line 363
    .line 364
    :goto_16b
    sget-object v11, Lcom/google/firebase/messaging/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 365
    .line 366
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v12

    .line 370
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 371
    .line 372
    .line 373
    move-result-object v13

    .line 374
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 375
    .line 376
    .line 377
    move-result-object v14

    .line 378
    new-instance v15, Ly/p;

    .line 379
    .line 380
    invoke-direct {v15, v7, v0}, Ly/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    const-string v0, "gcm.n.title"

    .line 384
    .line 385
    invoke-virtual {v8, v13, v12, v0}, Lk1/h;->z(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 390
    .line 391
    .line 392
    move-result v16

    .line 393
    if-nez v16, :cond_190

    .line 394
    .line 395
    invoke-static {v0}, Ly/p;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    iput-object v0, v15, Ly/p;->e:Ljava/lang/CharSequence;

    .line 400
    .line 401
    :cond_190
    const-string v0, "gcm.n.body"

    .line 402
    .line 403
    invoke-virtual {v8, v13, v12, v0}, Lk1/h;->z(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 408
    .line 409
    .line 410
    move-result v16

    .line 411
    if-nez v16, :cond_1b0

    .line 412
    .line 413
    invoke-static {v0}, Ly/p;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    iput-object v5, v15, Ly/p;->f:Ljava/lang/CharSequence;

    .line 418
    .line 419
    new-instance v5, Ly/n;

    .line 420
    .line 421
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 422
    .line 423
    .line 424
    invoke-static {v0}, Ly/p;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    iput-object v0, v5, Ly/n;->b:Ljava/lang/CharSequence;

    .line 429
    .line 430
    invoke-virtual {v15, v5}, Ly/p;->e(Landroidx/fragment/app/m;)V

    .line 431
    .line 432
    .line 433
    :cond_1b0
    const-string v0, "gcm.n.icon"

    .line 434
    .line 435
    invoke-virtual {v8, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 440
    .line 441
    .line 442
    move-result v5

    .line 443
    if-nez v5, :cond_1f5

    .line 444
    .line 445
    const-string v5, "drawable"

    .line 446
    .line 447
    invoke-virtual {v13, v0, v5, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    if-eqz v5, :cond_1cd

    .line 452
    .line 453
    invoke-static {v13, v5}, Lcom/google/firebase/messaging/e;->a(Landroid/content/res/Resources;I)Z

    .line 454
    .line 455
    .line 456
    move-result v17

    .line 457
    if-eqz v17, :cond_1cd

    .line 458
    .line 459
    :goto_1ca
    move/from16 v17, v2

    .line 460
    .line 461
    goto :goto_22b

    .line 462
    :cond_1cd
    const-string v5, "mipmap"

    .line 463
    .line 464
    invoke-virtual {v13, v0, v5, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .line 466
    .line 467
    move-result v5

    .line 468
    if-eqz v5, :cond_1dc

    .line 469
    .line 470
    invoke-static {v13, v5}, Lcom/google/firebase/messaging/e;->a(Landroid/content/res/Resources;I)Z

    .line 471
    .line 472
    .line 473
    move-result v17

    .line 474
    if-eqz v17, :cond_1dc

    .line 475
    .line 476
    goto :goto_1ca

    .line 477
    :cond_1dc
    new-instance v5, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    move/from16 v17, v2

    .line 480
    .line 481
    const-string v2, "Icon resource "

    .line 482
    .line 483
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string v0, " not found. Notification will use default icon."

    .line 490
    .line 491
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    goto :goto_1f7

    .line 502
    :cond_1f5
    move/from16 v17, v2

    .line 503
    .line 504
    :goto_1f7
    const-string v0, "com.google.firebase.messaging.default_notification_icon"

    .line 505
    .line 506
    invoke-virtual {v10, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    if-eqz v2, :cond_205

    .line 511
    .line 512
    invoke-static {v13, v2}, Lcom/google/firebase/messaging/e;->a(Landroid/content/res/Resources;I)Z

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-nez v0, :cond_21c

    .line 517
    .line 518
    :cond_205
    :try_start_205
    invoke-virtual {v14, v12, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_20b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_205 .. :try_end_20b} :catch_20c

    .line 523
    .line 524
    goto :goto_21c

    .line 525
    :catch_20c
    move-exception v0

    .line 526
    new-instance v5, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    :cond_21c
    :goto_21c
    if-eqz v2, :cond_227

    .line 542
    .line 543
    invoke-static {v13, v2}, Lcom/google/firebase/messaging/e;->a(Landroid/content/res/Resources;I)Z

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    if-nez v0, :cond_225

    .line 548
    .line 549
    goto :goto_227

    .line 550
    :cond_225
    move v5, v2

    .line 551
    goto :goto_22b

    .line 552
    :cond_227
    :goto_227
    const v0, 0x1080093

    .line 553
    .line 554
    .line 555
    move v5, v0

    .line 556
    :goto_22b
    iget-object v0, v15, Ly/p;->s:Landroid/app/Notification;

    .line 557
    .line 558
    iput v5, v0, Landroid/app/Notification;->icon:I

    .line 559
    .line 560
    const-string v0, "gcm.n.sound2"

    .line 561
    .line 562
    invoke-virtual {v8, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 567
    .line 568
    .line 569
    move-result v2

    .line 570
    if-eqz v2, :cond_241

    .line 571
    .line 572
    const-string v0, "gcm.n.sound"

    .line 573
    .line 574
    invoke-virtual {v8, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    :cond_241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    const/4 v5, 0x2

    .line 583
    if-eqz v2, :cond_24a

    .line 584
    .line 585
    const/4 v0, 0x0

    .line 586
    goto :goto_279

    .line 587
    :cond_24a
    const-string v2, "default"

    .line 588
    .line 589
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    if-nez v2, :cond_275

    .line 594
    .line 595
    const-string v2, "raw"

    .line 596
    .line 597
    invoke-virtual {v13, v0, v2, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    .line 599
    .line 600
    move-result v2

    .line 601
    if-eqz v2, :cond_275

    .line 602
    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    .line 604
    .line 605
    const-string v9, "android.resource://"

    .line 606
    .line 607
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    const-string v9, "/raw/"

    .line 614
    .line 615
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    goto :goto_279

    .line 630
    :cond_275
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    :goto_279
    const/4 v2, -0x1

    .line 635
    const/4 v9, 0x4

    .line 636
    if-eqz v0, :cond_299

    .line 637
    .line 638
    iget-object v13, v15, Ly/p;->s:Landroid/app/Notification;

    .line 639
    .line 640
    iput-object v0, v13, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 641
    .line 642
    iput v2, v13, Landroid/app/Notification;->audioStreamType:I

    .line 643
    .line 644
    invoke-static {}, Ly/o;->b()Landroid/media/AudioAttributes$Builder;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-static {v0, v9}, Ly/o;->c(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    move/from16 v18, v9

    .line 653
    .line 654
    const/4 v9, 0x5

    .line 655
    invoke-static {v0, v9}, Ly/o;->d(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    invoke-static {v0}, Ly/o;->a(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    iput-object v0, v13, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 664
    .line 665
    goto :goto_29b

    .line 666
    :cond_299
    move/from16 v18, v9

    .line 667
    .line 668
    :goto_29b
    const-string v0, "gcm.n.click_action"

    .line 669
    .line 670
    invoke-virtual {v8, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 675
    .line 676
    .line 677
    move-result v9

    .line 678
    if-nez v9, :cond_2b5

    .line 679
    .line 680
    new-instance v9, Landroid/content/Intent;

    .line 681
    .line 682
    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v9, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    .line 687
    .line 688
    const/high16 v0, 0x10000000

    .line 689
    .line 690
    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 691
    .line 692
    .line 693
    goto :goto_2ee

    .line 694
    :cond_2b5
    const-string v0, "gcm.n.link_android"

    .line 695
    .line 696
    invoke-virtual {v8, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 701
    .line 702
    .line 703
    move-result v9

    .line 704
    if-eqz v9, :cond_2c7

    .line 705
    .line 706
    const-string v0, "gcm.n.link"

    .line 707
    .line 708
    invoke-virtual {v8, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    :cond_2c7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 713
    .line 714
    .line 715
    move-result v9

    .line 716
    if-nez v9, :cond_2d2

    .line 717
    .line 718
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    goto :goto_2d3

    .line 723
    :cond_2d2
    const/4 v0, 0x0

    .line 724
    :goto_2d3
    if-eqz v0, :cond_2e3

    .line 725
    .line 726
    new-instance v9, Landroid/content/Intent;

    .line 727
    .line 728
    const-string v13, "android.intent.action.VIEW"

    .line 729
    .line 730
    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v9, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v9, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 737
    .line 738
    .line 739
    goto :goto_2ee

    .line 740
    :cond_2e3
    invoke-virtual {v14, v12}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    .line 742
    .line 743
    move-result-object v9

    .line 744
    if-nez v9, :cond_2ee

    .line 745
    .line 746
    const-string v0, "No activity found to launch app"

    .line 747
    .line 748
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    .line 750
    .line 751
    :cond_2ee
    :goto_2ee
    const/high16 v0, 0x44000000    # 512.0f

    .line 752
    .line 753
    const-string v12, "google.c.a.e"

    .line 754
    .line 755
    if-nez v9, :cond_2f6

    .line 756
    .line 757
    const/4 v2, 0x0

    .line 758
    goto :goto_352

    .line 759
    :cond_2f6
    const/high16 v13, 0x4000000

    .line 760
    .line 761
    invoke-virtual {v9, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 762
    .line 763
    .line 764
    new-instance v13, Landroid/os/Bundle;

    .line 765
    .line 766
    iget-object v14, v8, Lk1/h;->b:Ljava/lang/Object;

    .line 767
    .line 768
    check-cast v14, Landroid/os/Bundle;

    .line 769
    .line 770
    invoke-direct {v13, v14}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v14}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 774
    .line 775
    .line 776
    move-result-object v14

    .line 777
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 778
    .line 779
    .line 780
    move-result-object v14

    .line 781
    :goto_30c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 782
    .line 783
    .line 784
    move-result v19

    .line 785
    if-eqz v19, :cond_338

    .line 786
    .line 787
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v19

    .line 791
    move-object/from16 v2, v19

    .line 792
    .line 793
    check-cast v2, Ljava/lang/String;

    .line 794
    .line 795
    const-string v5, "google.c."

    .line 796
    .line 797
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 798
    .line 799
    .line 800
    move-result v5

    .line 801
    if-nez v5, :cond_332

    .line 802
    .line 803
    const-string v5, "gcm.n."

    .line 804
    .line 805
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 806
    .line 807
    .line 808
    move-result v5

    .line 809
    if-nez v5, :cond_332

    .line 810
    .line 811
    const-string v5, "gcm.notification."

    .line 812
    .line 813
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 814
    .line 815
    .line 816
    move-result v5

    .line 817
    if-eqz v5, :cond_335

    .line 818
    .line 819
    :cond_332
    invoke-virtual {v13, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    :cond_335
    const/4 v2, -0x1

    .line 823
    const/4 v5, 0x2

    .line 824
    goto :goto_30c

    .line 825
    :cond_338
    invoke-virtual {v9, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 826
    .line 827
    .line 828
    invoke-virtual {v8, v12}, Lk1/h;->s(Ljava/lang/String;)Z

    .line 829
    .line 830
    .line 831
    move-result v2

    .line 832
    if-eqz v2, :cond_34a

    .line 833
    .line 834
    const-string v2, "gcm.n.analytics_data"

    .line 835
    .line 836
    invoke-virtual {v8}, Lk1/h;->E()Landroid/os/Bundle;

    .line 837
    .line 838
    .line 839
    move-result-object v5

    .line 840
    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 841
    .line 842
    .line 843
    :cond_34a
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 844
    .line 845
    .line 846
    move-result v2

    .line 847
    invoke-static {v7, v2, v9, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 848
    .line 849
    .line 850
    move-result-object v2

    .line 851
    :goto_352
    iput-object v2, v15, Ly/p;->g:Landroid/app/PendingIntent;

    .line 852
    .line 853
    invoke-virtual {v8, v12}, Lk1/h;->s(Ljava/lang/String;)Z

    .line 854
    .line 855
    .line 856
    move-result v2

    .line 857
    if-nez v2, :cond_35c

    .line 858
    .line 859
    const/4 v0, 0x0

    .line 860
    goto :goto_388

    .line 861
    :cond_35c
    new-instance v2, Landroid/content/Intent;

    .line 862
    .line 863
    const-string v5, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    .line 864
    .line 865
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v8}, Lk1/h;->E()Landroid/os/Bundle;

    .line 869
    .line 870
    .line 871
    move-result-object v5

    .line 872
    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 873
    .line 874
    .line 875
    move-result-object v2

    .line 876
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 877
    .line 878
    .line 879
    move-result v5

    .line 880
    new-instance v9, Landroid/content/Intent;

    .line 881
    .line 882
    const-string v11, "com.google.android.c2dm.intent.RECEIVE"

    .line 883
    .line 884
    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v11

    .line 891
    invoke-virtual {v9, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    .line 893
    .line 894
    move-result-object v9

    .line 895
    const-string v11, "wrapped_intent"

    .line 896
    .line 897
    invoke-virtual {v9, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 898
    .line 899
    .line 900
    move-result-object v2

    .line 901
    invoke-static {v7, v5, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    :goto_388
    if-eqz v0, :cond_38e

    .line 906
    .line 907
    iget-object v2, v15, Ly/p;->s:Landroid/app/Notification;

    .line 908
    .line 909
    iput-object v0, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 910
    .line 911
    :cond_38e
    const-string v0, "gcm.n.color"

    .line 912
    .line 913
    invoke-virtual {v8, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 918
    .line 919
    .line 920
    move-result v2

    .line 921
    if-nez v2, :cond_3b9

    .line 922
    .line 923
    :try_start_39a
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 924
    .line 925
    .line 926
    move-result v2

    .line 927
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 928
    .line 929
    .line 930
    move-result-object v0
    :try_end_3a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39a .. :try_end_3a2} :catch_3a3

    .line 931
    goto :goto_3d0

    .line 932
    :catch_3a3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 933
    .line 934
    const-string v5, "Color is invalid: "

    .line 935
    .line 936
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    const-string v0, ". Notification will use default color."

    .line 943
    .line 944
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    .line 946
    .line 947
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    .line 953
    .line 954
    :cond_3b9
    const-string v0, "com.google.firebase.messaging.default_notification_color"

    .line 955
    .line 956
    invoke-virtual {v10, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 957
    .line 958
    .line 959
    move-result v0

    .line 960
    if-eqz v0, :cond_3cf

    .line 961
    .line 962
    :try_start_3c1
    invoke-virtual {v7, v0}, Landroid/content/Context;->getColor(I)I

    .line 963
    .line 964
    .line 965
    move-result v0

    .line 966
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 967
    .line 968
    .line 969
    move-result-object v0
    :try_end_3c9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c1 .. :try_end_3c9} :catch_3ca

    .line 970
    goto :goto_3d0

    .line 971
    :catch_3ca
    const-string v0, "Cannot find the color resource referenced in AndroidManifest."

    .line 972
    .line 973
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    .line 975
    .line 976
    :cond_3cf
    const/4 v0, 0x0

    .line 977
    :goto_3d0
    if-eqz v0, :cond_3d8

    .line 978
    .line 979
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 980
    .line 981
    .line 982
    move-result v0

    .line 983
    iput v0, v15, Ly/p;->o:I

    .line 984
    .line 985
    :cond_3d8
    const-string v0, "gcm.n.sticky"

    .line 986
    .line 987
    invoke-virtual {v8, v0}, Lk1/h;->s(Ljava/lang/String;)Z

    .line 988
    .line 989
    .line 990
    move-result v0

    .line 991
    xor-int/lit8 v0, v0, 0x1

    .line 992
    .line 993
    invoke-virtual {v15, v0}, Ly/p;->c(Z)V

    .line 994
    .line 995
    .line 996
    const-string v0, "gcm.n.local_only"

    .line 997
    .line 998
    invoke-virtual {v8, v0}, Lk1/h;->s(Ljava/lang/String;)Z

    .line 999
    .line 1000
    .line 1001
    move-result v0

    .line 1002
    iput-boolean v0, v15, Ly/p;->m:Z

    .line 1003
    .line 1004
    const-string v0, "gcm.n.ticker"

    .line 1005
    .line 1006
    invoke-virtual {v8, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    if-eqz v0, :cond_3fb

    .line 1011
    .line 1012
    iget-object v2, v15, Ly/p;->s:Landroid/app/Notification;

    .line 1013
    .line 1014
    invoke-static {v0}, Ly/p;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    iput-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1019
    .line 1020
    :cond_3fb
    const-string v0, "gcm.n.notification_priority"

    .line 1021
    .line 1022
    invoke-virtual {v8, v0}, Lk1/h;->t(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v0

    .line 1026
    const/4 v2, -0x2

    .line 1027
    if-nez v0, :cond_406

    .line 1028
    .line 1029
    :goto_404
    const/4 v0, 0x0

    .line 1030
    goto :goto_42a

    .line 1031
    :cond_406
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1032
    .line 1033
    .line 1034
    move-result v5

    .line 1035
    if-lt v5, v2, :cond_413

    .line 1036
    .line 1037
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1038
    .line 1039
    .line 1040
    move-result v5

    .line 1041
    const/4 v7, 0x2

    .line 1042
    if-le v5, v7, :cond_42a

    .line 1043
    .line 1044
    :cond_413
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    const-string v7, "notificationPriority is invalid "

    .line 1047
    .line 1048
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    const-string v0, ". Skipping setting notificationPriority."

    .line 1055
    .line 1056
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    .line 1065
    .line 1066
    goto :goto_404

    .line 1067
    :cond_42a
    :goto_42a
    if-eqz v0, :cond_432

    .line 1068
    .line 1069
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1070
    .line 1071
    .line 1072
    move-result v0

    .line 1073
    iput v0, v15, Ly/p;->j:I

    .line 1074
    .line 1075
    :cond_432
    const-string v0, "gcm.n.visibility"

    .line 1076
    .line 1077
    invoke-virtual {v8, v0}, Lk1/h;->t(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    if-nez v0, :cond_43c

    .line 1082
    .line 1083
    :goto_43a
    const/4 v0, 0x0

    .line 1084
    goto :goto_464

    .line 1085
    :cond_43c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1086
    .line 1087
    .line 1088
    move-result v5

    .line 1089
    const/4 v7, -0x1

    .line 1090
    if-lt v5, v7, :cond_44b

    .line 1091
    .line 1092
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1093
    .line 1094
    .line 1095
    move-result v5

    .line 1096
    move/from16 v7, v17

    .line 1097
    .line 1098
    if-le v5, v7, :cond_464

    .line 1099
    .line 1100
    :cond_44b
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    const-string v7, "visibility is invalid: "

    .line 1103
    .line 1104
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    const-string v0, ". Skipping setting visibility."

    .line 1111
    .line 1112
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    const-string v5, "NotificationParams"

    .line 1120
    .line 1121
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    .line 1123
    .line 1124
    goto :goto_43a

    .line 1125
    :cond_464
    :goto_464
    if-eqz v0, :cond_46c

    .line 1126
    .line 1127
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1128
    .line 1129
    .line 1130
    move-result v0

    .line 1131
    iput v0, v15, Ly/p;->p:I

    .line 1132
    .line 1133
    :cond_46c
    const-string v0, "gcm.n.notification_count"

    .line 1134
    .line 1135
    invoke-virtual {v8, v0}, Lk1/h;->t(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v0

    .line 1139
    if-nez v0, :cond_476

    .line 1140
    .line 1141
    :goto_474
    const/4 v0, 0x0

    .line 1142
    goto :goto_493

    .line 1143
    :cond_476
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1144
    .line 1145
    .line 1146
    move-result v5

    .line 1147
    if-gez v5, :cond_493

    .line 1148
    .line 1149
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1150
    .line 1151
    const-string v7, "notificationCount is invalid: "

    .line 1152
    .line 1153
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1157
    .line 1158
    .line 1159
    const-string v0, ". Skipping setting notificationCount."

    .line 1160
    .line 1161
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v0

    .line 1168
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    .line 1170
    .line 1171
    goto :goto_474

    .line 1172
    :cond_493
    :goto_493
    if-eqz v0, :cond_49b

    .line 1173
    .line 1174
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1175
    .line 1176
    .line 1177
    move-result v0

    .line 1178
    iput v0, v15, Ly/p;->i:I

    .line 1179
    .line 1180
    :cond_49b
    invoke-virtual {v8}, Lk1/h;->y()Ljava/lang/Long;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v0

    .line 1184
    if-eqz v0, :cond_4ac

    .line 1185
    .line 1186
    const/4 v7, 0x1

    .line 1187
    iput-boolean v7, v15, Ly/p;->k:Z

    .line 1188
    .line 1189
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 1190
    .line 1191
    .line 1192
    move-result-wide v9

    .line 1193
    iget-object v0, v15, Ly/p;->s:Landroid/app/Notification;

    .line 1194
    .line 1195
    iput-wide v9, v0, Landroid/app/Notification;->when:J

    .line 1196
    .line 1197
    :cond_4ac
    invoke-virtual {v8}, Lk1/h;->B()[J

    .line 1198
    .line 1199
    .line 1200
    move-result-object v0

    .line 1201
    if-eqz v0, :cond_4b6

    .line 1202
    .line 1203
    iget-object v5, v15, Ly/p;->s:Landroid/app/Notification;

    .line 1204
    .line 1205
    iput-object v0, v5, Landroid/app/Notification;->vibrate:[J

    .line 1206
    .line 1207
    :cond_4b6
    invoke-virtual {v8}, Lk1/h;->v()[I

    .line 1208
    .line 1209
    .line 1210
    move-result-object v0

    .line 1211
    if-eqz v0, :cond_4db

    .line 1212
    .line 1213
    aget v5, v0, v4

    .line 1214
    .line 1215
    const/16 v17, 0x1

    .line 1216
    .line 1217
    aget v7, v0, v17

    .line 1218
    .line 1219
    const/16 v19, 0x2

    .line 1220
    .line 1221
    aget v0, v0, v19

    .line 1222
    .line 1223
    iget-object v9, v15, Ly/p;->s:Landroid/app/Notification;

    .line 1224
    .line 1225
    iput v5, v9, Landroid/app/Notification;->ledARGB:I

    .line 1226
    .line 1227
    iput v7, v9, Landroid/app/Notification;->ledOnMS:I

    .line 1228
    .line 1229
    iput v0, v9, Landroid/app/Notification;->ledOffMS:I

    .line 1230
    .line 1231
    if-eqz v7, :cond_4d4

    .line 1232
    .line 1233
    if-eqz v0, :cond_4d4

    .line 1234
    .line 1235
    const/4 v0, 0x1

    .line 1236
    goto :goto_4d5

    .line 1237
    :cond_4d4
    move v0, v4

    .line 1238
    :goto_4d5
    iget v5, v9, Landroid/app/Notification;->flags:I

    .line 1239
    .line 1240
    and-int/2addr v2, v5

    .line 1241
    or-int/2addr v0, v2

    .line 1242
    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 1243
    .line 1244
    :cond_4db
    const-string v0, "gcm.n.default_sound"

    .line 1245
    .line 1246
    invoke-virtual {v8, v0}, Lk1/h;->s(Ljava/lang/String;)Z

    .line 1247
    .line 1248
    .line 1249
    move-result v0

    .line 1250
    const-string v2, "gcm.n.default_vibrate_timings"

    .line 1251
    .line 1252
    invoke-virtual {v8, v2}, Lk1/h;->s(Ljava/lang/String;)Z

    .line 1253
    .line 1254
    .line 1255
    move-result v2

    .line 1256
    if-eqz v2, :cond_4eb

    .line 1257
    .line 1258
    or-int/lit8 v0, v0, 0x2

    .line 1259
    .line 1260
    :cond_4eb
    const-string v2, "gcm.n.default_light_settings"

    .line 1261
    .line 1262
    invoke-virtual {v8, v2}, Lk1/h;->s(Ljava/lang/String;)Z

    .line 1263
    .line 1264
    .line 1265
    move-result v2

    .line 1266
    if-eqz v2, :cond_4f5

    .line 1267
    .line 1268
    or-int/lit8 v0, v0, 0x4

    .line 1269
    .line 1270
    :cond_4f5
    iget-object v2, v15, Ly/p;->s:Landroid/app/Notification;

    .line 1271
    .line 1272
    iput v0, v2, Landroid/app/Notification;->defaults:I

    .line 1273
    .line 1274
    and-int/lit8 v0, v0, 0x4

    .line 1275
    .line 1276
    if-eqz v0, :cond_505

    .line 1277
    .line 1278
    iget v0, v2, Landroid/app/Notification;->flags:I

    .line 1279
    .line 1280
    const/16 v17, 0x1

    .line 1281
    .line 1282
    or-int/lit8 v0, v0, 0x1

    .line 1283
    .line 1284
    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 1285
    .line 1286
    :cond_505
    const-string v0, "gcm.n.tag"

    .line 1287
    .line 1288
    invoke-virtual {v8, v0}, Lk1/h;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v0

    .line 1292
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1293
    .line 1294
    .line 1295
    move-result v2

    .line 1296
    if-nez v2, :cond_513

    .line 1297
    .line 1298
    :goto_511
    move-object v2, v0

    .line 1299
    goto :goto_526

    .line 1300
    :cond_513
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1301
    .line 1302
    const-string v2, "FCM-Notification:"

    .line 1303
    .line 1304
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1305
    .line 1306
    .line 1307
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1308
    .line 1309
    .line 1310
    move-result-wide v7

    .line 1311
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v0

    .line 1318
    goto :goto_511

    .line 1319
    :goto_526
    if-nez v3, :cond_529

    .line 1320
    .line 1321
    goto :goto_588

    .line 1322
    :cond_529
    :try_start_529
    iget-object v0, v3, Lcom/google/firebase/messaging/r;->c:Lp4/q;

    .line 1323
    .line 1324
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 1325
    .line 1326
    .line 1327
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1328
    .line 1329
    const-wide/16 v7, 0x5

    .line 1330
    .line 1331
    invoke-static {v0, v7, v8, v5}, Lj7/g;->b(Lp4/i;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v0

    .line 1335
    check-cast v0, Landroid/graphics/Bitmap;

    .line 1336
    .line 1337
    invoke-virtual {v15, v0}, Ly/p;->d(Landroid/graphics/Bitmap;)V

    .line 1338
    .line 1339
    .line 1340
    new-instance v5, Ly/m;

    .line 1341
    .line 1342
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1343
    .line 1344
    .line 1345
    if-nez v0, :cond_545

    .line 1346
    .line 1347
    const/4 v7, 0x0

    .line 1348
    const/4 v8, 0x1

    .line 1349
    goto :goto_54d

    .line 1350
    :cond_545
    new-instance v7, Landroidx/core/graphics/drawable/IconCompat;

    .line 1351
    .line 1352
    const/4 v8, 0x1

    .line 1353
    invoke-direct {v7, v8}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 1354
    .line 1355
    .line 1356
    iput-object v0, v7, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 1357
    .line 1358
    :goto_54d
    iput-object v7, v5, Ly/m;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 1359
    .line 1360
    const/4 v7, 0x0

    .line 1361
    iput-object v7, v5, Ly/m;->c:Landroidx/core/graphics/drawable/IconCompat;

    .line 1362
    .line 1363
    iput-boolean v8, v5, Ly/m;->d:Z

    .line 1364
    .line 1365
    invoke-virtual {v15, v5}, Ly/p;->e(Landroidx/fragment/app/m;)V
    :try_end_557
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_529 .. :try_end_557} :catch_558
    .catch Ljava/lang/InterruptedException; {:try_start_529 .. :try_end_557} :catch_563
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_529 .. :try_end_557} :catch_55a

    .line 1366
    .line 1367
    .line 1368
    goto :goto_588

    .line 1369
    :catch_558
    move-exception v0

    .line 1370
    goto :goto_573

    .line 1371
    :catch_55a
    const-string v0, "Failed to download image in time, showing notification without it"

    .line 1372
    .line 1373
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {v3}, Lcom/google/firebase/messaging/r;->close()V

    .line 1377
    .line 1378
    .line 1379
    goto :goto_588

    .line 1380
    :catch_563
    const-string v0, "Interrupted while downloading image, showing notification without it"

    .line 1381
    .line 1382
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v3}, Lcom/google/firebase/messaging/r;->close()V

    .line 1386
    .line 1387
    .line 1388
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v0

    .line 1392
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1393
    .line 1394
    .line 1395
    goto :goto_588

    .line 1396
    :goto_573
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1397
    .line 1398
    const-string v5, "Failed to download image: "

    .line 1399
    .line 1400
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1401
    .line 1402
    .line 1403
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v0

    .line 1407
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1408
    .line 1409
    .line 1410
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v0

    .line 1414
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    .line 1416
    .line 1417
    :goto_588
    const/4 v0, 0x3

    .line 1418
    invoke-static {v6, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1419
    .line 1420
    .line 1421
    move-result v0

    .line 1422
    if-eqz v0, :cond_594

    .line 1423
    .line 1424
    const-string v0, "Showing notification"

    .line 1425
    .line 1426
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    .line 1428
    .line 1429
    :cond_594
    iget-object v0, v1, Lc5/h;->c:Ljava/lang/Object;

    .line 1430
    .line 1431
    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessagingService;

    .line 1432
    .line 1433
    const-string v3, "notification"

    .line 1434
    .line 1435
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v0

    .line 1439
    check-cast v0, Landroid/app/NotificationManager;

    .line 1440
    .line 1441
    invoke-virtual {v15}, Ly/p;->a()Landroid/app/Notification;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v3

    .line 1445
    invoke-virtual {v0, v2, v4, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1446
    .line 1447
    .line 1448
    const/16 v17, 0x1

    .line 1449
    .line 1450
    return v17
.end method

.method public onComplete(Lp4/i;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lu3/b;

    .line 4
    .line 5
    iget-object v0, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    .line 12
    .line 13
    iget-object v2, p1, Lu3/b;->a:Ls/j;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_f
    iget-object p1, p1, Lu3/b;->a:Ls/j;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ls/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1a

    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-interface {v1, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_1a
    move-exception p1

    .line 28
    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    .line 29
    throw p1
.end method

.method public p(Ljava/lang/CharSequence;IILp0/v;)Z
    .registers 12

    .line 1
    iget v0, p4, Lp0/v;->c:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x3

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v0, :cond_66

    .line 9
    .line 10
    iget-object v0, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lp0/g;

    .line 13
    .line 14
    invoke-virtual {p4}, Lp0/v;->b()Lq0/a;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const/16 v5, 0x8

    .line 19
    .line 20
    invoke-virtual {v4, v5}, Lj0/a0;->a(I)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_23

    .line 25
    .line 26
    iget-object v6, v4, Lj0/a0;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v6, Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    iget v4, v4, Lj0/a0;->a:I

    .line 31
    .line 32
    add-int/2addr v5, v4

    .line 33
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 34
    .line 35
    .line 36
    :cond_23
    check-cast v0, Lp0/d;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    sget-object v4, Lp0/d;->b:Ljava/lang/ThreadLocal;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-nez v5, :cond_38

    .line 48
    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_38
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 64
    .line 65
    .line 66
    :goto_41
    if-ge p2, p3, :cond_4d

    .line 67
    .line 68
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    add-int/lit8 p2, p2, 0x1

    .line 76
    .line 77
    goto :goto_41

    .line 78
    :cond_4d
    iget-object p1, v0, Lp0/d;->a:Landroid/text/TextPaint;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    sget p3, Lc0/d;->a:I

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iget p2, p4, Lp0/v;->c:I

    .line 91
    .line 92
    and-int/lit8 p2, p2, 0x4

    .line 93
    .line 94
    if-eqz p1, :cond_62

    .line 95
    .line 96
    or-int/lit8 p1, p2, 0x2

    .line 97
    .line 98
    goto :goto_64

    .line 99
    :cond_62
    or-int/lit8 p1, p2, 0x1

    .line 100
    .line 101
    :goto_64
    iput p1, p4, Lp0/v;->c:I

    .line 102
    .line 103
    :cond_66
    iget p1, p4, Lp0/v;->c:I

    .line 104
    .line 105
    and-int/lit8 p1, p1, 0x3

    .line 106
    .line 107
    if-ne p1, v1, :cond_6d

    .line 108
    .line 109
    return v3

    .line 110
    :cond_6d
    return v2
.end method

.method public r(Ljava/lang/CharSequence;IIIZLp0/o;)Ljava/lang/Object;
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    new-instance v5, Lp0/p;

    .line 12
    .line 13
    iget-object v6, v0, Lc5/h;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v6, Lcom/google/firebase/messaging/y;

    .line 16
    .line 17
    iget-object v6, v6, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v6, Lp0/s;

    .line 20
    .line 21
    invoke-direct {v5, v6}, Lp0/p;-><init>(Lp0/s;)V

    .line 22
    .line 23
    .line 24
    invoke-static/range {p1 .. p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x1

    .line 30
    move v9, v6

    .line 31
    move v10, v7

    .line 32
    move v11, v8

    .line 33
    move/from16 v6, p2

    .line 34
    .line 35
    :cond_22
    :goto_22
    move v7, v6

    .line 36
    :goto_23
    const/4 v12, 0x2

    .line 37
    if-ge v6, v2, :cond_ce

    .line 38
    .line 39
    if-ge v10, v3, :cond_ce

    .line 40
    .line 41
    if-eqz v11, :cond_ce

    .line 42
    .line 43
    iget-object v13, v5, Lp0/p;->c:Lp0/s;

    .line 44
    .line 45
    iget-object v13, v13, Lp0/s;->a:Landroid/util/SparseArray;

    .line 46
    .line 47
    if-nez v13, :cond_32

    .line 48
    .line 49
    const/4 v13, 0x0

    .line 50
    goto :goto_38

    .line 51
    :cond_32
    invoke-virtual {v13, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    check-cast v13, Lp0/s;

    .line 56
    .line 57
    :goto_38
    iget v14, v5, Lp0/p;->a:I

    .line 58
    .line 59
    const/4 v15, 0x3

    .line 60
    if-eq v14, v12, :cond_4c

    .line 61
    .line 62
    if-nez v13, :cond_44

    .line 63
    .line 64
    invoke-virtual {v5}, Lp0/p;->a()V

    .line 65
    .line 66
    .line 67
    :goto_42
    move v13, v8

    .line 68
    goto :goto_8c

    .line 69
    :cond_44
    iput v12, v5, Lp0/p;->a:I

    .line 70
    .line 71
    iput-object v13, v5, Lp0/p;->c:Lp0/s;

    .line 72
    .line 73
    iput v8, v5, Lp0/p;->f:I

    .line 74
    .line 75
    :goto_4a
    move v13, v12

    .line 76
    goto :goto_8c

    .line 77
    :cond_4c
    if-eqz v13, :cond_56

    .line 78
    .line 79
    iput-object v13, v5, Lp0/p;->c:Lp0/s;

    .line 80
    .line 81
    iget v13, v5, Lp0/p;->f:I

    .line 82
    .line 83
    add-int/2addr v13, v8

    .line 84
    iput v13, v5, Lp0/p;->f:I

    .line 85
    .line 86
    goto :goto_4a

    .line 87
    :cond_56
    const v13, 0xfe0e

    .line 88
    .line 89
    .line 90
    if-ne v9, v13, :cond_5f

    .line 91
    .line 92
    invoke-virtual {v5}, Lp0/p;->a()V

    .line 93
    .line 94
    .line 95
    goto :goto_42

    .line 96
    :cond_5f
    const v13, 0xfe0f

    .line 97
    .line 98
    .line 99
    if-ne v9, v13, :cond_65

    .line 100
    .line 101
    goto :goto_4a

    .line 102
    :cond_65
    iget-object v13, v5, Lp0/p;->c:Lp0/s;

    .line 103
    .line 104
    iget-object v14, v13, Lp0/s;->b:Lp0/v;

    .line 105
    .line 106
    if-eqz v14, :cond_88

    .line 107
    .line 108
    iget v14, v5, Lp0/p;->f:I

    .line 109
    .line 110
    if-ne v14, v8, :cond_82

    .line 111
    .line 112
    invoke-virtual {v5}, Lp0/p;->b()Z

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    if-eqz v13, :cond_7e

    .line 117
    .line 118
    iget-object v13, v5, Lp0/p;->c:Lp0/s;

    .line 119
    .line 120
    iput-object v13, v5, Lp0/p;->d:Lp0/s;

    .line 121
    .line 122
    invoke-virtual {v5}, Lp0/p;->a()V

    .line 123
    .line 124
    .line 125
    :goto_7c
    move v13, v15

    .line 126
    goto :goto_8c

    .line 127
    :cond_7e
    invoke-virtual {v5}, Lp0/p;->a()V

    .line 128
    .line 129
    .line 130
    goto :goto_42

    .line 131
    :cond_82
    iput-object v13, v5, Lp0/p;->d:Lp0/s;

    .line 132
    .line 133
    invoke-virtual {v5}, Lp0/p;->a()V

    .line 134
    .line 135
    .line 136
    goto :goto_7c

    .line 137
    :cond_88
    invoke-virtual {v5}, Lp0/p;->a()V

    .line 138
    .line 139
    .line 140
    goto :goto_42

    .line 141
    :goto_8c
    iput v9, v5, Lp0/p;->e:I

    .line 142
    .line 143
    if-eq v13, v8, :cond_bc

    .line 144
    .line 145
    if-eq v13, v12, :cond_ad

    .line 146
    .line 147
    if-eq v13, v15, :cond_95

    .line 148
    .line 149
    goto :goto_23

    .line 150
    :cond_95
    if-nez p5, :cond_a1

    .line 151
    .line 152
    iget-object v12, v5, Lp0/p;->d:Lp0/s;

    .line 153
    .line 154
    iget-object v12, v12, Lp0/s;->b:Lp0/v;

    .line 155
    .line 156
    invoke-virtual {v0, v1, v7, v6, v12}, Lc5/h;->p(Ljava/lang/CharSequence;IILp0/v;)Z

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    if-nez v12, :cond_22

    .line 161
    .line 162
    :cond_a1
    iget-object v11, v5, Lp0/p;->d:Lp0/s;

    .line 163
    .line 164
    iget-object v11, v11, Lp0/s;->b:Lp0/v;

    .line 165
    .line 166
    invoke-interface {v4, v1, v7, v6, v11}, Lp0/o;->c(Ljava/lang/CharSequence;IILp0/v;)Z

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    add-int/lit8 v10, v10, 0x1

    .line 171
    .line 172
    goto/16 :goto_22

    .line 173
    .line 174
    :cond_ad
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    add-int/2addr v12, v6

    .line 179
    if-ge v12, v2, :cond_b9

    .line 180
    .line 181
    invoke-static {v1, v12}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    move v9, v6

    .line 186
    :cond_b9
    move v6, v12

    .line 187
    goto/16 :goto_23

    .line 188
    .line 189
    :cond_bc
    invoke-static {v1, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    add-int/2addr v6, v7

    .line 198
    if-ge v6, v2, :cond_22

    .line 199
    .line 200
    invoke-static {v1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    move v9, v7

    .line 205
    goto/16 :goto_22

    .line 206
    .line 207
    :cond_ce
    iget v2, v5, Lp0/p;->a:I

    .line 208
    .line 209
    if-ne v2, v12, :cond_f9

    .line 210
    .line 211
    iget-object v2, v5, Lp0/p;->c:Lp0/s;

    .line 212
    .line 213
    iget-object v2, v2, Lp0/s;->b:Lp0/v;

    .line 214
    .line 215
    if-eqz v2, :cond_f9

    .line 216
    .line 217
    iget v2, v5, Lp0/p;->f:I

    .line 218
    .line 219
    if-gt v2, v8, :cond_e2

    .line 220
    .line 221
    invoke-virtual {v5}, Lp0/p;->b()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_f9

    .line 226
    .line 227
    :cond_e2
    if-ge v10, v3, :cond_f9

    .line 228
    .line 229
    if-eqz v11, :cond_f9

    .line 230
    .line 231
    if-nez p5, :cond_f2

    .line 232
    .line 233
    iget-object v2, v5, Lp0/p;->c:Lp0/s;

    .line 234
    .line 235
    iget-object v2, v2, Lp0/s;->b:Lp0/v;

    .line 236
    .line 237
    invoke-virtual {v0, v1, v7, v6, v2}, Lc5/h;->p(Ljava/lang/CharSequence;IILp0/v;)Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-nez v2, :cond_f9

    .line 242
    .line 243
    :cond_f2
    iget-object v2, v5, Lp0/p;->c:Lp0/s;

    .line 244
    .line 245
    iget-object v2, v2, Lp0/s;->b:Lp0/v;

    .line 246
    .line 247
    invoke-interface {v4, v1, v7, v6, v2}, Lp0/o;->c(Ljava/lang/CharSequence;IILp0/v;)Z

    .line 248
    .line 249
    .line 250
    :cond_f9
    invoke-interface {v4}, Lp0/o;->a()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    return-object v1
.end method

.method public s()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public t(Lf3/i;IZ)V
    .registers 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lc5/h;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Ll3/a;

    .line 10
    .line 11
    new-instance v4, Landroid/content/ComponentName;

    .line 12
    .line 13
    iget-object v5, v1, Lc5/h;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v5, Landroid/content/Context;

    .line 16
    .line 17
    const-class v6, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 18
    .line 19
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    const-string v6, "jobscheduler"

    .line 23
    .line 24
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Landroid/app/job/JobScheduler;

    .line 29
    .line 30
    new-instance v7, Ljava/util/zip/Adler32;

    .line 31
    .line 32
    invoke-direct {v7}, Ljava/util/zip/Adler32;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const-string v8, "UTF-8"

    .line 40
    .line 41
    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v7, v5}, Ljava/util/zip/Adler32;->update([B)V

    .line 50
    .line 51
    .line 52
    iget-object v5, v0, Lf3/i;->a:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v9, v0, Lf3/i;->a:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v7, v5}, Ljava/util/zip/Adler32;->update([B)V

    .line 65
    .line 66
    .line 67
    const/4 v5, 0x4

    .line 68
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    iget-object v10, v0, Lf3/i;->c:Lc3/d;

    .line 73
    .line 74
    invoke-static {v10}, Lp3/a;->a(Lc3/d;)I

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual {v7, v8}, Ljava/util/zip/Adler32;->update([B)V

    .line 87
    .line 88
    .line 89
    iget-object v8, v0, Lf3/i;->b:[B

    .line 90
    .line 91
    if-eqz v8, :cond_5f

    .line 92
    .line 93
    invoke-virtual {v7, v8}, Ljava/util/zip/Adler32;->update([B)V

    .line 94
    .line 95
    .line 96
    :cond_5f
    invoke-virtual {v7}, Ljava/util/zip/Adler32;->getValue()J

    .line 97
    .line 98
    .line 99
    move-result-wide v11

    .line 100
    long-to-int v7, v11

    .line 101
    const-string v11, "JobInfoScheduler"

    .line 102
    .line 103
    const-string v12, "attemptNumber"

    .line 104
    .line 105
    if-nez p3, :cond_94

    .line 106
    .line 107
    invoke-virtual {v6}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    :cond_72
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v14

    .line 119
    if-eqz v14, :cond_94

    .line 120
    .line 121
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v14

    .line 125
    check-cast v14, Landroid/app/job/JobInfo;

    .line 126
    .line 127
    invoke-virtual {v14}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 128
    .line 129
    .line 130
    move-result-object v15

    .line 131
    invoke-virtual {v15, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    invoke-virtual {v14}, Landroid/app/job/JobInfo;->getId()I

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    if-ne v14, v7, :cond_72

    .line 140
    .line 141
    if-lt v15, v2, :cond_94

    .line 142
    .line 143
    const-string v2, "Upload for context %s is already scheduled. Returning..."

    .line 144
    .line 145
    invoke-static {v11, v2, v0}, Ly1/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_94
    iget-object v13, v1, Lc5/h;->c:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v13, Lm3/d;

    .line 152
    .line 153
    check-cast v13, Lm3/h;

    .line 154
    .line 155
    invoke-virtual {v13}, Lm3/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    invoke-static {v10}, Lp3/a;->a(Lc3/d;)I

    .line 160
    .line 161
    .line 162
    move-result v14

    .line 163
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    filled-new-array {v9, v14}, [Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    const-string v15, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    .line 172
    .line 173
    invoke-virtual {v13, v15, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 174
    .line 175
    .line 176
    move-result-object v13

    .line 177
    :try_start_b0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 178
    .line 179
    .line 180
    move-result v14

    .line 181
    const/4 v15, 0x0

    .line 182
    if-eqz v14, :cond_c0

    .line 183
    .line 184
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 185
    .line 186
    .line 187
    move-result-wide v16

    .line 188
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    goto :goto_c6

    .line 193
    :cond_c0
    const-wide/16 v16, 0x0

    .line 194
    .line 195
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 196
    .line 197
    .line 198
    move-result-object v14
    :try_end_c6
    .catchall {:try_start_b0 .. :try_end_c6} :catchall_170

    .line 199
    :goto_c6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 200
    .line 201
    .line 202
    move/from16 v17, v5

    .line 203
    .line 204
    move-object/from16 v16, v6

    .line 205
    .line 206
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 207
    .line 208
    .line 209
    move-result-wide v5

    .line 210
    new-instance v13, Landroid/app/job/JobInfo$Builder;

    .line 211
    .line 212
    invoke-direct {v13, v7, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v10, v5, v6, v2}, Ll3/a;->a(Lc3/d;JI)J

    .line 216
    .line 217
    .line 218
    move-result-wide v0

    .line 219
    invoke-virtual {v13, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 220
    .line 221
    .line 222
    iget-object v0, v3, Ll3/a;->b:Ljava/util/HashMap;

    .line 223
    .line 224
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Ll3/b;

    .line 229
    .line 230
    iget-object v0, v0, Ll3/b;->c:Ljava/util/Set;

    .line 231
    .line 232
    sget-object v1, Ll3/c;->a:Ll3/c;

    .line 233
    .line 234
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    const/4 v4, 0x2

    .line 239
    const/4 v15, 0x1

    .line 240
    if-eqz v1, :cond_f5

    .line 241
    .line 242
    invoke-virtual {v13, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 243
    .line 244
    .line 245
    goto :goto_f8

    .line 246
    :cond_f5
    invoke-virtual {v13, v15}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 247
    .line 248
    .line 249
    :goto_f8
    sget-object v1, Ll3/c;->c:Ll3/c;

    .line 250
    .line 251
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_103

    .line 256
    .line 257
    invoke-virtual {v13, v15}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 258
    .line 259
    .line 260
    :cond_103
    sget-object v1, Ll3/c;->b:Ll3/c;

    .line 261
    .line 262
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_10e

    .line 267
    .line 268
    invoke-virtual {v13, v15}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 269
    .line 270
    .line 271
    :cond_10e
    new-instance v0, Landroid/os/PersistableBundle;

    .line 272
    .line 273
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v12, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    const-string v1, "backendName"

    .line 280
    .line 281
    invoke-virtual {v0, v1, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const-string v1, "priority"

    .line 285
    .line 286
    invoke-static {v10}, Lp3/a;->a(Lc3/d;)I

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    invoke-virtual {v0, v1, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 291
    .line 292
    .line 293
    if-eqz v8, :cond_131

    .line 294
    .line 295
    const-string v1, "extras"

    .line 296
    .line 297
    const/4 v9, 0x0

    .line 298
    invoke-static {v8, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    invoke-virtual {v0, v1, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    goto :goto_132

    .line 306
    :cond_131
    const/4 v9, 0x0

    .line 307
    :goto_132
    invoke-virtual {v13, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 308
    .line 309
    .line 310
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v3, v10, v5, v6, v2}, Ll3/a;->a(Lc3/d;JI)J

    .line 315
    .line 316
    .line 317
    move-result-wide v5

    .line 318
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    const/4 v3, 0x5

    .line 327
    new-array v3, v3, [Ljava/lang/Object;

    .line 328
    .line 329
    aput-object p1, v3, v9

    .line 330
    .line 331
    aput-object v0, v3, v15

    .line 332
    .line 333
    aput-object v1, v3, v4

    .line 334
    .line 335
    const/4 v0, 0x3

    .line 336
    aput-object v14, v3, v0

    .line 337
    .line 338
    aput-object v2, v3, v17

    .line 339
    .line 340
    invoke-static {v11}, Ly1/j;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-eqz v0, :cond_166

    .line 349
    .line 350
    const-string v0, "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d"

    .line 351
    .line 352
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    :cond_166
    invoke-virtual {v13}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    move-object/from16 v6, v16

    .line 364
    .line 365
    invoke-virtual {v6, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 366
    .line 367
    .line 368
    return-void

    .line 369
    :catchall_170
    move-exception v0

    .line 370
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 371
    .line 372
    .line 373
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1
    iget v0, p0, Lc5/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_62

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v1, 0x20

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x7b

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    .line 37
    .line 38
    const-string v2, ""

    .line 39
    .line 40
    :goto_27
    if-eqz v1, :cond_57

    .line 41
    .line 42
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    if-eqz v3, :cond_4d

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_4d

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    new-array v4, v2, [Ljava/lang/Object;

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    aput-object v3, v4, v5

    .line 64
    .line 65
    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    sub-int/2addr v4, v2

    .line 74
    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    goto :goto_50

    .line 78
    :cond_4d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :goto_50
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    .line 84
    .line 85
    const-string v2, ", "

    .line 86
    .line 87
    goto :goto_27

    .line 88
    :cond_57
    const/16 v1, 0x7d

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0

    .line 98
    nop

    .line 99
    :pswitch_data_62
    .packed-switch 0x10
        :pswitch_a
    .end packed-switch
.end method

.method public u(Lc3/a;)V
    .registers 10

    .line 1
    new-instance v0, Lcom/getcapacitor/n;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Lcom/getcapacitor/n;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lf3/q;

    .line 10
    .line 11
    iget-object v2, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lf3/i;

    .line 14
    .line 15
    iget-object v3, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Lc3/c;

    .line 18
    .line 19
    iget-object v4, v1, Lf3/q;->c:Lk3/b;

    .line 20
    .line 21
    invoke-static {}, Lf3/i;->a()Lc5/h;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-object v6, v2, Lf3/i;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v5, v6}, Lc5/h;->v(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v6, Lc3/d;->a:Lc3/d;

    .line 31
    .line 32
    iput-object v6, v5, Lc5/h;->d:Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v2, v2, Lf3/i;->b:[B

    .line 35
    .line 36
    iput-object v2, v5, Lc5/h;->c:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v5}, Lc5/h;->g()Lf3/i;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v5, Lcom/google/android/gms/common/internal/g;

    .line 43
    .line 44
    const/4 v6, 0x2

    .line 45
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/internal/g;-><init>(I)V

    .line 46
    .line 47
    .line 48
    new-instance v6, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v6, v5, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    .line 54
    .line 55
    iget-object v6, v1, Lf3/q;->a:Lo3/a;

    .line 56
    .line 57
    invoke-virtual {v6}, Lo3/a;->f()J

    .line 58
    .line 59
    .line 60
    move-result-wide v6

    .line 61
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    iput-object v6, v5, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 66
    .line 67
    iget-object v1, v1, Lf3/q;->b:Lo3/a;

    .line 68
    .line 69
    invoke-virtual {v1}, Lo3/a;->f()J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iput-object v1, v5, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    .line 78
    .line 79
    const-string v1, "FCM_CLIENT_EVENT_LOGGING"

    .line 80
    .line 81
    iput-object v1, v5, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 82
    .line 83
    new-instance v1, Lf3/l;

    .line 84
    .line 85
    iget-object p1, p1, Lc3/a;->a:Ln5/e;

    .line 86
    .line 87
    sget-object v6, Lcom/google/firebase/messaging/t;->a:Lc5/h;

    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 93
    .line 94
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    .line 96
    .line 97
    :try_start_60
    invoke-virtual {v6, p1, v7}, Lc5/h;->i(Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_63

    .line 98
    .line 99
    .line 100
    :catch_63
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {v1, v3, p1}, Lf3/l;-><init>(Lc3/c;[B)V

    .line 105
    .line 106
    .line 107
    iput-object v1, v5, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    iput-object p1, v5, Lcom/google/android/gms/common/internal/g;->g:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/g;->c()Lf3/h;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast v4, Lk3/a;

    .line 117
    .line 118
    iget-object v1, v4, Lk3/a;->b:Ljava/util/concurrent/Executor;

    .line 119
    .line 120
    new-instance v3, Landroidx/fragment/app/e;

    .line 121
    .line 122
    invoke-direct {v3, v4, v2, v0, p1}, Landroidx/fragment/app/e;-><init>(Lk3/a;Lf3/i;Lcom/getcapacitor/n;Lf3/h;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    iput-object p1, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null backendName"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method
