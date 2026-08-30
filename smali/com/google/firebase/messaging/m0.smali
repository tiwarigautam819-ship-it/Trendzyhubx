###### Class com.google.firebase.messaging.m0 (com.google.firebase.messaging.m0)
.class public final Lcom/google/firebase/messaging/m0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Lp4/j;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp4/j;

    .line 5
    .line 6
    invoke-direct {v0}, Lp4/j;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/firebase/messaging/m0;->b:Lp4/j;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/messaging/m0;->a:Landroid/content/Intent;

    .line 12
    .line 13
    return-void
.end method
