.class public final Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;
.super Lcom/android/launcher3/folder/PreviewItemManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager$Companion;

.field public static final DOT_ANIMATION_FLOAT_1:F = 1.0f

.field public static final DOT_ANIMATION_FLOAT_255:F = 255.0f

.field private static final TAG:Ljava/lang/String; = "BigFolderPreviewItemMan"


# instance fields
.field private iconPageWidth:I

.field private mDotAlpha:F

.field private mDotScale:F

.field private mItemRectArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftPageParam:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewPage:I

.field private mRightPageParam:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalHeight:I

.field private mUpdateInPreview:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->Companion:Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    new-instance p1, Landroid/util/SparseArray;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mItemRectArray:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    const/high16 p1, 0x437f0000  # 255.0f

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotAlpha:F

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotScale:F

    return-void
.end method

.method private final computePreviewDrawingParamsColor(II)V
    .registers 14

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget-boolean v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mForceRecompute:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_27

    iget v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    int-to-float v4, v0

    cmpg-float v1, v1, v4

    if-nez v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    :goto_1a
    if-eqz v1, :cond_27

    iget v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    if-ne v1, p1, :cond_27

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mTotalHeight:I

    if-eq v1, p2, :cond_25

    goto :goto_27

    :cond_25
    move p1, v3

    goto :goto_9b

    :cond_27
    :goto_27
    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    iput p2, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mTotalHeight:I

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderBackground;

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string p2, "mIcon.context"

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v6, p2, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    const-string p2, "mIcon.mActivity"

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string p2, "mIcon"

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v8, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v9

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v10

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/folder/big/BigFolderBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;III)V

    int-to-float p2, v0

    iput p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, p2, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIconLayoutRule"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeX()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeY()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeX()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeY()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float v8, p1

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->init(Landroid/content/Context;IIFZ)V

    move p1, v2

    :goto_9b
    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p2, p2, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, p2, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_c3

    const-string v0, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p2

    instance-of p2, p2, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    if-eqz p2, :cond_bf

    goto :goto_c0

    :cond_bf
    move v2, v3

    :goto_c0
    iput-boolean v2, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mUpdateInPreview:Z

    or-int/2addr p1, v2

    :cond_c3
    if-eqz p1, :cond_c8

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Z)V

    :cond_c8
    iput-boolean v3, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mUpdateInPreview:Z

    return-void
.end method

.method private final drawPreviewItemWithAlpha(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;F)V
    .registers 9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget v1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    int-to-float v3, v2

    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->getFolderIconAlpha()F

    move-result v4

    mul-float/2addr v4, v3

    mul-float/2addr v4, p3

    float-to-int p3, v4

    invoke-direct {p0, v0, p3}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setItemAlphaDiff(Landroid/graphics/drawable/Drawable;I)V

    iget p3, v1, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    neg-float p3, p3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    neg-float v3, v3

    invoke-virtual {p1, p3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget p3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p3, v3

    iget v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-virtual {p1, p3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setItemAlphaDiff(Landroid/graphics/drawable/Drawable;I)V

    :cond_52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p3, p3, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, p3, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_6c

    const-string v0, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/android/launcher/Launcher;

    iget-object v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p3, v0}, Lcom/android/launcher/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object p3

    iput-object p3, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    :cond_6c
    iget-object p3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v0, p3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_75

    check-cast p3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    goto :goto_76

    :cond_75
    const/4 p3, 0x0

    :goto_76
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_7c

    :cond_7a
    :goto_7a
    move v0, v1

    goto :goto_89

    :cond_7c
    invoke-virtual {p3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getConvertAnimBuilder()Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    move-result-object p3

    if-nez p3, :cond_83

    goto :goto_7a

    :cond_83
    invoke-virtual {p3}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->isConvertAnimating()Z

    move-result p3

    if-ne p3, v0, :cond_7a

    :goto_89
    iput-boolean v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mForceHideDot:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->drawDotIfNecessary(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V

    return-void
.end method

.method private final setItemAlphaDiff(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    instance-of p0, p1, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    if-eqz p0, :cond_23

    check-cast p1, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->getController()Lcom/oplus/fancyicon/BaseRendererController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_14

    :cond_11
    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->setRootAlpha(I)V

    :goto_14
    invoke-virtual {p1}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->getController()Lcom/oplus/fancyicon/BaseRendererController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p0

    if-nez p0, :cond_1f

    goto :goto_26

    :cond_1f
    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    goto :goto_26

    :cond_23
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_26
    return-void
.end method


# virtual methods
.method public final assembleDotParams(Landroid/graphics/Rect;)Lcom/android/launcher3/icons/DotRenderer$DrawParams;
    .registers 5

    const-string v0, "iconRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIconLayoutRule"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    new-instance v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-direct {v1}, Lcom/android/launcher3/icons/DotRenderer$DrawParams;-><init>()V

    iput-object p1, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMSizeConfig()Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_20

    goto :goto_27

    :cond_20
    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMIsRTL()Z

    move-result p1

    if-ne p1, v2, :cond_27

    move v0, v2

    :cond_27
    :goto_27
    iput-boolean v0, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotAlpha:F

    iput p1, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotScale:F

    iput p1, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    const-string p1, "assembleDotParams: mDotAlpha is : "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotAlpha:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mDotaScale is : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotScale:F

    const-string v0, "BigFolderPreviewItemMan"

    invoke-static {p1, p0, v0}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-object v1
.end method

.method public buildParamsForPage(ILjava/util/ArrayList;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;Z)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    iget p3, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    if-ne p3, p1, :cond_1c

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string p3, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->getDoClosingAnim()Z

    move-result p1

    if-nez p1, :cond_1c

    iput-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    :cond_1c
    return-void
.end method

.method public computePreviewDrawingParams(II)V
    .registers 3

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewDrawingParamsColor(I)V

    return-void
.end method

.method public computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;I)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .registers 9

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;I)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object p2

    if-nez p4, :cond_5f

    iget-object p3, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mItemRectArray:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/RectF;

    if-nez p3, :cond_15

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    :cond_15
    invoke-virtual {p3}, Landroid/graphics/RectF;->setEmpty()V

    iget-object p4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p4}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p4

    iget p4, p4, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float p4, p4

    iget v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    add-float/2addr p4, v0

    iput p4, p3, Landroid/graphics/RectF;->left:F

    iget-object p4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p4}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p4

    iget p4, p4, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float p4, p4

    iget v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    add-float/2addr p4, v0

    iput p4, p3, Landroid/graphics/RectF;->top:F

    iget-object p4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p4, p4, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIconLayoutRule"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-virtual {p4}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getPreviewStyleBoundOffset()F

    move-result p4

    iget v0, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p4

    iput v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p4

    iput v1, p3, Landroid/graphics/RectF;->top:F

    iget p4, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    iget v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    mul-float v3, p4, v2

    add-float/2addr v3, v0

    iput v3, p3, Landroid/graphics/RectF;->right:F

    mul-float/2addr p4, v2

    add-float/2addr p4, v1

    iput p4, p3, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mItemRectArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5f
    const-string p0, "para"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0}, Lcom/android/launcher3/folder/IFolderExt;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightFolderAnimation()Z

    move-result v0

    if-nez v0, :cond_27

    return-void

    :cond_27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getBackgroundRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getBackgroundRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMSpacingConfig()Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_56

    move v4, v5

    goto :goto_5a

    :cond_56
    invoke-virtual {v4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgRadius()F

    move-result v4

    :goto_5a
    invoke-virtual {v3, v2, v4}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget v2, v1, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v2, v2

    iget v3, v1, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const-string v3, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIconLayoutRule"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getPreviewStyleBoundOffset()F

    move-result v2

    neg-float v3, v2

    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string v4, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/folder/big/BigFolderIcon;

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_10e

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLeftPage()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v3, v5, :cond_cf

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDistance()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getIconPageWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v7, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLeftPage()I

    move-result v7

    mul-int/2addr v7, v6

    int-to-float v6, v7

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v6, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_bd

    neg-float v3, v3

    :cond_bd
    iget-object v6, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    neg-float v7, v3

    int-to-float v8, v4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getIconPageWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v8, v3

    invoke-virtual {p0, p1, v6, v7, v8}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->drawParamsWithAlpha(Landroid/graphics/Canvas;Ljava/util/ArrayList;FF)V

    :cond_cf
    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getRightPage()I

    move-result v3

    if-eq v3, v5, :cond_113

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDistance()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getIconPageWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v6, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getRightPage()I

    move-result v6

    mul-int/2addr v6, v5

    int-to-float v5, v6

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v5, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_fb

    neg-float v3, v3

    :cond_fb
    iget-object v5, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    neg-float v6, v3

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getIconPageWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v4, v3

    invoke-virtual {p0, p1, v5, v6, v4}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->drawParamsWithAlpha(Landroid/graphics/Canvas;Ljava/util/ArrayList;FF)V

    goto :goto_113

    :cond_10e
    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/launcher3/folder/PreviewItemManager;->drawParams(Landroid/graphics/Canvas;Ljava/util/ArrayList;F)V

    :cond_113
    :goto_113
    iget p0, v1, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float p0, p0

    neg-float p0, p0

    iget v1, v1, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v1, v1

    neg-float v1, v1

    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final drawDotIfNecessary(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V
    .registers 11

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mForceHideDot:Z

    if-nez v0, :cond_d4

    iget-object v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    if-eqz v0, :cond_d4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget v1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIconLayoutRule"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getPreviewStyleBoundOffset()F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMSizeConfig()Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_3d

    move-object v1, v3

    goto :goto_41

    :cond_3d
    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMDotRendererBigFolder()Lcom/android/launcher3/icons/DotRenderer;

    move-result-object v1

    :goto_41
    instance-of v4, v1, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;

    if-eqz v4, :cond_48

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;

    :cond_48
    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapX()F

    move-result v1

    sub-float/2addr v1, v0

    neg-float v1, v1

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapY()F

    move-result v4

    sub-float/2addr v4, v0

    neg-float v0, v4

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapX()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, v2, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapY()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iget v7, v2, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget v4, v2, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    const/4 v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapX()F

    move-result v6

    mul-float/2addr v6, v5

    add-float/2addr v6, v4

    float-to-int v4, v6

    iget v6, v2, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapY()F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v2, v6

    float-to-int v2, v2

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->assembleDotParams(Landroid/graphics/Rect;)Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object v0

    iget-object v2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    if-eqz v2, :cond_d1

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    iget-object v2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotInfo;->canShowDot()Z

    move-result v2

    if-eqz v2, :cond_b4

    if-nez v3, :cond_b0

    goto :goto_d1

    :cond_b0
    invoke-virtual {v3, p1, v0, v1}, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;Landroid/graphics/Rect;)V

    goto :goto_d1

    :cond_b4
    iget-object v2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d1

    iget-object v2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotInfo;->getNumberCount()I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->isHideDot(Lcom/android/launcher3/folder/PreviewItemDrawingParams;)Z

    move-result p0

    if-eqz p0, :cond_ca

    goto :goto_cb

    :cond_ca
    move v5, v2

    :goto_cb
    if-nez v3, :cond_ce

    goto :goto_d1

    :cond_ce
    invoke-virtual {v3, p1, v5, v0, v1}, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->drawNumberForBigFolderItem(Landroid/graphics/Canvas;ILcom/android/launcher3/icons/DotRenderer$DrawParams;Landroid/graphics/Rect;)V

    :cond_d1
    :goto_d1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_d4
    return-void
.end method

.method public final drawParamsWithAlpha(Landroid/graphics/Canvas;Ljava/util/ArrayList;FF)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;FF)V"
        }
    .end annotation

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_33

    :goto_1a
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "params[i]"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-boolean v4, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    if-nez v4, :cond_2e

    invoke-direct {p0, p1, v2, p4}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->drawPreviewItemWithAlpha(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;F)V

    :cond_2e
    if-gez v3, :cond_31

    goto :goto_33

    :cond_31
    move v2, v3

    goto :goto_1a

    :cond_33
    :goto_33
    neg-float p0, p3

    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/folder/PreviewItemManager;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_1d

    const-string v1, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    :cond_1d
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v1, v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v1, :cond_29

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_30

    :cond_2e
    :goto_2e
    move v1, v2

    goto :goto_3d

    :cond_30
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getConvertAnimBuilder()Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    move-result-object v0

    if-nez v0, :cond_37

    goto :goto_2e

    :cond_37
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->isConvertAnimating()Z

    move-result v0

    if-ne v0, v1, :cond_2e

    :goto_3d
    iput-boolean v1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mForceHideDot:Z

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->drawDotIfNecessary(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V

    return-void
.end method

.method public forceRecomputePreviewDrawingParams()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mForceRecompute:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->recomputePreviewDrawingParams()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mForceRecompute:Z

    return-void
.end method

.method public final getCurrentPageParams()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    const-string v0, "mCurrentPageParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getCurrentPreviewParams()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    const-string v0, "mCurrentPageParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getIconPageWidth()I
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p0

    :goto_a
    const-string v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeX()I

    move-result p0

    return p0
.end method

.method public final getMDotAlpha()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotAlpha:F

    return p0
.end method

.method public final getMDotScale()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotScale:F

    return p0
.end method

.method public final getMItemRectArray()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mItemRectArray:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final getMLeftPageParam()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getMPreviewPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    return p0
.end method

.method public final getMRightPageParam()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final hidePreviewItem(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_19

    return-void

    :cond_19
    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result v1

    div-int/2addr p1, v1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result v1

    div-int v1, p2, v1

    if-eq p1, v1, :cond_29

    return-void

    :cond_29
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result p1

    rem-int/2addr p2, p1

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_3f

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    goto :goto_40

    :cond_3f
    const/4 p0, 0x0

    :goto_40
    if-eqz p0, :cond_45

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    :cond_45
    return-void
.end method

.method public hidePreviewItem(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_19

    return-void

    :cond_19
    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result v0

    rem-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_31

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    goto :goto_32

    :cond_31
    const/4 p0, 0x0

    :goto_32
    if-eqz p0, :cond_36

    iput-boolean p2, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    :cond_36
    return-void
.end method

.method public hidePreviewItems(IIZ)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-gt p1, p2, :cond_5b

    move v0, p1

    :goto_c
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1f

    goto :goto_5b

    :cond_1f
    sget-object v2, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result v3

    div-int v3, p1, v3

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result v4

    div-int v4, v0, v4

    if-eq v3, v4, :cond_30

    return-void

    :cond_30
    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result v2

    rem-int v2, v0, v2

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_47

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    goto :goto_48

    :cond_47
    const/4 v2, 0x0

    :goto_48
    if-eqz v2, :cond_56

    iput-boolean p3, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_56

    iget-object v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_56

    iput-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    :cond_56
    if-ne v0, p2, :cond_59

    goto :goto_5b

    :cond_59
    move v0, v1

    goto :goto_c

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final isHideDot(Lcom/android/launcher3/folder/PreviewItemDrawingParams;)Z
    .registers 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusAppFilter;->isHideDot(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method

.method public onFolderClose(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/4 v1, 0x0

    if-eqz p1, :cond_58

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->setDoClosingAnim(Z)V

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    if-nez v2, :cond_47

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    const-string v3, "mIcon.info.contents"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->getPreviewPageForClose(ILjava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    int-to-float p1, p1

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateScrollDistance(F)V

    goto :goto_4c

    :cond_47
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_4c
    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPage(I)V

    goto :goto_8f

    :cond_58
    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    if-eq v0, p1, :cond_8f

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightFolderAnimation()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPage(I)V

    goto :goto_87

    :cond_74
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget v3, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    int-to-float v3, v3

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateScrollDistance(F)V

    :goto_87
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewItemManager;->onParamsChanged()V

    :cond_8f
    :goto_8f
    return-void
.end method

.method public recomputePreviewDrawingParams()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->computePreviewDrawingParamsColor(II)V

    :cond_17
    return-void
.end method

.method public final recreateCurrentPage()V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_22

    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mUpdateInPreview:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getConvertAnimBuilder()Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    move-result-object v0

    if-nez v0, :cond_19

    move v0, v1

    goto :goto_1d

    :cond_19
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->isConvertAnimating()Z

    move-result v0

    :goto_1d
    if-eqz v0, :cond_20

    :cond_1f
    const/4 v1, 0x1

    :cond_20
    iput-boolean v1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->skipGetDrawable:Z

    :goto_22
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public final setIconPageWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->iconPageWidth:I

    return-void
.end method

.method public final setMDotAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotAlpha:F

    return-void
.end method

.method public final setMDotScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotScale:F

    return-void
.end method

.method public final setMItemRectArray(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mItemRectArray:Landroid/util/SparseArray;

    return-void
.end method

.method public final setMLeftPageParam(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMPreviewPage(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    return-void
.end method

.method public final setMRightPageParam(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    return-void
.end method

.method public final updateLeftPageParams(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public updatePreviewItems(Ljava/util/function/Predicate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    move v0, v2

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v0, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    move v0, v2

    :cond_49
    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    iget-object v0, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    move v0, v2

    :cond_6c
    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    iget-object p1, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_90

    :cond_8f
    move v2, v0

    :goto_90
    if-eqz v2, :cond_97

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_97
    return-void
.end method

.method public final updateRightPageParams(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public final updateSinglePageParam(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 8

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "mLeftPageParam.iterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "BigFolderPreviewItemMan"

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "i.next()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v3, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v3, :cond_13

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string/jumbo v3, "updateSinglePageParam: left item = "

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_42
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "mRightPageParam.iterator()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "j.next()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_4d

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string/jumbo p2, "updateSinglePageParam: right item = "

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_7a
    return-void
.end method
