.class public Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "GestureGuideView"

.field private static final WINDOWING_MODE_COMPACTWINDOW:I = 0x78


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

.field private mShowForPkg:Ljava/lang/String;

.field private mTips:Landroid/widget/PopupWindow;

.field private mTipsLayout:Landroid/view/View;

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mWm:Landroid/view/WindowManager;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->lambda$show$0()V

    return-void
.end method

.method private synthetic lambda$show$0()V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->startShow()V

    return-void
.end method

.method private startShow()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mTips:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    const/16 v3, 0x31

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->hide()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public hide()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mWm:Landroid/view/WindowManager;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mTips:Landroid/widget/PopupWindow;

    if-nez v0, :cond_f

    goto :goto_17

    :cond_f
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public initView(II)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wm/shell/R$layout;->gesture_guide_container:I

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/android/wm/shell/R$id;->zoom_gesture_guide_animate:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/wm/shell/R$layout;->gesture_tips_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mTipsLayout:Landroid/view/View;

    new-instance p1, Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mTipsLayout:Landroid/view/View;

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mTips:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mTips:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mTips:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mTipsLayout:Landroid/view/View;

    sget v0, Lcom/android/wm/shell/R$id;->contentTv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->hide()V

    return-void
.end method

.method public setShowForSpecialPkg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mShowForPkg:Ljava/lang/String;

    return-void
.end method

.method public show()Z
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    const-string v1, "GestureGuideView"

    const/4 v2, 0x0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mTips:Landroid/widget/PopupWindow;

    if-nez v0, :cond_d

    goto/16 :goto_d0

    :cond_d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p0, "GestureGuideView is showing."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_19
    const/4 v0, 0x3

    :try_start_1a
    invoke-static {v0}, Lcom/oplus/compat/app/ActivityManagerNative;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_87

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_87

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mShowForPkg:Ljava/lang/String;

    if-eqz v5, :cond_87

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    if-eq v4, v3, :cond_50

    const/16 v5, 0x78

    if-eq v4, v5, :cond_50

    goto :goto_6a

    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Show gesture guidance animation for special pkg:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mShowForPkg:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mShowForPkg:Ljava/lang/String;

    goto :goto_87

    :cond_6a
    :goto_6a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancel the gesture guidance animation. topAppPkgName="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " topActivityWindowMode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_1a .. :try_end_86} :catch_cb

    return v2

    :cond_87
    :goto_87
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_a1

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_a1

    const-string p0, "Current is not inner screen."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_a1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lx/a;

    invoke-direct {v1, p0}, Lx/a;-><init>(Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x1000508

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v1, "ZoomGestureGuideView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->mWm:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v3

    :catch_cb
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :cond_d0
    :goto_d0
    const-string p0, "Some views are null!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
