.class public Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;
.super Lcom/oplus/widget/OplusViewPager;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "SideGesturesViewPager"


# instance fields
.field private mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

.field private final mTransFormer:Lcom/android/launcher/guide/side/SideSlipGesturesGuidePageTransformer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/widget/OplusViewPager;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePageTransformer;

    invoke-direct {p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePageTransformer;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->mTransFormer:Lcom/android/launcher/guide/side/SideSlipGesturesGuidePageTransformer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/widget/OplusViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePageTransformer;

    invoke-direct {p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePageTransformer;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->mTransFormer:Lcom/android/launcher/guide/side/SideSlipGesturesGuidePageTransformer;

    return-void
.end method

.method private getPositionFromState(I)I
    .registers 2

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->isJustShowGuide()Z

    move-result p0

    if-eqz p0, :cond_c

    add-int/lit8 p1, p1, -0x1

    :cond_c
    return p1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/widget/OplusViewPager;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getCurrentGesturesState()I

    move-result v0

    iget-object p0, p0, Lcom/oplus/widget/OplusViewPager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSideSlipEnable(Landroid/content/Context;I)V

    return-void
.end method

.method public onBackPressed()V
    .registers 4

    const-string/jumbo v0, "onBackPressed "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/widget/OplusViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GesturesGuide"

    const-string v2, "SideGesturesViewPager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/widget/OplusViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/oplus/widget/OplusViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->onBackPressed()V

    :cond_28
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onPageResume()V
    .registers 4

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getCurrentGesturesState()I

    move-result v0

    const-string/jumbo v1, "onPageResume "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/widget/OplusViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GesturesGuide"

    const-string v2, "SideGesturesViewPager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/widget/OplusViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/oplus/widget/OplusViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;

    invoke-virtual {v0}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->onResume()V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    invoke-virtual {v0, p0}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->setGestureGuideListener(Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;)V

    :cond_3d
    return-void
.end method

.method public onPageStop()V
    .registers 4

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getCurrentGesturesState()I

    move-result v0

    const-string/jumbo v1, "onPageStop "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/widget/OplusViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GesturesGuide"

    const-string v2, "SideGesturesViewPager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/widget/OplusViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/oplus/widget/OplusViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->onStop()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->setGestureGuideListener(Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;)V

    :cond_3c
    return-void
.end method

.method public onSideSlipGestureStateChanged()V
    .registers 6

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getCurrentGesturesState()I

    move-result v0

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->isValidState(I)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GesturesGuide"

    const-string v3, "SideGesturesViewPager"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->getPositionFromState(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->setCurrentItem(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCurrentItem end:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/widget/OplusViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->onPageResume()V

    invoke-virtual {p0}, Lcom/oplus/widget/OplusViewPager;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object p0, p0, Lcom/oplus/widget/OplusViewPager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSideSlipEnable(Landroid/content/Context;I)V

    :cond_5a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public setCurrentItem(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCurrentItem:  item:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GesturesGuide"

    const-string v2, "SideGesturesViewPager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getCurrentGesturesState()I

    move-result v0

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getLastState()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3a

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oplus/widget/OplusViewPager;->setPageTransformer(ZLcom/oplus/widget/OplusViewPager$PageTransformer;)V

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/oplus/widget/OplusViewPager;->setCurrentItem(IZ)V

    goto :goto_42

    :cond_3a
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->mTransFormer:Lcom/android/launcher/guide/side/SideSlipGesturesGuidePageTransformer;

    invoke-virtual {p0, v1, v0}, Lcom/oplus/widget/OplusViewPager;->setPageTransformer(ZLcom/oplus/widget/OplusViewPager$PageTransformer;)V

    invoke-super {p0, p1, v1}, Lcom/oplus/widget/OplusViewPager;->setCurrentItem(IZ)V

    :goto_42
    return-void
.end method

.method public setListener(Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    return-void
.end method
