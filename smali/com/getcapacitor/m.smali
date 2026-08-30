###### Class com.getcapacitor.m (com.getcapacitor.m)
.class public final synthetic Lcom/getcapacitor/m;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/getcapacitor/BridgeWebChromeClient$PermissionListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/m;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPermissionSelect(Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/m;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/webkit/PermissionRequest;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/getcapacitor/BridgeWebChromeClient;->d(Landroid/webkit/PermissionRequest;Ljava/lang/Boolean;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
