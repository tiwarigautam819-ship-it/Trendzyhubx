###### Class androidx.fragment.app.h1 (androidx.fragment.app.h1)
.class public final Landroidx/fragment/app/h1;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:I

.field public b:Landroidx/fragment/app/c0;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroidx/lifecycle/n;

.field public i:Landroidx/lifecycle/n;


# direct methods
.method public constructor <init>(ILandroidx/fragment/app/c0;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/fragment/app/h1;->a:I

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/fragment/app/h1;->c:Z

    .line 5
    sget-object p1, Landroidx/lifecycle/n;->e:Landroidx/lifecycle/n;

    iput-object p1, p0, Landroidx/fragment/app/h1;->h:Landroidx/lifecycle/n;

    .line 6
    iput-object p1, p0, Landroidx/fragment/app/h1;->i:Landroidx/lifecycle/n;

    return-void
.end method

.method public constructor <init>(ILandroidx/fragment/app/c0;I)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Landroidx/fragment/app/h1;->a:I

    .line 9
    iput-object p2, p0, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroidx/fragment/app/h1;->c:Z

    .line 11
    sget-object p1, Landroidx/lifecycle/n;->e:Landroidx/lifecycle/n;

    iput-object p1, p0, Landroidx/fragment/app/h1;->h:Landroidx/lifecycle/n;

    .line 12
    iput-object p1, p0, Landroidx/fragment/app/h1;->i:Landroidx/lifecycle/n;

    return-void
.end method
