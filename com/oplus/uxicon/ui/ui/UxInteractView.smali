.class public Lcom/oplus/uxicon/ui/ui/UxInteractView;
.super Lb/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/uxicon/ui/ui/UxInteractView$d;
    }
.end annotation


# static fields
.field private static final DEFAULT_THEMED_ICON_SIZE:I = 0x15e0

.field private static final GET_BITS_SIXTEEN:I = 0xffff

.field private static final ICON_SIZE_START:I = 0xfa0

.field private static final OPAQUE_OPACITY:Ljava/lang/Float;

.field private static final PROGRESS_TO_SIZE_RATE:I = 0x1a

.field private static final TAG:Ljava/lang/String; = "UxInteractView"

.field private static final THEMED_ICON_SHR_BIT:I = 0x20


# instance fields
.field private mAdapter:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

.field private mColorsListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

.field private final mDefaultFgProgress:I

.field private mDefaultIconSizeProgress:I

.field private final mDefaultRadiusProgress:I

.field private mFgInDefault:Z

.field private final mFontSizeRange:I

.field private mForegroundSizeEnd:I

.field private mForegroundSizeStart:I

.field private mIconRadiusEnd:I

.field private mIconRadiusStart:I

.field private mIconSizeEnd:I

.field private mIconSizeInDefault:Z

.field private mIconSizeStart:I

.field private mIsPlayTextAnim:Z

.field private mLoadFirstly:Z

.field private mMaxThemeRange:I

.field private mRadiusInDefault:Z

.field private mRadiusReset:Landroid/widget/TextView;

.field private mRadiusSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

.field private mRecyclerTheme:Landroidx/recyclerview/widget/RecyclerView;

.field private mShapeFadeInAnimSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemThemeRange:I

.field private mTextAnimSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeSize:I

.field private mTvRadius:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->OPAQUE_OPACITY:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lb/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mFontSizeRange:I

    const/16 p2, 0x30

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mDefaultRadiusProgress:I

    const/16 p2, 0x64

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mDefaultFgProgress:I

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mSystemThemeRange:I

    const/16 p2, 0x3e

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mDefaultIconSizeProgress:I

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mThemeSize:I

    const/4 p1, 0x6

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mMaxThemeRange:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mLoadFirstly:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconRadiusStart:I

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconRadiusEnd:I

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mForegroundSizeStart:I

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mForegroundSizeEnd:I

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeStart:I

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeEnd:I

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mShapeFadeInAnimSet:Ljava/util/HashSet;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mTextAnimSet:Ljava/util/HashSet;

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIsPlayTextAnim:Z

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->initDefaultValues()V

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->initSeekBarValues()V

    return-void
.end method

.method public static synthetic access$002(Lcom/oplus/uxicon/ui/ui/UxInteractView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIsPlayTextAnim:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/oplus/uxicon/ui/ui/UxInteractView;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusReset:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mMaxThemeRange:I

    return p0
.end method

.method public static synthetic access$200(Lcom/oplus/uxicon/ui/ui/UxInteractView;)Lcom/coui/appcompat/seekbar/COUISeekBar;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/oplus/uxicon/ui/ui/UxInteractView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusInDefault:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/oplus/uxicon/ui/ui/UxInteractView;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mTvRadius:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/oplus/uxicon/ui/ui/UxInteractView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mFgInDefault:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mDefaultIconSizeProgress:I

    return p0
.end method

.method public static synthetic access$702(Lcom/oplus/uxicon/ui/ui/UxInteractView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeInDefault:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I
    .registers 1

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->getRecyclerViewWidth()I

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mThemeSize:I

    return p0
.end method

.method public static synthetic access$902(Lcom/oplus/uxicon/ui/ui/UxInteractView;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mThemeSize:I

    return p1
.end method

.method private addUxMoreIcon()V
    .registers 4

    iget-boolean v0, p0, Lb/h;->mIsSupportUxIcon:Z

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lb/h;->mIsSupportThemedIcon:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lb/h;->mThemeNames:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/oplus/uxicon/ui/R$string;->ux_icon_more:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/h;->mThemeDrawable:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/oplus/uxicon/ui/R$drawable;->ux_more_theme:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lb/h;->mThemeKeys:Ljava/util/ArrayList;

    const-string v0, "more_icon_themes"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    return-void
.end method

.method public static synthetic c(Lcom/oplus/uxicon/ui/ui/UxInteractView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->lambda$setViewListener$0(Landroid/view/View;)V

    return-void
.end method

.method private cancelRunningAnim()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mShapeFadeInAnimSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private changeTextAnim()V
    .registers 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mTextAnimSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_b

    :cond_1b
    iget-object v1, p0, Lb/h;->mTvFontSize:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lb/h;->textAppearAnimator(Landroid/widget/TextView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lb/h;->mPreTvFontSize:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lb/h;->textDisappearAnimator(Landroid/widget/TextView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mTextAnimSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean p0, p0, Lb/h;->mIsThemeChange:Z

    if-nez p0, :cond_3f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3f
    return-void
.end method

.method public static synthetic d(Lcom/oplus/uxicon/ui/ui/UxInteractView;Landroid/app/WallpaperColors;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->lambda$wallpaperReceiver$1(Landroid/app/WallpaperColors;I)V

    return-void
.end method

.method private disableEvents()V
    .registers 3

    iget-boolean v0, p0, Lb/h;->mIsSupportUxIcon:Z

    if-nez v0, :cond_60

    iget-boolean v0, p0, Lb/h;->mIsSupportThemedIcon:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lb/h;->mArtLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lb/h;->hideViewForThirdTheme(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->foreground_size_panel:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/h;->hideViewForThirdTheme(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->radius_panel:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/h;->hideViewForThirdTheme(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mLocalSpecialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lb/h;->hideViewForThirdTheme(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mIconThemeLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lb/h;->hideViewForThirdTheme(Landroid/view/View;)V

    goto :goto_60

    :cond_2e
    iget-object v0, p0, Lb/h;->mArtSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mArtLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mForegroundSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mIconSizeBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusReset:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mFgReset:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mBgReset:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mLocalSpecialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mIconThemeLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    :cond_60
    :goto_60
    return-void
.end method

.method private disableShapeViews()V
    .registers 2

    iget-object v0, p0, Lb/h;->mCustomSquareShape:Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mCustomOctagonShape:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mCustomLeafShape:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mCustomStickerShape:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mCustomPeculiarShape:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mLocalSpecialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    iget-object v0, p0, Lb/h;->mIconThemeLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lb/h;->disableViewEvent(Landroid/view/View;)V

    return-void
.end method

.method private getRecyclerViewWidth()I
    .registers 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$integer;->layout_middle_proportion_item:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecyclerViewWidth usageWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " proportionValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UxInteractView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private hideShapeViews()V
    .registers 3

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->layout_custom_shape:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/h;->hideViewForThirdTheme(Landroid/view/View;)V

    return-void
.end method

.method private initDefaultValues()V
    .registers 5

    iget-boolean v0, p0, Lb/h;->mIsSupportUxIcon:Z

    const/4 v1, 0x4

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lb/h;->mIsSupportThemedIcon:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x3d

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mDefaultIconSizeProgress:I

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mMaxThemeRange:I

    goto :goto_39

    :cond_10
    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isPadDevices()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x6

    if-eqz v0, :cond_22

    const/16 v0, 0x32

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mDefaultIconSizeProgress:I

    iput v2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mMaxThemeRange:I

    goto :goto_39

    :cond_22
    sget-boolean v0, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIsFoldScreen:Z

    const/16 v3, 0x3e

    if-eqz v0, :cond_35

    sget-boolean v0, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIsDragonFly:Z

    if-nez v0, :cond_35

    sget-boolean v0, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIsFoldSmallScreen:Z

    if-nez v0, :cond_35

    iput v3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mDefaultIconSizeProgress:I

    iput v2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mMaxThemeRange:I

    goto :goto_39

    :cond_35
    iput v3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mDefaultIconSizeProgress:I

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mMaxThemeRange:I

    :goto_39
    return-void
.end method

.method private initSeekBarValues()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/R$dimen;->ux_icon_radius_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconRadiusStart:I

    const/16 v0, 0x4b

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconRadiusEnd:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sFgSizeStartId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mForegroundSizeStart:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sFgSizeEndId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mForegroundSizeEnd:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIconSizeStartId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeStart:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIconSizeEndId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeEnd:I

    const-string v0, "initSeekBarValues mIconSizeEnd:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " --- mIconSizeStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeStart:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UxInteractView"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$setViewListener$0(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lb/h;->mIconThemeSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setTactileFeedbackEnabled(Z)V

    iget-object p1, p0, Lb/h;->mIconThemeSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    iget-object p1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iget-object v0, p0, Lb/h;->mIconThemeSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/uxicon/helper/IconConfig;->setIconThemeEnable(Z)V

    iget-object p1, p0, Lb/h;->mIconThemeSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->wallpaperReceiver(Z)V

    iget-object p1, p0, Lb/h;->mIconConfigListener:Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;

    iget-object v0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iget v1, p0, Lb/h;->mFontSize:I

    iget-object p0, p0, Lb/h;->mIconPack:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p0}, Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;->onIconConfigChange(Lcom/oplus/uxicon/helper/IconConfig;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$wallpaperReceiver$1(Landroid/app/WallpaperColors;I)V
    .registers 3

    iget-object p0, p0, Lb/h;->mWallpaperChangeListener:Lcom/oplus/uxicon/ui/listener/IWallPaperChangeListener;

    invoke-interface {p0}, Lcom/oplus/uxicon/ui/listener/IWallPaperChangeListener;->onWallpaperChange()V

    return-void
.end method

.method private removeUxMoreIcon()V
    .registers 4

    iget-object v0, p0, Lb/h;->mThemeNames:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/oplus/uxicon/ui/R$string;->ux_icon_more:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/h;->mThemeDrawable:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/oplus/uxicon/ui/R$drawable;->ux_more_theme:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lb/h;->mThemeKeys:Ljava/util/ArrayList;

    const-string v0, "more_icon_themes"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private setTextViewGuideListener(Landroid/widget/TextView;)V
    .registers 3

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;

    invoke-direct {v0, p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView$c;-><init>(Lcom/oplus/uxicon/ui/ui/UxInteractView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private wallpaperReceiver(Z)V
    .registers 4

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v1, p0, Lb/h;->mWallpaperChangeListener:Lcom/oplus/uxicon/ui/listener/IWallPaperChangeListener;

    if-nez v1, :cond_d

    goto :goto_2e

    :cond_d
    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mColorsListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    if-nez p1, :cond_1a

    new-instance p1, Ld2/a;

    invoke-direct {p1, p0}, Ld2/a;-><init>(Lcom/oplus/uxicon/ui/ui/UxInteractView;)V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mColorsListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    :cond_1a
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mColorsListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, p1}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    goto :goto_2e

    :cond_29
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mColorsListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public findView()V
    .registers 5

    invoke-super {p0}, Lb/h;->findView()V

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->recycler_theme:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRecyclerTheme:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRecyclerTheme:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lb/h;->mThemeDrawable:Ljava/util/ArrayList;

    iget-object v3, p0, Lb/h;->mThemeNames:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mAdapter:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-virtual {v0, p0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->setOnThemeSelectListener(La/b;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRecyclerTheme:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mAdapter:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRecyclerTheme:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;-><init>(Lcom/oplus/uxicon/ui/ui/UxInteractView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->radius_seek_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/seekbar/COUISeekBar;

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->tv_radius:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mTvRadius:Landroid/widget/TextView;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->icon_radius_reset:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusReset:Landroid/widget/TextView;

    return-void
.end method

.method public getPreferenceThemeKey()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lb/h;->mCurrentThemePos:I

    if-gez v0, :cond_18

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getRectangleThemeConfigPos()I

    move-result v0

    iput v0, p0, Lb/h;->mCurrentThemePos:I

    iget-object v0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/helper/IconConfig;->setTheme(I)V

    :cond_18
    iget-object v0, p0, Lb/h;->mThemeKeys:Ljava/util/ArrayList;

    iget p0, p0, Lb/h;->mCurrentThemePos:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public initSeekBar(IIILcom/coui/appcompat/seekbar/COUISeekBar;)V
    .registers 6

    int-to-float p3, p3

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float/2addr p3, v0

    int-to-float v0, p1

    sub-float/2addr p3, v0

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr p3, p1

    invoke-virtual {p4}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    if-gez p1, :cond_13

    const/4 p1, 0x0

    :cond_13
    invoke-virtual {p4}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result p2

    if-le p1, p2, :cond_1d

    invoke-virtual {p4}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result p1

    :cond_1d
    invoke-virtual {p4, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    iget-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mLoadFirstly:Z

    if-eqz p1, :cond_27

    invoke-virtual {p4, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setOnSeekBarChangeListener(Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;)V

    :cond_27
    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V
    .registers 16

    iget-boolean p3, p0, Lb/h;->mIsSupportUxIcon:Z

    const/4 v0, 0x0

    if-nez p3, :cond_42

    iget-boolean p3, p0, Lb/h;->mIsSupportThemedIcon:Z

    if-eqz p3, :cond_42

    iget-object p3, p0, Lb/h;->mIconSizeBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    if-ne p1, p3, :cond_42

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1a

    add-int/lit16 p1, p1, 0xfa0

    iput p1, p0, Lb/h;->mThemedIconSize:I

    iget-object p2, p0, Lb/h;->mThemeConfigChangedListener:Lcom/oplus/uxicon/ui/listener/UxThemeConfigChangedListener;

    iget p3, p0, Lb/h;->mFontSize:I

    invoke-interface {p2, p1, p3}, Lcom/oplus/uxicon/ui/listener/UxThemeConfigChangedListener;->onThemeConfigChanged(II)V

    iget-boolean p2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeInDefault:Z

    if-eqz p2, :cond_2b

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeInDefault:Z

    iget-object p2, p0, Lb/h;->mTvIconSize:Landroid/widget/TextView;

    iget-object p3, p0, Lb/h;->mBgReset:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p3, v0}, Lb/h;->updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    :cond_2b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "size "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toggle on progress changed"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_42
    iget-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    const-wide/high16 v1, 0x3fe0000000000000L  # 0.5

    const/high16 v3, 0x3f800000  # 1.0f

    if-ne p1, p3, :cond_a0

    iget p3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconRadiusStart:I

    int-to-float v4, p3

    iget v5, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconRadiusEnd:I

    sub-int/2addr v5, p3

    mul-int/2addr v5, p2

    int-to-float p3, v5

    mul-float/2addr p3, v3

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    add-float/2addr p3, v4

    float-to-double v4, p3

    add-double/2addr v4, v1

    double-to-int p3, v4

    iget-object v4, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v4, p3}, Lcom/oplus/uxicon/helper/IconConfig;->setIconRadius(I)V

    const/16 v4, 0x4b

    if-lt p3, v4, :cond_7a

    iget-object p3, p0, Lb/h;->mCustomSquareShape:Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oplus/uxicon/ui/R$string;->ux_icon_mask_circle:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->setMask(Landroid/graphics/Path;)V

    goto :goto_93

    :cond_7a
    iget-object v4, p0, Lb/h;->mCustomSquareShape:Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;

    new-instance v5, Landroid/graphics/Path;

    invoke-static {}, Lcom/oplus/uxicon/ui/util/i;->a()Lcom/oplus/uxicon/ui/util/i;

    move-result-object v6

    int-to-float v11, p3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x43160000  # 150.0f

    const/high16 v10, 0x43160000  # 150.0f

    invoke-virtual/range {v6 .. v11}, Lcom/oplus/uxicon/ui/util/i;->a(FFFFF)Landroid/graphics/Path;

    move-result-object p3

    invoke-direct {v5, p3}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {v4, v5}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->setMask(Landroid/graphics/Path;)V

    :goto_93
    iget-boolean p3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusInDefault:Z

    if-eqz p3, :cond_a0

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusInDefault:Z

    iget-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mTvRadius:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusReset:Landroid/widget/TextView;

    invoke-virtual {p0, p3, v4, v0}, Lb/h;->updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    :cond_a0
    iget-object p3, p0, Lb/h;->mForegroundSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    if-ne p1, p3, :cond_c9

    iget p3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mForegroundSizeStart:I

    int-to-float v4, p3

    iget v5, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mForegroundSizeEnd:I

    sub-int/2addr v5, p3

    mul-int/2addr v5, p2

    int-to-float p3, v5

    mul-float/2addr p3, v3

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    add-float/2addr p3, v4

    float-to-double v4, p3

    add-double/2addr v4, v1

    double-to-int p3, v4

    iget-object v4, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v4, p3}, Lcom/oplus/uxicon/helper/IconConfig;->setForegroundSize(I)V

    iget-boolean p3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mFgInDefault:Z

    if-eqz p3, :cond_c9

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mFgInDefault:Z

    iget-object p3, p0, Lb/h;->mTvFgSize:Landroid/widget/TextView;

    iget-object v4, p0, Lb/h;->mFgReset:Landroid/widget/TextView;

    invoke-virtual {p0, p3, v4, v0}, Lb/h;->updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    :cond_c9
    iget-object p3, p0, Lb/h;->mIconSizeBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    if-ne p1, p3, :cond_f2

    iget p3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeStart:I

    int-to-float v4, p3

    iget v5, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeEnd:I

    sub-int/2addr v5, p3

    mul-int/2addr v5, p2

    int-to-float p2, v5

    mul-float/2addr p2, v3

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    add-float/2addr p2, v4

    float-to-double p1, p2

    add-double/2addr p1, v1

    double-to-int p1, p1

    iget-object p2, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p2, p1}, Lcom/oplus/uxicon/helper/IconConfig;->setIconSize(I)V

    iget-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeInDefault:Z

    if-eqz p1, :cond_f2

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeInDefault:Z

    iget-object p1, p0, Lb/h;->mTvIconSize:Landroid/widget/TextView;

    iget-object p2, p0, Lb/h;->mBgReset:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, v0}, Lb/h;->updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    :cond_f2
    iget-boolean p1, p0, Lb/h;->mIsThemeChange:Z

    if-nez p1, :cond_101

    iget-object p1, p0, Lb/h;->mIconConfigListener:Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;

    iget-object p2, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iget p3, p0, Lb/h;->mFontSize:I

    iget-object p0, p0, Lb/h;->mIconPack:Ljava/lang/String;

    invoke-interface {p1, p2, p3, p0}, Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;->onIconConfigChange(Lcom/oplus/uxicon/helper/IconConfig;ILjava/lang/String;)V

    :cond_101
    return-void
.end method

.method public onStartTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h;->mIsTrackingSeekbar:Z

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1a

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_1a

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mTvRadius:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusReset:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0, v1}, Lb/h;->updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    iput-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusInDefault:Z

    goto :goto_48

    :cond_1a
    iget-object v0, p0, Lb/h;->mForegroundSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    if-ne p1, v0, :cond_30

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_30

    iget-object p1, p0, Lb/h;->mTvFgSize:Landroid/widget/TextView;

    iget-object v0, p0, Lb/h;->mFgReset:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0, v1}, Lb/h;->updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    iput-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mFgInDefault:Z

    goto :goto_48

    :cond_30
    iget-object v0, p0, Lb/h;->mIconSizeBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    if-ne p1, v0, :cond_46

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result p1

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mDefaultIconSizeProgress:I

    if-ne p1, v0, :cond_46

    iget-object p1, p0, Lb/h;->mTvIconSize:Landroid/widget/TextView;

    iget-object v0, p0, Lb/h;->mBgReset:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0, v1}, Lb/h;->updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    iput-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeInDefault:Z

    goto :goto_48

    :cond_46
    iput-boolean v1, p0, Lb/h;->mIsTrackingSeekbar:Z

    :goto_48
    return-void
.end method

.method public onStopTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V
    .registers 6

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->getPreferenceThemeKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/h;->mIsTrackingSeekbar:Z

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1e

    invoke-virtual {v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result v1

    const/16 v3, 0x30

    if-ne v1, v3, :cond_1e

    iput-boolean v2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusInDefault:Z

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mTvRadius:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusReset:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0, v2}, Lb/h;->updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    goto :goto_5a

    :cond_1e
    iget-object v1, p0, Lb/h;->mForegroundSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    if-ne p1, v1, :cond_34

    invoke-virtual {v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result v1

    const/16 v3, 0x64

    if-ne v1, v3, :cond_34

    iput-boolean v2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mFgInDefault:Z

    iget-object p1, p0, Lb/h;->mTvFgSize:Landroid/widget/TextView;

    iget-object v0, p0, Lb/h;->mFgReset:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0, v2}, Lb/h;->updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    goto :goto_5a

    :cond_34
    iget-object v1, p0, Lb/h;->mIconSizeBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    if-ne p1, v1, :cond_5a

    invoke-virtual {v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result p1

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mDefaultIconSizeProgress:I

    if-ne p1, v1, :cond_49

    iput-boolean v2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeInDefault:Z

    iget-object p1, p0, Lb/h;->mTvIconSize:Landroid/widget/TextView;

    iget-object v1, p0, Lb/h;->mBgReset:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1, v2}, Lb/h;->updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    :cond_49
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object p1

    iget-object p0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->saveIconSize(Ljava/lang/String;I)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public setIconConfig(Lcom/oplus/uxicon/helper/IconConfig;Ljava/lang/String;IZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->setIconConfig(Lcom/oplus/uxicon/helper/IconConfig;Ljava/lang/String;IZI)V

    return-void
.end method

.method public setIconConfig(Lcom/oplus/uxicon/helper/IconConfig;Ljava/lang/String;IZI)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lb/h;->setIconConfig(Lcom/oplus/uxicon/helper/IconConfig;Ljava/lang/String;IZ)V

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->initSeekBarValues()V

    iput-boolean p4, p0, Lb/h;->mIsSupportUxIcon:Z

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIconConfig isSupportUxIcon: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "initThemeConfig"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->removeUxMoreIcon()V

    iget-boolean p3, p0, Lb/h;->mIsSupportUxIcon:Z

    if-nez p3, :cond_31

    iget-boolean p3, p0, Lb/h;->mIsSupportThemedIcon:Z

    if-eqz p3, :cond_31

    iput p5, p0, Lb/h;->mThemedIconSize:I

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->addUxMoreIcon()V

    :cond_31
    iget-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mAdapter:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-virtual {p3, p4}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->setIsSupportUxIcon(Z)V

    iget-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mAdapter:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    iget-boolean p5, p0, Lb/h;->mIsSupportThemedIcon:Z

    invoke-virtual {p3, p5}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->setIsSupportThemedIcon(Z)V

    iget-object p3, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget p5, Lcom/oplus/uxicon/ui/R$id;->layout_theme_setting:I

    invoke-virtual {p3, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/16 p5, 0x8

    invoke-virtual {p3, p5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->copy()Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object p1

    iput-object p1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result p1

    const/4 p3, 0x5

    const/4 p5, 0x0

    if-ne p1, p3, :cond_9f

    const/4 p1, 0x2

    if-eqz p2, :cond_83

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_83

    iget-object p3, p0, Lb/h;->mThemeKeys:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    iput p3, p0, Lb/h;->mCurrentThemePos:I

    iput-object p2, p0, Lb/h;->mIconPack:Ljava/lang/String;

    if-gez p3, :cond_b5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getRectangleThemeConfigPos()I

    move-result p2

    iput p2, p0, Lb/h;->mCurrentThemePos:I

    iget-object p2, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p2, p1}, Lcom/oplus/uxicon/helper/IconConfig;->setTheme(I)V

    goto :goto_b5

    :cond_83
    iget-object p2, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p2, p1}, Lcom/oplus/uxicon/helper/IconConfig;->setTheme(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object p1

    iget-object p2, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p2}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getItemIndexInCommonStyleConfigArray(I)I

    move-result p1

    iput p1, p0, Lb/h;->mCurrentThemePos:I

    iput-object p5, p0, Lb/h;->mIconPack:Ljava/lang/String;

    goto :goto_b5

    :cond_9f
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object p1

    iget-object p2, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p2}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getItemIndexInCommonStyleConfigArray(I)I

    move-result p1

    iput p1, p0, Lb/h;->mCurrentThemePos:I

    iput-object p5, p0, Lb/h;->mIconPack:Ljava/lang/String;

    :cond_b5
    :goto_b5
    if-eqz p4, :cond_be

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mAdapter:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    iget p2, p0, Lb/h;->mCurrentThemePos:I

    invoke-virtual {p1, p2}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->setThemePos(I)V

    :cond_be
    iget-object p1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_ef

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object p1

    const-string p3, "key_has_permission"

    invoke-virtual {p1, p3}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_ef

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object p1

    const-string p5, "key_not_alert"

    invoke-virtual {p1, p5, p2}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->putBoolean(Ljava/lang/String;Z)V

    :cond_ef
    iget p1, p0, Lb/h;->mCurrentThemePos:I

    const/4 p2, 0x3

    if-le p1, p2, :cond_fb

    if-eqz p4, :cond_fb

    iget-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRecyclerTheme:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_fb
    if-nez p4, :cond_10b

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getRectangleThemeConfigPos()I

    move-result p1

    iput p1, p0, Lb/h;->mCurrentThemePos:I

    :cond_10b
    iget-object p1, p0, Lb/h;->mLocalSpecialSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-object p2, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p2}, Lcom/oplus/uxicon/helper/IconConfig;->isLocalSpecial()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setChecked(Z)V

    iget-object p1, p0, Lb/h;->mIconThemeSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-object p2, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p2}, Lcom/oplus/uxicon/helper/IconConfig;->isIconThemeEnable()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->updateView()V

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->disableEvents()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mLoadFirstly:Z

    return-void
.end method

.method public setIconConfigChangeListener(Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;)V
    .registers 2

    iput-object p1, p0, Lb/h;->mIconConfigListener:Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;

    return-void
.end method

.method public setIsSupportThemedIcon(Ljava/lang/Boolean;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addUxMoreIcon setIsSupportThemedIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UxInteractView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lb/h;->mIsSupportThemedIcon:Z

    return-void
.end method

.method public setThemeConfigChangedListener(Lcom/oplus/uxicon/ui/listener/UxThemeConfigChangedListener;)V
    .registers 2

    iput-object p1, p0, Lb/h;->mThemeConfigChangedListener:Lcom/oplus/uxicon/ui/listener/UxThemeConfigChangedListener;

    return-void
.end method

.method public setViewListener()V
    .registers 4

    invoke-virtual {p0}, Lb/h;->initArtSwitch()V

    iget-boolean v0, p0, Lb/h;->mIsSupportUxIcon:Z

    if-nez v0, :cond_f

    iget-boolean v1, p0, Lb/h;->mIsSupportThemedIcon:Z

    if-eqz v1, :cond_f

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->hideShapeViews()V

    goto :goto_14

    :cond_f
    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->disableShapeViews()V

    :cond_14
    :goto_14
    iget-object v0, p0, Lb/h;->mCustomSquareShape:Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lb/h;->mCustomOctagonShape:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lb/h;->mCustomLeafShape:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lb/h;->mCustomStickerShape:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lb/h;->mCustomPeculiarShape:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lb/h;->mAppNameSectionBar:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setMax(I)V

    iget-object v0, p0, Lb/h;->mAppNameSectionBar:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    iget v1, p0, Lb/h;->mFontSize:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusReset:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->setTextViewGuideListener(Landroid/widget/TextView;)V

    iget-object v0, p0, Lb/h;->mFgReset:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->setTextViewGuideListener(Landroid/widget/TextView;)V

    iget-object v0, p0, Lb/h;->mBgReset:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->setTextViewGuideListener(Landroid/widget/TextView;)V

    iget-object v0, p0, Lb/h;->mAppNameSectionBar:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxInteractView$a;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView$a;-><init>(Lcom/oplus/uxicon/ui/ui/UxInteractView;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setOnSeekBarChangeListener(Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lb/h;->mLocalSpecialSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setClickable(Z)V

    iget-object v0, p0, Lb/h;->mLocalSpecialView:Landroid/view/View;

    new-instance v2, Lcom/oplus/uxicon/ui/ui/UxInteractView$b;

    invoke-direct {v2, p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView$b;-><init>(Lcom/oplus/uxicon/ui/ui/UxInteractView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lb/h;->mIconThemeSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setClickable(Z)V

    iget-object v0, p0, Lb/h;->mIconThemeLayout:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/shared/rotation/b;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/rotation/b;-><init>(Lcom/oplus/uxicon/ui/ui/UxInteractView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setWallpaperChangeListener(Lcom/oplus/uxicon/ui/listener/IWallPaperChangeListener;)V
    .registers 2

    iput-object p1, p0, Lb/h;->mWallpaperChangeListener:Lcom/oplus/uxicon/ui/listener/IWallPaperChangeListener;

    return-void
.end method

.method public updateCurrentSelectedView()V
    .registers 4

    iget-object v0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconShape()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    if-eq v0, v1, :cond_24

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1a

    const/4 v2, 0x4

    if-eq v0, v2, :cond_15

    goto :goto_30

    :cond_15
    iget-object v0, p0, Lb/h;->mCustomPeculiarShape:Landroid/widget/ImageView;

    iput-object v0, p0, Lb/h;->mCurrentSelectShape:Landroid/widget/ImageView;

    goto :goto_30

    :cond_1a
    iget-object v0, p0, Lb/h;->mCustomStickerShape:Landroid/widget/ImageView;

    iput-object v0, p0, Lb/h;->mCurrentSelectShape:Landroid/widget/ImageView;

    goto :goto_30

    :cond_1f
    iget-object v0, p0, Lb/h;->mCustomLeafShape:Landroid/widget/ImageView;

    iput-object v0, p0, Lb/h;->mCurrentSelectShape:Landroid/widget/ImageView;

    goto :goto_30

    :cond_24
    iget-object v0, p0, Lb/h;->mCustomOctagonShape:Landroid/widget/ImageView;

    iput-object v0, p0, Lb/h;->mCurrentSelectShape:Landroid/widget/ImageView;

    goto :goto_30

    :cond_29
    iget-object v0, p0, Lb/h;->mCustomSquareShape:Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;

    iput-object v0, p0, Lb/h;->mCurrentSelectShape:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :goto_30
    iget-object v0, p0, Lb/h;->mCurrentSelectShape:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    const/4 v0, 0x0

    iget-object v1, p0, Lb/h;->mCurrentSelectShape:Landroid/widget/ImageView;

    instance-of v2, v1, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;

    if-eqz v2, :cond_43

    check-cast v1, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;

    invoke-virtual {v1}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->getFadeInAnim()Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_4d

    :cond_43
    instance-of v2, v1, Lcom/oplus/uxicon/ui/ui/UxShapeView;

    if-eqz v2, :cond_4d

    check-cast v1, Lcom/oplus/uxicon/ui/ui/UxShapeView;

    invoke-virtual {v1}, Lcom/oplus/uxicon/ui/ui/UxShapeView;->getFadeInAnim()Landroid/animation/ValueAnimator;

    move-result-object v0

    :cond_4d
    :goto_4d
    if-eqz v0, :cond_55

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->cancelRunningAnim()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_55
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mShapeFadeInAnimSet:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateFontSizeIndicator(I)V
    .registers 4

    iget-object v0, p0, Lb/h;->mPreTvFontSize:Landroid/widget/TextView;

    iget-object v1, p0, Lb/h;->mTvFontSize:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_3a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_32

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_22

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1a

    goto :goto_41

    :cond_1a
    iget-object p1, p0, Lb/h;->mTvFontSize:Landroid/widget/TextView;

    sget v0, Lcom/oplus/uxicon/ui/R$string;->font_size_large:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_41

    :cond_22
    iget-object p1, p0, Lb/h;->mTvFontSize:Landroid/widget/TextView;

    sget v0, Lcom/oplus/uxicon/ui/R$string;->font_size_big:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_41

    :cond_2a
    iget-object p1, p0, Lb/h;->mTvFontSize:Landroid/widget/TextView;

    sget v0, Lcom/oplus/uxicon/ui/R$string;->ux_font_size_middle:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_41

    :cond_32
    iget-object p1, p0, Lb/h;->mTvFontSize:Landroid/widget/TextView;

    sget v0, Lcom/oplus/uxicon/ui/R$string;->font_size_default:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_41

    :cond_3a
    iget-object p1, p0, Lb/h;->mTvFontSize:Landroid/widget/TextView;

    sget v0, Lcom/oplus/uxicon/ui/R$string;->ux_font_size_small:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_41
    iget-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIsPlayTextAnim:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_61

    iget-object p1, p0, Lb/h;->mTvFontSize:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lb/h;->mPreTvFontSize:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lb/h;->mPreTvFontSize:Landroid/widget/TextView;

    sget-object v0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->OPAQUE_OPACITY:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->changeTextAnim()V

    goto :goto_6b

    :cond_61
    iget-object p1, p0, Lb/h;->mPreTvFontSize:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lb/h;->mTvFontSize:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6b
    return-void
.end method

.method public updateIconShape(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lb/h;->mCustomSquareShape:Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/helper/IconConfig;->setIconShape(I)V

    :cond_a
    iget-object v0, p0, Lb/h;->mCustomOctagonShape:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/helper/IconConfig;->setIconShape(I)V

    :cond_14
    iget-object v0, p0, Lb/h;->mCustomLeafShape:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1e

    iget-object v0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/helper/IconConfig;->setIconShape(I)V

    :cond_1e
    iget-object v0, p0, Lb/h;->mCustomStickerShape:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_28

    iget-object v0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/helper/IconConfig;->setIconShape(I)V

    :cond_28
    iget-object v0, p0, Lb/h;->mCustomPeculiarShape:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_32

    iget-object p0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->setIconShape(I)V

    :cond_32
    return-void
.end method

.method public updateSeekBar()V
    .registers 11

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->getPreferenceThemeKey()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mLoadFirstly:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getCustomThemeConfig()I

    move-result v3

    if-ne v0, v3, :cond_a9

    :cond_1d
    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconRadiusStart:I

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconRadiusEnd:I

    iget-object v4, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->getIconRadius()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->initSeekBar(IIILcom/coui/appcompat/seekbar/COUISeekBar;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result v0

    const/16 v3, 0x30

    if-ne v0, v3, :cond_38

    move v0, v1

    goto :goto_39

    :cond_38
    move v0, v2

    :goto_39
    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusInDefault:Z

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mTvRadius:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mRadiusReset:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v4, v0}, Lb/h;->updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconRadius()I

    move-result v0

    const/16 v3, 0x4b

    if-lt v0, v3, :cond_60

    iget-object v0, p0, Lb/h;->mCustomSquareShape:Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oplus/uxicon/ui/R$string;->ux_icon_mask_circle:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->setMask(Landroid/graphics/Path;)V

    goto :goto_7f

    :cond_60
    iget-object v0, p0, Lb/h;->mCustomSquareShape:Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;

    new-instance v3, Landroid/graphics/Path;

    invoke-static {}, Lcom/oplus/uxicon/ui/util/i;->a()Lcom/oplus/uxicon/ui/util/i;

    move-result-object v4

    iget-object v5, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v5}, Lcom/oplus/uxicon/helper/IconConfig;->getIconRadius()I

    move-result v5

    int-to-float v9, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43160000  # 150.0f

    const/high16 v8, 0x43160000  # 150.0f

    invoke-virtual/range {v4 .. v9}, Lcom/oplus/uxicon/ui/util/i;->a(FFFFF)Landroid/graphics/Path;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {v0, v3}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->setMask(Landroid/graphics/Path;)V

    :goto_7f
    iget-object v0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getForegroundSize()I

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mForegroundSizeStart:I

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mForegroundSizeEnd:I

    iget-object v4, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->getForegroundSize()I

    move-result v4

    iget-object v5, p0, Lb/h;->mForegroundSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->initSeekBar(IIILcom/coui/appcompat/seekbar/COUISeekBar;)V

    iget-object v0, p0, Lb/h;->mForegroundSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result v0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_9f

    move v0, v1

    goto :goto_a0

    :cond_9f
    move v0, v2

    :goto_a0
    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mFgInDefault:Z

    iget-object v3, p0, Lb/h;->mTvFgSize:Landroid/widget/TextView;

    iget-object v4, p0, Lb/h;->mFgReset:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v4, v0}, Lb/h;->updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    :cond_a9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v3}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v3

    invoke-static {v0, v3}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    iget-boolean v0, p0, Lb/h;->mIsSupportUxIcon:Z

    if-nez v0, :cond_d0

    iget-boolean v0, p0, Lb/h;->mIsSupportThemedIcon:Z

    if-eqz v0, :cond_d0

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeStart:I

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeEnd:I

    iget v4, p0, Lb/h;->mThemedIconSize:I

    iget-object v5, p0, Lb/h;->mIconSizeBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->initSeekBar(IIILcom/coui/appcompat/seekbar/COUISeekBar;)V

    goto :goto_df

    :cond_d0
    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeStart:I

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeEnd:I

    iget-object v4, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v4

    iget-object v5, p0, Lb/h;->mIconSizeBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->initSeekBar(IIILcom/coui/appcompat/seekbar/COUISeekBar;)V

    :goto_df
    iget-object v0, p0, Lb/h;->mIconSizeBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result v0

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mDefaultIconSizeProgress:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_ef

    goto :goto_f0

    :cond_ef
    move v1, v2

    :goto_f0
    iput-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIconSizeInDefault:Z

    iget-object v0, p0, Lb/h;->mTvIconSize:Landroid/widget/TextView;

    iget-object v3, p0, Lb/h;->mBgReset:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3, v1}, Lb/h;->updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lb/h;->mAppNameSectionBar:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    iget v1, p0, Lb/h;->mFontSize:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    iput-boolean v2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mIsPlayTextAnim:Z

    iget v0, p0, Lb/h;->mFontSize:I

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->updateFontSizeIndicator(I)V

    iget-object v0, p0, Lb/h;->mLocalSpecialSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v1}, Lcom/oplus/uxicon/helper/IconConfig;->isLocalSpecial()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setChecked(Z)V

    iget-object v0, p0, Lb/h;->mIconThemeSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-object p0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->isIconThemeEnable()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setChecked(Z)V

    return-void
.end method

.method public updateView()V
    .registers 10

    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mLoadFirstly:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object v0

    iget-object v2, p0, Lb/h;->mThemeKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getRadiusSize(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lb/h;->mCustomSquareShape:Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;

    invoke-static {}, Lcom/oplus/uxicon/ui/util/i;->a()Lcom/oplus/uxicon/ui/util/i;

    move-result-object v3

    int-to-float v8, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x43160000  # 150.0f

    const/high16 v7, 0x43160000  # 150.0f

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/uxicon/ui/util/i;->a(FFFFF)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->setMask(Landroid/graphics/Path;)V

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->setViewListener()V

    :cond_30
    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->updateCurrentSelectedView()V

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->updateViewVisible()V

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->updateSeekBar()V

    iget v0, p0, Lb/h;->mCurrentThemePos:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4e

    iget-object v0, p0, Lb/h;->mArtSwitch:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v1}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v3, v2

    :goto_4b
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4e
    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mLoadFirstly:Z

    if-eqz v0, :cond_54

    iput-boolean v2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;->mLoadFirstly:Z

    :cond_54
    return-void
.end method

.method public updateViewVisible()V
    .registers 6

    iget-object v0, p0, Lb/h;->mLocalSpecialView:Landroid/view/View;

    iget v1, p0, Lb/h;->mCurrentThemePos:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_13

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/uxicon/helper/IconResLoader;->hasIDSpecialSupportFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lb/h;->mCurrentThemePos:I

    const/4 v1, 0x3

    if-ltz v0, :cond_c9

    if-gt v0, v1, :cond_c9

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v4, Lcom/oplus/uxicon/ui/R$id;->art_layout:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v4, Lcom/oplus/uxicon/ui/R$id;->icon_park_bottom_space:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lb/h;->mCurrentThemePos:I

    if-ne v0, v1, :cond_97

    iget-object v0, p0, Lb/h;->mIconThemeLayout:Landroid/view/View;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-le v1, v4, :cond_4e

    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isFoldDevicesExcludeDragon()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isSupport13_2()Z

    move-result v1

    if-eqz v1, :cond_4e

    :cond_4c
    move v1, v2

    goto :goto_4f

    :cond_4e
    move v1, v3

    :goto_4f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/h;->mArtSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v0, p0, Lb/h;->mArtLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->layout_custom_shape:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lb/h;->mHideFgLayout:Z

    if-nez v0, :cond_76

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->foreground_size_panel:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_76
    iget-object v0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconShape()I

    move-result v0

    if-nez v0, :cond_8b

    iget-object p0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v0, Lcom/oplus/uxicon/ui/R$id;->radius_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_107

    :cond_8b
    iget-object p0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v0, Lcom/oplus/uxicon/ui/R$id;->radius_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_107

    :cond_97
    iget-object v0, p0, Lb/h;->mIconThemeLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->radius_panel:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/h;->mArtSwitch:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v0, p0, Lb/h;->mArtLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->layout_custom_shape:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v0, Lcom/oplus/uxicon/ui/R$id;->foreground_size_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_107

    :cond_c9
    if-le v0, v1, :cond_107

    iget-object v0, p0, Lb/h;->mIconThemeLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->art_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->layout_custom_shape:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->radius_panel:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->foreground_size_panel:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v0, Lcom/oplus/uxicon/ui/R$id;->icon_park_bottom_space:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_107
    :goto_107
    return-void
.end method
