.class public Lcom/android/launcher/views/AllAppsBatchTipView;
.super Lcom/android/launcher/views/CommonAlertView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/views/AllAppsBatchTipView$ButtonClickCallBack;
    }
.end annotation


# static fields
.field public static final APP_TIP_BUTTON_ALPHA_NIGHT_DISABLE:F = 0.5f

.field public static final APP_TIP_BUTTON_ALPHA_NORMAL:F = 0.95f

.field public static final APP_TIP_BUTTON_ALPHA_NORMAL_DISABLE:F = 0.35f

.field private static final TAG:Ljava/lang/String; = "AllAppsBatchTipView"


# instance fields
.field public mButtonClickCallBack:Lcom/android/launcher/views/AllAppsBatchTipView$ButtonClickCallBack;

.field public mCouiNavigationView:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

.field public mIsNightMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/views/AllAppsBatchTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/views/CommonAlertView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/views/AllAppsBatchTipView;->mIsNightMode:Z

    return-void
.end method

.method public static checkAndRemoveAllAppsBatchTipView(Lcom/android/launcher3/views/ActivityContext;)V
    .registers 4

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_3f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher/views/AllAppsBatchTipView;

    if-eqz v2, :cond_3c

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndRemoveAllAppsBatchTipView , i : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AllAppsBatchTipView"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_3f
    return-void
.end method


# virtual methods
.method public animEnd()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher/views/AllAppsBatchTipView;->closeComplete()V

    :cond_d
    return-void
.end method

.method public animUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/views/CommonAlertView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher/views/AllAppsBatchTipView;->closeComplete()V

    :cond_d
    return-void
.end method

.method public closeComplete()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher/views/CommonAlertView;->closeComplete()V

    iget-object p0, p0, Lcom/android/launcher/views/AllAppsBatchTipView;->mButtonClickCallBack:Lcom/android/launcher/views/AllAppsBatchTipView$ButtonClickCallBack;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/android/launcher/views/AllAppsBatchTipView$ButtonClickCallBack;->onCloseButtonDialogCallBack()V

    :cond_a
    return-void
.end method

.method public getLayoutInflateId()I
    .registers 1

    const p0, 0x7f0d004f

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const v0, 0x7f0a037e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iput-object p1, p0, Lcom/android/launcher/views/AllAppsBatchTipView;->mCouiNavigationView:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    new-instance v0, Lcom/android/launcher/views/AllAppsBatchTipView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/views/AllAppsBatchTipView$1;-><init>(Lcom/android/launcher/views/AllAppsBatchTipView;)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->setOnNavigationItemSelectedListener(Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method public isOfType(I)Z
    .registers 2

    const/high16 p0, 0x200000

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public showEnableContainer(ZZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/views/AllAppsBatchTipView;->mCouiNavigationView:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0a0083

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/android/launcher/views/AllAppsBatchTipView;->mCouiNavigationView:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    const p2, 0x7f0a05af

    invoke-interface {p0, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_22
    return-void
.end method

.method public showTipsView(Lcom/android/launcher/views/AllAppsBatchTipView$ButtonClickCallBack;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/views/AllAppsBatchTipView;->mButtonClickCallBack:Lcom/android/launcher/views/AllAppsBatchTipView$ButtonClickCallBack;

    invoke-virtual {p0}, Lcom/android/launcher/views/CommonAlertView;->animateShow()V

    return-void
.end method
