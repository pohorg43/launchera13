.class public Lcom/android/launcher/wallpaper/WallpaperUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ACTION_NAVIGATION_MODE:Ljava/lang/String; = "com.nav.color"

.field public static final BRIGHT_WALLPAPER_BRIGHTNESS:I = 0xc4

.field private static final DEBUG_ENABLE:Z

.field private static final DEFAULT_WALLPAPER_NAME_PREFIX_IN_OPLUS_RESOURCE:Ljava/lang/String;

.field private static final EXTRA_LAUNCHER_MODE:Ljava/lang/String; = "LAUNCHER_MODE"

.field private static final EXTRA_NAVIGATION_MODE:Ljava/lang/String; = "NAVIGATION_MODE"

.field public static final ICON_ALPHA_HIDE_DURATION:I = 0x10e

.field public static final ICON_ALPHA_SHOW_DURATION:I = 0x21c

.field private static final OPLUS_LOWER:Ljava/lang/String;

.field private static final OPLUS_UPPER:Ljava/lang/String;

.field public static final SAMPLE_SIZE:I = 0x4

.field private static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "WallpaperUtil"

.field public static final TEXT_COLOR_STATE_DARK:I = 0x1

.field public static final TEXT_COLOR_STATE_NORMAL:I = 0x0

.field private static final WHITE_TEXT_SHADOW_DX:F = 0.0f

.field private static final WHITE_TEXT_SHADOW_DY:F = 0.0f

.field private static final WHITE_TEXT_SHADOW_RADIUS:F = 6.0f

.field private static sFolderCloseDuration:I

.field private static sFolderOpenDuration:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->DEBUG_ENABLE:Z

    const v0, 0x7f12004f

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->DEFAULT_WALLPAPER_NAME_PREFIX_IN_OPLUS_RESOURCE:Ljava/lang/String;

    const v0, 0x7f120052

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->OPLUS_UPPER:Ljava/lang/String;

    const v0, 0x7f120051

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->OPLUS_LOWER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/pageindicators/OplusPageIndicator;ZLcom/android/launcher/Launcher;Lcom/android/launcher3/OplusHotseat;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/launcher/wallpaper/WallpaperUtil;->lambda$getLauncherContentAnimWithGaussian$0(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/pageindicators/OplusPageIndicator;ZLcom/android/launcher/Launcher;Lcom/android/launcher3/OplusHotseat;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static calculateWallpaperColor(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)I
    .registers 5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I

    move-result v2

    invoke-static {p0, v0, v1, p1, v2}, Lcom/android/launcher/wallpaper/ShadowCalculator;->setShadowStatus(Lcom/android/launcher/Launcher;IILandroid/graphics/Bitmap;I)V

    return v2
.end method

.method public static getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/wallpaper/sdk/ImageProcess;->getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I

    move-result p0

    return p0
.end method

.method private static getBuildModel()Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher/wallpaper/WallpaperUtil;->OPLUS_UPPER:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_18
    return-object v0
.end method

.method public static getDefaultWallpaper(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 12

    const-string v0, "getDefaultWallpaper close is, e="

    const-string v1, "WallpaperUtil"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    sget v3, Lcom/android/common/config/ScreenInfo;->screenWidth:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v3, 0x4

    sget v3, Lcom/android/common/config/ScreenInfo;->realScreenHeight:I

    div-int/lit8 v6, v3, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_40

    :cond_21
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    sget v4, Lcom/android/common/config/ScreenInfo;->screenWidth:I

    sget v5, Lcom/android/common/config/ScreenInfo;->realScreenHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    sget v5, Lcom/android/common/config/ScreenInfo;->realScreenHeight:I

    sget v6, Lcom/android/common/config/ScreenInfo;->screenWidth:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_40
    if-eqz v3, :cond_49

    sget-object p0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {p0, v3}, Lcom/android/common/util/BitmapUtils;->convertByDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/android/launcher/wallpaper/WallpaperUtil;->DEFAULT_WALLPAPER_NAME_PREFIX_IN_OPLUS_RESOURCE:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getBuildModel()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_70

    :cond_6f
    move-object v4, v2

    :goto_70
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7b

    invoke-virtual {v3, v4, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7a} :catch_107

    goto :goto_7c

    :cond_7b
    const/4 v3, 0x0

    :goto_7c
    if-gtz v3, :cond_9c

    const v4, 0x7f120050

    :try_start_81
    invoke-static {v4}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "drawable"

    sget-object v7, Lcom/android/launcher/wallpaper/WallpaperUtil;->OPLUS_LOWER:Ljava/lang/String;

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_97} :catch_98

    goto :goto_9c

    :catch_98
    move-exception v4

    :try_start_99
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9c
    :goto_9c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a4} :catch_107

    :try_start_a4
    invoke-static {p0, v2, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_a8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a4 .. :try_end_a8} :catch_c2
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_c0

    :try_start_a8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_107

    goto :goto_bf

    :catch_ac
    move-exception p0

    :try_start_ad
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_bf} :catch_107

    :goto_bf
    return-object p1

    :catchall_c0
    move-exception p1

    goto :goto_ef

    :catch_c2
    move-exception p1

    :try_start_c3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultWallpaper Can\'t decode stream e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d7
    .catchall {:try_start_c3 .. :try_end_d7} :catchall_c0

    :try_start_d7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_db
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_da} :catch_107

    goto :goto_10d

    :catch_db
    move-exception p0

    :try_start_dc
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_ee} :catch_107

    goto :goto_10d

    :goto_ef
    :try_start_ef
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_f3
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f2} :catch_107

    goto :goto_106

    :catch_f3
    move-exception p0

    :try_start_f4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_106
    throw p1
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_107} :catch_107

    :catch_107
    move-exception p0

    const-string p1, "getDefaultWallpaper e="

    invoke-static {p1, p0, v1}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_10d
    return-object v2
.end method

.method public static getLauncherContentAnimWithGaussian(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusDragLayer;Z)Landroid/animation/AnimatorSet;
    .registers 23

    move-object/from16 v8, p0

    move/from16 v9, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v11

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_1b
    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v8, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_23
    const/4 v0, 0x0

    invoke-virtual {v11, v1, v0}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_27
    invoke-virtual {v11}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_46

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    :cond_46
    invoke-virtual {v0, v8}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v3

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getFolderDepth()F

    move-result v4

    invoke-virtual {v0, v8}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result v5

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getFolderBlur()F

    move-result v6

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    sget-object v7, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v8, v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v14

    const/4 v7, 0x0

    if-nez v9, :cond_69

    move v15, v7

    move/from16 v16, v14

    const/high16 v7, 0x3f800000  # 1.0f

    goto :goto_6d

    :cond_69
    move/from16 v16, v14

    const/high16 v15, 0x3f800000  # 1.0f

    :goto_6d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v17, v13

    const v13, 0x7f0b0056

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    sput v13, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderCloseDuration:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0057

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    sput v13, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderOpenDuration:I

    sget-boolean v13, Lcom/android/launcher/wallpaper/WallpaperUtil;->DEBUG_ENABLE:Z

    if-eqz v13, :cond_df

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setAlphaAnimForGaussian -- show = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", currentAlpha = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", srcAlpha = "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dstAlpha = "

    const-string v14, ", state = "

    invoke-static {v13, v7, v1, v15, v14}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", closeFolderDepth = "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", openFolderDepth = "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", closeFolderBlur = "

    const-string v1, ", openFolderBlur = "

    invoke-static {v13, v4, v0, v5, v1}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", sFolderOpenDuration = "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderOpenDuration:I

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sFolderCloseDuration = "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderCloseDuration:I

    const-string v1, "WallpaperUtil"

    invoke-static {v13, v0, v1}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_df
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz v9, :cond_e8

    move v0, v5

    goto :goto_e9

    :cond_e8
    move v0, v6

    :goto_e9
    if-eqz v9, :cond_ed

    move v1, v3

    goto :goto_ee

    :cond_ed
    move v1, v4

    :goto_ee
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->createDepthAnim(FF)Landroid/animation/ObjectAnimator;

    move-result-object v14

    if-eqz v9, :cond_f7

    sget v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderCloseDuration:I

    goto :goto_f9

    :cond_f7
    sget v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderOpenDuration:I

    :goto_f9
    int-to-long v0, v0

    invoke-virtual {v14, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher/wallpaper/WallpaperUtil$1;

    move-object v0, v1

    move-object/from16 v18, v13

    move-object v13, v1

    move/from16 v1, p2

    move/from16 v19, v7

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher/wallpaper/WallpaperUtil$1;-><init>(ZLcom/android/launcher3/uioverrides/states/OplusDepthController;FFFFLcom/android/launcher/Launcher;)V

    invoke-virtual {v14, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v6, 0x0

    aput v19, v0, v6

    const/4 v7, 0x1

    aput v15, v0, v7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    if-eqz v9, :cond_121

    const-wide/16 v0, 0x21c

    goto :goto_123

    :cond_121
    const-wide/16 v0, 0x10e

    :goto_123
    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v15, Lcom/android/launcher/wallpaper/f;

    move-object v0, v15

    move-object v1, v11

    move-object v2, v12

    move/from16 v3, p2

    move-object/from16 v4, p0

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/wallpaper/f;-><init>(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/pageindicators/OplusPageIndicator;ZLcom/android/launcher/Launcher;Lcom/android/launcher3/OplusHotseat;)V

    invoke-virtual {v13, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v15, Lcom/android/launcher/wallpaper/WallpaperUtil$2;

    move-object v0, v15

    move-object v1, v12

    move-object v2, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/wallpaper/WallpaperUtil$2;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher3/OplusWorkspace;ZLcom/android/launcher/Launcher;Lcom/android/launcher3/OplusHotseat;)V

    invoke-virtual {v13, v15}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v8, v9}, Lcom/android/common/config/AnimationConstant;->workspaceScaleRangeForFolderAnim(Lcom/android/launcher3/Launcher;Z)[F

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/OplusLauncherAnimUtils;->SCALE:Landroid/util/FloatProperty;

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v8, v9}, Lcom/android/common/config/AnimationConstant;->hotseatScaleRangeForFolderAnim(Lcom/android/launcher3/Launcher;Z)[F

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v6

    invoke-static {v11, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v6

    invoke-static {v10, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    invoke-static {v8, v9}, Lcom/android/common/config/AnimationConstant;->animIndicatorScaleRange(Lcom/android/launcher3/Launcher;Z)[F

    move-result-object v4

    invoke-static {v1, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v12, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-eqz v9, :cond_178

    sget v3, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderCloseDuration:I

    goto :goto_17a

    :cond_178
    sget v3, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderOpenDuration:I

    :goto_17a
    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz v9, :cond_183

    sget v3, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderCloseDuration:I

    goto :goto_185

    :cond_183
    sget v3, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderOpenDuration:I

    :goto_185
    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz v9, :cond_18e

    sget v3, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderCloseDuration:I

    goto :goto_190

    :cond_18e
    sget v3, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderOpenDuration:I

    :goto_190
    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v3

    const/high16 v4, 0x40000000  # 2.0f

    if-eqz v3, :cond_1a5

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->setPivotX(F)V

    :cond_1a5
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_1cf

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v3

    if-eqz v3, :cond_1bb

    move-object/from16 v3, v17

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->setPivotX(F)V

    goto :goto_1c5

    :cond_1bb
    move-object/from16 v3, v17

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->setPivotX(F)V

    :goto_1c5
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->setPivotY(F)V

    goto :goto_1e2

    :cond_1cf
    move-object/from16 v3, v17

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->setPivotY(F)V

    :goto_1e2
    new-instance v3, Lcom/android/launcher/wallpaper/WallpaperUtil$3;

    move-object/from16 v4, p1

    invoke-direct {v3, v11, v9, v4, v8}, Lcom/android/launcher/wallpaper/WallpaperUtil$3;-><init>(Lcom/android/launcher3/OplusWorkspace;ZLcom/android/launcher3/OplusDragLayer;Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v9, :cond_1f1

    sget-object v3, Lcom/android/common/config/AnimationConstant;->FOLDER_CLOSE:Landroid/view/animation/OplusBezierInterpolator;

    goto :goto_1f3

    :cond_1f1
    sget-object v3, Lcom/android/common/config/AnimationConstant;->FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;

    :goto_1f3
    move-object/from16 v4, v18

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v14, v3, v6

    aput-object v13, v3, v7

    const/4 v5, 0x2

    aput-object v2, v3, v5

    const/4 v5, 0x3

    aput-object v1, v3, v5

    const/4 v1, 0x4

    aput-object v0, v3, v1

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    if-eqz v16, :cond_219

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_21c

    if-eqz v9, :cond_21c

    :cond_219
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_21c
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-object v4
.end method

.method public static getStaticWallpaper(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;Landroid/app/IWallpaperManagerCallback;)Landroid/graphics/Bitmap;
    .registers 7

    const-string p2, "WallpaperUtil"

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    goto :goto_51

    :catch_12
    move-exception v1

    :try_start_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wallpaperManager getDrawable error, to getWallpaperFile, error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_51

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3b} :catch_3c

    goto :goto_51

    :catch_3c
    move-exception p0

    const-string p1, "getWallpaperFile error: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    :goto_51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getStaticWallpaper, result = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isRTLString(Ljava/lang/CharSequence;)Z
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p0

    if-eq p0, v2, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_23

    const/16 v0, 0x10

    if-eq p0, v0, :cond_23

    const/16 v0, 0x11

    if-ne p0, v0, :cond_24

    :cond_23
    move v1, v2

    :cond_24
    return v1
.end method

.method private static synthetic lambda$getLauncherContentAnimWithGaussian$0(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/pageindicators/OplusPageIndicator;ZLcom/android/launcher/Launcher;Lcom/android/launcher3/OplusHotseat;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-virtual {p1, p5}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAnimAlpha(F)V

    if-eqz p2, :cond_1f

    sget-object p0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p3, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x0

    invoke-virtual {p4, p0}, Lcom/android/launcher3/OplusHotseat;->setAnimAlpha(F)V

    goto :goto_22

    :cond_1f
    invoke-virtual {p4, p5}, Lcom/android/launcher3/OplusHotseat;->setAnimAlpha(F)V

    :goto_22
    return-void
.end method

.method public static screenshotWallpaper(Lcom/android/launcher/Launcher;F)Landroid/graphics/Bitmap;
    .registers 10

    const-string v0, "WallpaperUtil"

    const-string/jumbo v1, "screenshotWallpaper"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    :try_start_24
    invoke-interface {v4}, Landroid/view/IWindowManager;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_28} :catch_38

    if-eqz v4, :cond_72

    int-to-float v5, v1

    mul-float/2addr v5, p1

    float-to-int v5, v5

    int-to-float v6, p0

    mul-float/2addr v6, p1

    float-to-int v6, v6

    const/4 v7, 0x1

    :try_start_31
    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_36

    goto :goto_72

    :catch_36
    move-exception v5

    goto :goto_3a

    :catch_38
    move-exception v5

    const/4 v4, 0x0

    :goto_3a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "captureFullScreen  bmp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " width:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " scale:"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "\n screenshotWallpaper e:"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    :goto_72
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4
.end method

.method public static setNavBarColor(Lcom/android/launcher/Launcher;ZZ)V
    .registers 6

    sget-boolean v0, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p0, :cond_8

    return-void

    :cond_8
    const-string/jumbo v0, "setNavBarColor. isNavBarWallpaperBright = "

    const-string v1, " , enterLauncher = "

    const-string v2, "WallpaperUtil"

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/common/multiapp/b;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p2

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    or-int/lit8 p1, p2, 0x10

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_5c

    :cond_32
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    and-int/lit8 p1, p2, -0x11

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_5c

    :cond_40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nav.color"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NAVIGATION_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "LAUNCHER_MODE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_5c
    return-void
.end method

.method public static setStatusBarColor(Lcom/android/launcher/Launcher;Z)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const-string v0, "WallpaperUtil"

    if-nez p0, :cond_16

    const-string/jumbo p0, "setStatusBarColor. The decorView is null."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    const-string/jumbo v1, "setStatusBarColor. isStatusBarWallpaperBright = "

    invoke-static {v1, p1, v0}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_31

    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, -0x2001

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_31
    return-void
.end method

.method public static updatePaintShadowLayer(Landroid/graphics/Paint;)V
    .registers 1

    return-void
.end method

.method public static updateTextColor(Landroid/widget/TextView;)V
    .registers 4

    const-string v0, "WallpaperUtil"

    if-nez p0, :cond_b

    const-string/jumbo p0, "textView is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isThemeTextColorDefault()Z

    move-result v1

    if-nez v1, :cond_17

    const-string p0, "!isThemeTextColorDefault"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_24

    const v0, 0x7f13020b

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_2a

    :cond_24
    const v0, 0x7f13020c

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_2a
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    const-string/jumbo v0, "sans-serif-medium"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3b
    instance-of v0, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_62

    sget-object v0, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/util/FontManager;

    iget v0, v0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_62

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_62
    return-void
.end method
