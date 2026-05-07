.class public abstract Lb/h;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements La/b;
.implements Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "InteractView"

.field private static final sInterpolator:Landroid/view/animation/PathInterpolator;

.field private static final sOpacity:Ljava/lang/Float;

.field private static final sTextAppearDuration:I = 0x15e

.field private static final sTextDisappearDelay:I = 0x64

.field private static final sTransparent:Ljava/lang/Float;


# instance fields
.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field public mAppNameSectionBar:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

.field public mApplyButton:Lcom/coui/appcompat/button/COUIButton;

.field public mArtLayout:Landroid/widget/RelativeLayout;

.field public mArtSwitch:Landroid/widget/CompoundButton;

.field public mBgReset:Landroid/widget/TextView;

.field public mCurrentSelectShape:Landroid/widget/ImageView;

.field public mCurrentThemePos:I

.field public mCustomLeafShape:Landroid/widget/ImageView;

.field public mCustomOctagonShape:Landroid/widget/ImageView;

.field public mCustomPeculiarShape:Landroid/widget/ImageView;

.field public mCustomSquareShape:Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;

.field public mCustomStickerShape:Landroid/widget/ImageView;

.field private mDefaultFgSize:I

.field public mDragToJumpLayout:Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;

.field public mFgReset:Landroid/widget/TextView;

.field public mFontSize:I

.field public mForegroundSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

.field public mHideFgLayout:Z

.field public mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

.field public mIconConfigListener:Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;

.field public mIconPack:Ljava/lang/String;

.field public mIconParkDrawable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mIconParkThemeNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIconSizeBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

.field public mIconThemeLayout:Landroid/view/View;

.field public mIconThemeSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

.field public mIsSupportThemedIcon:Z

.field public mIsSupportUxIcon:Z

.field public mIsThemeChange:Z

.field private mIsThemeSelected:Z

.field public mIsTrackingSeekbar:Z

.field private mLoadFirstly:Z

.field public mLocalSpecialSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

.field public mLocalSpecialView:Landroid/view/View;

.field public mNameSpace:Landroid/widget/LinearLayout;

.field public mPreTvFontSize:Landroid/widget/TextView;

.field public mRootView:Landroid/widget/LinearLayout;

.field private mSelectPosition:I

.field public mShapeFadeOutAnimSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public mThemeConfigChangedListener:Lcom/oplus/uxicon/ui/listener/UxThemeConfigChangedListener;

.field public mThemeDrawable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mThemeKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mThemeNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mThemedIconSize:I

.field public mTvFgSize:Landroid/widget/TextView;

.field public mTvFontSize:Landroid/widget/TextView;

.field public mTvIconSize:Landroid/widget/TextView;

.field public mWallpaperChangeListener:Lcom/oplus/uxicon/ui/listener/IWallPaperChangeListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/h;->sInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lb/h;->sOpacity:Ljava/lang/Float;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lb/h;->sTransparent:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lb/h;->mThemeDrawable:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lb/h;->mIconParkDrawable:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lb/h;->mIconParkThemeNames:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lb/h;->mThemeNames:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lb/h;->mThemeKeys:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput p2, p0, Lb/h;->mCurrentThemePos:I

    iput-boolean p2, p0, Lb/h;->mIsThemeChange:Z

    const/4 p3, 0x2

    iput p3, p0, Lb/h;->mFontSize:I

    iput-boolean p2, p0, Lb/h;->mHideFgLayout:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lb/h;->mLoadFirstly:Z

    iput-boolean p3, p0, Lb/h;->mIsThemeSelected:Z

    iput p2, p0, Lb/h;->mSelectPosition:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/h;->mIconPack:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/h;->mShapeFadeOutAnimSet:Ljava/util/HashSet;

    iput p2, p0, Lb/h;->mThemedIconSize:I

    iput-boolean p3, p0, Lb/h;->mIsSupportUxIcon:Z

    const/16 p3, 0x15e0

    iput p3, p0, Lb/h;->mDefaultFgSize:I

    iput-boolean p2, p0, Lb/h;->mIsSupportThemedIcon:Z

    iput-boolean p2, p0, Lb/h;->mIsTrackingSeekbar:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/oplus/uxicon/ui/R$layout;->ux_layout_interact_panel:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lb/h;->initDefaultValues()V

    invoke-virtual {p0}, Lb/h;->initThemes()V

    invoke-virtual {p0}, Lb/h;->findView()V

    invoke-direct {p0}, Lb/h;->showNotSupportUxIconDialog()V

    return-void
.end method

.method public static synthetic a(Lb/h;Landroid/view/View;IIII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lb/h;->lambda$findView$0(Landroid/view/View;IIII)V

    return-void
.end method

.method public static synthetic access$000(Lb/h;)I
    .registers 1

    iget p0, p0, Lb/h;->mSelectPosition:I

    return p0
.end method

.method public static synthetic access$002(Lb/h;I)I
    .registers 2

    iput p1, p0, Lb/h;->mSelectPosition:I

    return p1
.end method

.method public static synthetic access$100()Ljava/lang/Float;
    .registers 1

    sget-object v0, Lb/h;->sTransparent:Ljava/lang/Float;

    return-object v0
.end method

.method public static synthetic access$200(Lb/h;)Landroidx/appcompat/app/AlertDialog;
    .registers 1

    iget-object p0, p0, Lb/h;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic b(Lb/h;)V
    .registers 1

    invoke-direct {p0}, Lb/h;->lambda$findView$1()V

    return-void
.end method

.method private getDragIconPadding(Landroid/view/View;I)I
    .registers 3

    int-to-float p0, p2

    const/high16 p2, 0x3f800000  # 1.0f

    mul-float/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    add-float/2addr p0, p1

    const/high16 p1, 0x40000000  # 2.0f

    div-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private initDefaultValues()V
    .registers 2

    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isPadDevices()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1900

    iput v0, p0, Lb/h;->mDefaultFgSize:I

    goto :goto_20

    :cond_f
    sget-boolean v0, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIsFoldScreen:Z

    if-eqz v0, :cond_1c

    sget-boolean v0, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIsDragonFly:Z

    if-nez v0, :cond_1c

    const/16 v0, 0x1770

    iput v0, p0, Lb/h;->mDefaultFgSize:I

    goto :goto_20

    :cond_1c
    const/16 v0, 0x15e0

    iput v0, p0, Lb/h;->mDefaultFgSize:I

    :goto_20
    return-void
.end method

.method private initIconPackTheme()V
    .registers 8

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->getIconPackList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_73

    const/4 v2, 0x0

    move v3, v2

    :goto_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_73

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->getOriginalIcon(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3d

    iget-object v6, p0, Lb/h;->mThemeDrawable:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lb/h;->mIconParkDrawable:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_3d
    iget-object v5, p0, Lb/h;->mThemeDrawable:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lb/h;->mIconParkDrawable:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4f
    iget-object v5, p0, Lb/h;->mThemeNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lb/h;->mIconParkThemeNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lb/h;->mThemeKeys:Ljava/util/ArrayList;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_70} :catch_83
    .catchall {:try_start_0 .. :try_end_70} :catchall_81

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_73
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object v0

    iget-object p0, p0, Lb/h;->mThemeKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->saveThemeNames(Ljava/util/ArrayList;)V

    goto :goto_ab

    :catchall_81
    move-exception v0

    goto :goto_ac

    :catch_83
    move-exception v0

    :try_start_84
    const-string v1, "InteractView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init icon pack theme error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_84 .. :try_end_9e} :catchall_81

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object v0

    iget-object p0, p0, Lb/h;->mThemeKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->saveThemeNames(Ljava/util/ArrayList;)V

    :goto_ab
    return-void

    :goto_ac
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object v1

    iget-object p0, p0, Lb/h;->mThemeKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->saveThemeNames(Ljava/util/ArrayList;)V

    throw v0
.end method

.method private initSystemIconTheme()V
    .registers 5

    iget-object v0, p0, Lb/h;->mThemeDrawable:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$drawable;->ux_theme_default:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/h;->mThemeDrawable:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$drawable;->ux_theme_material:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/h;->mThemeDrawable:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$drawable;->ux_theme_pebble:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/h;->mThemeDrawable:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$drawable;->ux_theme_custom:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/h;->mThemeKeys:Ljava/util/ArrayList;

    const-string v1, "default_theme"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/h;->mThemeKeys:Ljava/util/ArrayList;

    const-string/jumbo v1, "material_theme"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/h;->mThemeKeys:Ljava/util/ArrayList;

    const-string/jumbo v1, "pebble_theme"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/h;->mThemeKeys:Ljava/util/ArrayList;

    const-string v1, "custom_theme"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/uxicon/helper/IconResLoader;->getCommonStyleNameArray(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/h;->mThemeNames:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oplus/uxicon/ui/R$string;->theme_aquatic:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_82

    iget-object v1, p0, Lb/h;->mThemeNames:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    array-length v0, v0

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_82
    iget-object v0, p0, Lb/h;->mThemeNames:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/oplus/uxicon/ui/R$string;->theme_custom:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$findView$0(Landroid/view/View;IIII)V
    .registers 6

    iget-boolean p3, p0, Lb/h;->mIsSupportUxIcon:Z

    if-nez p3, :cond_14

    iget-boolean p0, p0, Lb/h;->mIsSupportThemedIcon:Z

    if-nez p0, :cond_9

    goto :goto_14

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRtl()Z

    move-result p0

    if-nez p0, :cond_11

    if-gtz p2, :cond_14

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRtl()Z

    :cond_14
    :goto_14
    return-void
.end method

.method private synthetic lambda$findView$1()V
    .registers 4

    iget-boolean v0, p0, Lb/h;->mIsSupportUxIcon:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lb/h;->mIsSupportThemedIcon:Z

    if-nez v0, :cond_9

    goto :goto_2d

    :cond_9
    const-string v0, "InteractView"

    const-string/jumbo v1, "onRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_11
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->startMoreIconActivity(Landroid/content/Context;)V
    :try_end_16
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_2d

    :catch_17
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRefresh occur ActivityNotFoundException error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    return-void
.end method

.method private setStartMargin(ILandroid/view/View;)V
    .registers 5

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_14

    move-object p0, v0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_19

    :cond_14
    move-object p0, v0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_19
    :goto_19
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showNotSupportUxIconDialog()V
    .registers 4

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oplus/uxicon/ui/R$string;->icon_park_theme_dialog_title:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v1, Lcom/oplus/uxicon/ui/R$string;->icon_park_theme_dialog_message:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v1, Lcom/oplus/uxicon/ui/R$string;->icon_park_theme_dialog_positive:I

    new-instance v2, Lb/h$d;

    invoke-direct {v2, p0}, Lb/h$d;-><init>(Lb/h;)V

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v1, Lcom/oplus/uxicon/ui/R$string;->icon_park_theme_dialog_negative:I

    new-instance v2, Lb/h$c;

    invoke-direct {v2}, Lb/h$c;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lb/h;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public cancelRunningDisappearAnim()V
    .registers 3

    iget-object p0, p0, Lb/h;->mShapeFadeOutAnimSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public disableViewEvent(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lb/h$i;

    invoke-direct {v0, p0}, Lb/h$i;-><init>(Lb/h;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public findView()V
    .registers 4

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->art_switch:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lb/h;->mArtSwitch:Landroid/widget/CompoundButton;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->art_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lb/h;->mArtLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->shape_custom_square:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;

    iput-object v0, p0, Lb/h;->mCustomSquareShape:Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->shape_designed_octagon:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lb/h;->mCustomOctagonShape:Landroid/widget/ImageView;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->shape_designed_leaf:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lb/h;->mCustomLeafShape:Landroid/widget/ImageView;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->shape_designed_sticker:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lb/h;->mCustomStickerShape:Landroid/widget/ImageView;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->shape_designed_peculiar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lb/h;->mCustomPeculiarShape:Landroid/widget/ImageView;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->foreground_size_seek_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/seekbar/COUISeekBar;

    iput-object v0, p0, Lb/h;->mForegroundSeekBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->icon_size_seek_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/seekbar/COUISeekBar;

    iput-object v0, p0, Lb/h;->mIconSizeBar:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->name_size_seek_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    iput-object v0, p0, Lb/h;->mAppNameSectionBar:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->tv_foreground:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lb/h;->mTvFgSize:Landroid/widget/TextView;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->tv_icon_size:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lb/h;->mTvIconSize:Landroid/widget/TextView;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->pre_tv_name_size:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lb/h;->mPreTvFontSize:Landroid/widget/TextView;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->tv_name_size:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lb/h;->mTvFontSize:Landroid/widget/TextView;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->fg_size_reset:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lb/h;->mFgReset:Landroid/widget/TextView;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->icon_size_reset:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lb/h;->mBgReset:Landroid/widget/TextView;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->apply_button:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    iput-object v0, p0, Lb/h;->mApplyButton:Lcom/coui/appcompat/button/COUIButton;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v2, Lcom/oplus/uxicon/ui/R$id;->name_size_panel:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lb/h;->mNameSpace:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v2, Lcom/oplus/uxicon/ui/R$id;->is_show_local_special:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lb/h;->mLocalSpecialView:Landroid/view/View;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v2, Lcom/oplus/uxicon/ui/R$id;->show_special_switch:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    iput-object v0, p0, Lb/h;->mLocalSpecialSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v2, Lcom/oplus/uxicon/ui/R$id;->icon_theme_layout:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lb/h;->mIconThemeLayout:Landroid/view/View;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v2, Lcom/oplus/uxicon/ui/R$id;->icon_theme_switch:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    iput-object v0, p0, Lb/h;->mIconThemeSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v2, Lcom/oplus/uxicon/ui/R$id;->drag_jump_layout:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;

    iput-object v0, p0, Lb/h;->mDragToJumpLayout:Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;

    new-instance v2, Le/g;

    invoke-direct {v2, p0}, Le/g;-><init>(Lb/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    iget-object v0, p0, Lb/h;->mDragToJumpLayout:Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;

    new-instance v2, Landroidx/core/view/a;

    invoke-direct {v2, p0}, Landroidx/core/view/a;-><init>(Lb/h;)V

    invoke-virtual {v0, v2}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->setOnRefreshListener(La/a;)V

    iget-object v0, p0, Lb/h;->mArtLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lb/h$a;

    invoke-direct {v2, p0}, Lb/h$a;-><init>(Lb/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$dimen;->ux_apply_button_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v1, Lcom/oplus/uxicon/ui/R$id;->panel_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget-boolean v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIsFoldSmallScreen:Z

    if-eqz v1, :cond_165

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/oplus/uxicon/ui/R$dimen;->small_screen_panel_margin_top:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_171

    :cond_165
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/oplus/uxicon/ui/R$dimen;->panel_margin_top:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_171
    return-void
.end method

.method public getAppNameLayout()Landroid/widget/LinearLayout;
    .registers 2

    iget-object p0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v0, Lcom/oplus/uxicon/ui/R$id;->is_show_name_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getAppNameSectionBar()Lcom/coui/appcompat/seekbar/COUISectionSeekBar;
    .registers 1

    iget-object p0, p0, Lb/h;->mAppNameSectionBar:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    return-object p0
.end method

.method public getAppNameSwitch()Lcom/coui/appcompat/couiswitch/COUISwitch;
    .registers 2

    iget-object p0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v0, Lcom/oplus/uxicon/ui/R$id;->show_name_switch:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    return-object p0
.end method

.method public getApplyButton()Lcom/coui/appcompat/button/COUIButton;
    .registers 1

    iget-object p0, p0, Lb/h;->mApplyButton:Lcom/coui/appcompat/button/COUIButton;

    return-object p0
.end method

.method public getArtSwitch()Landroid/widget/CompoundButton;
    .registers 1

    iget-object p0, p0, Lb/h;->mArtSwitch:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method public getFontSizeView()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lb/h;->mTvFontSize:Landroid/widget/TextView;

    return-object p0
.end method

.method public getNameSpace()Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lb/h;->mNameSpace:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public abstract getPreferenceThemeKey()Ljava/lang/String;
.end method

.method public hideForegroundPanel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h;->mHideFgLayout:Z

    iget-object p0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v0, Lcom/oplus/uxicon/ui/R$id;->foreground_size_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideViewForThirdTheme(Landroid/view/View;)V
    .registers 2

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initArtSwitch()V
    .registers 4

    iget-object v0, p0, Lb/h;->mArtSwitch:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v1}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lb/h;->mArtSwitch:Landroid/widget/CompoundButton;

    new-instance v1, Lb/h$b;

    invoke-direct {v1, p0}, Lb/h$b;-><init>(Lb/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
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

    iget-boolean p1, p0, Lb/h;->mLoadFirstly:Z

    if-eqz p1, :cond_27

    invoke-virtual {p4, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setOnSeekBarChangeListener(Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;)V

    :cond_27
    return-void
.end method

.method public initThemes()V
    .registers 1

    invoke-direct {p0}, Lb/h;->initSystemIconTheme()V

    invoke-direct {p0}, Lb/h;->initIconPackTheme()V

    return-void
.end method

.method public isIconThemeEnable()Z
    .registers 1

    iget-object p0, p0, Lb/h;->mIconThemeSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    return p0
.end method

.method public isSupportFontSetting(Z)V
    .registers 2

    if-nez p1, :cond_a

    iget-object p0, p0, Lb/h;->mNameSpace:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10

    :cond_a
    iget-object p0, p0, Lb/h;->mNameSpace:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_10
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-boolean v0, p0, Lb/h;->mIsThemeChange:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h;->mIsThemeChange:Z

    :cond_10
    iget-boolean v0, p0, Lb/h;->mIsTrackingSeekbar:Z

    if-eqz v0, :cond_15

    return-void

    :cond_15
    iget-object v0, p0, Lb/h;->mCurrentSelectShape:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    const/4 v0, 0x0

    iget-object v2, p0, Lb/h;->mCurrentSelectShape:Landroid/widget/ImageView;

    instance-of v3, v2, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;

    if-eqz v3, :cond_2b

    check-cast v2, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;

    invoke-virtual {v2}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->getFadeOutAnim()Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_35

    :cond_2b
    instance-of v3, v2, Lcom/oplus/uxicon/ui/ui/UxShapeView;

    if-eqz v3, :cond_35

    check-cast v2, Lcom/oplus/uxicon/ui/ui/UxShapeView;

    invoke-virtual {v2}, Lcom/oplus/uxicon/ui/ui/UxShapeView;->getFadeOutAnim()Landroid/animation/ValueAnimator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-virtual {p0}, Lb/h;->cancelRunningDisappearAnim()V

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Lb/h;->mShapeFadeOutAnimSet:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_42
    invoke-virtual {p0, p1}, Lb/h;->updateIconShape(Landroid/view/View;)V

    iget-object p1, p0, Lb/h;->mCurrentSelectShape:Landroid/widget/ImageView;

    if-eqz p1, :cond_4c

    invoke-virtual {p0}, Lb/h;->updateCurrentSelectedView()V

    :cond_4c
    invoke-virtual {p0}, Lb/h;->updateView()V

    iput-boolean v1, p0, Lb/h;->mIsThemeChange:Z

    iget-object p1, p0, Lb/h;->mIconConfigListener:Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;

    iget-object v0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iget v1, p0, Lb/h;->mFontSize:I

    iget-object p0, p0, Lb/h;->mIconPack:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p0}, Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;->onIconConfigChange(Lcom/oplus/uxicon/helper/IconConfig;ILjava/lang/String;)V

    return-void
.end method

.method public onFontSizeChange(I)V
    .registers 4

    iput p1, p0, Lb/h;->mFontSize:I

    invoke-virtual {p0, p1}, Lb/h;->updateFontSizeIndicator(I)V

    iget-boolean p1, p0, Lb/h;->mIsThemeChange:Z

    if-nez p1, :cond_26

    iget-boolean p1, p0, Lb/h;->mIsSupportUxIcon:Z

    if-nez p1, :cond_1b

    iget-boolean p1, p0, Lb/h;->mIsSupportThemedIcon:Z

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lb/h;->mThemeConfigChangedListener:Lcom/oplus/uxicon/ui/listener/UxThemeConfigChangedListener;

    iget v0, p0, Lb/h;->mThemedIconSize:I

    iget p0, p0, Lb/h;->mFontSize:I

    invoke-interface {p1, v0, p0}, Lcom/oplus/uxicon/ui/listener/UxThemeConfigChangedListener;->onThemeConfigChanged(II)V

    goto :goto_26

    :cond_1b
    iget-object p1, p0, Lb/h;->mIconConfigListener:Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;

    iget-object v0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iget v1, p0, Lb/h;->mFontSize:I

    iget-object p0, p0, Lb/h;->mIconPack:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p0}, Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;->onIconConfigChange(Lcom/oplus/uxicon/helper/IconConfig;ILjava/lang/String;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public onThemeSelect(I)V
    .registers 9

    iget v0, p0, Lb/h;->mCurrentThemePos:I

    if-ne v0, p1, :cond_8

    iget-boolean v0, p0, Lb/h;->mIsThemeSelected:Z

    if-nez v0, :cond_b0

    :cond_8
    iget-boolean v0, p0, Lb/h;->mIsThemeSelected:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    iget-object v0, p0, Lb/h;->mRootView:Landroid/widget/LinearLayout;

    sget v2, Lcom/oplus/uxicon/ui/R$id;->scroll_layout:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/uxicon/ui/ui/MyLinearLayout;

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/ui/ui/MyLinearLayout;->setChildViewTouchable(Z)V

    iput-boolean v1, p0, Lb/h;->mIsThemeSelected:Z

    :cond_1c
    iput-boolean v1, p0, Lb/h;->mIsThemeChange:Z

    const/4 v0, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_54

    iput p1, p0, Lb/h;->mSelectPosition:I

    invoke-virtual {p0}, Lb/h;->saveCurrentConfigToPrefs()V

    iget-object v3, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getCustomThemeConfig()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oplus/uxicon/helper/IconConfig;->setTheme(I)V

    iget v3, p0, Lb/h;->mSelectPosition:I

    iput v3, p0, Lb/h;->mCurrentThemePos:I

    invoke-virtual {p0}, Lb/h;->updateConfigFromPreference()V

    iget-object v3, p0, Lb/h;->mIconConfigListener:Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;

    iget-object v4, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iget v5, p0, Lb/h;->mFontSize:I

    iget-object v6, p0, Lb/h;->mIconPack:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;->onIconConfigChange(Lcom/oplus/uxicon/helper/IconConfig;ILjava/lang/String;)V

    invoke-virtual {p0}, Lb/h;->updateView()V

    iput-boolean v0, p0, Lb/h;->mIsThemeChange:Z

    iget-object v3, p0, Lb/h;->mArtSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_54
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getCustomThemeConfigPos()I

    move-result v3

    invoke-virtual {p0}, Lb/h;->saveCurrentConfigToPrefs()V

    if-ne p1, v3, :cond_72

    iget-object v3, p0, Lb/h;->mArtSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_72

    iget-object v3, p0, Lb/h;->mArtSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_72
    if-ltz p1, :cond_8b

    if-gt p1, v2, :cond_8b

    const/4 v1, 0x0

    iput-object v1, p0, Lb/h;->mIconPack:Ljava/lang/String;

    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getCommonConfigInPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/uxicon/helper/IconConfig;->setTheme(I)V

    goto :goto_9b

    :cond_8b
    iget-object v1, p0, Lb/h;->mThemeKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lb/h;->mIconPack:Ljava/lang/String;

    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/oplus/uxicon/helper/IconConfig;->setTheme(I)V

    :goto_9b
    iput p1, p0, Lb/h;->mCurrentThemePos:I

    invoke-virtual {p0}, Lb/h;->updateConfigFromPreference()V

    iget-object p1, p0, Lb/h;->mIconConfigListener:Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;

    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iget v2, p0, Lb/h;->mFontSize:I

    iget-object v3, p0, Lb/h;->mIconPack:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;->onIconConfigChange(Lcom/oplus/uxicon/helper/IconConfig;ILjava/lang/String;)V

    invoke-virtual {p0}, Lb/h;->updateView()V

    iput-boolean v0, p0, Lb/h;->mIsThemeChange:Z

    :cond_b0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public saveCurrentConfigToPrefs()V
    .registers 5

    invoke-virtual {p0}, Lb/h;->getPreferenceThemeKey()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lb/h;->mCurrentThemePos:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_33

    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v1}, Lcom/oplus/uxicon/helper/IconConfig;->getIconShape()I

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object v1

    iget-object v2, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v2}, Lcom/oplus/uxicon/helper/IconConfig;->getIconRadius()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->saveRadiusSize(Ljava/lang/String;I)V

    :cond_22
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object v1

    iget-object v2, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v2}, Lcom/oplus/uxicon/helper/IconConfig;->getForegroundSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->saveForegroundSize(Ljava/lang/String;I)V

    :cond_33
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object v1

    iget-object v2, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v2}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->saveIconSize(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object v1

    iget-object v2, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v2}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_56

    goto :goto_57

    :cond_56
    const/4 v3, 0x0

    :goto_57
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->saveIsArtSwitchOn(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object v1

    iget-object v2, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v2}, Lcom/oplus/uxicon/helper/IconConfig;->isLocalSpecial()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->saveLocalSpecial(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object v1

    iget-object p0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->isIconThemeEnable()Z

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->saveIconThemeEnable(Ljava/lang/String;Z)V

    return-void
.end method

.method public savePrefs()V
    .registers 4

    invoke-virtual {p0}, Lb/h;->saveCurrentConfigToPrefs()V

    iget-object v0, p0, Lb/h;->mIconConfigListener:Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;

    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iget v2, p0, Lb/h;->mFontSize:I

    iget-object p0, p0, Lb/h;->mIconPack:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;->onIconConfigChange(Lcom/oplus/uxicon/helper/IconConfig;ILjava/lang/String;)V

    return-void
.end method

.method public setIconConfig(Lcom/oplus/uxicon/helper/IconConfig;Ljava/lang/String;IZ)V
    .registers 5

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->copy()Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object p1

    iput-object p1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iput p3, p0, Lb/h;->mFontSize:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/h;->mIsThemeSelected:Z

    return-void
.end method

.method public abstract setViewListener()V
.end method

.method public textAppearAnimator(Landroid/widget/TextView;)Landroid/animation/ValueAnimator;
    .registers 4

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_26

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v0, 0x15e

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lb/h;->sInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lb/h$e;

    invoke-direct {v0, p1}, Lb/h$e;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lb/h$f;

    invoke-direct {v0, p1}, Lb/h$f;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0

    nop

    :array_26
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public textDisappearAnimator(Landroid/widget/TextView;)Landroid/animation/ValueAnimator;
    .registers 4

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_26

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v0, Lb/h;->sInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lb/h$g;

    invoke-direct {v0, p1}, Lb/h$g;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lb/h$h;

    invoke-direct {v0, p1}, Lb/h$h;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0

    nop

    :array_26
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public updateConfigFromPreference()V
    .registers 6

    invoke-virtual {p0}, Lb/h;->getPreferenceThemeKey()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lb/h;->mCurrentThemePos:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_39

    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getRadiusSize(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oplus/uxicon/helper/IconConfig;->setIconRadius(I)V

    iget-boolean v1, p0, Lb/h;->mHideFgLayout:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iget v3, p0, Lb/h;->mDefaultFgSize:I

    invoke-virtual {v1, v3}, Lcom/oplus/uxicon/helper/IconConfig;->setForegroundSize(I)V

    goto :goto_50

    :cond_27
    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getForegroundSize(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oplus/uxicon/helper/IconConfig;->setForegroundSize(I)V

    goto :goto_50

    :cond_39
    const/4 v3, 0x2

    if-eq v1, v3, :cond_49

    if-nez v1, :cond_3f

    goto :goto_49

    :cond_3f
    if-ne v1, v2, :cond_50

    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    const/16 v3, 0x12c0

    invoke-virtual {v1, v3}, Lcom/oplus/uxicon/helper/IconConfig;->setForegroundSize(I)V

    goto :goto_50

    :cond_49
    :goto_49
    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iget v3, p0, Lb/h;->mDefaultFgSize:I

    invoke-virtual {v1, v3}, Lcom/oplus/uxicon/helper/IconConfig;->setForegroundSize(I)V

    :cond_50
    :goto_50
    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getIconSize(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oplus/uxicon/helper/IconConfig;->setIconSize(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getIsArtSwitchOn(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_76

    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v1, v2}, Lcom/oplus/uxicon/helper/IconConfig;->setArtPlusOn(I)V

    goto :goto_7b

    :cond_76
    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v1, v3}, Lcom/oplus/uxicon/helper/IconConfig;->setArtPlusOn(I)V

    :goto_7b
    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->isLocalSpecial(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oplus/uxicon/helper/IconConfig;->setLocalSpecial(Z)V

    iget-object v1, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isFoldDevicesExcludeDragon()Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isSupport13_2()Z

    move-result v4

    if-eqz v4, :cond_a5

    :cond_98
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->isIconThemeEnable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a5

    goto :goto_a6

    :cond_a5
    move v2, v3

    :goto_a6
    invoke-virtual {v1, v2}, Lcom/oplus/uxicon/helper/IconConfig;->setIconThemeEnable(Z)V

    return-void
.end method

.method public abstract updateCurrentSelectedView()V
.end method

.method public abstract updateFontSizeIndicator(I)V
.end method

.method public abstract updateIconShape(Landroid/view/View;)V
.end method

.method public abstract updateSeekBar()V
.end method

.method public updateTextViewGuide(Landroid/widget/TextView;Landroid/widget/TextView;Z)V
    .registers 10

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p3, :cond_3d

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p3

    if-eq p3, v3, :cond_20

    invoke-virtual {p1}, Landroid/widget/TextView;->getAlpha()F

    move-result p3

    sget-object v5, Lb/h;->sTransparent:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float p3, p3, v5

    if-nez p3, :cond_6d

    :cond_20
    iget-boolean p3, p0, Lb/h;->mLoadFirstly:Z

    if-eqz p3, :cond_2b

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6d

    :cond_2b
    new-array p3, v2, [Landroid/animation/Animator;

    invoke-virtual {p0, p2}, Lb/h;->textDisappearAnimator(Landroid/widget/TextView;)Landroid/animation/ValueAnimator;

    move-result-object p2

    aput-object p2, p3, v4

    invoke-virtual {p0, p1}, Lb/h;->textAppearAnimator(Landroid/widget/TextView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    aput-object p0, p3, v1

    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_6d

    :cond_3d
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_51

    invoke-virtual {p1}, Landroid/widget/TextView;->getAlpha()F

    move-result p3

    sget-object v5, Lb/h;->sOpacity:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float p3, p3, v5

    if-nez p3, :cond_6d

    :cond_51
    iget-boolean p3, p0, Lb/h;->mLoadFirstly:Z

    if-eqz p3, :cond_5c

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6d

    :cond_5c
    new-array p3, v2, [Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Lb/h;->textDisappearAnimator(Landroid/widget/TextView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    aput-object p1, p3, v4

    invoke-virtual {p0, p2}, Lb/h;->textAppearAnimator(Landroid/widget/TextView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    aput-object p0, p3, v1

    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_6d
    :goto_6d
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public updateView()V
    .registers 10

    iget-boolean v0, p0, Lb/h;->mLoadFirstly:Z

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

    invoke-virtual {p0}, Lb/h;->setViewListener()V

    :cond_30
    invoke-virtual {p0}, Lb/h;->updateCurrentSelectedView()V

    invoke-virtual {p0}, Lb/h;->updateViewVisible()V

    invoke-virtual {p0}, Lb/h;->updateSeekBar()V

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
    iget-boolean v0, p0, Lb/h;->mLoadFirstly:Z

    if-eqz v0, :cond_54

    iput-boolean v2, p0, Lb/h;->mLoadFirstly:Z

    :cond_54
    return-void
.end method

.method public abstract updateViewVisible()V
.end method
