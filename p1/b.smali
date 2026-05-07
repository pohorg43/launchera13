.class public Lp1/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;
.implements Lcom/google/android/libraries/gsa/launcherclient/ISerializableScrollCallback;


# instance fields
.field public final a:Lcom/android/launcher/Launcher;

.field public b:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp1/b;->c:Z

    iput-object p1, p0, Lp1/b;->a:Lcom/android/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public onOverlayScrollChanged(F)V
    .registers 2

    iget-object p0, p0, Lp1/b;->b:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;->onScrollChangedBrowserNews(F)V

    :cond_7
    return-void
.end method

.method public onScrollChange(FZ)V
    .registers 3

    return-void
.end method

.method public onScrollInteractionBegin()V
    .registers 2

    const-string p0, "BrowserLauncherClient-OplusLauncherOverlayBrowserImpl"

    const-string v0, "onScrollInteractionBegin"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScrollInteractionEnd()V
    .registers 2

    const-string p0, "BrowserLauncherClient-OplusLauncherOverlayBrowserImpl"

    const-string v0, "onScrollInteractionEnd"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceStateChanged(Z)V
    .registers 5

    const-string v0, "onServiceStateChanged overlayAttached:"

    const-string v1, " mAttached:"

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lp1/b;->c:Z

    const-string v2, "BrowserLauncherClient-OplusLauncherOverlayBrowserImpl"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lp1/b;->c:Z

    if-eq p1, v0, :cond_1e

    iput-boolean p1, p0, Lp1/b;->c:Z

    iget-object v0, p0, Lp1/b;->a:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    invoke-virtual {v0, p0}, Lcom/android/launcher/Launcher;->setLauncherBrowsernewsOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V

    :cond_1e
    return-void
.end method

.method public setOverlayCallbacks(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;)V
    .registers 4

    const-string v0, "BrowserLauncherClient-OplusLauncherOverlayBrowserImpl"

    const-string v1, "setOverlayCallbacks"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lp1/b;->b:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;

    return-void
.end method

.method public setPersistentFlags(I)V
    .registers 3

    const-string p0, "setPersistentFlags flags:"

    const-string v0, "BrowserLauncherClient-OplusLauncherOverlayBrowserImpl"

    invoke-static {p0, p1, v0}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
