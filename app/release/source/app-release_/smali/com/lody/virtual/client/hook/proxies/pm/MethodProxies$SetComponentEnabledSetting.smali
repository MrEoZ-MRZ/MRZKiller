.class Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$SetComponentEnabledSetting;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetComponentEnabledSetting"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1025
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

    const/4 p1, 0x0

    .line 1036
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "c2V0Q29tcG9uZW50RW5hYmxlZFNldHRpbmc="

    .line 1031
    invoke-static {v0}, Lcom/lody/virtual/helper/utils/EncodeUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1041
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$SetComponentEnabledSetting;->isAppProcess()Z

    move-result v0

    return v0
.end method
