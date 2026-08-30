###### Class l.q (l.q)
.class public final Ll/q;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public a:Lo5/c;

.field public final b:Landroid/view/ActionProvider;


# direct methods
.method public constructor <init>(Ll/u;Landroid/view/ActionProvider;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ll/q;->b:Landroid/view/ActionProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActionProviderVisibilityChanged(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Ll/q;->a:Lo5/c;

    .line 2
    .line 3
    if-eqz p1, :cond_10

    .line 4
    .line 5
    iget-object p1, p1, Lo5/c;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Ll/p;

    .line 8
    .line 9
    iget-object p1, p1, Ll/p;->n:Ll/n;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p1, Ll/n;->h:Z

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ll/n;->p(Z)V

    .line 15
    .line 16
    .line 17
    :cond_10
    return-void
.end method
