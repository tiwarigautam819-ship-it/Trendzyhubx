###### Class l.w (l.w)
.class public final Ll/w;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Ll/x;


# direct methods
.method public constructor <init>(Ll/x;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll/w;->a:Ll/x;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Ll/w;->a:Ll/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/x;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
