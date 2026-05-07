.class public Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AUTO_SHOW_SPLIT_TIP:Ljava/lang/String; = "split_tip"

.field private static final MSG_HIDE_SPLIT_TIPS:I = 0x2

.field private static final MSG_SHOW_SPLIT_TIPS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TipsManager"

.field private static sDefaultTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;


# instance fields
.field private mBarHeight:I

.field private mBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHandler:Landroid/os/Handler;

.field private mPositionX:F

.field private mPositionY:F

.field private mShouldRecord:Z

.field private mTaskId:I

.field private mText:Ljava/lang/String;

.field private mTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field private mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

.field private mTipsDerection:I

.field private mWM:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTaskId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mShouldRecord:Z

    new-instance v0, Lcom/android/launcher/guide/j;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/j;-><init>(Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    new-instance v0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager$1;-><init>(Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager$2;-><init>(Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mWM:Landroid/view/WindowManager;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->lambda$new$0()V

    return-void
.end method

.method private addTipsContainerView()V
    .registers 3

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->createView()Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    const-string v0, "TipsManager"

    const-string v1, "TipsContainerView addView"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mWM:Landroid/view/WindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->getView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1d
    return-void
.end method

.method private computePosition(Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    if-nez v0, :cond_b

    const-string v0, "TipsManager"

    const-string v1, "mTipsContainerView null, computePosition error"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wm/shell/R$string;->oplus_split_control_bar_hint:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    const v1, 0x3f4ccccd  # 0.8f

    iget v2, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mBarHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, p1

    invoke-direct {p0, v0, v2}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->setPosition(FF)V

    const/16 p1, 0x80

    iput p1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsDerection:I

    return-void
.end method

.method private createView()Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;
    .registers 3

    new-instance v0, Lcom/coui/appcompat/tooltips/COUIToolTips;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-instance v0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->setTipsManager(Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TipsContainerView createView start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TipsManager"

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    return-object p0
.end method

.method private deleteTipsContainerView()V
    .registers 3

    const-string v0, "TipsManager"

    const-string v1, "TipsContainerView removeView"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->getTipsView()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->getTipsView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->getTipsView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_26
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->removeView()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;
    .registers 3

    const-class v0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->sDefaultTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->sDefaultTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    :cond_e
    sget-object p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->sDefaultTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private isFirstShow()Z
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v0, "split_tip"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method private isLeftOrTopBounds(Landroid/graphics/Rect;)Z
    .registers 2

    iget p0, p1, Landroid/graphics/Rect;->left:I

    if-nez p0, :cond_a

    iget p0, p1, Landroid/graphics/Rect;->top:I

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->tipsDismiss()V

    return-void
.end method

.method private removeView()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "removeView() WM removes view : "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TipsManager"

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->getTipsView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    return-void
.end method

.method private setPosition(FF)V
    .registers 3

    iput p1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mPositionX:F

    iput p2, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mPositionY:F

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->getTipsView()Landroid/widget/FrameLayout;

    move-result-object p1

    iget p2, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mPositionX:F

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setX(F)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->getTipsView()Landroid/widget/FrameLayout;

    move-result-object p1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mPositionY:F

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setY(F)V

    :cond_1c
    return-void
.end method

.method private tipsDismiss()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mShouldRecord:Z

    const-string/jumbo v1, "split_tip"

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->recordSharedPrefenceData(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->hideTips()V

    return-void
.end method


# virtual methods
.method public hideTips()V
    .registers 5

    const-string v0, "TipsManager"

    :try_start_2
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    if-eqz v1, :cond_4e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideTips final dismiss caller"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mShouldRecord:Z

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2d
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->deleteTipsContainerView()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_36

    goto :goto_4e

    :catch_36
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideTips error, e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->deleteTipsContainerView()V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public hideTipsIfNeed(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->isFirstShow()Z

    move-result v0

    if-eqz v0, :cond_17

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mShouldRecord:Z

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    const-string/jumbo v0, "split_tip"

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->recordSharedPrefenceData(Ljava/lang/String;I)V

    :cond_11
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_17
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_19
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    const-string p0, "TipsManager"

    const-string v0, "onDetachedFromWindow"

    invoke-static {p0, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordSharedPrefenceData(Ljava/lang/String;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setBarHeight(I)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mBarHeight:I

    return-void
.end method

.method public showTips()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    const-string v1, "TipsManager"

    if-nez v0, :cond_15

    const-string/jumbo v0, "showTips, mTipsContainerView need create"

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->addTipsContainerView()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->computePosition(Landroid/graphics/Rect;)V

    goto :goto_26

    :cond_15
    const-string/jumbo v0, "showTips, mTipsContainerView != null, removeView"

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->removeView()V

    :cond_26
    :goto_26
    return-void
.end method

.method public showTipsIfNeed(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 6

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->isFirstShow()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->isLeftOrTopBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_10

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mBounds:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTaskId:I

    :cond_10
    invoke-direct {p0, p2}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->isLeftOrTopBounds(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mBounds:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTaskId:I

    :cond_1a
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_20
    return-void
.end method

.method public showTipsImpl()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->getTipsView()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsContainerView:Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->getTipsView()Landroid/widget/FrameLayout;

    move-result-object v1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->mTipsDerection:I

    invoke-virtual {v0, v1, p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V

    const-string p0, "TipsManager"

    const-string/jumbo v0, "showTipsImpl"

    invoke-static {p0, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method
