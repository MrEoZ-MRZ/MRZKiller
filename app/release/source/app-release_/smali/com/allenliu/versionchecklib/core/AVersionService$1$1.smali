.class Lcom/allenliu/versionchecklib/core/AVersionService$1$1;
.super Ljava/lang/Object;
.source "AVersionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/core/AVersionService$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/allenliu/versionchecklib/core/AVersionService$1;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/core/AVersionService$1;Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/AVersionService$1$1;->this$1:Lcom/allenliu/versionchecklib/core/AVersionService$1;

    iput-object p2, p0, Lcom/allenliu/versionchecklib/core/AVersionService$1$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/AVersionService$1$1;->this$1:Lcom/allenliu/versionchecklib/core/AVersionService$1;

    iget-object v0, v0, Lcom/allenliu/versionchecklib/core/AVersionService$1;->this$0:Lcom/allenliu/versionchecklib/core/AVersionService;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/AVersionService$1$1;->this$1:Lcom/allenliu/versionchecklib/core/AVersionService$1;

    iget-object v1, v1, Lcom/allenliu/versionchecklib/core/AVersionService$1;->this$0:Lcom/allenliu/versionchecklib/core/AVersionService;

    iget-object v2, p0, Lcom/allenliu/versionchecklib/core/AVersionService$1$1;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/allenliu/versionchecklib/core/AVersionService;->onResponses(Lcom/allenliu/versionchecklib/core/AVersionService;Ljava/lang/String;)V

    return-void
.end method
