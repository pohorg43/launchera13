.class public final Lcom/android/launcher3/folder/big/BigFolderBackground;
.super Lcom/android/launcher3/folder/OplusPreviewBackground;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/BigFolderBackground$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/big/BigFolderBackground$Companion;

.field public static final DRAG_ENTER_SCALE:F = 1.05f

.field public static final TAG:Ljava/lang/String; = "BigFolderBackground"


# instance fields
.field private mIconsRect:Landroid/graphics/RectF;

.field private mPreviewSizeX:I

.field private mPreviewSizeY:I

.field private mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderBackground$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderBackground$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/BigFolderBackground;->Companion:Lcom/android/launcher3/folder/big/BigFolderBackground$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mIconsRect:Landroid/graphics/RectF;

    return-void
.end method

.method private static final animateToAccept$lambda-0(Lcom/android/launcher3/folder/big/BigFolderBackground;Lcom/android/launcher3/CellLayout;II)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground;->delegateDrawing(Lcom/android/launcher3/CellLayout;II)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/folder/big/BigFolderBackground;Lcom/android/launcher3/CellLayout;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/folder/big/BigFolderBackground;->animateToAccept$lambda-0(Lcom/android/launcher3/folder/big/BigFolderBackground;Lcom/android/launcher3/CellLayout;II)V

    return-void
.end method

.method private final getScaleXSize()I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mPreviewSizeX:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mStyleBoundFactor:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private final getScaleYSize()I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mPreviewSizeY:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mStyleBoundFactor:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private final initBgDrawable(Landroid/content/Context;)V
    .registers 8

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v0

    sget-object v1, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    const v2, 0x7f080418

    goto :goto_15

    :cond_12
    const v2, 0x7f080417

    :goto_15
    const-string v3, "initBgDrawable defTheme="

    const-string v4, " workspaceBright="

    const-string v5, " drawableId="

    invoke-static {v3, v0, v4, v1, v5}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BigFolderBackground"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public animateToAccept(Lcom/android/launcher3/CellLayout;II)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mTargetCell:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    new-instance v0, Lcom/android/common/util/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/common/util/c;-><init>(Lcom/android/launcher3/folder/big/BigFolderBackground;Lcom/android/launcher3/CellLayout;II)V

    const p1, 0x3f866666  # 1.05f

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/folder/OplusPreviewBackground;->animateScale(FLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .registers 4

    const-string v0, "BigFolderBackground"

    const-string v1, "drawBackground"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/OplusPreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final drawBackground(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/big/ConvertBgParams;)V
    .registers 8

    const-string v0, "bgParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_4f

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/ConvertBgParams;->getRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/ConvertBgParams;->getX()F

    move-result v1

    invoke-static {v1}, Li1/j;->o(F)I

    move-result v1

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/ConvertBgParams;->getY()F

    move-result v2

    invoke-static {v2}, Li1/j;->o(F)I

    move-result v2

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/ConvertBgParams;->getX()F

    move-result v3

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/ConvertBgParams;->getSizeX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Li1/j;->o(F)I

    move-result v3

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/ConvertBgParams;->getY()F

    move-result v4

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/ConvertBgParams;->getSizeY()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v4, p2

    invoke-static {v4}, Li1/j;->o(F)I

    move-result p2

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4f
    return-void
.end method

.method public drawUnderItem(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getIconVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawUnderItem(Landroid/graphics/Canvas;)V

    :cond_12
    return-void
.end method

.method public getBackgroundRect()Landroid/graphics/Rect;
    .registers 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    return-object v0

    :cond_a
    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    if-nez v2, :cond_1a

    invoke-static {v1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    iput-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    :cond_1a
    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    const/high16 v4, 0x3f800000  # 1.0f

    cmpg-float v5, v3, v4

    if-nez v5, :cond_36

    const/4 v5, 0x1

    goto :goto_37

    :cond_36
    const/4 v5, 0x0

    :goto_37
    if-nez v5, :cond_53

    sub-float/2addr v3, v4

    iget v5, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mPreviewSizeX:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v3, v5

    invoke-static {v3}, Li1/j;->o(F)I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mPreviewSizeY:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    invoke-static {v3}, Li1/j;->o(F)I

    move-result v3

    sub-int/2addr v2, v3

    :cond_53
    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getScaleXSize()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getScaleYSize()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 6

    const-string v0, "outBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    if-nez v1, :cond_1a

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mPreviewSizeX:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingTop()I

    move-result v3

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mPreviewSizeY:I

    add-int/2addr v3, p0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final getMIconsRect()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mIconsRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getMPreviewSizeX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mPreviewSizeX:I

    return p0
.end method

.method public final getMPreviewSizeY()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mPreviewSizeY:I

    return p0
.end method

.method public final getMSpacingConfig()Lcom/android/launcher3/folder/big/SizeSpacingConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    return-object p0
.end method

.method public final refreshBgDrawable()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_c

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->initBgDrawable(Landroid/content/Context;)V

    :cond_c
    return-void
.end method

.method public final setMIconsRect(Landroid/graphics/RectF;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mIconsRect:Landroid/graphics/RectF;

    return-void
.end method

.method public final setMPreviewSizeX(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mPreviewSizeX:I

    return-void
.end method

.method public final setMPreviewSizeY(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mPreviewSizeY:I

    return-void
.end method

.method public final setMSpacingConfig(Lcom/android/launcher3/folder/big/SizeSpacingConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    return-void
.end method

.method public setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;III)V
    .registers 7

    const-string p4, "context"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "activity"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "invalidateDelegate"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mContext:Landroid/content/Context;

    const-string p4, "mContext"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->initBgDrawable(Landroid/content/Context;)V

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p1, :cond_2e

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget-object p4, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mContext:Landroid/content/Context;

    const p5, 0x7f0606a5

    invoke-virtual {p4, p5}, Landroid/content/Context;->getColor(I)I

    move-result p4

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p4, p5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3e

    :cond_2e
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget-object p4, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mContext:Landroid/content/Context;

    const p5, 0x7f060651

    invoke-virtual {p4, p5}, Landroid/content/Context;->getColor(I)I

    move-result p4

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p4, p5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_3e
    iput-object p1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mColorFilterWhenBright:Landroid/graphics/PorterDuffColorFilter;

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p2, p1, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    iput-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    if-nez p2, :cond_6e

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    const-string p4, "null cannot be cast to non-null type com.android.launcher3.OplusCellLayout"

    invoke-static {p2, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/android/launcher3/OplusCellLayout;

    iget-object p4, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p5, p4, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p4, p4, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {p1, p5, p4}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object p4

    iget p5, p4, Landroid/graphics/Point;->x:I

    iget p4, p4, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p5, p4, p2}, Lcom/android/launcher3/OplusDeviceProfile;->updateAreaWidgetConfigIfNeed(IILcom/android/launcher3/OplusCellLayout;)V

    iget-object p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    :cond_6e
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMIsLandscape()Z

    move-result p1

    if-nez p1, :cond_aa

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mPreviewSizeX:I

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mPreviewSizeY:I

    goto :goto_d2

    :cond_aa
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getBubbleIconSize()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mPreviewSizeX:I

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingTop()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mPreviewSizeY:I

    :goto_d2
    iput-object p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mSpacingConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mIsDefaultFolderIcon:Z

    iget-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mIconsRect:Landroid/graphics/RectF;

    iget p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float p4, p3

    int-to-float p5, p1

    int-to-float p3, p3

    iget p6, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mPreviewSizeX:I

    int-to-float p6, p6

    add-float/2addr p3, p6

    int-to-float p1, p1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;->mPreviewSizeY:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-virtual {p2, p4, p5, p3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
