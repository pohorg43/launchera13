.class public Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;
.implements Lcom/android/launcher3/icons/touch/ITouchProcessor;


# static fields
.field public static final MAX_ALPHA:I = 0xff

.field public static final PRESS_ANIMATION_DURATION:J = 0xc8L

.field private static final PRESS_ANIMATION_SCALE_MAX:F = 1.0f

.field public static final PRESS_ANIMATION_SCALE_MIN:F = 0.85f

.field private static final TAG:Ljava/lang/String; = "IconViewPressAnimatorImpl"

.field private static final VIEW_SCALE_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/BubbleTextView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

.field private mView:Lcom/android/launcher3/BubbleTextView;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "viewScale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->VIEW_SCALE_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BubbleTextView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;FLandroid/graphics/PorterDuffColorFilter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->lambda$doPressFeedbackAnimation$0(FLandroid/graphics/PorterDuffColorFilter;)V

    return-void
.end method

.method private doPressFeedbackAnimation(ZZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-nez v0, :cond_12

    new-instance v0, Lcom/android/launcher3/anim/IconPressAnimManager;

    new-instance v1, Landroidx/core/view/a;

    invoke-direct {v1, p0}, Landroidx/core/view/a;-><init>(Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;)V

    iget-object v2, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/IconPressAnimManager;-><init>(Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    :cond_12
    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/anim/IconPressAnimManager;->doPressFeedbackAnim(ZZ)V

    return-void
.end method

.method private synthetic lambda$doPressFeedbackAnimation$0(FLandroid/graphics/PorterDuffColorFilter;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_5c

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v0

    if-nez v0, :cond_5c

    instance-of v0, p1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v1, :cond_3a

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    :cond_3a
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result p0

    if-eqz p0, :cond_4a

    const-string p0, "IconViewPressAnimatorImpl"

    const-string p1, "dynamic icon don\'t apply when icon is disable"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    :cond_4a
    check-cast p1, Lcom/oplus/iconctrl/IDarkEffectCtrl;

    const/16 p0, 0xff

    invoke-interface {p1, p0, p2}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    goto :goto_5c

    :cond_52
    instance-of p0, p1, Lcom/android/launcher/download/DownloadProgressDrawable;

    if-nez p0, :cond_59

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_59
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_5c
    :goto_5c
    return-void
.end method

.method private shouldPlayPressAnimation(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_28

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/common/util/WidgetUtils;->INSTANCE:Lcom/android/common/util/WidgetUtils;

    invoke-virtual {v0, p1}, Lcom/android/common/util/WidgetUtils;->isWorkProfileItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v0

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppUserId(I)Z

    move-result p1

    if-eqz p1, :cond_21

    return v1

    :cond_21
    return p0

    :cond_22
    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_28

    move p0, v1

    :cond_28
    return p0
.end method


# virtual methods
.method public getPressAnimationCurrentValue()F
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getScaleX()F

    move-result p0

    return p0

    :cond_b
    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager;->getCurrentAnimScale()F

    move-result p0

    return p0
.end method

.method public handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const-string v3, "LauncherIconFeedBackAnim"

    const/4 v4, 0x1

    if-eqz v2, :cond_a1

    if-eq v2, v4, :cond_6e

    const/4 v0, 0x2

    if-eq v2, v0, :cond_5d

    const/4 p2, 0x3

    if-eq v2, p2, :cond_1d

    goto/16 :goto_b3

    :cond_1d
    sget-object p2, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p2}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p2

    invoke-virtual {p2, v1, v3}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenAnimate(ZLjava/lang/String;)V

    iget-object p2, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p2}, Lcom/android/launcher3/IBubbleTextViewExt;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_48

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragObject()Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object p2

    if-eqz p2, :cond_45

    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    :cond_45
    move-object p2, v0

    move-object v0, v2

    goto :goto_49

    :cond_48
    move-object p2, v0

    :goto_49
    if-eqz v0, :cond_4d

    if-eq p2, p1, :cond_b3

    :cond_4d
    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-eqz p1, :cond_59

    invoke-virtual {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->cancel()V

    :cond_59
    invoke-virtual {p0, v4}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->resetPressAnimatorStateForTouch(Z)V

    goto :goto_b3

    :cond_5d
    invoke-static {p1, p2}, Lcom/android/launcher3/icons/touch/ValidTouchAreaController;->isEventInValidTouchArea(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_b3

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-eqz p0, :cond_b3

    invoke-virtual {p0}, Lcom/android/launcher3/anim/IconPressAnimManager;->cancel()V

    goto :goto_b3

    :cond_6e
    invoke-direct {p0, v0}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->shouldPlayPressAnimation(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-direct {p0, v1, v4}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->doPressFeedbackAnimation(ZZ)V

    :cond_77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v4, :cond_93

    invoke-static {p1, p2}, Lcom/android/launcher3/icons/touch/ValidTouchAreaController;->isEventInValidTouchArea(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_93

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isAccessibilityDynamicEffectDisabled(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_93

    iget-object p2, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    iget-boolean p2, p2, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-eqz p2, :cond_b3

    :cond_93
    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-eqz p1, :cond_9d

    invoke-virtual {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->cancel()V

    :cond_9d
    invoke-virtual {p0, v4}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->resetPressAnimatorStateForTouch(Z)V

    goto :goto_b3

    :cond_a1
    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenAnimate(ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->shouldPlayPressAnimation(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_b3

    invoke-direct {p0, v4, v4}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->doPressFeedbackAnimation(ZZ)V

    :cond_b3
    :goto_b3
    return v1
.end method

.method public resetPressAnimStateForFloating()V
    .registers 5

    const-string v0, "IconViewPressAnimatorImpl"

    const-string v1, "resetPressAnimStateForFloating"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/android/launcher3/anim/IconPressAnimManager;->cancel()V

    :cond_15
    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5f

    iget-object v2, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v2

    if-nez v2, :cond_5f

    instance-of v2, v1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    goto :goto_46

    :cond_45
    move-object v2, v3

    :goto_46
    if-eqz v2, :cond_54

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_54

    const-string v1, "dynamic icon don\'t apply when icon is disable"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    :cond_54
    check-cast v1, Lcom/oplus/iconctrl/IDarkEffectCtrl;

    const/16 v0, 0xff

    invoke-interface {v1, v0, v3}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    goto :goto_5f

    :cond_5c
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    :cond_6b
    return-void
.end method

.method public resetPressAnimStateForLongClick()V
    .registers 5

    const-string v0, "IconViewPressAnimatorImpl"

    const-string v1, "resetPressAnimStateForLongClick"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/android/launcher3/anim/IconPressAnimManager;->cancel()V

    :cond_13
    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5d

    iget-object v2, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v2

    if-nez v2, :cond_5d

    instance-of v2, v1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    goto :goto_44

    :cond_43
    move-object v2, v3

    :goto_44
    if-eqz v2, :cond_52

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_52

    const-string v1, "dynamic icon don\'t apply when icon is disable"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :cond_52
    check-cast v1, Lcom/oplus/iconctrl/IDarkEffectCtrl;

    const/16 v0, 0xff

    invoke-interface {v1, v0, v3}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    goto :goto_5d

    :cond_5a
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    return-void
.end method

.method public resetPressAnimatorStateForTouch(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v1

    if-nez v1, :cond_4d

    instance-of v1, v0, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    goto :goto_31

    :cond_30
    move-object v1, v2

    :goto_31
    if-eqz v1, :cond_41

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "IconViewPressAnimatorImpl"

    const-string v2, "dynamic icon don\'t apply when icon is disable"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    :cond_41
    move-object v1, v0

    check-cast v1, Lcom/oplus/iconctrl/IDarkEffectCtrl;

    const/16 v3, 0xff

    invoke-interface {v1, v3, v2}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    goto :goto_4d

    :cond_4a
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4d
    :goto_4d
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_50
    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    iget-object v1, v0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    const/high16 v2, 0x437f0000  # 255.0f

    iput v2, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_68

    return-void

    :cond_68
    if-eqz p1, :cond_8e

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-eqz p1, :cond_8e

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/IconPressAnimManager;->getResetPressDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_98

    :cond_8e
    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    :goto_98
    return-void
.end method
