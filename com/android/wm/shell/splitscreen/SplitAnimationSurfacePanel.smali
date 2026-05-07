.class public Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICON_SIZE_DP:I = 0x38

.field private static final TAG:Ljava/lang/String; = "SplitAnimationSurfacePanel"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCornerRadius:I

.field private final mDisplayBounds:Landroid/graphics/Rect;

.field private final mIconSize:I

.field private mLeftBackgroundSurface:Landroid/view/SurfaceControl;

.field private mLeftIconSurface:Landroid/view/SurfaceControl;

.field private mLeftIconViewHost:Landroid/view/SurfaceControlViewHost;

.field private mLeftPanelSurface:Landroid/view/SurfaceControl;

.field private mRightBackgroundSurface:Landroid/view/SurfaceControl;

.field private mRightIconSurface:Landroid/view/SurfaceControl;

.field private mRightIconViewHost:Landroid/view/SurfaceControlViewHost;

.field private mRightPanelSurface:Landroid/view/SurfaceControl;

.field private final mSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceSession;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mDisplayBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x40800000  # 4.0f

    invoke-static {v2, v1}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mSpacing:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x42600000  # 56.0f

    invoke-static {v2, v1}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mIconSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v1, 0x41400000  # 12.0f

    invoke-static {v1, p1}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mCornerRadius:I

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0, p3, p4, p5}, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->inflate(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceSession;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private inflate(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceSession;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftIconViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v4, :cond_11

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightIconViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v4, :cond_11

    return-void

    :cond_11
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_1f

    move v4, v6

    goto :goto_20

    :cond_1f
    move v4, v7

    :goto_20
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v8

    const/16 v9, 0x7f6

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/android/wm/shell/R$layout;->oplus_split_anim_panel_icon_layout:I

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-direct {v3, v5, v11, v10}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftIconViewHost:Landroid/view/SurfaceControlViewHost;

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x7f6

    const/16 v16, 0x18

    const/16 v17, -0x3

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v11, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mIconSize:I

    iput v11, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v11, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance v11, Landroid/os/Binder;

    invoke-direct {v11}, Landroid/os/Binder;-><init>()V

    iput-object v11, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const-string v11, "SplitAnimLeftPanelIcon"

    invoke-virtual {v3, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v11, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v12, 0x20000040

    or-int/2addr v11, v12

    iput v11, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftIconViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v11, v8, v3}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftIconViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v3

    if-eqz v3, :cond_8e

    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftIconSurface:Landroid/view/SurfaceControl;

    :cond_8e
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v8, Lcom/android/wm/shell/R$drawable;->oplus_split_anim_right_panel_icon:I

    invoke-virtual {v5, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v4, :cond_ad

    const v8, -0xd1d1d2

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_ad
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/oplus/splitscreen/DividerUtils;->getIconDrawableSizeDp(Landroid/content/Context;)I

    move-result v8

    if-eqz v8, :cond_c9

    iget v9, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mIconSize:I

    int-to-double v13, v9

    const-wide/high16 v15, 0x3ff0000000000000L  # 1.0

    int-to-double v8, v8

    const-wide/high16 v17, 0x404e000000000000L  # 60.0

    div-double v8, v8, v17

    sub-double/2addr v15, v8

    mul-double/2addr v15, v13

    const-wide/high16 v8, 0x4000000000000000L  # 2.0

    div-double v8, v15, v8

    double-to-int v8, v8

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_c9
    new-instance v8, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-direct {v8, v5, v9, v10}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    iput-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightIconViewHost:Landroid/view/SurfaceControlViewHost;

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7f6

    const/16 v17, 0x18

    const/16 v18, -0x3

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v8, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mIconSize:I

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    iput-object v8, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const-string v8, "SplitAnimRightPanelIcon"

    invoke-virtual {v5, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v8, v12

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightIconViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v8, v3, v5}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightIconViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v3

    if-eqz v3, :cond_10c

    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightIconSurface:Landroid/view/SurfaceControl;

    :cond_10c
    new-instance v3, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v3, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const-string v5, "SplitAnimLeftPanelContainerLayer"

    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const-string v5, "SplitAnimationSurfacePanel.inflate"

    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftPanelSurface:Landroid/view/SurfaceControl;

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v8, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v8, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->getPanelWidth()I

    move-result v9

    iget v10, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mIconSize:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget v11, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mIconSize:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v3, v8, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v3, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v3, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const-string v8, "SplitAnimRightPanelContainerLayer"

    invoke-virtual {v3, v8}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightPanelSurface:Landroid/view/SurfaceControl;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->getPanelWidth()I

    move-result v6

    iget v8, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mIconSize:I

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mIconSize:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v3, v5, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftPanelSurface:Landroid/view/SurfaceControl;

    const-string v5, "SplitAnimLeftPanelBackground"

    invoke-static {v3, v5, v2}, Lcom/android/wm/shell/common/SurfaceUtils;->makeColorLayer(Landroid/view/SurfaceControl;Ljava/lang/String;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftBackgroundSurface:Landroid/view/SurfaceControl;

    const/high16 v5, -0x1000000

    const/4 v6, -0x1

    if-eqz v4, :cond_1ab

    move v8, v5

    goto :goto_1ac

    :cond_1ab
    move v8, v6

    :goto_1ac
    invoke-static {v8}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftBackgroundSurface:Landroid/view/SurfaceControl;

    iget v9, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mCornerRadius:I

    int-to-float v9, v9

    invoke-virtual {v3, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v8, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->getPanelWidth()I

    move-result v9

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v3, v8, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightPanelSurface:Landroid/view/SurfaceControl;

    const-string v8, "SplitAnimRightPanelBackground"

    invoke-static {v3, v8, v2}, Lcom/android/wm/shell/common/SurfaceUtils;->makeColorLayer(Landroid/view/SurfaceControl;Ljava/lang/String;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightBackgroundSurface:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_1e9

    goto :goto_1ea

    :cond_1e9
    move v5, v6

    :goto_1ea
    invoke-static {v5}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightBackgroundSurface:Landroid/view/SurfaceControl;

    iget v3, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mCornerRadius:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->getPanelWidth()I

    move-result v3

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public getLeftBackgroundSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftBackgroundSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getLeftIconSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftIconSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getLeftPanel()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftPanelSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getPanelWidth()I
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mSpacing:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getRightBackgroundSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightBackgroundSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getRightIconSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightIconSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getRightPanel()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightPanelSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public release(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftIconViewHost:Landroid/view/SurfaceControlViewHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftIconViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightIconViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightIconViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_13
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftIconSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftIconSurface:Landroid/view/SurfaceControl;

    :cond_1c
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightIconSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightIconSurface:Landroid/view/SurfaceControl;

    :cond_25
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftPanelSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2e

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftPanelSurface:Landroid/view/SurfaceControl;

    :cond_2e
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightPanelSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_37

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightPanelSurface:Landroid/view/SurfaceControl;

    :cond_37
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftBackgroundSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_40

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mLeftBackgroundSurface:Landroid/view/SurfaceControl;

    :cond_40
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightBackgroundSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_49

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->mRightBackgroundSurface:Landroid/view/SurfaceControl;

    :cond_49
    return-void
.end method
