.class Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageGidsEtc;
.super Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageGids;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetPackageGidsEtc"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 509
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageGids;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 2

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageGids;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
