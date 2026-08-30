###### Class com.getcapacitor.PluginMethodHandle (com.getcapacitor.PluginMethodHandle)
.class public Lcom/getcapacitor/PluginMethodHandle;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private final method:Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;

.field private final returnType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Lcom/getcapacitor/PluginMethod;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/getcapacitor/PluginMethodHandle;->method:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/getcapacitor/PluginMethodHandle;->name:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {p2}, Lcom/getcapacitor/PluginMethod;->returnType()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/getcapacitor/PluginMethodHandle;->returnType:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/PluginMethodHandle;->method:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/PluginMethodHandle;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/PluginMethodHandle;->returnType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
