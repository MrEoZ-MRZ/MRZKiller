.class Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$IsPackageAvailable;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IsPackageAvailable"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    .line 66
    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$IsPackageAvailable;->isAppPkg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 67
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "isPackageAvailable"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 74
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$IsPackageAvailable;->isAppProcess()Z

    move-result v0

    return v0
.end method
