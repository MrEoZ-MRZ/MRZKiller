.class Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$renameSharedAccountAsUser;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "AccountManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "renameSharedAccountAsUser"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 583
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V
    .locals 0

    .line 583
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$renameSharedAccountAsUser;-><init>()V

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

    .line 591
    aget-object v0, p3, v0

    check-cast v0, Landroid/accounts/Account;

    const/4 v0, 0x1

    .line 592
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    const/4 v0, 0x2

    .line 593
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 594
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "renameSharedAccountAsUser"

    return-object v0
.end method
