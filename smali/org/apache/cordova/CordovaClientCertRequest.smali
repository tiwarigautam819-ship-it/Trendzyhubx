###### Class org.apache.cordova.CordovaClientCertRequest (org.apache.cordova.CordovaClientCertRequest)
.class public Lorg/apache/cordova/CordovaClientCertRequest;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lorg/apache/cordova/c0;


# instance fields
.field public final a:Landroid/webkit/ClientCertRequest;


# direct methods
.method public constructor <init>(Landroid/webkit/ClientCertRequest;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/cordova/CordovaClientCertRequest;->a:Landroid/webkit/ClientCertRequest;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaClientCertRequest;->a:Landroid/webkit/ClientCertRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/ClientCertRequest;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaClientCertRequest;->a:Landroid/webkit/ClientCertRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/ClientCertRequest;->getHost()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getKeyTypes()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaClientCertRequest;->a:Landroid/webkit/ClientCertRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/ClientCertRequest;->getKeyTypes()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaClientCertRequest;->a:Landroid/webkit/ClientCertRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/ClientCertRequest;->getPort()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPrincipals()[Ljava/security/Principal;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaClientCertRequest;->a:Landroid/webkit/ClientCertRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/ClientCertRequest;->getPrincipals()[Ljava/security/Principal;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public ignore()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaClientCertRequest;->a:Landroid/webkit/ClientCertRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/ClientCertRequest;->ignore()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaClientCertRequest;->a:Landroid/webkit/ClientCertRequest;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/webkit/ClientCertRequest;->proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
