.class Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$setPassword;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "AccountManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "setPassword"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 313
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V
    .locals 0

    .line 313
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$setPassword;-><init>()V

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

    const/4 p1, 0x0

    .line 321
    aget-object p2, p3, p1

    check-cast p2, Landroid/accounts/Account;

    const/4 v0, 0x1

    .line 322
    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/String;

    .line 323
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->access$3500()Lcom/lody/virtual/client/ipc/VAccountManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/lody/virtual/client/ipc/VAccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 324
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "setPassword"

    return-object v0
.end method
