.class public final Lcom/android/launcher/wallpaper/LauncherBitmapManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/wallpaper/LauncherBitmapManager$Companion;,
        Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;
    }
.end annotation


# static fields
.field private static final ALPHA_1:F = 1.0f

.field private static final BRIGHT_PERCENT_NUM_100:I = 0x64

.field private static final CALUATE_TEXT_COLOR_WIDTH_HEIGHT:I = 0x64

.field public static final COMMON_HOTSEAT_ALPHA:I = 0xa0

.field public static final COMMON_TEST_STRING:Ljava/lang/String; = "Launcher星期一123"

.field private static final CREATE_LAUNCHER_DELAYMILLIS:J = 0xbb8L

.field public static final Companion:Lcom/android/launcher/wallpaper/LauncherBitmapManager$Companion;

.field private static final GOSTATE_RUNNABLE_DELAYMILLIS:J = 0xfaL

.field private static final INTERVAL_PIXEL_COUNT:I = 0x5

.field public static final MAX_ALPHA:I = 0xff

.field private static final MAX_BITMAP_QUALITY:I = 0x64

.field private static final MAX_GET_BITMAP_COUNT:I = 0x64

.field private static final MAX_VIEW_CAN_TRANSFER_RATIO:I = 0x46

.field public static final METHOD_GET_LAUNCHER_IMAGE_URI_NORMAL:Ljava/lang/String; = "image/launcher_first_screen_normal_image.jpg"

.field public static final METHOD_GET_LAUNCHER_IMAGE_URI_NORMAL_FOR_THEMESTORE:Ljava/lang/String; = "image/launcher_first_screen_normal_image_for_themestore.jpg"

.field public static final METHOD_GET_LAUNCHER_IMAGE_URI_RESERVE:Ljava/lang/String; = "image/launcher_first_screen_reserve_image.jpg"

.field private static final MIN_WALLPAPER_SIZE_RATIO:D = 0.95

.field private static final MORE_PX_FOR_GREEN:I = 0xc

.field private static final TAG:Ljava/lang/String; = "LauncherBitmapManager"

.field private static final sInstance$delegate:Ly2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly2/e<",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmapBlack:Landroid/graphics/Bitmap;

.field private mBitmapWhite:Landroid/graphics/Bitmap;

.field private mCurrentPageIndex:I

.field private final mInvertBitmapDefers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq3/k0<",
            "Ly2/p;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsTextCanTransferColor:Z

.field private mLauncherScreenBitmapConfig:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

.field private mPageTotalCount:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTargetSinglePageWidth:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->Companion:Lcom/android/launcher/wallpaper/LauncherBitmapManager$Companion;

    sget-object v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$Companion$sInstance$2;->INSTANCE:Lcom/android/launcher/wallpaper/LauncherBitmapManager$Companion$sInstance$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->sInstance$delegate:Ly2/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mIsTextCanTransferColor:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mInvertBitmapDefers:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/Launcher;Lcom/android/launcher/wallpaper/LauncherBitmapManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->calculateTextViewCanTransferColor$lambda-8(Lcom/android/launcher3/Launcher;Lcom/android/launcher/wallpaper/LauncherBitmapManager;)V

    return-void
.end method

.method public static final synthetic access$buildLauncherBitmap(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Lb3/d;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->buildLauncherBitmap(Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$buildLauncherBitmapInternal(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Lb3/d;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->buildLauncherBitmapInternal(Lcom/android/launcher3/Launcher;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$canMakeLauncherBitmapNow(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->canMakeLauncherBitmapNow(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$dealOPWeatherWidget(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->dealOPWeatherWidget(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic access$dealWithCellLayout(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->dealWithCellLayout(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic access$drawCellLayoutToCanvas(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/OplusCellLayout;Landroid/graphics/Canvas;[ILandroid/graphics/Paint;Lb3/d;)Ljava/lang/Object;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->drawCellLayoutToCanvas(Lcom/android/launcher3/OplusCellLayout;Landroid/graphics/Canvas;[ILandroid/graphics/Paint;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$drawViewToCanvas(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Paint;Lcom/android/launcher3/Launcher;Lb3/d;)Ljava/lang/Object;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->drawViewToCanvas(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Paint;Lcom/android/launcher3/Launcher;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getImagePath(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getImagePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLauncher(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;)Lcom/android/launcher3/Launcher;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLocationOfCellLayoutInFirstScreen(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/view/View;Lcom/android/launcher3/Launcher;)[I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getLocationOfCellLayoutInFirstScreen(Landroid/view/View;Lcom/android/launcher3/Launcher;)[I

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMInvertBitmapDefers$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mInvertBitmapDefers:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMIsTextCanTransferColor$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mIsTextCanTransferColor:Z

    return p0
.end method

.method public static final synthetic access$getMLauncherScreenBitmapConfig$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mLauncherScreenBitmapConfig:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    return-object p0
.end method

.method public static final synthetic access$getMScreenHeight$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mScreenHeight:I

    return p0
.end method

.method public static final synthetic access$getMScreenWidth$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mScreenWidth:I

    return p0
.end method

.method public static final synthetic access$getPreviewCells(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;)[Lcom/android/launcher3/CellLayout;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getPreviewCells(Lcom/android/launcher3/Launcher;)[Lcom/android/launcher3/CellLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Ly2/e;
    .registers 1

    sget-object v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->sInstance$delegate:Ly2/e;

    return-object v0
.end method

.method public static final synthetic access$getSoftBitmapOfView(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewBoundsInCanvas(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/view/View;II)Landroid/graphics/Rect;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getViewBoundsInCanvas(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$gotoLauncherNormal(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Lb3/d;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->gotoLauncherNormal(Landroid/content/Context;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initCommonState(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->initCommonState(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public static final synthetic access$inverseLauncherBitmap(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Bitmap;Lcom/android/launcher3/Launcher;Lb3/d;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->inverseLauncherBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher3/Launcher;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isImageFileExist(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->isImageFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isTextCanTransferColor(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Landroid/widget/TextView;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->isTextCanTransferColor(Landroid/content/Context;Landroid/widget/TextView;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$makeLauncherBitmap(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Lb3/d;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->makeLauncherBitmap(Lcom/android/launcher3/Launcher;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$makeLauncherRootView(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Landroid/graphics/Canvas;Lb3/d;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->makeLauncherRootView(Lcom/android/launcher3/Launcher;Landroid/graphics/Canvas;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$recycleBitmap(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic access$runLauncherNormal(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Lkotlin/jvm/functions/Function0;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->runLauncherNormal(Lcom/android/launcher3/Launcher;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$saveBitmap(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Ljava/io/File;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic access$setMIsTextCanTransferColor$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mIsTextCanTransferColor:Z

    return-void
.end method

.method public static final synthetic access$setMLauncherScreenBitmapConfig$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mLauncherScreenBitmapConfig:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/Launcher;Lkotlin/jvm/functions/Function0;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->runLauncherNormal$lambda-2(Lcom/android/launcher3/Launcher;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final declared-synchronized buildLauncherBitmap(Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Lb3/d;)V

    invoke-static {v0, p3}, Lq3/c1;->b(Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lc3/a;->a:Lc3/a;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_15

    if-ne p1, p2, :cond_11

    monitor-exit p0

    return-object p1

    :cond_11
    :try_start_11
    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object p1

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final buildLauncherBitmapInternal(Lcom/android/launcher3/Launcher;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Lcom/android/launcher3/Launcher;Lb3/d;)V

    invoke-static {v0, p3}, Lq3/c1;->b(Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_f

    return-object p0

    :cond_f
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method private static final calculateTextViewCanTransferColor$lambda-8(Lcom/android/launcher3/Launcher;Lcom/android/launcher/wallpaper/LauncherBitmapManager;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const-string v1, "launcher.dragLayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "Launcher星期一123"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/16 v3, 0x64

    invoke-direct {v2, v3, v3}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const/16 v3, 0x50

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;

    invoke-direct {v2, p1, v1, p0, v0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/widget/TextView;Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private final canMakeLauncherBitmapNow(Lcom/android/launcher3/Launcher;)Z
    .registers 16

    const-string v0, "LauncherBitmapManager"

    const/4 v1, 0x0

    if-nez p1, :cond_b

    const-string p0, "canMakeLauncherBitmapNow, launcher = null."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_b
    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperUpdateFuture;->checkLauncherRefreshState()V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v4

    const-wide v5, 0x3fee666666666666L  # 0.95

    if-eqz v4, :cond_3e

    int-to-double v7, v2

    goto :goto_41

    :cond_3e
    iget v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mScreenHeight:I

    int-to-double v7, v4

    :goto_41
    mul-double/2addr v7, v5

    double-to-int v10, v7

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v12

    move-object v4, p0

    move v5, v3

    move v6, v2

    move-object v7, p1

    move v8, v11

    move v9, v12

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->isForbidMakeLauncherBitmap(IILcom/android/launcher3/Launcher;II)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_c3

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    if-eqz v4, :cond_72

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/OplusWorkspace;->isCurrentPageVisibility()Z

    move-result v4

    if-nez v4, :cond_72

    move v4, v5

    goto :goto_73

    :cond_72
    move v4, v1

    :goto_73
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v6

    if-eqz v6, :cond_81

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->hasPreviewCells(Lcom/android/launcher3/Launcher;)Z

    move-result v6

    if-nez v6, :cond_81

    move v6, v5

    goto :goto_82

    :cond_81
    move v6, v1

    :goto_82
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v7

    if-eqz v7, :cond_8e

    if-ne v2, v11, :cond_8c

    if-eq v3, v12, :cond_8e

    :cond_8c
    move v7, v5

    goto :goto_8f

    :cond_8e
    move v7, v1

    :goto_8f
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v8

    if-nez v8, :cond_98

    if-le v3, v2, :cond_98

    goto :goto_99

    :cond_98
    move v5, v1

    :goto_99
    const-string/jumbo v8, "x = "

    const-string v9, ", x2 = "

    const-string v13, ", x3 = "

    invoke-static {v8, v4, v9, v6, v13}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", x4 = "

    const-string v8, ", isInSuperPowerMode = "

    invoke-static {v4, v7, v6, v5, v8}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", getWorkspace() = launcher.workspace"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c6

    :cond_c3
    if-le v11, v10, :cond_c6

    move v1, v5

    :cond_c6
    :goto_c6
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_12b

    const-string v4, "canMakeLauncherBitmapNow, isMultiWindowMode = "

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const-string v6, ", needMakeLauncherBimtap = "

    const-string v7, ", launcher.getDeviceProfile().isLandscape = "

    invoke-static {v4, v5, v6, v1, v7}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", rootViewWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", rootViewHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mScreenHeight * 0.95 = "

    const-string v6, " + mScreenHeight = "

    invoke-static {v4, v11, v5, v10, v6}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mScreenHeight:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", state = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", screenWidth = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", screenHeight = "

    const-string v5, ", launcher.isWorkspaceLoading() = "

    invoke-static {v4, v3, p0, v2, v5}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12b
    return v1
.end method

.method private final dealOPWeatherWidget(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;)V
    .registers 16

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getPreviewCells(Lcom/android/launcher3/Launcher;)[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :cond_7
    :goto_7
    if-ge v3, v1, :cond_5d

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    if-nez v4, :cond_10

    goto :goto_7

    :cond_10
    invoke-direct {p0, v4, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getLocationOfCellLayoutInFirstScreen(Landroid/view/View;Lcom/android/launcher3/Launcher;)[I

    move-result-object v5

    aget v5, v5, v2

    const/4 v6, 0x2

    new-array v6, v6, [I

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_7

    move v8, v2

    :goto_2a
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v10, v8, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v10, :cond_58

    move-object v10, v8

    check-cast v10, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v10}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    instance-of v12, v11, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v12, :cond_58

    check-cast v11, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v11}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-static {v11}, Lcom/android/common/util/WidgetUtils;->isOplusWeatherWidget(Landroid/content/ComponentName;)Z

    move-result v11

    if-eqz v11, :cond_58

    invoke-direct {p0, p1, v10}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->needReviseWeatherWidgetColor(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)Z

    move-result v10

    if-eqz v10, :cond_58

    invoke-direct {p0, v8, v5, v6}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getViewBoundsInCanvas(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v10

    invoke-direct {p0, v8, p2, p1, v10}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->revertWidgetGroupView(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/Launcher;Landroid/graphics/Rect;)V

    :cond_58
    if-lt v9, v7, :cond_5b

    goto :goto_7

    :cond_5b
    move v8, v9

    goto :goto_2a

    :cond_5d
    return-void
.end method

.method private final dealWithCellLayout(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mIsTextCanTransferColor:Z

    const-string v4, "LauncherBitmapManager"

    if-nez v3, :cond_12

    const-string v0, "font color is not white or black, no inversion logic"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getPreviewCells(Lcom/android/launcher3/Launcher;)[Lcom/android/launcher3/CellLayout;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_19
    if-ge v7, v5, :cond_150

    aget-object v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    if-nez v8, :cond_23

    goto/16 :goto_144

    :cond_23
    invoke-direct {v0, v8, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getLocationOfCellLayoutInFirstScreen(Landroid/view/View;Lcom/android/launcher3/Launcher;)[I

    move-result-object v9

    aget v9, v9, v6

    const/4 v10, 0x2

    new-array v10, v10, [I

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v11

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v8

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-lez v12, :cond_144

    move v13, v6

    :goto_49
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    instance-of v15, v13, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v15, :cond_78

    move-object v15, v13

    check-cast v15, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v15}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v15

    instance-of v6, v15, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v6, :cond_71

    check-cast v15, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v15}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {v6}, Lcom/android/common/util/WidgetUtils;->isOplusWeatherWidget(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_71

    invoke-direct {v0, v13, v9, v10}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getViewBoundsInCanvas(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v0, v13, v2, v1, v6}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->revertWidgetGroupView(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/Launcher;Landroid/graphics/Rect;)V

    :cond_71
    move-object/from16 v16, v3

    move/from16 v17, v5

    const/4 v5, 0x0

    goto/16 :goto_139

    :cond_78
    instance-of v6, v13, Lcom/android/launcher3/BubbleTextView;

    if-eqz v6, :cond_117

    move-object v6, v13

    check-cast v6, Lcom/android/launcher3/BubbleTextView;

    invoke-direct {v0, v6, v9, v10}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getBubbleTextViewReserveRect(Lcom/android/launcher3/BubbleTextView;II)Landroid/graphics/Rect;

    move-result-object v6

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v16, v3

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v3, :cond_b5

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move/from16 v17, v5

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfoWithIcon"

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-boolean v3, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    if-eqz v3, :cond_b7

    move-object v3, v13

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    iget-object v3, v3, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const-class v5, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer;

    invoke-interface {v3, v5}, Lcom/android/launcher3/IBubbleTextViewExt;->getTitlePrefixDrawableBounds(Ljava/lang/Class;)Landroid/graphics/Rect;

    move-result-object v15

    const-string v3, "item.mOPlusBtvExtV2.getT…                        )"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b7

    :cond_b5
    move/from16 v17, v5

    :cond_b7
    :goto_b7
    iget v3, v15, Landroid/graphics/Rect;->bottom:I

    iget v5, v15, Landroid/graphics/Rect;->top:I

    if-le v3, v5, :cond_110

    move-object v3, v13

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-nez v5, :cond_cc

    const-string v0, "dealWithCellLayout.The Item.layout is null"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_cc
    check-cast v13, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, v13, v5}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getTextViewSelection(Landroid/widget/TextView;I)Landroid/graphics/Rect;

    move-result-object v13

    const-string v5, "dealWithCelllayout, firstTextPostion = "

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_f4

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher/wallpaper/WallpaperUtil;->isRTLString(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f4

    iget v3, v13, Landroid/graphics/Rect;->right:I

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0xc

    iput v3, v6, Landroid/graphics/Rect;->right:I

    goto :goto_110

    :cond_f4
    iget v3, v6, Landroid/graphics/Rect;->left:I

    iget v5, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0xc

    iput v5, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->right:I

    iget v5, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0xc

    iput v3, v6, Landroid/graphics/Rect;->right:I

    :cond_110
    :goto_110
    iget-boolean v3, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mIsTextCanTransferColor:Z

    const/4 v5, 0x0

    invoke-static {v2, v6, v5, v3}, Lcom/android/common/util/BitmapUtils;->invertBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZZ)V

    goto :goto_139

    :cond_117
    move-object/from16 v16, v3

    move/from16 v17, v5

    const/4 v5, 0x0

    instance-of v3, v13, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v3, :cond_12c

    check-cast v13, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-direct {v0, v13, v1, v9, v10}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getFolderReserveRect(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/Launcher;II)Landroid/graphics/Rect;

    move-result-object v3

    iget-boolean v6, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mIsTextCanTransferColor:Z

    invoke-static {v2, v3, v5, v6}, Lcom/android/common/util/BitmapUtils;->invertBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZZ)V

    goto :goto_139

    :cond_12c
    instance-of v3, v13, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v3, :cond_139

    invoke-direct {v0, v13, v9, v10}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getViewBoundsInCanvas(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v3

    check-cast v13, Lcom/android/launcher3/card/LauncherCardView;

    invoke-direct {v0, v13, v2, v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->revertLauncherCardView(Lcom/android/launcher3/card/LauncherCardView;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    :cond_139
    :goto_139
    if-lt v14, v12, :cond_13c

    goto :goto_149

    :cond_13c
    move v6, v5

    move v13, v14

    move-object/from16 v3, v16

    move/from16 v5, v17

    goto/16 :goto_49

    :cond_144
    :goto_144
    move-object/from16 v16, v3

    move/from16 v17, v5

    move v5, v6

    :goto_149
    move v6, v5

    move-object/from16 v3, v16

    move/from16 v5, v17

    goto/16 :goto_19

    :cond_150
    return-void
.end method

.method private final drawCellLayoutToCanvas(Lcom/android/launcher3/OplusCellLayout;Landroid/graphics/Canvas;[ILandroid/graphics/Paint;Lb3/d;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/OplusCellLayout;",
            "Landroid/graphics/Canvas;",
            "[I",
            "Landroid/graphics/Paint;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v7, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p3

    move-object v3, p0

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;-><init>(Lcom/android/launcher3/OplusCellLayout;[ILcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lb3/d;)V

    invoke-static {v7, p5}, Lq3/c1;->b(Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_15

    return-object p0

    :cond_15
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method private final drawViewToCanvas(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Paint;Lcom/android/launcher3/Launcher;Lb3/d;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/view/View;",
            "Landroid/graphics/Paint;",
            "Lcom/android/launcher3/Launcher;",
            "Lb3/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v7, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/view/View;Lcom/android/launcher3/Launcher;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lb3/d;)V

    invoke-static {v7, p5}, Lq3/c1;->b(Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getBubbleTextViewReserveRect(Lcom/android/launcher3/BubbleTextView;II)Landroid/graphics/Rect;
    .registers 10

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getViewBoundsInCanvas(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result p1

    new-instance p3, Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p2

    add-int/2addr v4, p1

    sub-int v5, v1, p2

    sub-int/2addr v5, p1

    invoke-direct {p3, v3, v4, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBubbleTextViewReserveRect, iconsize ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", pos = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", width = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , height = "

    const-string p2, " , rect = "

    invoke-static {v3, v0, p0, v1, p2}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " , realsize = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " , iconToTextPadding = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "LauncherBitmapManager"

    invoke-static {v3, p1, p0}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-object p3
.end method

.method private final getFolderReserveRect(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/Launcher;II)Landroid/graphics/Rect;
    .registers 8

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getFolderIconBounds(Landroid/graphics/Rect;)V

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, p3, p4}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getViewBoundsInCanvas(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p0

    new-instance p1, Landroid/graphics/Rect;

    iget p3, p0, Landroid/graphics/Rect;->left:I

    iget p4, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, v1

    sub-int v2, v0, v1

    invoke-direct {p1, p3, p4, p2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getFolderReserveRect iconsize = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", pos = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " width = "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", height = "

    const-string p4, ", rect = "

    invoke-static {p3, p2, p0, v0, p4}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "LauncherBitmapManager"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getImagePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2f

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "getImagePath, mkdirSuccess = "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LauncherBitmapManager"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    return-object p0
.end method

.method public static final getInstance()Lcom/android/launcher/wallpaper/LauncherBitmapManager;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->Companion:Lcom/android/launcher/wallpaper/LauncherBitmapManager$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$Companion;->getInstance()Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    move-result-object v0

    return-object v0
.end method

.method private final getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    const-string p1, "getInstance(context).model"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    return-object p0
.end method

.method private final getLocationInWindowLocal(Landroid/view/View;[ILcom/android/launcher3/Launcher;)V
    .registers 8

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    instance-of v0, p1, Lcom/android/launcher3/OplusCellLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, v2, p3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getPreviewCellLocationX(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/Launcher;)I

    move-result p3

    aput p3, p2, v1

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p3

    const/4 v2, 0x1

    if-eqz p3, :cond_39

    if-eqz v0, :cond_1f

    goto :goto_47

    :cond_1f
    instance-of p3, p1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-nez p3, :cond_47

    aget p3, p2, v1

    iget v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mPageTotalCount:I

    iget p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mTargetSinglePageWidth:I

    mul-int v3, v0, p0

    sub-int/2addr p3, v3

    if-gez p3, :cond_36

    aget p3, p2, v1

    sub-int/2addr v0, v2

    mul-int/2addr v0, p0

    sub-int/2addr p3, v0

    aput p3, p2, v1

    goto :goto_47

    :cond_36
    aput p3, p2, v1

    goto :goto_47

    :cond_39
    aget p3, p2, v1

    if-gez p3, :cond_47

    aget p3, p2, v1

    iget v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mCurrentPageIndex:I

    iget p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mTargetSinglePageWidth:I

    mul-int/2addr v0, p0

    add-int/2addr v0, p3

    aput v0, p2, v1

    :cond_47
    :goto_47
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_b1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p0, :cond_b1

    const-string p0, "getLocationInWindowLocal, x: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget p3, p2, v1

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", y: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v2

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ItemInfo: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "LauncherBitmapManager"

    invoke-static {p3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget p0, p2, v1

    if-gez p0, :cond_b1

    const-string p0, "getLocationInWindowLocal, ItemInfo: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", it\'s position maybe incorrect"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b1
    return-void
.end method

.method private final getLocationOfCellLayoutInFirstScreen(Landroid/view/View;Lcom/android/launcher3/Launcher;)[I
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    instance-of v1, p1, Lcom/android/launcher3/CellLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    instance-of v1, p1, Lcom/android/launcher3/Hotseat;

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    if-eqz v1, :cond_15

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getLocationInWindowLocal(Landroid/view/View;[ILcom/android/launcher3/Launcher;)V

    goto :goto_4c

    :cond_15
    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getLocationInWindowLocal(Landroid/view/View;[ILcom/android/launcher3/Launcher;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v1, "view.context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    if-nez p2, :cond_29

    return-object v0

    :cond_29
    invoke-direct {p0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->isAssistScreenShown(Lcom/android/launcher3/Launcher;)Z

    move-result p2

    if-eqz p2, :cond_4c

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-nez p1, :cond_45

    aget p1, v0, v2

    iget p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mScreenWidth:I

    sub-int/2addr p1, p0

    aput p1, v0, v2

    goto :goto_4c

    :cond_45
    aget p1, v0, v2

    iget p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mScreenWidth:I

    add-int/2addr p1, p0

    aput p1, v0, v2

    :cond_4c
    :goto_4c
    return-object v0
.end method

.method private final getPreviewCellLocationX(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/Launcher;)I
    .registers 5

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mScreenWidth:I

    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutWidth()I

    move-result v1

    div-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_21

    add-int/lit8 p0, p0, -0x1

    sub-int p1, p0, p1

    :cond_21
    iget-object p0, p2, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutWidth()I

    move-result v0

    iget-object p2, p2, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v0, p2

    mul-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method private final getPreviewCells(Lcom/android/launcher3/Launcher;)[Lcom/android/launcher3/CellLayout;
    .registers 10

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getPreviewPages(Lcom/android/launcher3/Launcher;)[I

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v3, v2, :cond_2c

    aget v5, p0, v3

    add-int/lit8 v6, v4, 0x1

    if-le v1, v5, :cond_28

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string/jumbo v7, "null cannot be cast to non-null type com.android.launcher3.CellLayout"

    invoke-static {v5, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/CellLayout;

    aput-object v5, v0, v4

    :cond_28
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_12

    :cond_2c
    return-object v0
.end method

.method private final getPreviewPages(Lcom/android/launcher3/Launcher;)[I
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p0, :cond_f

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_16

    goto :goto_15

    :cond_f
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    aput p1, p0, p1

    :goto_15
    return-object p0

    :array_16
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private final getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 4

    sget-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, p1, v1}, Lcom/android/common/util/BitmapUtils;->viewToBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_12

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private final getViewBoundsInCanvas(Landroid/view/View;II)Landroid/graphics/Rect;
    .registers 5

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    add-int/2addr p2, p3

    iput p2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    iput p2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method

.method private final gotoLauncherNormal(Landroid/content/Context;Lb3/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;-><init>(Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lb3/d;)V

    invoke-static {v0, p2}, Lq3/c1;->b(Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_f

    return-object p0

    :cond_f
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method private final hasPreviewCells(Lcom/android/launcher3/Launcher;)Z
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getPreviewCells(Lcom/android/launcher3/Launcher;)[Lcom/android/launcher3/CellLayout;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :cond_7
    if-ge v1, p1, :cond_11

    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    if-eqz v2, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_11
    return v0
.end method

.method private final initCommonState(Lcom/android/launcher3/Launcher;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mCurrentPageIndex:I

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mPageTotalCount:I

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mTargetSinglePageWidth:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mScreenWidth:I

    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mScreenHeight:I

    const-string p1, "initCommonState, mScreenWidth = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mScreenWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mScreenHeight = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mScreenHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mCurrentPageIndex = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mCurrentPageIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mTargetSinglePageWidth = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mTargetSinglePageWidth:I

    const-string v0, "LauncherBitmapManager"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method private final inverseLauncherBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher3/Launcher;Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/android/launcher3/Launcher;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;Lb3/d;)V

    invoke-static {v0, p3}, Lq3/c1;->b(Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_f

    return-object p0

    :cond_f
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method private final isAssistScreenShown(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    instance-of p0, p1, Lcom/android/launcher/Launcher;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    move-result p0

    :goto_c
    return p0
.end method

.method private final isForbidMakeLauncherBitmap(IILcom/android/launcher3/Launcher;II)Z
    .registers 9

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isWorkspaceScrolling： "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherBitmapManager"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v1

    if-nez v1, :cond_1f

    if-gt p1, p2, :cond_6a

    :cond_1f
    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v1

    if-nez v1, :cond_6a

    invoke-virtual {p3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v1, :cond_6a

    invoke-virtual {p3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v1, :cond_6a

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusWorkspace;->isCurrentPageVisibility()Z

    move-result v1

    if-eqz v1, :cond_6a

    :cond_45
    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-direct {p0, p3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->hasPreviewCells(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_6a

    :cond_51
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    if-eqz p0, :cond_5b

    if-ne p2, p4, :cond_6a

    if-ne p1, p5, :cond_6a

    :cond_5b
    invoke-static {p3}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p0

    if-nez p0, :cond_6a

    if-eqz v0, :cond_68

    goto :goto_6a

    :cond_68
    const/4 p0, 0x0

    goto :goto_6b

    :cond_6a
    :goto_6a
    const/4 p0, 0x1

    :goto_6b
    return p0
.end method

.method private final isImageFileExist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private final isNumeric(Ljava/lang/CharSequence;)Z
    .registers 2

    const-string p0, "-?[0-9]+(\\\\.[0-9]+)?"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private final isTextCanTransferColor(Landroid/content/Context;Landroid/widget/TextView;)Z
    .registers 15

    const-string v0, "LauncherBitmapManager"

    const/4 v1, 0x0

    if-nez p2, :cond_b

    const-string p0, "isTextCanTransferColor, textView = null."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_b
    sget-object v2, Lq3/q0;->a:Lq3/b0;

    sget-object v2, Lv3/q;->a:Lq3/r1;

    new-instance v3, Lcom/android/launcher/wallpaper/LauncherBitmapManager$isTextCanTransferColor$1;

    const/4 v4, 0x0

    invoke-direct {v3, p2, p1, v4}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$isTextCanTransferColor$1;-><init>(Landroid/widget/TextView;Landroid/content/Context;Lb3/d;)V

    invoke-static {v2, v3}, Lq3/g;->f(Lb3/f;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mBitmapWhite:Landroid/graphics/Bitmap;

    new-instance v3, Lcom/android/launcher/wallpaper/LauncherBitmapManager$isTextCanTransferColor$2;

    invoke-direct {v3, p2, p1, v4}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$isTextCanTransferColor$2;-><init>(Landroid/widget/TextView;Landroid/content/Context;Lb3/d;)V

    invoke-static {v2, v3}, Lq3/g;->f(Lb3/f;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mBitmapBlack:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mBitmapWhite:Landroid/graphics/Bitmap;

    const/16 p2, 0x64

    const/4 v2, 0x1

    if-nez p0, :cond_37

    move p0, v1

    move v5, p0

    goto/16 :goto_ac

    :cond_37
    if-nez p1, :cond_3d

    move p0, v1

    move v5, p0

    goto/16 :goto_a7

    :cond_3d
    move v3, v1

    move v4, v3

    move v5, v4

    :goto_40
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v3, v6, :cond_a2

    if-le v4, p2, :cond_49

    goto :goto_a2

    :cond_49
    move v6, v1

    :goto_4a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_9f

    invoke-virtual {p0, v3, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    if-eqz v8, :cond_9c

    if-nez v10, :cond_65

    goto :goto_9c

    :cond_65
    add-int/lit8 v4, v4, 0x1

    if-le v4, p2, :cond_6a

    goto :goto_9f

    :cond_6a
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v8

    if-nez v8, :cond_7e

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v8

    if-nez v8, :cond_7e

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    if-nez v8, :cond_7e

    move v8, v2

    goto :goto_7f

    :cond_7e
    move v8, v1

    :goto_7f
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v9

    const/16 v10, 0xff

    if-ne v9, v10, :cond_95

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v9

    if-ne v9, v10, :cond_95

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    if-ne v7, v10, :cond_95

    move v7, v2

    goto :goto_96

    :cond_95
    move v7, v1

    :goto_96
    if-nez v8, :cond_9a

    if-eqz v7, :cond_9c

    :cond_9a
    add-int/lit8 v5, v5, 0x1

    :cond_9c
    :goto_9c
    add-int/lit8 v6, v6, 0x5

    goto :goto_4a

    :cond_9f
    :goto_9f
    add-int/lit8 v3, v3, 0x5

    goto :goto_40

    :cond_a2
    :goto_a2
    sget-object p0, Ly2/p;->a:Ly2/p;

    move v11, v4

    move-object v4, p0

    move p0, v11

    :goto_a7
    if-nez v4, :cond_aa

    return v1

    :cond_aa
    sget-object v4, Ly2/p;->a:Ly2/p;

    :goto_ac
    if-nez v4, :cond_af

    return v1

    :cond_af
    const-string p1, "count = "

    if-nez p0, :cond_b7

    invoke-static {p0, p1, v0}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_b7
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_d2

    const-string v3, ", blackCount = "

    const-string v4, ", ratio = "

    invoke-static {p1, p0, v3, v5, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    mul-int/lit8 v3, v5, 0x64

    div-int/2addr v3, p0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d2
    mul-int/2addr v5, p2

    div-int/2addr v5, p0

    const/16 p0, 0x46

    if-le v5, p0, :cond_d9

    move v1, v2

    :cond_d9
    return v1
.end method

.method private final makeLauncherBitmap(Lcom/android/launcher3/Launcher;Lb3/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Lb3/d<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Lb3/d;)V

    invoke-static {v0, p2}, Lq3/c1;->b(Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final makeLauncherRootView(Lcom/android/launcher3/Launcher;Landroid/graphics/Canvas;Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Landroid/graphics/Canvas;",
            "Lb3/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Canvas;Lb3/d;)V

    invoke-static {v0, p3}, Lq3/c1;->b(Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final needReviseWeatherWidgetColor(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)Z
    .registers 11

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "launcher_text_appearance"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return v1

    :cond_12
    const-string v0, "colorStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "/"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {p1, v0, v1, v1, v2}, Lp3/k;->z(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_33

    return v1

    :cond_33
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    move v0, v1

    move v2, v0

    move v3, v2

    :goto_3a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v0, v4, :cond_7a

    move v4, v1

    :goto_41
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_77

    invoke-virtual {p0, v0, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-nez v6, :cond_54

    :cond_51
    :goto_51
    add-int/lit8 v4, v4, 0x5

    goto :goto_41

    :cond_54
    add-int/lit8 v2, v2, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v7

    if-ne v6, v7, :cond_74

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v7

    if-ne v6, v7, :cond_74

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    if-eq v6, v5, :cond_51

    :cond_74
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_77
    add-int/lit8 v0, v0, 0x5

    goto :goto_3a

    :cond_7a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v2, :cond_87

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v2

    const/16 p0, 0x46

    if-le v3, p0, :cond_87

    move v1, p2

    :cond_87
    return v1
.end method

.method private final recycleBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    if-nez p1, :cond_3

    goto :goto_6

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_6
    return-void
.end method

.method private final revertLauncherCardView(Lcom/android/launcher3/card/LauncherCardView;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .registers 13

    if-eqz p1, :cond_57

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_57

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_57

    :goto_10
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_52

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v7

    add-int/2addr v7, v6

    iget v6, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v8

    add-int/2addr v8, v6

    invoke-direct {v5, v7, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v3

    iput v0, v5, Landroid/graphics/Rect;->top:I

    const-string/jumbo v0, "revertLauncherCardView for cardName textView\'s rect: "

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "LauncherBitmapManager"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mIsTextCanTransferColor:Z

    const/4 v3, 0x1

    invoke-static {p2, v5, v3, v0}, Lcom/android/common/util/BitmapUtils;->invertBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZZ)V

    :cond_52
    if-lt v2, v1, :cond_55

    goto :goto_57

    :cond_55
    move v0, v2

    goto :goto_10

    :cond_57
    :goto_57
    return-void
.end method

.method private final revertWidgetGroupView(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/Launcher;Landroid/graphics/Rect;)V
    .registers 13

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9e

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_9e

    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_9e

    :goto_15
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1f

    goto/16 :goto_98

    :cond_1f
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_42

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->revertWidgetGroupView(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/Launcher;Landroid/graphics/Rect;)V

    goto :goto_98

    :cond_42
    instance-of v4, v0, Landroid/widget/TextView;

    const/4 v5, 0x1

    if-eqz v4, :cond_8f

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v6, v4

    iget v4, v3, Landroid/graphics/Rect;->top:I

    float-to-int v6, v6

    add-int/2addr v4, v6

    iput v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v7, "item.text"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_7d

    :cond_78
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v6

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    :goto_7d
    const-string/jumbo v0, "revertWidgetGroupView for textView\'s rect: "

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "LauncherBitmapManager"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mIsTextCanTransferColor:Z

    invoke-static {p2, v3, v5, v0}, Lcom/android/common/util/BitmapUtils;->invertBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZZ)V

    goto :goto_98

    :cond_8f
    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_98

    iget-boolean v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->mIsTextCanTransferColor:Z

    invoke-static {p2, v3, v5, v0}, Lcom/android/common/util/BitmapUtils;->invertBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZZ)V

    :cond_98
    :goto_98
    if-lt v2, v1, :cond_9b

    goto :goto_9e

    :cond_9b
    move v0, v2

    goto/16 :goto_15

    :cond_9e
    :goto_9e
    return-void
.end method

.method private final runLauncherNormal(Lcom/android/launcher3/Launcher;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Lkotlin/jvm/functions/Function0<",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Lcom/android/launcher/wallpaper/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/wallpaper/a;-><init>(Lcom/android/launcher3/Launcher;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {p1, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic runLauncherNormal$default(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    sget-object p2, Lcom/android/launcher/wallpaper/LauncherBitmapManager$runLauncherNormal$1;->INSTANCE:Lcom/android/launcher/wallpaper/LauncherBitmapManager$runLauncherNormal$1;

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->runLauncherNormal(Lcom/android/launcher3/Launcher;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final runLauncherNormal$lambda-2(Lcom/android/launcher3/Launcher;Lkotlin/jvm/functions/Function0;)V
    .registers 6

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callBack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "gotoLauncherNormal, goToState : "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherBitmapManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_57

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-eq v0, v2, :cond_57

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v0, v2, :cond_57

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    if-eq v0, v2, :cond_57

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/launcher/wallpaper/LauncherBitmapManager$runLauncherNormal$2$1;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$runLauncherNormal$2$1;-><init>(Lcom/android/launcher3/Launcher;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_5a

    :cond_57
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_5a
    return-void
.end method

.method private final saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .registers 6

    const-string/jumbo p0, "saveBitmap exception: "

    const-string v0, "LauncherBitmapManager"

    if-eqz p1, :cond_77

    if-nez p2, :cond_b

    goto/16 :goto_77

    :cond_b
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "saveBitmap, file: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "saveBitmap, delete file failed: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    const/4 v1, 0x0

    :try_start_35
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_3a} :catch_63
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_56
    .catchall {:try_start_35 .. :try_end_3a} :catchall_54

    :try_start_3a
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p2, p1, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_47

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_47} :catch_51
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_47} :catch_4e
    .catchall {:try_start_3a .. :try_end_47} :catchall_4b

    :cond_47
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_72

    :catchall_4b
    move-exception p0

    move-object v1, v2

    goto :goto_73

    :catch_4e
    move-exception p1

    move-object v1, v2

    goto :goto_57

    :catch_51
    move-exception p1

    move-object v1, v2

    goto :goto_64

    :catchall_54
    move-exception p0

    goto :goto_73

    :catch_56
    move-exception p1

    :goto_57
    :try_start_57
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    :catch_63
    move-exception p1

    :goto_64
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_57 .. :try_end_6f} :catchall_54

    :goto_6f
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_72
    return-void

    :goto_73
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :cond_77
    :goto_77
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveBitmap, bitmapFile: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", bitmap = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final buildUriByFileName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorities"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getImagePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {v0, p2, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final calculateTextViewCanTransferColor(Lcom/android/launcher3/Launcher;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/android/launcher/guide/c;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher/wallpaper/LauncherBitmapManager;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final checkLauncherStateIsNormal(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Lb3/d;)V

    sget-object p0, Lb3/h;->a:Lb3/h;

    invoke-static {p0, v0}, Lq3/g;->f(Lb3/f;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final createLauncherBitmap(Lcom/android/launcher3/Launcher;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    sget-object v2, Lq3/q0;->a:Lq3/b0;

    new-instance v4, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Lb3/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void
.end method

.method public final getTextViewSelection(Landroid/widget/TextView;I)Landroid/graphics/Rect;
    .registers 5

    const-string/jumbo p0, "tv"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    invoke-virtual {p0, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result p0

    new-instance p2, Landroid/graphics/Rect;

    float-to-int v1, v1

    float-to-int p0, p0

    invoke-direct {p2, v1, p1, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method public final isViewCanTransfer(Landroid/view/View;)Z
    .registers 16

    const-string v0, "LauncherBitmapManager"

    const/4 v1, 0x0

    if-nez p1, :cond_b

    const-string p0, "isViewCanTransfer, view = null."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_b
    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_17

    const-string p0, "isViewCanTransfer, copy, bitmap = null."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_17
    sget-object p1, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {p1}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move v5, v1

    move v6, v5

    move v7, v6

    :goto_26
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    const/16 v9, 0x64

    if-ge v5, v8, :cond_68

    if-le v6, v9, :cond_31

    goto :goto_68

    :cond_31
    move v8, v1

    :goto_32
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ge v8, v10, :cond_65

    invoke-virtual {p0, v5, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    if-nez v11, :cond_43

    goto :goto_62

    :cond_43
    add-int/lit8 v6, v6, 0x1

    if-le v6, v9, :cond_48

    goto :goto_65

    :cond_48
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    if-eqz p1, :cond_59

    const/16 v13, 0xff

    goto :goto_5a

    :cond_59
    move v13, v1

    :goto_5a
    if-ne v12, v13, :cond_62

    if-ne v11, v13, :cond_62

    if-ne v10, v13, :cond_62

    add-int/lit8 v7, v7, 0x1

    :cond_62
    :goto_62
    add-int/lit8 v8, v8, 0x5

    goto :goto_32

    :cond_65
    :goto_65
    add-int/lit8 v5, v5, 0x5

    goto :goto_26

    :cond_68
    :goto_68
    if-nez v6, :cond_82

    const-string p0, "count = "

    const-string p1, " , use total time = "

    invoke-static {p0, v6, p1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_82
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_ac

    const-string p0, "isViewCanTransfer count = "

    const-string p1, " , blackCount = "

    const-string v5, " , ratio = "

    invoke-static {p0, v6, p1, v7, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    mul-int/lit8 p1, v7, 0x64

    div-int/2addr p1, v6

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", use total time = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v3, v10

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ac
    mul-int/2addr v7, v9

    div-int/2addr v7, v6

    const/16 p0, 0x46

    if-le v7, p0, :cond_b3

    move v1, v2

    :cond_b3
    return v1
.end method

.method public final refreshLauncherBitmapForProviderCall(Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;)V
    .registers 16

    const-string v0, "LauncherBitmapManager"

    const-string/jumbo v1, "refreshLauncherBitmapForProviderCall start"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_b

    return-void

    :cond_b
    new-instance v1, Lq3/l1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lq3/l1;-><init>(Lq3/i1;)V

    sget-object v3, Lq3/q0;->a:Lq3/b0;

    invoke-static {v1, v3}, Lb3/f$a$a;->d(Lb3/f$a;Lb3/f;)Lb3/f;

    move-result-object v1

    invoke-static {v1}, Lq3/c1;->a(Lb3/f;)Lq3/f0;

    move-result-object v1

    new-instance v9, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v9}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    const/4 v10, 0x0

    new-instance v11, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;

    const/4 v12, 0x0

    const/4 v8, 0x0

    move-object v3, v11

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Ljava/util/concurrent/CompletableFuture;Lb3/d;)V

    const/4 v7, 0x3

    const/4 v5, 0x0

    move-object v3, v1

    move-object v4, v10

    move-object v6, v11

    move-object v8, v12

    invoke-static/range {v3 .. v8}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    const-wide/16 p0, 0xbb8

    :try_start_38
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Void;
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_41

    goto :goto_46

    :catchall_41
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_46
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4d

    goto :goto_57

    :cond_4d
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_80

    const-string/jumbo p1, "refreshLauncherBitmapForProviderCall error: "

    invoke-static {p0, p1, v0}, Lcom/android/common/util/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_57
    move-object p0, v1

    check-cast p0, Lv3/e;

    iget-object p0, p0, Lv3/e;->a:Lb3/f;

    sget-object p1, Lq3/i1$b;->a:Lq3/i1$b;

    invoke-interface {p0, p1}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object p0

    check-cast p0, Lq3/i1;

    if-eqz p0, :cond_70

    invoke-interface {p0, v2}, Lq3/i1;->b(Ljava/util/concurrent/CancellationException;)V

    const-string/jumbo p0, "refreshLauncherBitmapForProviderCall end"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_70
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Scope cannot be cancelled because it does not have a job: "

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_80
    throw p0
.end method
