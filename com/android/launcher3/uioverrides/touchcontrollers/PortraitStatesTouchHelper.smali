.class public final Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;

.field public static final TAG:Ljava/lang/String; = "PortraitStatesTouchHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;

    invoke-direct {v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;->INSTANCE:Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isTouchFastScroller(Lcom/android/launcher3/Launcher;Landroid/view/MotionEvent;)Z
    .registers 3

    sget-object p0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_1d

    :cond_a
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.android.launcher3.allapps.OplusAllAppsContainerView"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getScrollHelper()Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->isHitInParent(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_1d
    return p0
.end method

.method private final isTouchScrollWidgetInDrawerMode(Lcom/android/launcher3/Launcher;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-eqz p0, :cond_26

    sget-object p0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_26

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->isTouchScrollAppWidget(FF)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private final isTouchScrollWidgetInSupportBrowser(Lcom/android/launcher3/Launcher;Landroid/view/MotionEvent;)Z
    .registers 3

    sget-boolean p0, Lo1/e;->a:Z

    if-eqz p0, :cond_2a

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result p0

    if-eqz p0, :cond_2a

    sget-object p0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_2a

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->isTouchScrollAppWidget(FF)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final injectCanInterceptTouch(Lcom/android/launcher3/Launcher;Landroid/view/MotionEvent;)Z
    .registers 12

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ev"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;->isTouchFastScroller(Lcom/android/launcher3/Launcher;Landroid/view/MotionEvent;)Z

    move-result v2

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;->isTouchScrollWidgetInDrawerMode(Lcom/android/launcher3/Launcher;Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;->isTouchScrollWidgetInSupportBrowser(Lcom/android/launcher3/Launcher;Landroid/view/MotionEvent;)Z

    move-result p0

    move-object p2, p1

    check-cast p2, Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/views/FloatingIconViewContainer;->isFinished()Z

    move-result p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_41

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p2

    if-nez p2, :cond_41

    move p2, v4

    goto :goto_42

    :cond_41
    move p2, v5

    :goto_42
    invoke-static {p1}, Lcom/android/launcher3/folder/FolderExtImplV2;->getCurrentFolder(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    if-nez p1, :cond_49

    goto :goto_56

    :cond_49
    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    if-nez p1, :cond_4e

    goto :goto_56

    :cond_4e
    invoke-interface {p1}, Lcom/android/launcher3/folder/IFolderExt;->isAnimating()Z

    move-result p1

    if-ne p1, v4, :cond_56

    move p1, v4

    goto :goto_57

    :cond_56
    :goto_56
    move p1, v5

    :goto_57
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_7a

    const-string v6, "isPageInTransition = "

    const-string v7, ", isSwitchingState = "

    const-string v8, ", isTouchScroller = "

    invoke-static {v6, v0, v7, v1, v8}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isTouchScrollWidget = "

    const-string v8, ",, isWindowAnimating = "

    invoke-static {v6, v2, v7, v3, v8}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v7, ", isFolderOpening = "

    const-string v8, ", isTouchScrollWidgetBrowser = "

    invoke-static {v6, p2, v7, p1, v8}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v7, "PortraitStatesTouchHelper"

    invoke-static {v6, p0, v7}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_7a
    if-nez v3, :cond_8a

    if-nez v0, :cond_8a

    if-nez v1, :cond_8a

    if-nez v2, :cond_8a

    if-nez p2, :cond_8a

    if-nez p1, :cond_8a

    if-eqz p0, :cond_89

    goto :goto_8a

    :cond_89
    move v4, v5

    :cond_8a
    :goto_8a
    return v4
.end method
