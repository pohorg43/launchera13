.class public Lp1/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Lo1/b;

.field public c:Landroid/view/WindowManager;

.field public d:I

.field public e:Landroid/view/Window;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lp1/c$a;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 15

    iget-object v0, p0, Lp1/c$a;->b:Lo1/b;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v2, p1, Landroid/os/Message;->what:I

    const-string v3, "BrowserLauncherClient"

    const/4 v4, 0x0

    const-string v5, "BrowserLauncherClient-OverlayCallbackProxy"

    packed-switch v2, :pswitch_data_2d0

    return v4

    :pswitch_11  #0x7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "browser callback, msg_browser_news_show_states status:"

    invoke-static {v0, p1, v5}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lp1/c$a;->b:Lo1/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_4f

    if-eq p1, v1, :cond_40

    const/4 v0, 0x2

    if-eq p1, v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowEndScroll,default value:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a4

    :cond_40
    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    if-ne p1, v1, :cond_49

    goto :goto_4a

    :cond_49
    move v4, v1

    :goto_4a
    invoke-virtual {v0, v4}, Lcom/android/statistics/LauncherStatistics;->statEventBrowserNewsEnterImmediate(I)V

    goto/16 :goto_1a4

    :cond_4f
    iget-boolean v0, p0, Lo1/b;->A:Z

    if-eqz v0, :cond_1a4

    iget-boolean v0, p0, Lo1/b;->u:Z

    if-nez v0, :cond_1a4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lo1/b;->x:J

    sub-long v7, v5, v7

    iget v0, p0, Lo1/b;->f:I

    int-to-long v9, v0

    cmp-long v0, v7, v9

    if-gez v0, :cond_6d

    const-string v0, "endCalculateShowBrowserNewsDialog end more same process"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a4

    :cond_6d
    iget-wide v7, p0, Lo1/b;->w:J

    sub-long v7, v5, v7

    const-wide/16 v11, 0xa

    cmp-long v0, v7, v11

    if-gez v0, :cond_7e

    const-string v0, "endCalculateShowBrowserNewsDialog end, dowm and up is too short."

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a4

    :cond_7e
    iget-boolean v0, p0, Lo1/b;->t:Z

    if-nez v0, :cond_188

    iget-boolean v0, p0, Lo1/b;->z:Z

    if-nez v0, :cond_188

    iput-wide v5, p0, Lo1/b;->x:J

    cmp-long v0, v7, v9

    if-gtz v0, :cond_17e

    iget-wide v5, p0, Lo1/b;->y:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lo1/b;->y:J

    iget v0, p0, Lo1/b;->g:I

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_16b

    const-string v0, "calculateShowCloseBrowserNewsDialog show dialog"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "open_browser_news_dialog"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v1, p0, Lo1/b;->t:Z

    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_c2

    const-string/jumbo v0, "showSecondConfirmDialog, mLauncher is null"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a4

    :cond_c2
    const-string/jumbo v0, "showSecondConfirmDialog"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo1/b;->C:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_165

    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0701a2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, 0x7f0606a2

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0701a1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const v3, 0x7f120138

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    iget-object v3, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-direct {v0, v3}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    const v5, 0x7f12013d

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lo1/b;->k(Lcom/android/launcher/Launcher;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->setMessageView(Landroid/view/View;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    move-result-object v0

    iget-object v2, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    const v3, 0x7f120135

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->setNegativeText(Ljava/lang/String;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    move-result-object v0

    iget-object v2, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    const v3, 0x7f120136

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->setPositiveText(Ljava/lang/String;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->setRedPositiveButton(Z)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    move-result-object v0

    new-instance v2, Lo1/c;

    invoke-direct {v2, p0}, Lo1/c;-><init>(Lo1/b;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->setDialogOnClickCallback(Lcom/android/launcher/folder/recommend/DialogButtonClickCallback;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->createDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lo1/b;->C:Landroidx/appcompat/app/AlertDialog;

    new-instance v2, Lcom/android/launcher/folder/recommend/a;

    invoke-direct {v2, p0}, Lcom/android/launcher/folder/recommend/a;-><init>(Lo1/b;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_165
    iget-object v0, p0, Lo1/b;->C:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1a4

    :cond_16b
    const-string v0, "calculateShowCloseBrowserNewsDialog mCalculateCcount: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lo1/b;->y:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a4

    :cond_17e
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lo1/b;->y:J

    const-string v0, "calculateShowCloseBrowserNewsDialog, reset mCalculateCcount"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a4

    :cond_188
    const-string v0, "endCalculateShowBrowserNewsDialog closeBrowserNewsResult:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lo1/b;->t:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsJumpCurrentScroll:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lo1/b;->z:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a4
    :goto_1a4
    iput p1, p0, Lo1/b;->q:I

    return v1

    :pswitch_1a7  #0x6
    const-string v0, "browser callback, msg_browser_news_param"

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_222

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_222

    const-string v0, "privacyIsAllowed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "newsWindowCloseTimes"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "newsWindowCloseSeconds"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "newsWindowServiceEnable"

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-gtz v2, :cond_1d3

    const/4 v2, 0x3

    :cond_1d3
    if-gtz v4, :cond_1d7

    const/16 v2, 0x1388

    :cond_1d7
    iget-object p0, p0, Lp1/c$a;->b:Lo1/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateBrowserNewsParam privacyIsAllowed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " newsWindowServiceEnable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " newsWindowCloseTimes: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " newsWindowCloseSeconds: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lo1/b;->g:I

    if-ne v2, p1, :cond_217

    mul-int/lit16 p1, v4, 0x3e8

    iget v3, p0, Lo1/b;->f:I

    if-ne p1, v3, :cond_217

    iget-boolean p1, p0, Lo1/b;->A:Z

    if-eq v0, p1, :cond_21a

    :cond_217
    invoke-virtual {p0}, Lo1/b;->l()V

    :cond_21a
    iput v2, p0, Lo1/b;->g:I

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lo1/b;->f:I

    iput-boolean v0, p0, Lo1/b;->A:Z

    :cond_222
    return v1

    :pswitch_223  #0x5
    const-string p1, "browser callback, msg_overlay_preload_changed"

    invoke-static {v5, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lp1/c$a;->b:Lo1/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPreloaded,new loaded:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " old loaded:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lo1/b;->v:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mScrollCallback:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo1/b;->h:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    if-eqz v0, :cond_24f

    move v0, v1

    goto :goto_250

    :cond_24f
    move v0, v4

    :goto_250
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lo1/b;->v:Z

    if-eq p1, v1, :cond_26d

    iget-object p1, p0, Lo1/b;->h:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    if-eqz p1, :cond_26d

    iput-boolean v1, p0, Lo1/b;->v:Z

    iget p0, p0, Lo1/b;->i:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_26a

    move v4, v1

    :cond_26a
    invoke-interface {p1, v4}, Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;->onServiceStateChanged(Z)V

    :cond_26d
    return v1

    :pswitch_26e  #0x4
    const-string v0, "browser callback, msg_overlay_status_changed :"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2, v5}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lp1/c$a;->b:Lo1/b;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lo1/b;->n(I)V

    return v1

    :pswitch_281  #0x3
    const-string v0, "browser callback, msg_overlay_window_attr_changed"

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lp1/c$a;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2a1

    iget p1, p0, Lp1/c$a;->d:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x200

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2a9

    :cond_2a1
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x201

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_2a9
    iget-object p1, p0, Lp1/c$a;->c:Landroid/view/WindowManager;

    iget-object p0, p0, Lp1/c$a;->e:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    :pswitch_2b5  #0x2
    iget v0, v0, Lo1/b;->i:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2cf

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lp1/c$a;->b:Lo1/b;

    iget-object v0, v0, Lo1/b;->h:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    if-eqz v0, :cond_2cb

    invoke-interface {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;->onOverlayScrollChanged(F)V

    :cond_2cb
    iget-object p0, p0, Lp1/c$a;->b:Lo1/b;

    iput p1, p0, Lo1/b;->n:F

    :cond_2cf
    return v1

    :pswitch_data_2d0
    .packed-switch 0x2
        :pswitch_2b5  #00000002
        :pswitch_281  #00000003
        :pswitch_26e  #00000004
        :pswitch_223  #00000005
        :pswitch_1a7  #00000006
        :pswitch_11  #00000007
    .end packed-switch
.end method
