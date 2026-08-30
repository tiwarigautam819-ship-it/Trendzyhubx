###### Class com.engagelab.privates.common.i0 (com.engagelab.privates.common.i0)
.class public abstract Lcom/engagelab/privates/common/i0;
.super Lcom/engagelab/privates/common/f0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/engagelab/privates/common/d0;Lcom/engagelab/privates/push/api/InAppMessage;I)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/engagelab/privates/common/f0;-><init>(Landroid/content/Context;Lcom/engagelab/privates/common/d0;Lcom/engagelab/privates/push/api/InAppMessage;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "\" not found, check layout.xml or not confused keep it"

    const-string v2, "view id=\""

    if-lez v0, :cond_2b

    .line 2
    iget-object v3, p0, Lcom/engagelab/privates/common/i0;->i:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    return-object v0

    .line 3
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-static {v2, p1, v1}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    invoke-static {v2, p1, v1}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/widget/ImageView;Ljava/lang/String;Lorg/json/JSONObject;III)V
    .registers 8

    .line 61
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 62
    invoke-static {p2, p5, p6}, Lcom/engagelab/privates/common/utils/ImageUtils;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_27

    :cond_10
    :goto_10
    if-eqz p3, :cond_26

    const-string p2, "type"

    .line 63
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    const-string p5, "action"

    .line 64
    invoke-virtual {p3, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 65
    new-instance p5, Lcom/engagelab/privates/common/i0$b;

    invoke-direct {p5, p0, p2, p3, p4}, Lcom/engagelab/privates/common/i0$b;-><init>(Lcom/engagelab/privates/common/i0;ILjava/lang/String;I)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_e

    :cond_26
    return-void

    .line 66
    :goto_27
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "native updateImage throwable="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseInAppWrapper"

    invoke-static {p2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .registers 8

    .line 19
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Utils;->getNumber(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2a

    .line 21
    const-string v3, ""

    invoke-static {v1, v3}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 23
    :cond_2a
    iget-object p1, p0, Lcom/engagelab/privates/common/f0;->a:Lcom/engagelab/privates/common/f0$d;

    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/engagelab/privates/common/i0;->i:Landroid/view/View;

    iget-object v2, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-interface {p1, v0, v1, v2}, Lcom/engagelab/privates/common/f0$d;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/widget/TextView;Lorg/json/JSONObject;I)V
    .registers 12

    const-string v0, "bg_color"

    const-string v1, "click"

    const-string v2, "style"

    const-string v3, "duration"

    :try_start_8
    const-string v4, "text"

    .line 28
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v5, :cond_1e

    .line 30
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21

    :catchall_1b
    move-exception p1

    goto/16 :goto_ec

    .line 31
    :cond_1e
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :goto_21
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 33
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "s"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_48

    .line 35
    :cond_45
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :goto_48
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_4c
    .catchall {:try_start_8 .. :try_end_4c} :catchall_1b

    const-string v4, "#"

    if-eqz v3, :cond_a8

    .line 37
    :try_start_50
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_a8

    .line 38
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_a8

    .line 39
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_69

    .line 40
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    :cond_69
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    if-lez v3, :cond_73

    int-to-float v3, v3

    .line 42
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_73
    const/4 v3, 0x2

    .line 43
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    if-lez v3, :cond_81

    .line 44
    invoke-virtual {p0, v3}, Lcom/engagelab/privates/common/i0;->f(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    :cond_81
    const/4 v3, 0x3

    .line 45
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_99

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 47
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_99
    const/4 v3, 0x4

    .line 48
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    if-lez v2, :cond_a8

    .line 49
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/2addr v2, v7

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 50
    :cond_a8
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 51
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_c8

    const-string v2, "type"

    .line 52
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "action"

    .line 53
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v3, Lcom/engagelab/privates/common/i0$a;

    invoke-direct {v3, p0, v2, v1, p3}, Lcom/engagelab/privates/common/i0$a;-><init>(Lcom/engagelab/privates/common/i0;ILjava/lang/String;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_c8
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_eb

    .line 56
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_eb

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_eb

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 59
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_eb
    .catchall {:try_start_50 .. :try_end_eb} :catchall_1b

    :cond_eb
    return-void

    .line 60
    :goto_ec
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "native updateTextView throwable="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseInAppWrapper"

    invoke-static {p2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Landroid/view/View;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "layout"

    .line 14
    .line 15
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-string v1, ".xml\" not found,please check res-layout file!!"

    .line 20
    .line 21
    const-string v2, "\""

    .line 22
    .line 23
    if-lez v0, :cond_30

    .line 24
    .line 25
    iget-object v3, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_26

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    invoke-static {v2, p1, v1}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    invoke-static {v2, p1, v1}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public d()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/i0;->i:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(I)I
    .registers 4

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p1, v0, :cond_b

    if-eq p1, v1, :cond_9

    const/16 p1, 0x11

    return p1

    :cond_9
    const/4 p1, 0x5

    return p1

    :cond_b
    return v1
.end method

.method public f()Z
    .registers 6

    const-string v0, "BaseInAppWrapper"

    const/4 v1, 0x0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/engagelab/privates/common/i0;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/engagelab/privates/common/i0;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/engagelab/privates/common/i0;->i:Landroid/view/View;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_2f

    .line 3
    :try_start_d
    invoke-virtual {p0}, Lcom/engagelab/privates/common/i0;->l()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    const/4 v0, 0x1

    return v0

    :catchall_12
    move-exception v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "findViewByName throwable ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x9a9e16

    .line 5
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/f0;->d(I)V

    return v1

    :catchall_2f
    move-exception v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "inflateLayout throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x9a9e15

    .line 7
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/f0;->d(I)V

    return v1
.end method

.method public g()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/i0;->i:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f0;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/engagelab/privates/common/i0;->i:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_a

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/engagelab/privates/common/i0;->i:Landroid/view/View;

    .line 10
    .line 11
    :cond_a
    return-void
.end method

.method public j()V
    .registers 1

    .line 1
    return-void
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public abstract l()V
.end method

.method public m()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne v0, v1, :cond_11

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    return v0
.end method

###### Class com.engagelab.privates.common.i0.a (com.engagelab.privates.common.i0$a)
.class public Lcom/engagelab/privates/common/i0$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/i0;->a(Landroid/widget/TextView;Lorg/json/JSONObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Lcom/engagelab/privates/common/i0;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/i0;ILjava/lang/String;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/i0$a;->d:Lcom/engagelab/privates/common/i0;

    .line 2
    .line 3
    iput p2, p0, Lcom/engagelab/privates/common/i0$a;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/engagelab/privates/common/i0$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/engagelab/privates/common/i0$a;->c:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/engagelab/privates/common/i0$a;->d:Lcom/engagelab/privates/common/i0;

    .line 2
    .line 3
    iget v0, p0, Lcom/engagelab/privates/common/i0$a;->a:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/engagelab/privates/common/i0$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget v2, p0, Lcom/engagelab/privates/common/i0$a;->c:I

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1, v2}, Lcom/engagelab/privates/common/f0;->a(ILjava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

###### Class com.engagelab.privates.common.i0.b (com.engagelab.privates.common.i0$b)
.class public Lcom/engagelab/privates/common/i0$b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/i0;->a(Landroid/widget/ImageView;Ljava/lang/String;Lorg/json/JSONObject;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Lcom/engagelab/privates/common/i0;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/i0;ILjava/lang/String;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/i0$b;->d:Lcom/engagelab/privates/common/i0;

    .line 2
    .line 3
    iput p2, p0, Lcom/engagelab/privates/common/i0$b;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/engagelab/privates/common/i0$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/engagelab/privates/common/i0$b;->c:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/engagelab/privates/common/i0$b;->d:Lcom/engagelab/privates/common/i0;

    .line 2
    .line 3
    iget v0, p0, Lcom/engagelab/privates/common/i0$b;->a:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/engagelab/privates/common/i0$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget v2, p0, Lcom/engagelab/privates/common/i0$b;->c:I

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1, v2}, Lcom/engagelab/privates/common/f0;->a(ILjava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
