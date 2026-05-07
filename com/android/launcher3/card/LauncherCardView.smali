.class public Lcom/android/launcher3/card/LauncherCardView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/oplus/card/manager/domain/ICardView;
.implements Lcom/android/launcher3/dragndrop/DraggableView;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;
.implements Lcom/android/launcher3/card/IAreaWidget;
.implements Lcom/android/common/util/IViewToBitmap;


# static fields
.field private static final PRELOAD_BITMAP_OFFSET:F = 1.0f

.field private static final SWITCH_STATE_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/card/LauncherCardView;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "LauncherCardView"


# instance fields
.field public mBitmapShader:Landroid/graphics/BitmapShader;

.field public mCardBounds:Landroid/graphics/Rect;

.field public mCurPaddingRect:Landroid/graphics/Rect;

.field private final mDeleteIconRect:Landroid/graphics/Rect;

.field public mLauncher:Lcom/android/launcher/Launcher;

.field public mLongClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

.field public mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field private mMultiLandHoldView:Landroid/view/View;

.field public mPreloadBitmap:Landroid/graphics/Bitmap;

.field private mPreloadCropRadius:I

.field private mPreloadMatrix:Landroid/graphics/Matrix;

.field private mPreloadPaint:Landroid/graphics/Paint;

.field private mPreloadResourceLoader:Lcom/android/launcher3/card/CardPreloadResourceLoader;

.field private mPressDeleteIcon:Z

.field public mRadius:I

.field public mScaleToFit:F

.field public mShadowOffsetBottom:I

.field public mShadowOffsetHorizontal:I

.field public mShadowOffsetTop:I

.field public mShadowPaint:Landroid/graphics/Paint;

.field public mShadowRect:Landroid/graphics/Rect;

.field public mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

.field private mTranslationAnimatorRunning:Z

.field private final mTranslationForCentering:Landroid/graphics/PointF;

.field private mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/LauncherCardView$1;

    const-string v1, "deleteIconFraction"

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/LauncherCardView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/card/LauncherCardView;->SWITCH_STATE_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/graphics/PointF;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/android/launcher3/card/LauncherCardView;->mTranslationForCentering:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/LauncherCardView;->mDeleteIconRect:Landroid/graphics/Rect;

    const/high16 p2, 0x3f800000  # 1.0f

    iput p2, p0, Lcom/android/launcher3/card/LauncherCardView;->mScaleToFit:F

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/LauncherCardView;->mShadowRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/LauncherCardView;->mCurPaddingRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/card/LauncherCardView;->mTranslationAnimatorRunning:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private applyNoPermissionCardName(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/oplus/card/manager/domain/ICardView;->setCardNameAndUpdateDb(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private applyPreloadDescription(Ljava/lang/CharSequence;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->obtainNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_37

    :cond_11
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/CardPermissionManager;->isCardPreload(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->obtainNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/NoPermissionHelper;->setDescriptionForView(Ljava/lang/String;)V

    goto :goto_37

    :cond_2f
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->obtainNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/NoPermissionHelper;->setDescriptionForView(Ljava/lang/String;)V

    :cond_37
    :goto_37
    return-void
.end method

.method private applyPreloadImage(Landroid/graphics/Bitmap;)V
    .registers 5

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x1

    if-eqz p1, :cond_52

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/card/CardPermissionManager;->isCardPreload(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_52

    iput-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07021e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadCropRadius:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-direct {p0}, Lcom/android/launcher3/card/LauncherCardView;->updatePreloadView()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->updatePermissionSettingsView(Z)V

    goto :goto_58

    :cond_52
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->recyclePreloadBitmap()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/LauncherCardView;->updatePermissionSettingsView(Z)V

    :goto_58
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->addNoPermissionView()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/card/LauncherCardView;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->applyNoPermissionCardName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/card/LauncherCardView;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->applyPreloadImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private deleteCardView(Lcom/android/launcher3/card/LauncherCardInfo;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    new-instance v0, Lcom/android/launcher/guide/c;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher3/card/LauncherCardView;Lcom/android/launcher3/card/LauncherCardInfo;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic e(Lcom/android/launcher3/card/LauncherCardView;Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->lambda$deleteCardView$0(Lcom/android/launcher3/card/LauncherCardInfo;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/card/LauncherCardView;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->applyPreloadDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/card/LauncherCardView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->waitingUserUnlock(I)V

    return-void
.end method

.method public static inflateCardView(Landroid/view/ViewGroup;Z)Lcom/android/launcher3/card/LauncherCardView;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/card/CardCreator;->inflateCardView(Landroid/view/ViewGroup;ZZ)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p0

    return-object p0
.end method

.method private initShadowPaint()V
    .registers 6

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mShadowPaint:Landroid/graphics/Paint;

    const v2, 0x7f070220

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const v4, 0x7f06009a

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const v1, 0x7f070221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mShadowOffsetHorizontal:I

    const v1, 0x7f070223

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mShadowOffsetTop:I

    const v1, 0x7f070222

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mShadowOffsetBottom:I

    return-void
.end method

.method private isDeleteIconRectAvaliable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mDeleteIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mDeleteIconRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_1d

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_1d

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_1d

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-gtz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x1

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x0

    return p0
.end method

.method private isDeleteIconVisible()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    iget p0, p0, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private synthetic lambda$deleteCardView$0(Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_9

    invoke-static {v0, p0, p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->showAreaWidgetDeleteConfirmPanel(Lcom/android/launcher/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_9
    return-void
.end method

.method private updatePreloadView()V
    .registers 6

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadCropRadius:I

    add-int/2addr v0, v0

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v0, v1

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v0, v2

    iget-object v4, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    iget-object v4, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    sub-float/2addr v3, v1

    div-float/2addr v3, v2

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private waitingUserUnlock(I)V
    .registers 4

    new-instance p1, Lcom/android/launcher3/card/b;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/b;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    const-wide/16 v0, 0xfa0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public addNoPermissionView()V
    .registers 1

    return-void
.end method

.method public applySwitchState(ZIZ)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->isAContainer()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_c

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget v1, v0, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :cond_30
    if-eqz p3, :cond_58

    sget-object p3, Lcom/android/launcher3/card/LauncherCardView;->SWITCH_STATE_ALPHA:Landroid/util/FloatProperty;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-static {p0, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    sget-object p3, Lcom/android/common/config/AnimationConstant;->CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_60

    :cond_58
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/card/LauncherCardView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    iput p1, v0, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_60
    return-void
.end method

.method public cancelLongPress()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->drawPreloadImage(Landroid/graphics/Canvas;)V

    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_1d

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->drawDeleteIconIfNecessary(Landroid/graphics/Canvas;)V

    :cond_1d
    return-void
.end method

.method public drawDeleteIconIfNecessary(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->isAContainer()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->hasSmartView()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->noPermissionViewShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v1

    :goto_18
    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget v2, v2, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_38

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_38

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    if-eqz v0, :cond_38

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/launcher/SwitchStateRenderer;->drawDeleteIcon(Landroid/graphics/Canvas;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;Z)V

    :cond_38
    return-void
.end method

.method public drawPreloadImage(Landroid/graphics/Canvas;)V
    .registers 13

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v5, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v6, v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float v7, v0, v2

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mRadius:I

    int-to-float v8, v0

    int-to-float v9, v0

    iget-object v10, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawShadowIfNecessary(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->hasSmartView()Z

    move-result v1

    if-eqz v1, :cond_4c

    if-nez v0, :cond_19

    goto :goto_4c

    :cond_19
    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mShadowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/card/LauncherCardView;->mShadowOffsetHorizontal:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mShadowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/card/LauncherCardView;->mShadowOffsetTop:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mShadowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/card/LauncherCardView;->mShadowOffsetHorizontal:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mShadowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mShadowOffsetBottom:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mShadowRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public endDrag()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_14
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/launcher3/card/LauncherCardView;->applySwitchState(ZIZ)V

    :cond_19
    return-void
.end method

.method public fetchNoPermissionCardName()V
    .registers 9

    const-string v0, "LauncherCardView"

    const-string v1, "fetchNoPermissionCardName"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v4

    if-nez v4, :cond_e

    return-void

    :cond_e
    iget-object v1, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string/jumbo p0, "not fetch no permission card name = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v1, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadResourceLoader:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    if-nez v0, :cond_37

    new-instance v0, Lcom/android/launcher3/card/CardPreloadResourceLoader;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/CardPreloadResourceLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadResourceLoader:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    :cond_37
    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadResourceLoader:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    iget-object v3, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/launcher3/card/c;

    const/4 v0, 0x3

    invoke-direct {v6, p0, v0}, Lcom/android/launcher3/card/c;-><init>(Lcom/android/launcher3/card/LauncherCardView;I)V

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->loadAsync(Lcom/android/launcher/Launcher;Lcom/android/launcher3/card/LauncherCardInfo;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lq3/i1;

    return-void
.end method

.method public fetchPreloadResources()V
    .registers 9

    const-string v0, "LauncherCardView"

    const-string v1, "fetchPreloadResources"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v4

    if-nez v4, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadResourceLoader:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/android/launcher3/card/CardPreloadResourceLoader;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/CardPreloadResourceLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadResourceLoader:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    :cond_1b
    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadResourceLoader:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    iget-object v3, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v5, Lcom/android/launcher3/card/c;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/android/launcher3/card/c;-><init>(Lcom/android/launcher3/card/LauncherCardView;I)V

    new-instance v6, Lcom/android/launcher3/card/c;

    const/4 v0, 0x1

    invoke-direct {v6, p0, v0}, Lcom/android/launcher3/card/c;-><init>(Lcom/android/launcher3/card/LauncherCardView;I)V

    new-instance v7, Lcom/android/launcher3/card/c;

    const/4 v0, 0x2

    invoke-direct {v7, p0, v0}, Lcom/android/launcher3/card/c;-><init>(Lcom/android/launcher3/card/LauncherCardView;I)V

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->loadAsync(Lcom/android/launcher/Launcher;Lcom/android/launcher3/card/LauncherCardInfo;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lq3/i1;

    return-void
.end method

.method public getAreaType()Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    return-object p0
.end method

.method public getCardBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getClipRoundRect(Landroid/graphics/Rect;Z)V
    .registers 5

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz p2, :cond_4a

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070741

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_4a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_66

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getDrawingRect: outRect = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherCardView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    return-void
.end method

.method public getDeleteIconPadding(Landroid/graphics/Rect;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/card/LauncherCardView;->getClipRoundRect(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/View;)F
    .registers 9

    const/4 p0, 0x4

    new-array p0, p0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p0, v0

    const/4 v2, 0x1

    aput v1, p0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x2

    aput v1, p0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v4, 0x3

    aput v1, p0, v4

    invoke-static {p1, p3, p0, v0, v2}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result p1

    aget p3, p0, v0

    aget v1, p0, v3

    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->left:I

    aget p3, p0, v2

    aget v1, p0, v4

    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->top:I

    aget p3, p0, v0

    aget v0, p0, v3

    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->right:I

    aget p3, p0, v2

    aget p0, p0, v4

    invoke-static {p3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public getInitAnimator()Landroid/animation/Animator;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;
    .registers 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/LauncherCardInfo;

    return-object p0
.end method

.method public getLocation(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getLocation(Landroid/graphics/RectF;)V
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/launcher3/card/LauncherCardView;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/View;)F

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getPaddingBottom()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mCurPaddingRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getScaleToFit()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mScaleToFit:F

    return p0
.end method

.method public getTranslationForCentering()Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mTranslationForCentering:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getViewType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getWidgetInset(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->shouldInsetWidgets()Z

    move-result p0

    if-nez p0, :cond_a

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_a
    iget-object p0, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mScaleToFit:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mScaleToFit:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public hasSmartView()Z
    .registers 1

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->getSmartView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v0, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    invoke-direct {v0, p1}, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    new-instance p1, Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/LongClickEffectHandler;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    new-instance p1, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {p1, p0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V

    iput-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07021f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mRadius:I

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mScaleToFit:F

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->setScaleToFit(F)V

    invoke-direct {p0}, Lcom/android/launcher3/card/LauncherCardView;->initShadowPaint()V

    return-void
.end method

.method public initCardAfterInflate()V
    .registers 1

    return-void
.end method

.method public isAContainer()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isLandscape()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    return p0
.end method

.method public isShowingInVisiblePage()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isTouchInDeleteIconRect(Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_15
    invoke-direct {p0}, Lcom/android/launcher3/card/LauncherCardView;->isDeleteIconVisible()Z

    move-result v0

    if-nez v0, :cond_23

    const-string p0, "LauncherCardView"

    const-string p1, "delete icon not visible"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_23
    invoke-direct {p0}, Lcom/android/launcher3/card/LauncherCardView;->isDeleteIconRectAvaliable()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget-object v3, p0, Lcom/android/launcher3/card/LauncherCardView;->mDeleteIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/launcher/SwitchStateRenderer;->getCardDeleteIconRect(Landroid/view/View;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;Landroid/graphics/Rect;)V

    :cond_38
    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mDeleteIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_4c

    const/4 p0, 0x1

    return p0

    :cond_4c
    return v1
.end method

.method public isTranslationAnimatorRunning()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mTranslationAnimatorRunning:Z

    return p0
.end method

.method public logCardInfo()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public noPermissionViewShowing()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public obtainNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    sget-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/uscard/USCardManager;->onWorkspaceCardAdded(Lcom/android/launcher3/card/LauncherCardView;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->isAContainer()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_2f

    :cond_25
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->setTouchCompleteListener(Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;)V

    goto :goto_45

    :cond_2f
    :goto_2f
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->isTouchInDeleteIconRect(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_36

    return v1

    :cond_36
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->setTouchCompleteListener(Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;)V

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v1

    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result p1

    if-nez p1, :cond_68

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isInterceptItemClickFromHighTempreatureProtection(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_67

    goto :goto_68

    :cond_67
    const/4 v1, 0x0

    :cond_68
    :goto_68
    return v1
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p2, p0, Lcom/android/launcher3/card/LauncherCardView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget-object p2, p2, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->widgetBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p5, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p5}, Lcom/android/launcher3/card/LauncherCardView;->getClipRoundRect(Landroid/graphics/Rect;Z)V

    iget-object p2, p0, Lcom/android/launcher3/card/LauncherCardView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget-object p2, p2, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->widgetBoundsWithoutPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/card/LauncherCardView;->getDeleteIconPadding(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_28

    invoke-direct {p0}, Lcom/android/launcher3/card/LauncherCardView;->updatePreloadView()V

    :cond_28
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    const/4 p0, 0x1

    return p0
.end method

.method public onMeasure(II)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mDeleteIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher/SwitchStateRenderer;->getCardDeleteIconRect(Landroid/view/View;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;Landroid/graphics/Rect;)V

    :try_start_f
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_29

    :catch_13
    const-string p1, "load cardView error  cardinfo : "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherCardView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method

.method public onTouchComplete()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    :cond_d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    if-eq v0, v1, :cond_18

    const/4 v2, 0x3

    if-eq v0, v2, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_2f

    :cond_12
    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_2f

    :cond_18
    iget-boolean p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mPressDeleteIcon:Z

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->deleteCardView(Lcom/android/launcher3/card/LauncherCardInfo;)Z

    goto :goto_2f

    :cond_24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mPressDeleteIcon:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->isTouchInDeleteIconRect(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2f

    iput-boolean v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mPressDeleteIcon:Z

    :cond_2f
    :goto_2f
    return v1
.end method

.method public recyclePreloadBitmap()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadBitmap:Landroid/graphics/Bitmap;

    :cond_a
    return-void
.end method

.method public setIsShowDefaultView(Z)V
    .registers 2

    return-void
.end method

.method public setScaleToFit(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mScaleToFit:F

    invoke-super {p0, p1}, Landroid/view/View;->setScaleX(F)V

    iget p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mScaleToFit:F

    invoke-super {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setTranslationAnimatorRunning(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mTranslationAnimatorRunning:Z

    return-void
.end method

.method public setTranslationForCentering(FF)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mTranslationForCentering:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mTranslationForCentering:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-super {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mTranslationForCentering:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setVisibilityBySuper(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showMultiLandHoldView()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mMultiLandHoldView:Landroid/view/View;

    if-eqz v0, :cond_18

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_18

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mMultiLandHoldView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mMultiLandHoldView:Landroid/view/View;

    :cond_18
    const/4 p0, 0x0

    return p0

    :cond_1a
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mMultiLandHoldView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    const v2, 0x7f08043e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mMultiLandHoldView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method public startDrag()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/launcher3/card/LauncherCardView;->applySwitchState(ZIZ)V

    :cond_18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDragContent()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->isAContainer()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->updateDragContent()V

    :cond_17
    return-void

    :cond_18
    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->isSurfaceAnimRunning()Z

    move-result v1

    if-eqz v1, :cond_3b

    new-instance v1, Lcom/android/launcher3/dragndrop/SmartCardDrawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getCardBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/launcher3/dragndrop/SmartCardDrawable;-><init>(Lcom/android/launcher3/card/LauncherCardView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->updateDragViewContent(Lcom/android/launcher3/dragndrop/SmartCardDrawable;)V

    goto :goto_67

    :cond_3b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_67

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/dragndrop/DragView;

    if-eqz p0, :cond_67

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_67

    const-string v0, "LauncherCardView"

    const-string/jumbo v1, "update dragView content view"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_67
    :goto_67
    return-void
.end method

.method public updatePermissionSettingsView(Z)V
    .registers 2

    return-void
.end method
