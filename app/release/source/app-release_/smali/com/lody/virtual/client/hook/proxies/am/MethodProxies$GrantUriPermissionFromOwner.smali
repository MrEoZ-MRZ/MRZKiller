.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GrantUriPermissionFromOwner;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GrantUriPermissionFromOwner"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 696
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 705
    invoke-static {p3}, Lcom/lody/virtual/client/hook/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 706
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "grantUriPermissionFromOwner"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 711
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GrantUriPermissionFromOwner;->isAppProcess()Z

    move-result v0

    return v0
.end method
