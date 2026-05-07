.class public Lcom/android/launcher3/OplusBubbleTextView;
.super Lcom/android/launcher3/BubbleTextView;
.source ""

# interfaces
.implements Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;
.implements Lcom/android/launcher/IHorizontalIcon;
.implements Lcom/android/launcher3/util/ViewPool$Reusable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/OplusBubbleTextView$ViewAlphaAnimatorCallBacks;
    }
.end annotation


# static fields
.field private static final FLOAT_0:F = 0.0f

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_VIEW_ALPHA:I = 0x1

.field private static final POINTER_AREA_ENTER_HOTSPOT:I = 0x2

.field private static final POINTER_AREA_ENTER_VIEW:I = 0x1

.field private static final POINTER_AREA_EXIT_VIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OplusBubbleTextView"

.field private static final TEXT_VISIBLE_THRESHOLD:F = 0.5f


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mDefaultPointerIcon:Landroid/view/PointerIcon;

.field private mDragSource:Lcom/android/launcher3/DragSource;

.field private mFolder:Lcom/android/launcher3/folder/Folder;

.field private mHasInitSpring:Z

.field public mIconVisibleSizePx:I

.field private mIsRTL:Z

.field private mIsRecoveryStatus:Z

.field private mOnlyOneTimeEnter:Z

.field private mOnlyOneTimeExit:Z

.field private mPointStatus:I

.field private mPreEvent:[F

.field private mSelectedIconRect:Landroid/graphics/Rect;

.field private mShadowColor:I

.field private mShadowR:F

.field private mShadowX:F

.field private mShadowY:F

.field private mSlowSpeedThreshold:F

.field private mTextAlphaPropertyAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/OplusBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/OplusBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRTL:Z

    iput-boolean p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mHasInitSpring:Z

    iput p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    iput-boolean p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRecoveryStatus:Z

    iput-boolean p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeEnter:Z

    iput-boolean p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeExit:Z

    const/4 p3, 0x2

    new-array v0, p3, [F

    iput-object v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPreEvent:[F

    const/high16 v0, 0x40a00000  # 5.0f

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mSlowSpeedThreshold:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRTL:Z

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    const-string v1, "OplusBubbleTextView"

    if-eqz v0, :cond_3c

    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string p1, "fold screen expand state set mLayoutHorizontal false"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    :cond_3c
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-boolean p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRTL:Z

    iput-boolean p2, p1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p2, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    iput p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIconVisibleSizePx:I

    iget p2, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v2, 0x1

    if-eqz p2, :cond_70

    const/16 v3, 0x9

    if-ne p2, v3, :cond_58

    goto :goto_70

    :cond_58
    if-ne p2, v2, :cond_5f

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_7e

    :cond_5f
    if-ne p2, p3, :cond_7e

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f070602

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_7e

    :cond_70
    :goto_70
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f070d6d

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_7e
    :goto_7e
    iget-object p2, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, p2, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-static {p2}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/android/launcher3/IBubbleTextViewExt;->setLauncher(Lcom/android/launcher3/views/ActivityContext;)V

    :cond_8d
    iget p2, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    if-eqz p2, :cond_99

    const/16 v0, 0x8

    if-eq p2, v0, :cond_99

    if-eq p2, v2, :cond_99

    if-ne p2, p3, :cond_b8

    :cond_99
    iget-boolean p2, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eq p2, v0, :cond_b8

    const-string p2, "BubbleTextView mLayoutHorizontal = "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , isLandscape "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-static {p2, v0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    :cond_b8
    iget-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-eqz p1, :cond_c8

    iget-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRTL:Z

    if-eqz p1, :cond_c3

    const/16 p1, 0x15

    goto :goto_c5

    :cond_c3
    const/16 p1, 0x13

    :goto_c5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_c8
    sget-object p1, Lcom/android/launcher3/touch/ItemClickHandler;->TOUCH_LISTENER:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isAppNameShowInTwoLines()Z

    move-result p1

    if-eqz p1, :cond_dc

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_df

    :cond_dc
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_df
    iget-object p1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string p1, "ColorBubbleTextView constuct method isRtl="

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRTL:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mLayoutHorizontal="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    invoke-static {p1, p0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/launcher3/OplusBubbleTextView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mTextAlphaPropertyAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private adjustCompoundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-direct {p0}, Lcom/android/launcher3/OplusBubbleTextView;->getRegularCompoundDrawablePadding()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconDisplay()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_23

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    const-string v2, "Fold screen expanded in supper power workspace drawable padding:"

    const-string v3, "OplusBubbleTextView"

    invoke-static {v2, v1, v3}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_23
    if-eqz p1, :cond_29

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_29
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_35

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_35
    return-void
.end method

.method private doShadowAnimByPosition(ILandroid/view/MotionEvent;)V
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2b

    if-eq p1, v0, :cond_8

    goto :goto_57

    :cond_8
    iget p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    if-ne p1, v2, :cond_25

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    iget-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeEnter:Z

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->prepareForShadowAnim(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, v2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setDrawShadowFlag(Z)V

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, v2, v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->playSpiritAnimation(ZZ)V

    iput-boolean v2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeEnter:Z

    iput-boolean v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeExit:Z

    :cond_25
    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->upgradeTranslation(Landroid/view/MotionEvent;)V

    goto :goto_57

    :cond_2b
    iget p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    if-ne p1, v0, :cond_52

    iput v2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    iget-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeExit:Z

    if-nez p1, :cond_52

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->prepareForShadowAnim(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setLeftLocation(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-direct {p0, p2}, Lcom/android/launcher3/OplusBubbleTextView;->isSpeedSlow(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->playSpiritAnimation(ZZ)V

    iput-boolean v2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeExit:Z

    iput-boolean v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeEnter:Z

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setTranslationTo(F)V

    :cond_52
    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->prepareForShadowAnim(Landroid/view/MotionEvent;)V

    :goto_57
    return-void
.end method

.method private getColorIconBounds(Landroid/view/View;Landroid/graphics/Rect;I)V
    .registers 5

    iget-boolean p0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-eqz p0, :cond_1f

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p0, v0

    sub-int v0, p0, p3

    goto :goto_28

    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_26

    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p0, p3

    div-int/lit8 v0, p0, 0x2

    :goto_26
    add-int p0, v0, p3

    :goto_28
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    add-int/2addr p3, p1

    invoke-virtual {p2, v0, p1, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getRegularCompoundDrawablePadding()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    iget p0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    return p0

    :cond_12
    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1e

    iget p0, v0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    return p0

    :cond_1e
    iget p0, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    return p0
.end method

.method private isLimitedIconEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v0

    if-eq v0, v1, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_30

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :cond_30
    :goto_30
    return v1
.end method

.method private isSpeedSlow(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPreEvent:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPreEvent:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, v0

    float-to-double v4, p1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    iget p0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mSlowSpeedThreshold:F

    float-to-double p0, p0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_2a

    move v2, v3

    :cond_2a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "speed is : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "speed is Slow ？ "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusBubbleTextView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private updateAlphaValue(I)V
    .registers 4

    const-string/jumbo v0, "updateAlphaValue: "

    const-string v1, "OplusBubbleTextView"

    invoke-static {v0, p1, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_f

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->setAlpha(F)V

    :cond_f
    return-void
.end method


# virtual methods
.method public applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    const-string v0, "applyCompoundDrawables() mLayoutHorizontal:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    const-string v3, "OplusBubbleTextView"

    invoke-static {v0, v2, v3}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->adjustCompoundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRTL:Z

    if-eqz v0, :cond_27

    invoke-virtual {p0, v2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2e

    :cond_27
    invoke-virtual {p0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2e

    :cond_2b
    invoke-virtual {p0, v2, p1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_2e
    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    return-void
.end method

.method public applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/IBubbleTextViewExt;->overrideApplyDotStateWithoutSuper(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    return-void
.end method

.method public applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    instance-of v0, p1, Lcom/android/launcher/model/data/PromiseAppInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    move-object v0, p1

    check-cast v0, Lcom/android/launcher/model/data/PromiseAppInfo;

    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v2}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    iget v0, v0, Lcom/android/launcher/model/data/PromiseAppInfo;->level:I

    invoke-interface {v2, v0, v1, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->applyOplusProgressLevel(IZZ)V

    goto :goto_4a

    :cond_21
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    :cond_2a
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    goto :goto_4a

    :cond_32
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v0

    if-nez v0, :cond_4a

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    :cond_43
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    :cond_4a
    :goto_4a
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/OplusBubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->applyFromApplicationInfoExitPoint(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    const/4 v1, 0x0

    if-nez p2, :cond_13

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_13
    const/4 v2, 0x1

    instance-of v3, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_1e

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->checkNeedDownloadAnimation(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, p2, v2, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->applyPromiseState(ZZZ)V

    :cond_23
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->applyLoadingState(Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    :cond_35
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/OplusBubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/IBubbleTextViewExt;->applyFromWorkspaceItemExitPoint(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 11

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setForceDarkAllowed(Z)V

    :cond_9
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    const/4 v3, 0x2

    if-eq v0, v3, :cond_21

    const/4 v3, 0x5

    if-eq v0, v3, :cond_21

    const/16 v3, 0x8

    if-eq v0, v3, :cond_21

    if-eq v0, v2, :cond_21

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1f

    goto :goto_21

    :cond_1f
    move v0, v1

    goto :goto_22

    :cond_21
    :goto_21
    move v0, v2

    :goto_22
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_30

    if-eqz v0, :cond_30

    move v0, v2

    goto :goto_31

    :cond_30
    move v0, v1

    :goto_31
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3, v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v3

    if-nez v3, :cond_56

    new-instance v3, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;

    iget-object v4, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->applyScaleAndOffset()V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    :cond_56
    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v3, :cond_5e

    const/16 v4, 0xca

    if-ne v3, v4, :cond_d9

    :cond_5e
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->isNewInstallingOrUpgradingApp()Z

    move-result v3

    if-nez v3, :cond_d9

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_d9

    iget-object v4, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v4

    iget-object v5, v4, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v5, p1}, Lcom/android/launcher3/icons/IIconCacheExt;->getFancyIcon(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_88

    iget-object v5, v4, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v6, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-interface {v5, v3, v6, v6}, Lcom/android/launcher3/icons/IIconCacheExt;->loadFancyIconCache(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_88
    instance-of v3, v5, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v3, :cond_d9

    move-object v3, v5

    check-cast v3, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    invoke-interface {v3}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onResume()V

    invoke-interface {v3}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onResumeThread()V

    if-eqz v0, :cond_c2

    move-object v6, v5

    check-cast v6, Lcom/oplus/iconctrl/IDarkEffectCtrl;

    const/16 v7, 0xff

    invoke-virtual {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    iget-object v6, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget v6, v6, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_c2

    const v6, 0x7f080638

    invoke-interface {v3, v2, v6}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->setWorkFlag(ZI)V

    iget-object v6, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const v7, 0x7f040379

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/icons/GraphicsUtils;->getFloat(Landroid/content/Context;IF)F

    move-result v6

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v7

    invoke-interface {v3, v7, v6}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->setIsDisabled(ZF)V

    :cond_c2
    invoke-virtual {p0, v5}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v6, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v6, :cond_d2

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->setFancyIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_d2
    iget-object v3, v4, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v3, p1, v5}, Lcom/android/launcher3/icons/IIconCacheExt;->putFancyIcon(Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/drawable/Drawable;)V

    move v3, v2

    goto :goto_da

    :cond_d9
    move v3, v1

    :goto_da
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_106

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyIconAndLabel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", hasFancyIcon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", iconDrawable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusBubbleTextView"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_106
    if-eqz v3, :cond_14a

    iget-object v4, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_14a

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v3

    if-eqz v3, :cond_149

    iget-object v3, v3, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v3}, Lcom/android/launcher3/icons/IIconCacheExt;->getFancyIcons()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_149

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_130
    :goto_130
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_149

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    instance-of v5, v4, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v5, :cond_130

    check-cast v4, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    invoke-interface {v4}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onPause()V

    invoke-interface {v4}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onPauseThread()V

    goto :goto_130

    :cond_149
    move v3, v1

    :cond_14a
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_155

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_156

    :cond_155
    const/4 v4, 0x0

    :goto_156
    if-eqz v4, :cond_166

    iget-object v5, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher/AppLimitedStartUpManager;->isAppLimited(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_166

    move v5, v2

    goto :goto_167

    :cond_166
    move v5, v1

    :goto_167
    if-eqz v5, :cond_17d

    invoke-direct {p0}, Lcom/android/launcher3/OplusBubbleTextView;->isLimitedIconEnabled()Z

    move-result v5

    if-eqz v5, :cond_17d

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/launcher/AppLimitedStartUpManager;->getLimitedDrawable(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_182

    :cond_17d
    if-nez v3, :cond_182

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_182
    :goto_182
    invoke-static {}, Lcom/android/launcher/NewUpdatedAppsManager;->getInstance()Lcom/android/launcher/NewUpdatedAppsManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/launcher/NewUpdatedAppsManager;->isNewUpdatedApp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->isOplusExpansionDownloadingApp()Z

    move-result v0

    if-nez v0, :cond_197

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_197
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b8

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_1b3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f1201e1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1b5

    :cond_1b3
    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    :goto_1b5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1b8
    return-void
.end method

.method public applyLimitedState(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyLimitedState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLimitedStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mLimitedStart:Z

    const-string v2, "OplusBubbleTextView"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mLimitedStart:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher/AppLimitedStartUpManager;->getLimitedDrawable(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_32

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :goto_32
    return-void
.end method

.method public canHoverAnimEnable()Z
    .registers 7

    instance-of v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDisableIconHoverAnim()Z

    move-result v2

    if-eqz v2, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isPopupDismissed()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconDisplay()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconDisplay()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_34

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconDisplay()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_34

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconDisplay()I

    move-result v2

    if-ne v2, v3, :cond_32

    goto :goto_34

    :cond_32
    move v2, v1

    goto :goto_35

    :cond_34
    :goto_34
    move v2, v3

    :goto_35
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v4, :cond_7b

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v4, :cond_4b

    const/16 v5, 0xca

    if-ne v4, v5, :cond_54

    :cond_4b
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_54

    if-eqz v2, :cond_54

    return v3

    :cond_54
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v4, :cond_7b

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v4, v3, :cond_7b

    sget-object v4, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isHeytapMarketShortcutType(Landroid/content/pm/ShortcutInfo;)Z

    move-result p0

    if-eqz p0, :cond_7b

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_7b

    if-eqz v2, :cond_7b

    move v1, v3

    :cond_7b
    return v1

    :cond_7c
    const-string p0, "OplusBubbleTextView"

    const-string v0, "Popu memu has shown, do nothing"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public clearShadowLayer()V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowColor:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowR:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowX:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowY:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->clearShadowLayer()V

    return-void
.end method

.method public createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mTextAlphaPropertyAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/launcher3/OplusBubbleTextView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/OplusBubbleTextView$1;-><init>(Lcom/android/launcher3/OplusBubbleTextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mTextAlphaPropertyAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public dispatchSetSelected(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->dispatchSetSelected(Z)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->onDispatchSetSelected(Z)V

    return-void
.end method

.method public drawDotIfNecessary(Landroid/graphics/Canvas;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->overrideDrawDotIfNecessaryWithoutSuper(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getDragSource()Lcom/android/launcher3/DragSource;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mDragSource:Lcom/android/launcher3/DragSource;

    return-object p0
.end method

.method public getFolder()Lcom/android/launcher3/folder/Folder;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mFolder:Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

.method public getIconBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-direct {p0, p0, p1, v0}, Lcom/android/launcher3/OplusBubbleTextView;->getColorIconBounds(Landroid/view/View;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public getIconDisplay()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result p0

    return p0
.end method

.method public getIconRect(Landroid/graphics/Rect;)V
    .registers 2

    if-nez p1, :cond_7

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getRealIconBounds(Landroid/graphics/Rect;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    iget p0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIconVisibleSizePx:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    invoke-virtual {p1, p0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getSelectedIconRect()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mSelectedIconRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public isLayoutHorizontal()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    return p0
.end method

.method public isTextVisible()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    const/high16 v0, 0x3f000000  # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public onAppUpdateDotSwitchChange()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-interface {v0, p0}, Lcom/android/launcher3/IBubbleTextViewExt;->applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const-string v0, "OplusBubbleTextView#onDraw("

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->canHoverAnimEnable()Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v3}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->canDrawShadow()Z

    move-result v3

    if-eqz v3, :cond_46

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_41

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_41
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->recoveryIconWhenEnterToggleBar()V

    :cond_46
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BubbleTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_1f

    const-string p1, "Current mode is TouchMode? "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->isInTouchMode()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusBubbleTextView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-nez v0, :cond_9f

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isSpiritAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_9f

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9f

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_28

    goto/16 :goto_9f

    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mHasInitSpring:Z

    const/4 v3, 0x1

    if-nez v2, :cond_38

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->initSpiritAnimParams()V

    iput-boolean v3, p0, Lcom/android/launcher3/OplusBubbleTextView;->mHasInitSpring:Z

    :cond_38
    const/4 v2, 0x7

    if-eq v1, v2, :cond_7c

    const/16 p1, 0x9

    if-eq v1, p1, :cond_6e

    const/16 p1, 0xa

    if-eq v1, p1, :cond_44

    goto :goto_9e

    :cond_44
    iget-object p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setPointerIcon(Landroid/view/PointerIcon;)V

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isPointerAnimRunning()Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->cancelPointerAnim()V

    goto :goto_63

    :cond_59
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setDrawShadowFlag(Z)V

    :goto_63
    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeExit:Z

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeEnter:Z

    iget-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRecoveryStatus:Z

    if-eqz p1, :cond_9e

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRecoveryStatus:Z

    goto :goto_9e

    :cond_6e
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->updateIconBounds()V

    iput v3, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    iget-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRecoveryStatus:Z

    if-eqz p1, :cond_9e

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRecoveryStatus:Z

    goto :goto_9e

    :cond_7c
    iget v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    if-eqz v1, :cond_9e

    iget-boolean v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRecoveryStatus:Z

    if-eqz v1, :cond_85

    goto :goto_9e

    :cond_85
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1, p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->whereIsThePointer(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/OplusBubbleTextView;->doShadowAnimByPosition(ILandroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPreEvent:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v1, v0

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPreEvent:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, p0, v3

    :cond_9e
    :goto_9e
    return v0

    :cond_9f
    :goto_9f
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onRecycle()V
    .registers 1

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->handleOnTouchEvent(Landroid/view/MotionEvent;)Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/icons/touch/TouchEventResult;->isHandled()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Lcom/android/launcher3/icons/touch/TouchEventResult;->isInterceptBubbleTextViewSuperMethod()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_18

    :cond_13
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_18
    :goto_18
    invoke-virtual {v0}, Lcom/android/launcher3/icons/touch/TouchEventResult;->isHandled()Z

    move-result p0

    return p0
.end method

.method public reset()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/BubbleTextView;->reset()V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    return-void
.end method

.method public resetPointer()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method

.method public resetShadowLayer()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowColor:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowR:F

    iget v2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowX:F

    iget v3, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowY:F

    iget p0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowColor:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public setAlpha(F)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setDragSource(Lcom/android/launcher3/DragSource;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mDragSource:Lcom/android/launcher3/DragSource;

    return-void
.end method

.method public setFolder(Lcom/android/launcher3/folder/Folder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mFolder:Lcom/android/launcher3/folder/Folder;

    return-void
.end method

.method public setForceHideDot(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->overrideSetForceHideDotWithoutSuper(Z)V

    return-void
.end method

.method public setIconVisibleForFIView(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    :cond_c
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_11
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_16

    goto :goto_17

    :cond_16
    move v1, v0

    :goto_17
    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    invoke-direct {p0, v2}, Lcom/android/launcher3/OplusBubbleTextView;->adjustCompoundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    iget-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRTL:Z

    if-eqz p1, :cond_2b

    invoke-virtual {p0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_32

    :cond_2b
    invoke-virtual {p0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_32

    :cond_2f
    invoke-virtual {p0, v1, v2, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_32
    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    return-void
.end method

.method public setIconVisibleSizePx(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIconVisibleSizePx:I

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setSelectedIconRect(Landroid/graphics/Rect;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mSelectedIconRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_c

    instance-of v0, p1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/OplusLauncherModel;->checkItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setTextAlpha(F)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    return-void
.end method

.method public setTextAppearance(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->onTextAppearanceChanged(I)V

    return-void
.end method

.method public setTextVisibility()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->shouldTextBeVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    return-void
.end method

.method public setTextVisibility(Z)V
    .registers 4

    sget-object v0, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/util/FontManager;

    iget v0, v0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    const/4 p1, 0x0

    :cond_14
    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mTextAlphaPropertyAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mTextAlphaPropertyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mTextAlphaPropertyAnimator:Landroid/animation/ObjectAnimator;

    :cond_26
    if-eqz p1, :cond_41

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    const/high16 v1, 0x437f0000  # 255.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;->textInVisibleAnimation()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->cancelTextAlphaAnimator()V

    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    goto :goto_49

    :cond_41
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->cancelTextAlphaAnimator()V

    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    :cond_49
    :goto_49
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v1, :cond_60

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz p1, :cond_5b

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, v0}, Lcom/android/launcher3/IBubbleTextViewExt;->applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    goto :goto_60

    :cond_5b
    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_60
    :goto_60
    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->clearAnimation()V

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->updateAlphaValue(I)V

    return-void
.end method

.method public shouldTextBeVisible()Z
    .registers 6

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    :cond_13
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_17
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_1e

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    const/16 v1, -0x65

    const/4 v2, 0x1

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    move-result v3

    if-eqz v3, :cond_33

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v3, v1, :cond_33

    return v2

    :cond_33
    if-eqz v0, :cond_57

    iget v3, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_57

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-eq v0, v1, :cond_56

    const/16 v1, -0x67

    if-eq v0, v1, :cond_56

    sget-object v0, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/FontManager;

    iget p0, p0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_56

    goto :goto_57

    :cond_56
    const/4 v2, 0x0

    :cond_57
    :goto_57
    return v2
.end method

.method public updateIconDisplay(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->setIconDisplay(I)V

    return-void
.end method

.method public updateRecoveryStatus()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRecoveryStatus:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeExit:Z

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeEnter:Z

    return-void
.end method
