###### Class o1.a (o1.a)
.class public final synthetic Lo1/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/getcapacitor/App$AppStatusChangeListener;
.implements Lcom/getcapacitor/App$AppRestoredListener;


# instance fields
.field public final synthetic a:Lcom/capacitorjs/plugins/app/AppPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/capacitorjs/plugins/app/AppPlugin;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lo1/a;->a:Lcom/capacitorjs/plugins/app/AppPlugin;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAppRestored(Lcom/getcapacitor/PluginResult;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo1/a;->a:Lcom/capacitorjs/plugins/app/AppPlugin;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/capacitorjs/plugins/app/AppPlugin;->c(Lcom/capacitorjs/plugins/app/AppPlugin;Lcom/getcapacitor/PluginResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAppStatusChanged(Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo1/a;->a:Lcom/capacitorjs/plugins/app/AppPlugin;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/capacitorjs/plugins/app/AppPlugin;->d(Lcom/capacitorjs/plugins/app/AppPlugin;Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
