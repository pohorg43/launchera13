.class public Lcom/android/quickstep/interaction/SandboxModeTutorialController;
.super Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;
.source ""


# direct methods
.method public constructor <init>(Lcom/android/quickstep/interaction/SandboxModeTutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/quickstep/interaction/SandboxModeTutorialController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/interaction/SandboxModeTutorialController;->lambda$onNavBarGestureAttempted$0()V

    return-void
.end method

.method private synthetic lambda$onNavBarGestureAttempted$0()V
    .registers 2

    const v0, 0x7f12046b

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(I)V

    return-void
.end method

.method private synthetic lambda$onNavBarGestureAttempted$1()V
    .registers 2

    const v0, 0x7f12046c

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(I)V

    return-void
.end method

.method public static synthetic m(Lcom/android/quickstep/interaction/SandboxModeTutorialController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/interaction/SandboxModeTutorialController;->lambda$onNavBarGestureAttempted$1()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getHotseatIconLeft()I
    .registers 1

    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialController;->getHotseatIconLeft()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getHotseatIconTop()I
    .registers 1

    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialController;->getHotseatIconTop()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getIntroductionSubtitle()I
    .registers 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialController;->getIntroductionSubtitle()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getIntroductionTitle()I
    .registers 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialController;->getIntroductionTitle()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getMockAppIconResId()I
    .registers 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialController;->getMockAppIconResId()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getMockWallpaperResId()I
    .registers 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialController;->getMockWallpaperResId()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSpokenIntroductionSubtitle()I
    .registers 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialController;->getSpokenIntroductionSubtitle()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSuccessFeedbackSubtitle()I
    .registers 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialController;->getSuccessFeedbackSubtitle()I

    move-result p0

    return p0
.end method

.method public bridge synthetic isGestureCompleted()Z
    .registers 1

    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialController;->isGestureCompleted()Z

    move-result p0

    return p0
.end method

.method public onBackGestureAttempted(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;)V
    .registers 3

    sget-object v0, Lcom/android/quickstep/interaction/SandboxModeTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    const/4 v0, 0x2

    if-eq p1, v0, :cond_26

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x5

    if-eq p1, v0, :cond_18

    goto :goto_30

    :cond_18
    const p1, 0x7f12046a

    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(I)V

    goto :goto_30

    :cond_1f
    const p1, 0x7f120113

    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(I)V

    goto :goto_30

    :cond_26
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->showRippleEffect(Ljava/lang/Runnable;)V

    const p1, 0x7f120469

    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(I)V

    :goto_30
    return-void
.end method

.method public bridge synthetic onMotionPaused(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->onMotionPaused(Z)V

    return-void
.end method

.method public onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V
    .registers 4

    sget-object v0, Lcom/android/quickstep/interaction/SandboxModeTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_32

    goto :goto_31

    :pswitch_c  #0x4, 0x5, 0x6, 0x7
    const p1, 0x7f120252

    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(I)V

    goto :goto_31

    :pswitch_13  #0x3
    new-instance p1, Lcom/android/quickstep/interaction/g;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/quickstep/interaction/g;-><init>(Lcom/android/quickstep/interaction/SandboxModeTutorialController;I)V

    invoke-virtual {p0, p2, p2, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->fadeOutFakeTaskView(ZZLjava/lang/Runnable;)V

    goto :goto_31

    :pswitch_1d  #0x2
    new-instance p1, Lcom/android/quickstep/interaction/g;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/quickstep/interaction/g;-><init>(Lcom/android/quickstep/interaction/SandboxModeTutorialController;I)V

    invoke-virtual {p0, p2, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->animateFakeTaskViewHome(Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    goto :goto_31

    :pswitch_27  #0x1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->showRippleEffect(Ljava/lang/Runnable;)V

    const p1, 0x7f120468

    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(I)V

    :goto_31
    return-void

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_27  #00000001
        :pswitch_1d  #00000002
        :pswitch_13  #00000003
        :pswitch_c  #00000004
        :pswitch_c  #00000005
        :pswitch_c  #00000006
        :pswitch_c  #00000007
    .end packed-switch
.end method

.method public bridge synthetic setNavBarGestureProgress(Ljava/lang/Float;)V
    .registers 2
    .param p1  # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->setNavBarGestureProgress(Ljava/lang/Float;)V

    return-void
.end method
