.class Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$peekAuthToken;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "AccountManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "peekAuthToken"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$peekAuthToken;-><init>()V

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

    .line 291
    aget-object p1, p3, p1

    check-cast p1, Landroid/accounts/Account;

    const/4 p2, 0x1

    .line 292
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    .line 293
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->access$3500()Lcom/lody/virtual/client/ipc/VAccountManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/lody/virtual/client/ipc/VAccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "peekAuthToken"

    return-object v0
.end method
