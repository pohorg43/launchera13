.class public Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;
.super Landroid/view/WindowlessWindowManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$UiModeObserver;,
        Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$Listener;
    }
.end annotation


# static fields
.field private static final FEATURE_ENABLE:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mAtTopOrLeft:Z

.field private mBackgroundLeash:Landroid/view/SurfaceControl;

.field private final mBtnSize:I

.field private final mContext:Landroid/content/Context;

.field private mHostLeash:Landroid/view/SurfaceControl;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconLeash:Landroid/view/SurfaceControl;

.field private final mIconSize:I

.field private mIconView:Landroid/widget/ImageView;

.field private final mInsets:Landroid/graphics/Rect;

.field private final mListener:Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$Listener;

.field private final mRootBounds:Landroid/graphics/Rect;

.field private final mRootLayoutPadding:I

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSwapBtn:Landroid/widget/ImageView;

.field private final mUiModeObserver:Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$UiModeObserver;

.field private mViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;

    const-string v0, "MinimalTaskOverlay"

    sput-object v0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->TAG:Ljava/lang/String;

    const-string v0, "persist.sys.minimal_task_overlay_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->FEATURE_ENABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/SurfaceSession;Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$Listener;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, v0}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mSurfaceSession:Landroid/view/SurfaceSession;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mListener:Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$Listener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/wm/shell/R$dimen;->minimal_task_overlay_icon_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/wm/shell/R$dimen;->minimal_task_overlay_btn_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mBtnSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x41c00000  # 24.0f

    invoke-static {p2, p1}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootLayoutPadding:I

    new-instance p1, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$UiModeObserver;

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$UiModeObserver;-><init>(Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$1;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mUiModeObserver:Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$UiModeObserver;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->lambda$inflate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;ILandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->updateTheme(ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private static getBackgroundColor(I)[F
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->isDarkUiMode(I)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, -0xcccccd

    goto :goto_d

    :cond_a
    const p0, -0x50506

    :goto_d
    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p0

    return-object p0
.end method

.method private getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;
    .registers 9

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x7f6

    const/16 v4, 0x28

    const/4 v5, -0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    sget-object p1, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const p2, 0x20000040

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object p0
.end method

.method private static isDarkUiMode(I)Z
    .registers 2

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isDeviceSupport()Z
    .registers 1

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-boolean v0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->FEATURE_ENABLE:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static isDisplaySupport()Z
    .registers 1

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic lambda$inflate$0(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mListener:Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$Listener;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$Listener;->onSwapBtnClick()V

    :cond_7
    return-void
.end method

.method private relayout(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-boolean p4, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mAtTopOrLeft:Z

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconView:Landroid/widget/ImageView;

    if-eqz p2, :cond_116

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mSwapBtn:Landroid/widget/ImageView;

    if-nez p2, :cond_16

    goto/16 :goto_116

    :cond_16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    move p1, v0

    :goto_27
    invoke-static {}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->isLayoutDirectionRtl()Z

    move-result p2

    const/high16 v1, 0x40000000  # 2.0f

    if-eqz p1, :cond_95

    if-eqz p4, :cond_34

    iget p1, p3, Landroid/graphics/Rect;->left:I

    goto :goto_35

    :cond_34
    move p1, v0

    :goto_35
    int-to-float p1, p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-eqz p4, :cond_41

    iget v2, p3, Landroid/graphics/Rect;->left:I

    goto :goto_43

    :cond_41
    iget v2, p3, Landroid/graphics/Rect;->right:I

    :goto_43
    sub-int/2addr p2, v2

    iget v2, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconSize:I

    sub-int/2addr p2, v2

    int-to-float p2, p2

    div-float/2addr p2, v1

    add-float/2addr p2, p1

    iget p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootLayoutPadding:I

    int-to-float p1, p1

    if-eqz p4, :cond_51

    iget v0, p3, Landroid/graphics/Rect;->left:I

    :cond_51
    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz p4, :cond_5d

    iget p3, p3, Landroid/graphics/Rect;->left:I

    goto :goto_5f

    :cond_5d
    iget p3, p3, Landroid/graphics/Rect;->right:I

    :goto_5f
    sub-int/2addr v2, p3

    iget p3, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mBtnSize:I

    sub-int/2addr v2, p3

    int-to-float p3, v2

    div-float/2addr p3, v1

    add-float/2addr p3, v0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootLayoutPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mBtnSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mSwapBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mSwapBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mSwapBtn:Landroid/widget/ImageView;

    if-eqz p4, :cond_8e

    const/high16 p1, 0x42b40000  # 90.0f

    goto :goto_90

    :cond_8e
    const/high16 p1, 0x43870000  # 270.0f

    :goto_90
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_116

    :cond_95
    iget p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootLayoutPadding:I

    int-to-float p1, p1

    if-eqz p4, :cond_9d

    iget v2, p3, Landroid/graphics/Rect;->top:I

    goto :goto_9e

    :cond_9d
    move v2, v0

    :goto_9e
    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eqz p4, :cond_aa

    iget v4, p3, Landroid/graphics/Rect;->top:I

    goto :goto_ac

    :cond_aa
    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    :goto_ac
    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconSize:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v4, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootLayoutPadding:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mBtnSize:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    if-eqz p4, :cond_c4

    iget v0, p3, Landroid/graphics/Rect;->top:I

    :cond_c4
    int-to-float v0, v0

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eqz p4, :cond_d0

    iget p3, p3, Landroid/graphics/Rect;->top:I

    goto :goto_d2

    :cond_d0
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    :goto_d2
    sub-int/2addr v4, p3

    iget p3, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mBtnSize:I

    sub-int/2addr v4, p3

    int-to-float p3, v4

    div-float/2addr p3, v1

    add-float/2addr p3, v0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconView:Landroid/widget/ImageView;

    if-nez p2, :cond_de

    goto :goto_ea

    :cond_de
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v4, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconSize:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    sub-float p1, v1, p1

    :goto_ea
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mSwapBtn:Landroid/widget/ImageView;

    if-nez p2, :cond_f7

    goto :goto_103

    :cond_f7
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mBtnSize:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    sub-float v2, p2, v2

    :goto_103
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mSwapBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mSwapBtn:Landroid/widget/ImageView;

    if-eqz p4, :cond_112

    const/high16 p1, 0x43340000  # 180.0f

    goto :goto_113

    :cond_112
    const/4 p1, 0x0

    :goto_113
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_116
    :goto_116
    return-void
.end method

.method private updateTheme(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mSwapBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mBackgroundLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_53

    :cond_f
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mSwapBtn:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->isDarkUiMode(I)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, -0x1

    goto :goto_1b

    :cond_19
    const/high16 v1, -0x1000000

    :goto_1b
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_39
    if-nez p2, :cond_3d

    const/4 v0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    if-eqz v0, :cond_45

    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :cond_45
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mBackgroundLeash:Landroid/view/SurfaceControl;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->getBackgroundColor(I)[F

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_53

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_53
    :goto_53
    return-void
.end method


# virtual methods
.method public attachToParentSurface(Landroid/view/IWindow;Landroid/view/SurfaceControl$Builder;)V
    .registers 4

    new-instance p1, Landroid/view/SurfaceControl$Builder;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {p1, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mHostLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string v0, "MinimalTaskOverlay#attachToParentSurface"

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method public getBackgroundLeash()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mBackgroundLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getLeash()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public inflate(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 11

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_33

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iget-object p6, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p6, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p6

    xor-int/lit8 p6, p6, 0x1

    if-nez p2, :cond_1c

    if-eqz p6, :cond_1f

    :cond_1c
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->relayout(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    :cond_1f
    if-eqz p2, :cond_32

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_32
    return-void

    :cond_33
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const/16 v1, 0x7f6

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mHostLeash:Landroid/view/SurfaceControl;

    new-instance p2, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-direct {p2, p1, v0, p0}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/wm/shell/R$layout;->minimal_task_overlay:I

    invoke-virtual {p2, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    sget v0, Lcom/android/wm/shell/R$id;->split_app_icon:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_80

    iget-object v0, p6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_80

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p6, p6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p6, p6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p6

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_80
    sget p6, Lcom/android/wm/shell/R$id;->swap_split_btn:I

    invoke-virtual {p2, p6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mSwapBtn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$drawable;->split_screen_minimal_task_overlay_swap:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p6, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mSwapBtn:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/shared/rotation/b;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/rotation/b;-><init>(Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;)V

    invoke-virtual {p6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p6, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mHostLeash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v1, "MinimalTaskOverlayBg"

    invoke-static {p6, v1, v0}, Lcom/android/wm/shell/common/SurfaceUtils;->makeColorLayer(Landroid/view/SurfaceControl;Ljava/lang/String;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;

    move-result-object p6

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mBackgroundLeash:Landroid/view/SurfaceControl;

    const v0, 0x7ffffffe

    invoke-virtual {p7, p6, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mBackgroundLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p6, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->relayout(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {p0, p1, p7}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->updateTheme(ILandroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-direct {p0, p4, p3}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconLeash:Landroid/view/SurfaceControl;

    const p2, 0x7fffffff

    invoke-virtual {p7, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p7, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mUiModeObserver:Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$UiModeObserver;

    invoke-virtual {p1, p0}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->addListener(Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;)V

    return-void
.end method

.method public reInflateWithLastState(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 12

    new-instance v8, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v8}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mRootBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mInsets:Landroid/graphics/Rect;

    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mAtTopOrLeft:Z

    move-object v0, p0

    move-object v2, p2

    move-object v6, p1

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->inflate(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public release(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mViewHost:Landroid/view/SurfaceControlViewHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconLeash:Landroid/view/SurfaceControl;

    :cond_13
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mBackgroundLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1c

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mBackgroundLeash:Landroid/view/SurfaceControl;

    :cond_1c
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mHostLeash:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mIconView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mSwapBtn:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->mUiModeObserver:Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$UiModeObserver;

    invoke-virtual {p1, p0}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->removeListener(Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;)V

    return-void
.end method
