.class public Lo1/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/recommend/DialogButtonClickCallback;


# instance fields
.field public final synthetic a:Lo1/b;


# direct methods
.method public constructor <init>(Lo1/b;)V
    .registers 2

    iput-object p1, p0, Lo1/c;->a:Lo1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeButtonClick()V
    .registers 3

    const-string v0, "BrowserLauncherClient"

    const-string v1, "onNegativeButtonClick"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lo1/c;->a:Lo1/b;

    iget-object p0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_15

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/statistics/LauncherStatistics;->statEventClickBrowserNewsDialogImmediate(Z)V

    :cond_15
    return-void
.end method

.method public onPositiveButtonClick()V
    .registers 7

    const-string v0, "BrowserLauncherClient"

    const-string v1, "onPositiveButtonClick"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo1/c;->a:Lo1/b;

    iget-object v1, v0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_48

    const v2, 0x7f120137

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lo1/b;->k(Lcom/android/launcher/Launcher;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lo1/c;->a:Lo1/b;

    iget-object v1, v1, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v1, v0, v3}, Lcom/android/launcher/Launcher;->showToastMsg(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2b
    iget-object v0, p0, Lo1/c;->a:Lo1/b;

    iget-object v0, v0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_browser_news"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lo1/c;->a:Lo1/b;

    iget-object p0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/statistics/LauncherStatistics;->statEventClickBrowserNewsDialogImmediate(Z)V

    :cond_48
    return-void
.end method
