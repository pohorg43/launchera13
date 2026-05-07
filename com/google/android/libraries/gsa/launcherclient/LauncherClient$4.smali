.class Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$4;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiWindowModeChanged(Z)V
    .registers 4

    const-string v0, "onMultiWindowModeChanged, isInMultiWindowMode="

    const-string v1, ", old Mode:"

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$4;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->access$400(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherClient"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$4;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->access$400(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Z

    move-result v0

    if-eq v0, p1, :cond_2c

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$4;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->access$402(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Z)Z

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$4;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->access$300(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    :cond_2c
    return-void
.end method
