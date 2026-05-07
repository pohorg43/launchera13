.class public final Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$Companion;,
        Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$Companion;

.field private static final MAX_BG_ANIM_HEIGHT:I = 0x90

.field private static final MAX_BG_ANIM_WIDTH:I = 0x39c

.field private static final MIN_WORKSPACE_SCALE:F = 0.92f

.field private static final SETTINGS_EXIT_ANIM:Ljava/lang/String; = "dock_exit_anim_call_time"

.field private static final SETTINGS_EXIT_TIME_OUT:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "SearchAppLaunchAnimation"

.field private static final TRANS_Y:F = -500.0f


# instance fields
.field private mAdvanceQuitObserver:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$mAdvanceQuitObserver$1;

.field private mCloseAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->Companion:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$mAdvanceQuitObserver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$mAdvanceQuitObserver$1;-><init>(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mAdvanceQuitObserver:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$mAdvanceQuitObserver$1;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->startCloseSearchAppAnimIfNeeded$lambda-2$lambda-1(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;Lcom/oplus/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$startCloseSearchAppAnimIfNeeded(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->startCloseSearchAppAnimIfNeeded()V

    return-void
.end method

.method private final resetStatus()V
    .registers 6

    const-string v0, "SearchAppLaunchAnimation"

    const-string v1, "resetStatus"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->getView()Lcom/android/launcher3/search/SearchEntryView;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    if-nez v0, :cond_24

    goto :goto_30

    :cond_24
    invoke-virtual {v0, v1}, Lcom/android/launcher3/search/SearchEntryView;->setTempBgWidth(F)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/search/SearchEntryView;->setTempBgHeight(F)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_30
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBlurScrimWindowController()Lcom/android/launcher/touch/BlurScrimWindowController;

    move-result-object v0

    if-nez v0, :cond_39

    goto :goto_3d

    :cond_39
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher/touch/BlurScrimWindowController;->blurBackground(I)V

    :goto_3d
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBlurScrimWindowController()Lcom/android/launcher/touch/BlurScrimWindowController;

    move-result-object v0

    if-nez v0, :cond_46

    goto :goto_49

    :cond_46
    invoke-virtual {v0}, Lcom/android/launcher/touch/BlurScrimWindowController;->detach()V

    :goto_49
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-object v3, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget v4, v0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget v0, v0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/OplusHotseat;->setAlpha(F)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    return-void
.end method

.method private final startCloseSearchAppAnimIfNeeded()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    const-string/jumbo v1, "startCloseSearchAppAnimIfNeeded, mStartSearchAnimation = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchAppLaunchAnimation"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->cancel()V

    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    new-instance v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;-><init>(Lcom/android/launcher/Launcher;Z)V

    new-instance v1, Lcom/android/quickstep/util/g;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/g;-><init>(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->addEndListener(Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;)V

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->start()V

    iput-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mCloseAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    return-void
.end method

.method private static final startCloseSearchAppAnimIfNeeded$lambda-2$lambda-1(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->resetStatus()V

    return-void
.end method


# virtual methods
.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->startCloseSearchAppAnimIfNeeded()V

    return-void
.end method

.method public final registerObserver()V
    .registers 4

    const-string v0, "SearchAppLaunchAnimation"

    const-string v1, "registerObserver"

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dock_exit_anim_call_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mAdvanceQuitObserver:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$mAdvanceQuitObserver$1;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final resetForHomeGesture()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    :cond_6
    move v0, v1

    goto :goto_f

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->isRunning()Z

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    :goto_f
    const/4 v3, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    if-nez v0, :cond_17

    goto :goto_1a

    :cond_17
    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->cancel()V

    :goto_1a
    iput-object v3, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mCloseAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    if-nez v0, :cond_21

    goto :goto_28

    :cond_21
    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->isRunning()Z

    move-result v0

    if-ne v0, v2, :cond_28

    move v1, v2

    :cond_28
    :goto_28
    if-eqz v1, :cond_34

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mCloseAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    if-nez v0, :cond_2f

    goto :goto_32

    :cond_2f
    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->cancel()V

    :goto_32
    iput-object v3, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mCloseAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    :cond_34
    invoke-direct {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->resetStatus()V

    return-void
.end method

.method public final startOpenSearchAppAnim()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->cancel()V

    :goto_8
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mCloseAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    if-nez v0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->cancel()V

    :goto_10
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBlurScrimWindowController()Lcom/android/launcher/touch/BlurScrimWindowController;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_1d

    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/touch/BlurScrimWindowController;->attach(Landroid/view/View;)V

    :goto_1d
    new-instance v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;-><init>(Lcom/android/launcher/Launcher;Z)V

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->start()V

    iput-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    return-void
.end method

.method public final unRegisterObserver()V
    .registers 3

    const-string v0, "SearchAppLaunchAnimation"

    const-string/jumbo v1, "unRegisterObserver"

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mAdvanceQuitObserver:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$mAdvanceQuitObserver$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
