###### Class com.getcapacitor.App (com.getcapacitor.App)
.class public Lcom/getcapacitor/App;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getcapacitor/App$AppStatusChangeListener;,
        Lcom/getcapacitor/App$AppRestoredListener;
    }
.end annotation


# instance fields
.field private appRestoredListener:Lcom/getcapacitor/App$AppRestoredListener;

.field private isActive:Z

.field private statusChangeListener:Lcom/getcapacitor/App$AppStatusChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/getcapacitor/App;->isActive:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public fireRestoredResult(Lcom/getcapacitor/PluginResult;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/App;->appRestoredListener:Lcom/getcapacitor/App$AppRestoredListener;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/getcapacitor/App$AppRestoredListener;->onAppRestored(Lcom/getcapacitor/PluginResult;)V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public fireStatusChange(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lcom/getcapacitor/App;->isActive:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/getcapacitor/App;->statusChangeListener:Lcom/getcapacitor/App$AppStatusChangeListener;

    .line 4
    .line 5
    if-eqz v0, :cond_d

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {v0, p1}, Lcom/getcapacitor/App$AppStatusChangeListener;->onAppStatusChanged(Ljava/lang/Boolean;)V

    .line 12
    .line 13
    .line 14
    :cond_d
    return-void
.end method

.method public isActive()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/getcapacitor/App;->isActive:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAppRestoredListener(Lcom/getcapacitor/App$AppRestoredListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/App;->appRestoredListener:Lcom/getcapacitor/App$AppRestoredListener;

    .line 2
    .line 3
    return-void
.end method

.method public setStatusChangeListener(Lcom/getcapacitor/App$AppStatusChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/App;->statusChangeListener:Lcom/getcapacitor/App$AppStatusChangeListener;

    .line 2
    .line 3
    return-void
.end method

###### Class com.getcapacitor.App.AppRestoredListener (com.getcapacitor.App$AppRestoredListener)
.class public interface abstract Lcom/getcapacitor/App$AppRestoredListener;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppRestoredListener"
.end annotation


# virtual methods
.method public abstract onAppRestored(Lcom/getcapacitor/PluginResult;)V
.end method

###### Class com.getcapacitor.App.AppStatusChangeListener (com.getcapacitor.App$AppStatusChangeListener)
.class public interface abstract Lcom/getcapacitor/App$AppStatusChangeListener;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppStatusChangeListener"
.end annotation


# virtual methods
.method public abstract onAppStatusChanged(Ljava/lang/Boolean;)V
.end method
