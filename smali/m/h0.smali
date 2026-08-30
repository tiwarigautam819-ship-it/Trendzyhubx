###### Class m.h0 (m.h0)
.class public final Lm/h0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Ll/e;

.field public final synthetic b:Lm/i0;


# direct methods
.method public constructor <init>(Lm/i0;Ll/e;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm/h0;->b:Lm/i0;

    .line 5
    .line 6
    iput-object p2, p0, Lm/h0;->a:Ll/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/h0;->b:Lm/i0;

    .line 2
    .line 3
    iget-object v0, v0, Lm/i0;->O:Lm/l0;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_f

    .line 10
    .line 11
    iget-object v1, p0, Lm/h0;->a:Ll/e;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 14
    .line 15
    .line 16
    :cond_f
    return-void
.end method
