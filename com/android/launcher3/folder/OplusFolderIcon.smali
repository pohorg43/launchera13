.class public Lcom/android/launcher3/folder/OplusFolderIcon;
.super Lcom/android/launcher3/folder/FolderIcon;
.source ""

# interfaces
.implements Lcom/android/launcher3/IHorizontalIcon;


# static fields
.field private static final DROP_IN_OVER_ANIMATION_DURATION:I = 0x10e

.field private static final FLOAT_1:F = 1.0f

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_SCALE:F = 1.0f

.field private static final MIN_ALPHA:I = 0x0

.field private static final MIN_SCALE:F = 0.0f

.field private static final PRESS_ANIMATION_CONSTANT_1:F = 1.0f

.field private static final PRESS_ANIMATION_DURATION:J = 0xc8L

.field private static final PRESS_ANIMATION_SCALE_MAX:F = 1.0f

.field private static final PRESS_ANIMATION_SCALE_MIN:F = 0.85f

.field private static final PRESS_ANIMATION_THRESHOLD:F = 0.4f

.field private static final PRESS_ANIMATION_WEIGHT:F = 0.15f

.field private static final PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "OplusFolderIcon"


# instance fields
.field private mDownloadCache:Lcom/android/launcher3/folder/FolderDownloadDrawableCache;

.field private mExposureWorkSpace:Ljava/lang/Boolean;

.field private mFolderIconPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

.field private mForceHideDot:Z

.field private mHideDotRunnable:Ljava/lang/Runnable;

.field private mIsRTL:Z

.field public mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayoutHorizontal:Z

.field public mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

.field private mOppositeView:Lcom/android/launcher3/folder/OplusFolderIcon;

.field public mReportAlarm:Lcom/android/launcher3/Alarm;

.field public mReportAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field private mShowDotRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd  # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd  # 0.2f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/folder/OplusFolderIcon;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/FolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher3/folder/OplusFolderIcon$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/OplusFolderIcon$1;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mExposureWorkSpace:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mDownloadCache:Lcom/android/launcher3/folder/FolderDownloadDrawableCache;

    new-instance v0, Lcom/android/launcher3/folder/n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/folder/n;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;I)V

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mHideDotRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher3/folder/n;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/folder/n;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;I)V

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mShowDotRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher3/folder/OplusFolderIcon$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/OplusFolderIcon$4;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    sget-object v0, Lcom/android/launcher3/R$styleable;->FolderIcon:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLayoutHorizontal:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private doPressFeedbackAnim(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mFolderIconPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-nez v0, :cond_17

    new-instance v0, Lcom/android/launcher3/anim/IconPressAnimManager;

    new-instance v1, Landroidx/core/view/a;

    invoke-direct {v1, p0}, Landroidx/core/view/a;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/anim/IconPressAnimManager;-><init>(Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mFolderIconPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    :cond_17
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mFolderIconPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/anim/IconPressAnimManager;->doPressFeedbackAnim(ZZ)V

    return-void
.end method

.method private drawBadgeNumber(Landroid/graphics/Canvas;)V
    .registers 6

    const-string v0, "drawBadgeNumbermmForceHideDot is : "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mForceHideDot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "dontShowDotInfo is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->dontShowDotInfo()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mDotScaleAnim is null? : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScaleAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    const-string v2, "OplusFolderIcon"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mForceHideDot:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScaleAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_63

    :cond_30
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    instance-of v0, v0, Lcom/android/launcher3/icons/OplusDotRenderer;

    if-eqz v0, :cond_63

    const-string v0, "drawBadgeNumber"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-object v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getRealFolderIconBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScale:F

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/PreviewBackground;->getScaleProgress()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    check-cast v0, Lcom/android/launcher3/icons/OplusDotRenderer;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->getNumberCount()I

    move-result v1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/launcher3/icons/OplusDotRenderer;->drawNumber(Landroid/graphics/Canvas;ILcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    :cond_63
    return-void
.end method

.method private drawDotInner(Landroid/graphics/Canvas;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mForceHideDot:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScaleAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_3e

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    if-nez v0, :cond_19

    :cond_13
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3e

    :cond_19
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->dontShowDotInfo()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-object v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getRealFolderIconBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScale:F

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/PreviewBackground;->getScaleProgress()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/icons/DotRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    :cond_3e
    return-void
.end method

.method public static fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/OplusFolderIcon;
    .registers 10

    iget-object v0, p3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u00a0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p3, Lcom/android/launcher3/model/data/FolderInfo;->isSysFolder:Z

    iget-object v0, p3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lcom/android/common/util/FolderNameHelper;->getDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setForceDarkAllowed(Z)V

    const p2, 0x7f0a0241

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/OplusBubbleTextView;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v1, :cond_7a

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070600

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    iput v3, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p2, v3, v1, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_9b

    :cond_7a
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v3, v4

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    if-eqz p2, :cond_94

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    const/16 v1, 0x15

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_9b

    :cond_94
    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    const/16 v1, 0x13

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    :goto_9b
    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v1, v1

    invoke-virtual {p2, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTag(Ljava/lang/Object;)V

    sget-object p2, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p3, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    iget-object p2, v0, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/DotRenderer;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    const p2, 0x7f12020f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-direct {p2, v0}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {p2, p3}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    sget-object p2, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/dragndrop/m;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/dragndrop/m;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolder;->fromXml(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object p2

    const-string v0, "OplusFolderIcon"

    if-eqz p2, :cond_132

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/launcher3/folder/Folder;->setDragController(Lcom/android/launcher3/dragndrop/DragController;)V

    invoke-virtual {p2, p0}, Lcom/android/launcher3/folder/Folder;->setFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V

    invoke-virtual {p2, p3}, Lcom/android/launcher3/folder/Folder;->bind(Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v1

    if-eqz v1, :cond_12e

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/aer/ProvisionManager;->isWorkFolder(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_12e

    iget-object v1, p2, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-nez v1, :cond_124

    const-string v1, "fromXml ColorFolderIcon add empty cellLayout"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->createAndAddNewPage()Lcom/android/launcher3/CellLayout;

    :cond_124
    const-string v1, "fromXml WorkFolder can\'t rename folderName"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_12e
    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderIcon;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    goto :goto_137

    :cond_132
    const-string p2, "folder xml file inflate error"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_137
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->applyDotState()V

    invoke-virtual {p3, p0}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    iget-object p2, p1, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget p2, p3, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    const/4 p3, 0x6

    if-ne p2, p3, :cond_155

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statHasMustPlay()V

    :cond_155
    return-object p0
.end method

.method public static synthetic g(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/Launcher;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->lambda$fromXml$1(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method private getFolderIconBounds(Landroid/view/View;Landroid/graphics/Rect;I)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_25

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p0, v0

    sub-int v0, p0, p3

    goto :goto_2e

    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_2c

    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p0, p3

    div-int/lit8 v0, p0, 0x2

    :goto_2c
    add-int p0, v0, p3

    :goto_2e
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    add-int/2addr p3, p1

    invoke-virtual {p2, v0, p1, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static synthetic h(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->lambda$onDropFolder$6()V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->lambda$onRemove$2(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher3/folder/OplusFolderIcon;FLandroid/graphics/PorterDuffColorFilter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->lambda$doPressFeedbackAnim$7(FLandroid/graphics/PorterDuffColorFilter;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->lambda$onDrop$5()V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->lambda$new$4()V

    return-void
.end method

.method private synthetic lambda$doPressFeedbackAnim$7(FLandroid/graphics/PorterDuffColorFilter;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method private static synthetic lambda$fromXml$0(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 10

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget v4, p1, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;ILcom/android/launcher3/folder/PreviewItemManager;Z)V

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mDownloadCache:Lcom/android/launcher3/folder/FolderDownloadDrawableCache;

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->addDownloadDrawable(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher/download/DownloadProgressPreviewDrawable;)V

    :cond_21
    return-void
.end method

.method private static synthetic lambda$fromXml$1(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/Launcher;)V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/launcher3/t1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/t1;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->forceHideDot(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->forceHideDot(ZZ)V

    return-void
.end method

.method private synthetic lambda$onDrop$5()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/data/FolderInfo;->itemsChanged(Z)V

    return-void
.end method

.method private synthetic lambda$onDropFolder$6()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/data/FolderInfo;->itemsChanged(Z)V

    return-void
.end method

.method private synthetic lambda$onRemove$2(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mDownloadCache:Lcom/android/launcher3/folder/FolderDownloadDrawableCache;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->removeDownloadDrawable(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    :cond_d
    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->lambda$fromXml$0(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->lambda$new$3()V

    return-void
.end method

.method private tryAddItemToPreviewWhenDropItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;[IZ)Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p3, 0x0

    aget v0, p2, p3

    instance-of v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v1}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v1

    if-ge v0, v1, :cond_c

    return p3

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    aget v2, p2, p3

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-virtual {p0, p3}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/folder/FolderIcon;->removeItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return p3

    :cond_34
    move v1, p3

    :goto_35
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    aput v1, p2, p3

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_50
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    aget p2, p2, p3

    const/4 p3, 0x1

    invoke-virtual {v1, p2, p3}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-virtual {p2, v0, p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->onDrop(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return p3
.end method

.method private updateColorDotState(IZZ)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_1d

    if-eq p1, v0, :cond_13

    const/4 p3, 0x2

    if-eq p1, p3, :cond_9

    goto :goto_2f

    :cond_9
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/folder/FolderIcon;->updateDotScale(ZZ)V

    goto :goto_2f

    :cond_13
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dot/DotInfo;->canShowBadgeNumber()Z

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/android/launcher3/folder/FolderIcon;->updateDotScale(ZZ)V

    goto :goto_2f

    :cond_1d
    if-nez p2, :cond_26

    if-eqz p3, :cond_22

    goto :goto_26

    :cond_22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_2f

    :cond_26
    :goto_26
    new-array p1, v0, [F

    const/4 p2, 0x0

    const/4 p3, 0x0

    aput p3, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V

    :goto_2f
    return-void
.end method

.method private willAcceptBatchItems(Lcom/android/launcher3/model/data/ItemInfo;I)Z
    .registers 6

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/aer/ProvisionManager;->isWorkFolder(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->willAcceptBatchItemsToWorkFolder()Z

    move-result v0

    if-nez v0, :cond_18

    return v1

    :cond_18
    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->isNotOverMaxItems(I)Z

    move-result p2

    if-eqz p2, :cond_2b

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eq p1, p2, :cond_2b

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result p0

    if-nez p0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method private willAcceptBatchItemsToWorkFolder()Z
    .registers 6

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    instance-of v0, p0, Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    const-string v2, "OplusFolderIcon"

    if-nez v0, :cond_10

    const-string/jumbo p0, "willAcceptBatchItemsToWorkFolder not Oplus Launcher"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_10
    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object p0

    if-nez p0, :cond_1f

    const-string/jumbo p0, "willAcceptBatchItemsToWorkFolder not batchDragViewManager"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1f
    invoke-virtual {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7d

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_7d

    :cond_2c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v3, :cond_5a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "willAcceptBatchItemsToWorkFolder not ItemInfo tag = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5a
    sget-object v3, Lcom/android/common/util/WidgetUtils;->INSTANCE:Lcom/android/common/util/WidgetUtils;

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3, v4}, Lcom/android/common/util/WidgetUtils;->isWorkProfileItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_30

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "willAcceptBatchItemsToWorkFolder not workItem tag = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7b
    const/4 p0, 0x1

    return p0

    :cond_7d
    :goto_7d
    const-string/jumbo p0, "willAcceptBatchItemsToWorkFolder not selectedViewList"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public acceptBatchDrop(Lcom/android/launcher3/model/data/ItemInfo;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->willAcceptBatchItems(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZZ)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZZ)V

    return-void
.end method

.method public applyChildSelectedState(ZIZ)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    goto :goto_8

    :cond_4
    if-eqz p3, :cond_8

    add-int/lit16 v0, p2, 0x96

    :cond_8
    :goto_8
    iget-object p2, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mHideDotRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mShowDotRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_17

    iget-object p2, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mHideDotRunnable:Ljava/lang/Runnable;

    goto :goto_19

    :cond_17
    iget-object p2, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mShowDotRunnable:Ljava/lang/Runnable;

    :goto_19
    int-to-long v0, v0

    invoke-virtual {p0, p2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    if-nez p1, :cond_23

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTextVisible(Z)V

    :cond_23
    return-void
.end method

.method public applyDotState()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->canShowBadgeNumber()Z

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/launcher3/OplusAppFilter;->isHideDot(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    iget-object v5, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/launcher3/dot/FolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    goto :goto_14

    :cond_38
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->updateColorDotState(IZZ)V

    return-void
.end method

.method public dontShowDotInfo()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public drawDot(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->dontShowDotInfo()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->drawDotInner(Landroid/graphics/Canvas;)V

    goto :goto_1a

    :cond_14
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->drawBadgeNumber(Landroid/graphics/Canvas;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public executeRecommendChangeTask()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->recommendChangeTask:Ljava/lang/Runnable;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "executeRecommendChangeTask: mInfo = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusFolderIcon"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->recommendChangeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->recommendChangeTask:Ljava/lang/Runnable;

    return-void
.end method

.method public exposureForWorkspace(Ljava/lang/Boolean;)V
    .registers 6

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mExposureWorkSpace:Ljava/lang/Boolean;

    const-string v0, "exposureForWorkspace: folder = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mExposureWorkSpace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mExposureWorkSpace:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusFolderIcon"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_52

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v3, :cond_52

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->recommendChangeTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_52

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recommendChangeTask running"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->executeRecommendChangeTask()V

    :cond_52
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v0, :cond_73

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    goto :goto_84

    :cond_73
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v0, :cond_84

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_84

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_84
    :goto_84
    return-void
.end method

.method public forceHideDot(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->forceHideDot(ZZ)V

    return-void
.end method

.method public forceHideDot(ZZ)V
    .registers 10

    iget-boolean v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mForceHideDot:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mForceHideDot:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p1, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    const/4 v3, 0x0

    if-eqz p1, :cond_14

    move v4, v3

    goto :goto_16

    :cond_14
    const/16 v4, 0xff

    :goto_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endScale = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", endAlpha = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusFolderIcon"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_8d

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->hasDot()Z

    move-result p2

    if-nez p2, :cond_41

    const-string p2, "ERROR!! Folder Icon\'s Dotinfo is null"

    invoke-static {v5, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    const/4 p2, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result p1

    if-eqz p1, :cond_57

    new-array p1, v4, [F

    aput v1, p1, v3

    aput v2, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V

    goto :goto_9e

    :cond_57
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dot/DotInfo;->canShowBadgeNumber()Z

    move-result p1

    if-eqz p1, :cond_9e

    new-array p1, v4, [F

    aput v1, p1, v3

    aput v2, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V

    goto :goto_9e

    :cond_69
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result p1

    if-eqz p1, :cond_7b

    new-array p1, v4, [F

    aput v0, p1, v3

    aput v2, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V

    goto :goto_9e

    :cond_7b
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dot/DotInfo;->canShowBadgeNumber()Z

    move-result p1

    if-eqz p1, :cond_9e

    new-array p1, v4, [F

    aput v0, p1, v3

    aput v2, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V

    goto :goto_9e

    :cond_8d
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->cancelDotScaleAnim()V

    if-eqz p1, :cond_97

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iput v0, p1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    goto :goto_9b

    :cond_97
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iput v1, p1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    :goto_9b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_9e
    :goto_9e
    return-void
.end method

.method public getDownloadCache()Lcom/android/launcher3/folder/FolderDownloadDrawableCache;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mDownloadCache:Lcom/android/launcher3/folder/FolderDownloadDrawableCache;

    return-object p0
.end method

.method public getExposureWorkSpace()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mExposureWorkSpace:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getFolderIconBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-direct {p0, p0, p1, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getFolderIconBounds(Landroid/view/View;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p0

    return p0
.end method

.method public getIconRect(Landroid/graphics/Rect;)V
    .registers 2

    if-nez p1, :cond_7

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getFolderIconBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getInfo()Lcom/android/launcher3/model/data/FolderInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-object p0
.end method

.method public getLocalCenterForIndex(II[I)F
    .registers 8

    instance-of v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget p2, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v2, v2

    add-float/2addr p2, v2

    iput p2, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget p2, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getPreviewStyleBoundOffset()F

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    sub-float/2addr v0, p1

    iput v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    sub-float/2addr v0, p1

    iput v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    :cond_42
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/PreviewItemManager;->getIntrinsicIconSize()F

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget v2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    const/high16 v3, 0x40000000  # 2.0f

    invoke-static {v2, p1, v3, v0}, Landroidx/constraintlayout/core/motion/utils/a;->a(FFFF)F

    move-result v0

    iget p2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    invoke-static {v2, p1, v3, p2}, Landroidx/constraintlayout/core/motion/utils/a;->a(FFFF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p3, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p3, v1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget p0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    return p0
.end method

.method public getOppositeView()Lcom/android/launcher3/folder/OplusFolderIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mOppositeView:Lcom/android/launcher3/folder/OplusFolderIcon;

    return-object p0
.end method

.method public getPressAnimationCurrentValue()F
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mFolderIconPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager;->getCurrentAnimScale()F

    move-result p0

    return p0

    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result p0

    return p0
.end method

.method public getRealFolderIconBounds(Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getFolderIconBounds(Landroid/graphics/Rect;)V

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p1, p0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public hasDot()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/dot/DotInfo;->canShowBadgeNumber()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public inflateOppositeView()V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mOppositeView:Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-nez v0, :cond_19

    return-void

    :cond_19
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/FolderInfo;->obtain()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    iput-object v2, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    instance-of v2, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    const v2, 0x7f0d00e5

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v3, v0, v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mOppositeView:Lcom/android/launcher3/folder/OplusFolderIcon;

    goto :goto_5e

    :cond_3e
    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget v4, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/launcher3/model/data/FolderInfo;->resizeSpanXY(Landroid/content/Context;II)V

    sget-object v2, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    const v3, 0x7f0d0050

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v4, Lcom/android/launcher/Launcher;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mOppositeView:Lcom/android/launcher3/folder/OplusFolderIcon;

    :goto_5e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "inflateOppositeView: folderInfo = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusFolderIcon"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init()V
    .registers 4

    new-instance v0, Lcom/android/launcher3/dot/OplusFolderDotInfo;

    invoke-direct {v0}, Lcom/android/launcher3/dot/OplusFolderDotInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    instance-of v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v0, :cond_27

    new-instance v0, Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/OplusPreviewBackground;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    new-instance v0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    invoke-direct {v0}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    new-instance v0, Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/PreviewItemManager;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    :cond_27
    new-instance v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-direct {v0}, Lcom/android/launcher3/icons/DotRenderer$DrawParams;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mIsRTL:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": isRtl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mIsRTL:Z

    const-string v2, "OplusFolderIcon"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-boolean p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mIsRTL:Z

    iput-boolean p0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    const/high16 p0, 0x437f0000  # 255.0f

    iput p0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    return-void
.end method

.method public initRuleForVirtual()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    instance-of v2, v1, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    if-eqz v2, :cond_20

    check-cast v1, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    invoke-virtual {v1, v2, v0, v3, p0}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->init(Landroid/content/Context;IFZ)V

    :cond_20
    return-void
.end method

.method public isEventInValidTouchArea(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->shouldIgnoreTouchDown(FF)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getFolderIconBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v2, v1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mIsRTL:Z

    if-eqz p0, :cond_37

    iget p0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v2

    iput p0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_4d

    :cond_37
    iget p0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v2

    iput p0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_4d

    :cond_3d
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr p0, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_4d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isLayoutHorizontal()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLayoutHorizontal:Z

    return p0
.end method

.method public isNotOverMaxItems(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderPagedView;->getMaxItemsInFolder()I

    move-result p0

    if-gt v0, p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public isSmallIcon()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onAdd(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V
    .registers 9

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result p2

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dot/DotInfo;->canShowBadgeNumber()Z

    move-result v0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/OplusAppFilter;->isHideDot(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dot/FolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    :cond_23
    const-string/jumbo v1, "updateColorDotOnAdd -- DotInfo = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", wasDotted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", wasNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Badge"

    const-string v3, "OplusFolderIcon"

    invoke-static {v1, v0, v2, v3}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    move-result v1

    invoke-direct {p0, v1, p2, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->updateColorDotState(IZZ)V

    iget-object p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p2}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result p2

    if-eqz p2, :cond_6d

    new-instance p2, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v5, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;ILcom/android/launcher3/folder/PreviewItemManager;Z)V

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mDownloadCache:Lcom/android/launcher3/folder/FolderDownloadDrawableCache;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->addDownloadDrawable(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher/download/DownloadProgressPreviewDrawable;)V

    :cond_6d
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3a

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq v1, v0, :cond_34

    instance-of v0, v1, Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_3f

    :cond_34
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->exposureForWorkspace(Ljava/lang/Boolean;)V

    goto :goto_3f

    :cond_3a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->exposureForWorkspace(Ljava/lang/Boolean;)V

    :cond_3f
    :goto_3f
    const-string/jumbo v0, "onAttachedToWindow: mExposureWorkSpace = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mExposureWorkSpace:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusFolderIcon"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    const-string v0, "OplusFolderIcon"

    const-string/jumbo v1, "onDetachedFromWindow: "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mHideDotRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mShowDotRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->willAcceptItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_42

    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    instance-of v0, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-nez v0, :cond_3b

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez v0, :cond_3b

    instance-of p1, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz p1, :cond_42

    :cond_3b
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x320

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_42
    :goto_42
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->willAcceptBatchItems(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_28

    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/CellLayout;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget p1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    :cond_28
    :goto_28
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 4

    instance-of v0, p1, Lcom/android/launcher/batchdrag/FolderDragObject;

    if-eqz v0, :cond_1c

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/Folder;->notifyDrop()V

    iget-object p2, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast p2, Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/android/launcher/batchdrag/FolderDragObject;

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p2, v0, p1, p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mergeFolder(Lcom/android/launcher/batchdrag/FolderDragObject;Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;)V

    return-void

    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V

    return-void
.end method

.method public onDrop(Ljava/util/List;Landroid/graphics/Rect;FZ)V
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;",
            "Landroid/graphics/Rect;",
            "FZ)V"
        }
    .end annotation

    move-object/from16 v6, p0

    if-eqz p1, :cond_1d6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d6

    iget-object v0, v6, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iget-object v1, v6, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez p2, :cond_3e

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5}, Lcom/android/launcher3/OplusWorkspace;->setFinalTransitionTransform()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v4

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {v0, v6, v2}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v1

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {v5}, Lcom/android/launcher3/OplusWorkspace;->resetTransitionTransform()V

    goto :goto_42

    :cond_3e
    move-object/from16 v2, p2

    move/from16 v1, p3

    :goto_42
    iget-object v3, v6, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    instance-of v4, v3, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v4, :cond_4d

    check-cast v3, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/OplusFolder;->notifyBatchDrop()V

    :cond_4d
    iget-object v3, v6, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    add-int/lit8 v7, v3, 0x1

    new-array v8, v4, [I

    const/4 v9, 0x0

    aput v7, v8, v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v13

    :goto_6f
    invoke-interface {v13}, Ljava/util/ListIterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_177

    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v4, v4, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v14, v15}, Lcom/android/launcher3/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v28, v0

    instance-of v0, v6, Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-object/from16 p2, v2

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v2

    const/16 v16, 0x0

    aget v16, v8, v16

    move-object/from16 v29, v5

    add-int/lit8 v5, v16, 0x1

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v5, v6, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v16

    if-nez v16, :cond_ba

    invoke-interface {v13}, Ljava/util/ListIterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_ba

    const/16 v16, 0x1

    goto :goto_bc

    :cond_ba
    const/16 v16, 0x0

    :goto_bc
    move/from16 p3, v3

    move-object/from16 v30, v12

    move/from16 v3, v16

    const/4 v12, 0x0

    invoke-virtual {v5, v4, v12, v3}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v3

    if-eqz v3, :cond_d5

    iget-object v3, v6, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    aget v5, v8, v12

    invoke-virtual {v3, v7, v5}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->hidePreviewItem(II)V

    :cond_d5
    const/4 v3, 0x2

    new-array v3, v3, [I

    aget v5, v8, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v12

    if-eqz v12, :cond_e8

    move-object v12, v6

    check-cast v12, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v12, v7, v5, v2, v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLocalCenterAndIndexForBig(III[I)F

    move-result v2

    goto :goto_ec

    :cond_e8
    invoke-virtual {v6, v5, v2, v3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getLocalCenterForIndex(II[I)F

    move-result v2

    :goto_ec
    const/4 v5, 0x0

    aget v12, v3, v5

    int-to-float v12, v12

    mul-float/2addr v12, v1

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    aput v12, v3, v5

    const/4 v5, 0x1

    aget v12, v3, v5

    int-to-float v12, v12

    mul-float/2addr v12, v1

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    aput v12, v3, v5

    const/4 v12, 0x0

    aget v12, v3, v12

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v12, v12, v16

    aget v3, v3, v5

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    invoke-virtual {v9, v12, v3}, Landroid/graphics/Rect;->offset(II)V

    const/4 v3, 0x0

    aget v3, v8, v3

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v0

    if-ge v3, v0, :cond_125

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_126

    :cond_125
    const/4 v0, 0x0

    :goto_126
    move/from16 v17, v0

    mul-float v21, v2, v1

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v2

    if-eqz v2, :cond_13d

    invoke-interface {v13}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_13d

    new-instance v0, Lcom/android/launcher3/folder/n;

    const/4 v2, 0x0

    invoke-direct {v0, v6, v2}, Lcom/android/launcher3/folder/n;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;I)V

    :cond_13d
    move-object/from16 v25, v0

    const/high16 v18, 0x3f800000  # 1.0f

    const/high16 v19, 0x3f800000  # 1.0f

    const/16 v22, 0x190

    sget-object v23, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    sget-object v24, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v16, v9

    move/from16 v20, v21

    invoke-virtual/range {v14 .. v27}, Lcom/android/launcher/batchdrag/BatchDragView;->animateView(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/folder/Folder;->hideItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    aget v2, v8, v9

    const/4 v4, 0x1

    add-int/2addr v2, v4

    aput v2, v8, v9

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v12, v0

    move-object/from16 v0, v28

    move-object/from16 v5, v29

    goto/16 :goto_6f

    :cond_177
    move/from16 p3, v3

    move-object/from16 v29, v5

    move-object v0, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->isSmallIcon()Z

    move-result v1

    if-eqz v1, :cond_18e

    :goto_182
    aget v1, v8, v9

    if-ge v7, v1, :cond_18e

    iget-object v1, v6, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v1, v7, v4}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_182

    :cond_18e
    const-string v1, ", to FolderIcon{title="

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onDrop BatchIcon"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/TraceLog;->traceAction(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    new-instance v7, Lcom/android/launcher3/folder/OplusFolderIcon$2;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v3, v11

    move/from16 v4, p4

    move-object/from16 v5, v29

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/OplusFolderIcon$2;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;ILjava/util/List;ZLcom/android/launcher3/Workspace;)V

    const-wide/16 v0, 0x172

    invoke-virtual {v6, v7, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d6
    return-void
.end method

.method public onDropFolder(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/folder/OplusFolderIcon;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;",
            "Lcom/android/launcher3/dragndrop/DragView;",
            "Lcom/android/launcher3/folder/OplusFolderIcon;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    if-eqz v0, :cond_211

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_211

    :cond_e
    const/4 v2, 0x2

    new-array v3, v2, [I

    new-array v2, v2, [I

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v5

    const/4 v6, 0x1

    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v5, v7, v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v1, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    check-cast v12, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v12}, Lcom/android/launcher3/folder/OplusFolder;->notifyBatchDrop()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    move v13, v8

    :goto_44
    if-ge v8, v12, :cond_1b7

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v6, v6, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v15, p5

    invoke-direct {v14, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    move-object/from16 v27, v11

    move-object/from16 v11, p6

    invoke-direct {v0, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    instance-of v11, v1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v11}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v15

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    move/from16 v28, v4

    invoke-static {v11}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v4

    const/16 v16, 0x0

    aget v16, v7, v16

    move-object/from16 v29, v10

    add-int/lit8 v10, v16, 0x1

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v10, v1, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v16

    if-nez v16, :cond_95

    move-object/from16 v30, v9

    add-int/lit8 v9, v12, -0x1

    if-ne v8, v9, :cond_97

    const/4 v9, 0x0

    const/16 v16, 0x1

    goto :goto_9a

    :cond_95
    move-object/from16 v30, v9

    :cond_97
    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_9a
    move/from16 v31, v12

    move/from16 v12, v16

    invoke-virtual {v10, v6, v9, v12}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v10

    if-eqz v10, :cond_b0

    iget-object v10, v1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    check-cast v10, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    aget v12, v7, v9

    invoke-virtual {v10, v5, v12}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->hidePreviewItem(II)V

    :cond_b0
    aget v9, v7, v9

    invoke-static {v11}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v10

    if-lt v9, v10, :cond_ba

    const/4 v9, 0x1

    goto :goto_bb

    :cond_ba
    const/4 v9, 0x0

    :goto_bb
    if-eqz v9, :cond_bf

    const/4 v10, 0x0

    goto :goto_c1

    :cond_bf
    const/high16 v10, 0x3f800000  # 1.0f

    :goto_c1
    move/from16 v16, v10

    if-eqz v9, :cond_c8

    const/16 v9, 0x10e

    goto :goto_ca

    :cond_c8
    const/16 v9, 0x190

    :goto_ca
    move/from16 v21, v9

    iget-object v9, v1, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v9

    move-object/from16 v10, p4

    invoke-virtual {v10, v8, v15, v3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getLocalCenterForIndex(II[I)F

    move-result v18

    const/4 v11, 0x0

    aget v11, v3, v11

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    invoke-virtual/range {p4 .. p4}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v12

    add-int/2addr v12, v11

    const/4 v11, 0x1

    aget v11, v3, v11

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v11, v15

    invoke-virtual/range {p4 .. p4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v15

    add-int/2addr v15, v11

    iget-object v11, v1, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v32, v3

    sget-object v3, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v11, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v11

    if-nez v11, :cond_10c

    int-to-float v11, v12

    mul-float/2addr v11, v9

    float-to-int v12, v11

    int-to-float v11, v15

    mul-float/2addr v11, v9

    float-to-int v15, v11

    :cond_10c
    invoke-virtual {v14, v12, v15}, Landroid/graphics/Rect;->offset(II)V

    const/4 v11, 0x0

    aget v12, v7, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v15

    if-eqz v15, :cond_120

    move-object v15, v1

    check-cast v15, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v15, v5, v12, v4, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLocalCenterAndIndexForBig(III[I)F

    move-result v4

    goto :goto_124

    :cond_120
    invoke-virtual {v1, v12, v4, v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->getLocalCenterForIndex(II[I)F

    move-result v4

    :goto_124
    aget v12, v2, v11

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v12, v15

    const/4 v15, 0x1

    aget v15, v2, v15

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    sub-int v15, v15, v17

    iget-object v11, v1, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_163

    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-float v3, v3

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v9

    const/high16 v12, 0x40000000  # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v3, v11

    float-to-int v3, v3

    const/4 v11, 0x1

    aget v11, v2, v11

    int-to-float v11, v11

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v9

    div-float/2addr v15, v12

    sub-float/2addr v11, v15

    float-to-int v11, v11

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v12, v3

    int-to-float v3, v11

    mul-float/2addr v3, v9

    float-to-int v15, v3

    mul-float/2addr v4, v9

    :cond_163
    move/from16 v20, v4

    invoke-virtual {v0, v12, v15}, Landroid/graphics/Rect;->offset(II)V

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v4

    if-eqz v4, :cond_179

    add-int/lit8 v12, v31, -0x1

    if-ne v8, v12, :cond_179

    new-instance v3, Lcom/android/launcher3/folder/n;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v4}, Lcom/android/launcher3/folder/n;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;I)V

    :cond_179
    move-object/from16 v24, v3

    sget-object v22, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    sget-object v23, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v15, v0

    move/from16 v17, v18

    move/from16 v19, v20

    invoke-virtual/range {v13 .. v26}, Lcom/android/launcher/batchdrag/BatchDragView;->animateView(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    move-object/from16 v3, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/folder/Folder;->hideItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    move-object/from16 v4, v29

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    aget v6, v7, v13

    const/4 v9, 0x1

    add-int/2addr v6, v9

    aput v6, v7, v13

    add-int/lit8 v8, v8, 0x1

    move-object v11, v0

    move-object v10, v4

    move v6, v9

    move/from16 v4, v28

    move/from16 v12, v31

    move-object/from16 v0, p2

    move-object v9, v3

    move-object/from16 v3, v32

    goto/16 :goto_44

    :cond_1b7
    move-object v3, v9

    move-object v4, v10

    move-object v0, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->isSmallIcon()Z

    move-result v2

    if-eqz v2, :cond_1cd

    move v2, v5

    :goto_1c1
    aget v8, v7, v13

    if-ge v2, v8, :cond_1cd

    iget-object v8, v1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v8, v2, v6}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c1

    :cond_1cd
    const-string v2, ", to FolderIcon{title="

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v6, v6, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "onDrop BatchIcon"

    invoke-static {v6, v0, v2}, Lcom/android/common/debug/TraceLog;->traceAction(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v7, Lcom/android/launcher3/folder/OplusFolderIcon$3;

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v5

    move-object/from16 v3, p3

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/OplusFolderIcon$3;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;ILcom/android/launcher3/dragndrop/DragView;Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    :cond_211
    :goto_211
    return-void
.end method

.method public onMeasure(II)V
    .registers 7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-ne v2, v3, :cond_34

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    move-result v2

    if-nez v2, :cond_4e

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1, v0, v1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_4e

    :cond_34
    iget-boolean v1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLayoutHorizontal:Z

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_4e
    :goto_4e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onRecommendContentChanged()V
    .registers 3

    const-string v0, "OplusFolderIcon"

    const-string/jumbo v1, "onRecommendContentChanged"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onRemove(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->canShowBadgeNumber()Z

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/folder/g;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/android/launcher3/folder/g;-><init>(Lcom/android/launcher3/views/ActivityContext;I)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/folder/f;

    invoke-direct {v4, v3, v5}, Lcom/android/launcher3/folder/f;-><init>(Lcom/android/launcher3/dot/FolderDotInfo;I)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    instance-of v3, v2, Lcom/android/launcher3/dot/OplusFolderDotInfo;

    if-eqz v3, :cond_3d

    check-cast v2, Lcom/android/launcher3/dot/OplusFolderDotInfo;

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/dot/OplusFolderDotInfo;->extractDotInfoFromItems(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V

    :cond_3d
    const-string/jumbo v2, "updateColorDotOnRemove -- DotInfo = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", wasDotted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Badge"

    const-string v4, "OplusFolderIcon"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->updateColorDotState(IZZ)V

    new-instance v0, Landroidx/core/location/a;

    invoke-direct {v0, p0}, Landroidx/core/location/a;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iput-object p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/model/data/FolderInfo;->isSysFolder:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mOppositeView:Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v0, :cond_1e

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iput-object p1, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_1e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f12020f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_50

    if-eq v0, v2, :cond_4c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_42

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    goto :goto_5a

    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/OplusDragView;

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragObject()Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v3

    if-eqz v3, :cond_2e

    iget-object v1, v3, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    :cond_2e
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_33

    :cond_32
    move-object v0, v1

    :goto_33
    if-eqz v1, :cond_37

    if-eq v0, p0, :cond_5a

    :cond_37
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mFolderIconPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager;->cancel()V

    :cond_3e
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->resetPressAnimStateForLongClick(Z)V

    goto :goto_5a

    :cond_42
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->isEventInValidTouchArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->doPressFeedbackAnim(Z)V

    goto :goto_5a

    :cond_4c
    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->doPressFeedbackAnim(Z)V

    goto :goto_5a

    :cond_50
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->isEventInValidTouchArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_57

    return v1

    :cond_57
    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->doPressFeedbackAnim(Z)V

    :cond_5a
    :goto_5a
    invoke-super {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performCreateAnimation(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/View;Ljava/util/List;Landroid/graphics/Rect;F)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;",
            "Landroid/graphics/Rect;",
            "F)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderIcon;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->start()V

    goto :goto_1c

    :cond_14
    const-string p1, "OplusFolderIcon"

    const-string/jumbo p2, "performDestroyAnimation(), mPreviewItemManager is null."

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    const/4 p1, 0x1

    invoke-virtual {p0, p3, p4, p5, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->onDrop(Ljava/util/List;Landroid/graphics/Rect;FZ)V

    return-void
.end method

.method public prepareCreateAnimation(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/PreviewItemManager;->prepareCreateAnimation(II)V

    return-void
.end method

.method public resetPressAnimStateForLongClick(Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    instance-of v1, v0, Lcom/android/launcher3/folder/OplusPreviewBackground;

    if-eqz v1, :cond_19

    check-cast v0, Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->updateBgColorFilter()V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    check-cast v0, Lcom/android/launcher3/folder/OplusPreviewBackground;

    iget-object v0, v0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_54

    :cond_2a
    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mFolderIconPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-eqz p1, :cond_4e

    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mFolderIconPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/IconPressAnimManager;->getResetPressDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_54

    :cond_4e
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_54
    :goto_54
    return-void
.end method

.method public setDotInfo(Lcom/android/launcher3/dot/FolderDotInfo;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotInfo;->canShowBadgeNumber()Z

    move-result v2

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->updateColorDotState(IZZ)V

    return-void
.end method

.method public setOppositeView(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mOppositeView:Lcom/android/launcher3/folder/OplusFolderIcon;

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    :cond_b
    return-void
.end method

.method public setTextVisible(Z)V
    .registers 3

    instance-of v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_12

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->touchController:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->isSnapPageAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBubbleTextView;->shouldTextBeVisible()Z

    move-result v0

    goto :goto_1c

    :cond_1b
    move v0, p1

    :goto_1c
    invoke-super {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBubbleTextView;->shouldTextBeVisible()Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->isHandingIconFallenState()Z

    move-result p1

    if-nez p1, :cond_42

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_42
    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result p1

    if-nez p1, :cond_f

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTextVisible(Z)V

    :cond_f
    return-void
.end method

.method public updateIconScale(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getFolderIconBounds(Landroid/graphics/Rect;)V

    int-to-float p1, p1

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mIconScale:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public updatePreview()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public updateScaleAndAlpha(IF)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderIconAlpha:F

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->updateIconScale(I)V

    return-void
.end method

.method public willAcceptItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 6

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/aer/ProvisionManager;->isWorkFolder(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/common/util/WidgetUtils;->INSTANCE:Lcom/android/common/util/WidgetUtils;

    invoke-virtual {v0, p1}, Lcom/android/common/util/WidgetUtils;->isWorkProfileItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v1

    :cond_1a
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_48

    invoke-static {p1}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_27

    return v1

    :cond_27
    instance-of v2, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v2, :cond_48

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->isNotOverMaxItems(I)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eq p1, v0, :cond_47

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result p0

    if-nez p0, :cond_47

    move v1, v3

    :cond_47
    return v1

    :cond_48
    if-eqz v0, :cond_4f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4f

    if-ne v0, v3, :cond_62

    :cond_4f
    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/OplusFolderIcon;->isNotOverMaxItems(I)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eq p1, v0, :cond_62

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result p0

    if-nez p0, :cond_62

    move v1, v3

    :cond_62
    return v1
.end method
