.class public Lcom/android/launcher/wallpaper/ShadowCalculator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;
    }
.end annotation


# static fields
.field private static final COLOR_FILTER_OFFSET:I = 0x1e

.field private static final MULTI_WALLPAPER_COLOR_COUNT:I = 0x1e

.field private static final RECT_GRID_COL_MAX:I = 0x9

.field private static final RECT_GRID_ROW_MAX:I = 0x3

.field public static final SHADOW_COLOR_BLACK:I = 0x33000000

.field public static final SHADOW_COLOR_WHITE:I = -0x33000001

.field private static final TAG:Ljava/lang/String; = "ShadowCalculator"

.field private static final TEXTCOLOR_FILTER_BLACK:I = 0x3c

.field private static final TEXTCOLOR_FILTER_WHITE:I = 0xe6

.field private static final sAppTextPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnableShadowColor:Z

.field private static sLineHeight:I

.field private static sLinePadding:I

.field private static sTextViewExtendedPaddingTop:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sAppTextPos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sEnableShadowColor:Z

    sput v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sTextViewExtendedPaddingTop:I

    sput v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLineHeight:I

    sput v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLinePadding:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateTextColor(Landroid/graphics/Bitmap;IIILandroid/graphics/Rect;)I
    .registers 11
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40400000  # 3.0f

    div-float/2addr p1, p2

    const/4 p2, 0x0

    move v0, p2

    :cond_a
    :goto_a
    const/4 v1, 0x3

    if-ge p2, v1, :cond_37

    iget v1, p4, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    int-to-float v3, p2

    invoke-static {v3, p1, v2}, Landroidx/core/animation/b;->a(FFI)I

    move-result v2

    iget v3, p4, Landroid/graphics/Rect;->right:I

    iget v4, p4, Landroid/graphics/Rect;->top:I

    add-int/lit8 p2, p2, 0x1

    int-to-float v5, p2

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {p0, v1, v2, v3, v5}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I

    move-result v1

    const/16 v2, 0xc4

    if-le p3, v2, :cond_30

    add-int/lit8 v2, p3, -0x1e

    if-le v1, v2, :cond_a

    goto :goto_34

    :cond_30
    add-int/lit8 v2, p3, 0x1e

    if-ge v1, v2, :cond_a

    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_37
    return v0
.end method

.method private static calculateTextPos(Lcom/android/launcher/Launcher;)V
    .registers 21

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lcom/android/launcher/wallpaper/ShadowCalculator;->getLineHeight(Lcom/android/launcher/Launcher;)I

    move-result v1

    const-string v2, "calculateTextPos--->  sTextViewExtendedPaddingTop = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/launcher/wallpaper/ShadowCalculator;->sTextViewExtendedPaddingTop:I

    const-string v4, "  lineHeight = "

    const-string v5, "  sLineHeight = "

    invoke-static {v2, v3, v4, v1, v5}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    sget v3, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLineHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  sAppTextPos.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher/wallpaper/ShadowCalculator;->sAppTextPos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Wallpapers"

    const-string v5, "ShadowCalculator"

    invoke-static {v4, v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    const/4 v12, 0x0

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v13, v6

    goto :goto_45

    :cond_44
    move v13, v12

    :goto_45
    sget-object v6, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v6, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {v7}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->getWorkspaceMaxIconNum()I

    move-result v7

    add-int/2addr v7, v13

    sget v8, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLineHeight:I

    if-ne v8, v1, :cond_5c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v8, v7, :cond_168

    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    sput v1, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLineHeight:I

    if-eqz v7, :cond_e2

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_e2

    invoke-virtual {v7}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    if-eqz v3, :cond_cd

    sget v1, Lcom/android/launcher/wallpaper/ShadowCalculator;->sTextViewExtendedPaddingTop:I

    if-nez v1, :cond_87

    invoke-static {v3}, Lcom/android/launcher/wallpaper/ShadowCalculator;->getFirstBubbleTextView(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/wallpaper/ShadowCalculator;->getTextViewExtendedPaddingTop(Lcom/android/launcher3/BubbleTextView;)I

    move-result v1

    sput v1, Lcom/android/launcher/wallpaper/ShadowCalculator;->sTextViewExtendedPaddingTop:I

    :cond_87
    invoke-virtual {v6, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->getWorkspaceMaxIconNum()I

    move-result v0

    move v1, v12

    :goto_92
    if-ge v1, v0, :cond_f3

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v6

    rem-int v15, v1, v6

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v6

    div-int v16, v1, v6

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v14, v3

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    iget v7, v6, Landroid/graphics/Rect;->top:I

    sget v8, Lcom/android/launcher/wallpaper/ShadowCalculator;->sTextViewExtendedPaddingTop:I

    add-int/2addr v7, v8

    sget v8, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLinePadding:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    sget v8, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLineHeight:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    new-instance v7, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;

    invoke-direct {v7}, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;-><init>()V

    iput-object v6, v7, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;->mRect:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/launcher/wallpaper/ShadowCalculator;->sAppTextPos:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    :cond_cd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateTextPos -- current cellLayout is null! curPageIndex = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f3

    :cond_e2
    const-string v0, "calculateTextPos -- Workspace failed. workspace = null or getChildCount = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v7, :cond_ef

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    goto :goto_f0

    :cond_ef
    const/4 v1, -0x1

    :goto_f0
    invoke-static {v0, v1, v4, v5}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_f3
    :goto_f3
    if-eqz v2, :cond_163

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateTextPos -- hotSeat rect = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v12

    :goto_112
    if-ge v1, v13, :cond_168

    rem-int v7, v1, v13

    div-int v8, v1, v13

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v6, v2

    move-object v11, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v12, v6}, Landroid/graphics/Rect;->offset(II)V

    iget v6, v3, Landroid/graphics/Rect;->top:I

    sget v7, Lcom/android/launcher/wallpaper/ShadowCalculator;->sTextViewExtendedPaddingTop:I

    add-int/2addr v6, v7

    sget v7, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLinePadding:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->top:I

    sget v7, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLineHeight:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    new-instance v6, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;

    invoke-direct {v6}, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;-><init>()V

    iput-object v3, v6, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;->mRect:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/launcher/wallpaper/ShadowCalculator;->sAppTextPos:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculateTextPos--->hotSeat i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  r = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_112

    :cond_163
    const-string v0, "calculateTextPos--->hotSeat failed. hotSeat = null"

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_168
    return-void
.end method

.method private static calculateWallpaperColor(Landroid/graphics/Bitmap;IIII)I
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sget-object v4, Lcom/android/launcher/wallpaper/ShadowCalculator;->sAppTextPos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const-string v6, "ShadowCalculator"

    const/4 v7, 0x0

    if-eqz v5, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateWallpaperColor. The sAppTextPos is empty! sAppTextPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_28
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v8, 0x3e800000  # 0.25f

    const-string v9, "calculateWallpaperColor---> bmpWidth = "

    const-string v10, "  bmpHeight = "

    const-string v11, "  averageValue = "

    invoke-static {v9, v1, v10, v2, v11}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Wallpapers"

    invoke-static {v9, v3, v10, v6}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    move v9, v7

    move v11, v8

    move v8, v9

    :goto_46
    sget-object v12, Lcom/android/launcher/wallpaper/ShadowCalculator;->sAppTextPos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_f9

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;

    iget-object v13, v12, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v13, p4

    invoke-virtual {v4, v13, v9}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v14, v5, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    mul-float/2addr v14, v11

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    iput v14, v5, Landroid/graphics/Rect;->left:I

    iget v14, v5, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    mul-float/2addr v14, v11

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    iput v14, v5, Landroid/graphics/Rect;->top:I

    iget v14, v5, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    mul-float/2addr v14, v11

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    iput v14, v5, Landroid/graphics/Rect;->right:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    mul-float/2addr v14, v11

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v11, v14

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v14

    :goto_97
    const/16 v15, 0x9

    if-ge v9, v15, :cond_ec

    mul-int v15, v14, v9

    div-int/lit8 v15, v15, 0x9

    add-int/2addr v15, v11

    iput v15, v5, Landroid/graphics/Rect;->left:I

    div-int/lit8 v16, v14, 0x9

    add-int v15, v16, v15

    iput v15, v5, Landroid/graphics/Rect;->right:I

    iget-object v15, v12, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;->mPos:[I

    const/16 v16, 0x0

    aput v16, v15, v9

    const/16 v15, 0xc4

    if-lt v3, v15, :cond_b9

    const/16 v15, 0x3c

    invoke-static {v0, v1, v2, v15, v5}, Lcom/android/launcher/wallpaper/ShadowCalculator;->calculateTextColor(Landroid/graphics/Bitmap;IIILandroid/graphics/Rect;)I

    move-result v15

    goto :goto_bf

    :cond_b9
    const/16 v15, 0xe6

    invoke-static {v0, v1, v2, v15, v5}, Lcom/android/launcher/wallpaper/ShadowCalculator;->calculateTextColor(Landroid/graphics/Bitmap;IIILandroid/graphics/Rect;)I

    move-result v15

    :goto_bf
    if-lez v15, :cond_de

    const-string v0, "calculateWallpaperColor---> i = "

    const-string v1, "  j = "

    const-string v2, "  scale_rect = "

    invoke-static {v0, v7, v1, v9, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x1

    :cond_de
    iget-object v0, v12, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;->mPos:[I

    aput v15, v0, v9

    add-int/2addr v8, v15

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_97

    :cond_ec
    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x0

    const/high16 v11, 0x3e800000  # 0.25f

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_46

    :cond_f9
    return v8
.end method

.method private static getFirstBubbleTextView(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/BubbleTextView;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1d

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_1a

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    return-object v0
.end method

.method private static getLineHeight(Lcom/android/launcher/Launcher;)I
    .registers 7

    if-eqz p0, :cond_61

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    if-eqz p0, :cond_61

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_61

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_61

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_5e

    move v3, v0

    :goto_25
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_5e

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v5, :cond_39

    check-cast v4, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v4

    :cond_39
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_5b

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0, p0}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int v2, v1, p0

    if-ge v0, v2, :cond_5a

    sub-int/2addr v1, p0

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLinePadding:I

    :cond_5a
    return v0

    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_61
    const/16 p0, 0x24

    return p0
.end method

.method private static getTextViewExtendedPaddingTop(Lcom/android/launcher3/BubbleTextView;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result p0

    return p0
.end method

.method public static isEnableShadowColor()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sEnableShadowColor:Z

    return v0
.end method

.method public static setShadowStatus(Lcom/android/launcher/Launcher;IILandroid/graphics/Bitmap;I)V
    .registers 9

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sEnableShadowColor:Z

    sget-object v1, Lcom/android/launcher/wallpaper/ShadowCalculator;->sAppTextPos:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    goto :goto_1a

    :cond_19
    move v2, v0

    :goto_1a
    sget-object v3, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {v3}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->getWorkspaceMaxIconNum()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {p0}, Lcom/android/launcher/wallpaper/ShadowCalculator;->calculateTextPos(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge p0, v3, :cond_54

    const-string p0, "ShadowCalculator"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "calculateWallpaperColor failed. workspacePageMaxIconNum = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  sAppTextPos.size() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :cond_54
    mul-int/lit8 p0, p1, 0x4

    sget v2, Lcom/android/common/config/ScreenInfo;->screenHeight:I

    if-le p0, v2, :cond_5e

    sget v2, Lcom/android/common/config/ScreenInfo;->screenWidth:I

    sub-int/2addr p0, v2

    goto :goto_5f

    :cond_5e
    move p0, v0

    :goto_5f
    invoke-static {p3, p1, p2, p4, v0}, Lcom/android/launcher/wallpaper/ShadowCalculator;->calculateWallpaperColor(Landroid/graphics/Bitmap;IIII)I

    move-result v2

    const/4 v3, 0x1

    if-lez p0, :cond_72

    invoke-static {p3, p1, p2, p4, p0}, Lcom/android/launcher/wallpaper/ShadowCalculator;->calculateWallpaperColor(Landroid/graphics/Bitmap;IIII)I

    move-result p0

    add-int/2addr v2, p0

    const/16 p0, 0x1e

    if-le v2, p0, :cond_76

    sput-boolean v3, Lcom/android/launcher/wallpaper/ShadowCalculator;->sEnableShadowColor:Z

    goto :goto_76

    :cond_72
    if-lez v2, :cond_76

    sput-boolean v3, Lcom/android/launcher/wallpaper/ShadowCalculator;->sEnableShadowColor:Z

    :cond_76
    :goto_76
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    if-eqz p0, :cond_7e

    sput-boolean v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sEnableShadowColor:Z

    :cond_7e
    const-string p0, "ShadowCalculator"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "calculateWallpaperColor -- sEnableShadowColor = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/android/launcher/wallpaper/ShadowCalculator;->sEnableShadowColor:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_98
    move-exception p0

    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_6 .. :try_end_9a} :catchall_98

    throw p0
.end method
