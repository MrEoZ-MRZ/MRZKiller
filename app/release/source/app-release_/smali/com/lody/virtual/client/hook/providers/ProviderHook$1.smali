.class final Lcom/lody/virtual/client/hook/providers/ProviderHook$1;
.super Ljava/lang/Object;
.source "ProviderHook.java"

# interfaces
.implements Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/providers/ProviderHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(ZLandroid/os/IInterface;)Lcom/lody/virtual/client/hook/providers/ProviderHook;
    .locals 0

    .line 45
    new-instance p1, Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;

    invoke-direct {p1, p2}, Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
