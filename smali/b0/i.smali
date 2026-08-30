###### Class b0.i (b0.i)
.class public final Lb0/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/content/res/ColorStateList;

.field public final b:Landroid/content/res/Configuration;

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;Landroid/content/res/Resources$Theme;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb0/i;->a:Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    iput-object p2, p0, Lb0/i;->b:Landroid/content/res/Configuration;

    .line 7
    .line 8
    if-nez p3, :cond_b

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    invoke-virtual {p3}, Landroid/content/res/Resources$Theme;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_f
    iput p1, p0, Lb0/i;->c:I

    .line 17
    .line 18
    return-void
.end method
