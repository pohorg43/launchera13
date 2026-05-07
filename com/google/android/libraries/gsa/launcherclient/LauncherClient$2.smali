.class Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$2;
.super Landroid/database/ContentObserver;
.source ""


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
.method public constructor <init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$2;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$2;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object p1, p1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    const-string v0, "LauncherClient"

    if-nez p1, :cond_e

    const-string p0, "mAssistScreenSwitchObserver -- mActivity is null."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const-string p1, "mAssistScreenSwitchObserver -- onChange"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$2;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v0, p1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_assistant_screen"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_25

    const/4 v2, 0x1

    :cond_25
    iput-boolean v2, p1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenSettingsOn:Z

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$2;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    const-string/jumbo p1, "switch"

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->connectIfNecessary(Ljava/lang/String;)V

    return-void
.end method
