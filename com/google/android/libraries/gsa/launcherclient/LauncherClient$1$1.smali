.class Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1$1;->this$1:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "LauncherClient"

    const-string v1, "mAssistAppStatusListener.onReceive, reconect when assit status change"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1$1;->this$1:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1;

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    const-string v0, "assiAppStatusChange"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->connectIfNecessary(Ljava/lang/String;)V

    return-void
.end method
