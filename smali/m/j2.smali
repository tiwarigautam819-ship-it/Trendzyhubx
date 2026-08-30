###### Class m.j2 (m.j2)
.class public final Lm/j2;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/SearchView;I)V
    .registers 3

    .line 1
    iput p2, p0, Lm/j2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lm/j2;->b:Landroidx/appcompat/widget/SearchView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget v0, p0, Lm/j2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm/j2;->b:Landroidx/appcompat/widget/SearchView;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->W:Ln0/a;

    .line 9
    .line 10
    instance-of v1, v0, Lm/u2;

    .line 11
    .line 12
    if-eqz v1, :cond_11

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Ln0/a;->b(Landroid/database/Cursor;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void

    .line 19
    :pswitch_12
    iget-object v0, p0, Lm/j2;->b:Landroidx/appcompat/widget/SearchView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->r()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method
