###### Class g.f (g.f)
.class public final Lg/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/view/ContextThemeWrapper;

.field public final b:Landroid/view/LayoutInflater;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/CharSequence;

.field public e:Landroid/view/View;

.field public f:Ll/o;

.field public g:Ljava/lang/Object;

.field public h:Landroid/content/DialogInterface$OnClickListener;

.field public i:Z

.field public j:I


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lg/f;->j:I

    .line 6
    .line 7
    iput-object p1, p0, Lg/f;->a:Landroid/view/ContextThemeWrapper;

    .line 8
    .line 9
    const-string v0, "layout_inflater"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/view/LayoutInflater;

    .line 16
    .line 17
    iput-object p1, p0, Lg/f;->b:Landroid/view/LayoutInflater;

    .line 18
    .line 19
    return-void
.end method
