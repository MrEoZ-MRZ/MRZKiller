.class public Lcom/tencent/lbssearch/a/d/a;
.super Lcom/tencent/lbssearch/a/d/q;
.source "AuthFailureError.java"


# instance fields
.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/d/q;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/lbssearch/a/d/h;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/d/q;-><init>(Lcom/tencent/lbssearch/a/d/h;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/a;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "User needs to (re)enter credentials."

    return-object v0

    .line 56
    :cond_0
    invoke-super {p0}, Lcom/tencent/lbssearch/a/d/q;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
