.class public Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;
.super Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
.source ""


# static fields
.field private static final DEFAULT_WEATHER_WIDGET_TEXT_SIZE:I = -0x1

.field private static final DELETE_ICON_FRACTION_PROP:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLOAT_0DOT8:F = 0.8f

.field private static final FLOAT_0DOT9:F = 0.9f

.field private static final LANDSCAPE_SCALE_RATIO:F = 0.55f

.field private static final MULTIWINDOW_LANDSCAPE_SCALE_RATIO_SMALL_SCREEN:F = 0.55f

.field public static final MULTIWINDOW_LAND_PORT_INCREASE_RATIO_LARGE_SCREEN:F = 1.5f

.field private static final MULTIWINDOW_PORTRAIT_SCALE_RATIO_SMALL_SCREEN:F = 0.9f

.field private static final NEED_ALIGN_AS_CARD:Z = true

.field public static final ORIGINAL_WIDGET_SCALE_RATIO:F = 1.0f

.field private static final RECURSION_LEVEL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CustomLauncherAppWidgetHostView"

.field private static final WEATHER_WIDGET_SIZE_CHANGED_SCALE_RATIO:F = 0.86f


# instance fields
.field private mBrightColorForText:I

.field private mDeleteIconRect:Landroid/graphics/Rect;

.field private mForceScaleWidget:Z

.field private mHasScaledWidgetView:Z

.field private mIsFirstAddToScreen:Z

.field private mIsOplusWeatherWidget:Z

.field private mIsSearchBoxWidgetView:Z

.field private mLastPaddingRect:Landroid/graphics/Rect;

.field private mLongClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

.field private mNeedBackToggleBarLastState:Z

.field private mOriginalWeatherTextSize:F

.field private mPendingSwitchStateAnim:Z

.field private mPressDeleteIcon:Z

.field private mProviderInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

.field private mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

.field private mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

.field private final mWidgetBoundsPaddingOffset:I

.field private mWidgetCornerRadius:F

.field private final mWidgetNeedResizeOffset:I

.field private mWidgetScaleRatio:F

.field private mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$1;

    const-string v1, "deleteIconFraction"

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->DELETE_ICON_FRACTION_PROP:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsSearchBoxWidgetView:Z

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mDeleteIconRect:Landroid/graphics/Rect;

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPendingSwitchStateAnim:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mLastPaddingRect:Landroid/graphics/Rect;

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasScaledWidgetView:Z

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsOplusWeatherWidget:Z

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mOriginalWeatherTextSize:F

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mForceScaleWidget:Z

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsFirstAddToScreen:Z

    new-instance p1, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    invoke-direct {p1, v0}, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;-><init>(Z)V

    iput-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060653

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mBrightColorForText:I

    new-instance p1, Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/LongClickEffectHandler;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mLongClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070d4f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetCornerRadius:F

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetNeedResizeOffset:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07000e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetBoundsPaddingOffset:I

    new-instance p1, Lcom/android/launcher3/widget/AppWidgetTouchListener;

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p1, v0, p0}, Lcom/android/launcher3/widget/AppWidgetTouchListener;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)V

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    return-object p0
.end method

.method private adjustSpecificSceneForScaleRatio()F
    .registers 7

    iget v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const v2, 0x3f666666  # 0.9f

    if-eqz v1, :cond_2f

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-eqz v0, :cond_1f

    const v0, 0x3f2aaaab

    goto :goto_5d

    :cond_1f
    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_2d

    const v0, 0x3f0ccccd  # 0.55f

    goto :goto_5d

    :cond_2d
    move v0, v2

    goto :goto_5d

    :cond_2f
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher/UiConfig;->getCurrentLayoutSettings(Landroid/content/Context;)[I

    move-result-object v1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v3

    const v4, 0x3f4ccccd  # 0.8f

    const/4 v5, 0x5

    if-eqz v3, :cond_4b

    const/4 v2, 0x1

    aget v1, v1, v2

    if-ne v1, v5, :cond_5d

    iget p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-static {v4, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_5d

    :cond_4b
    const/4 v0, 0x0

    aget v0, v1, v0

    if-ne v0, v5, :cond_57

    iget p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-static {v4, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_5d

    :cond_57
    iget p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_5d
    :goto_5d
    return v0
.end method

.method private changePaddingIfNecessary()V
    .registers 5

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/UiConfig;->getCurrentLayoutSettings(Landroid/content/Context;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mProviderInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-nez v1, :cond_1e

    invoke-super {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v2, :cond_1e

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iput-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mProviderInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    :cond_1e
    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mProviderInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v1, :cond_31

    iget v2, v1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    const/4 v3, 0x0

    aget v3, v0, v3

    if-ne v2, v3, :cond_31

    iget v1, v1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    const/4 v2, 0x1

    aget v0, v0, v2

    if-ne v1, v0, :cond_31

    return-void

    :cond_31
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    const v2, 0x7f07001a

    if-eqz v1, :cond_78

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v0, :cond_6c

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v1

    if-ne v1, v0, :cond_60

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v1

    if-eq v1, v0, :cond_9d

    :cond_60
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    goto :goto_9d

    :cond_6c
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_9d

    :cond_78
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v1

    if-ne v1, v0, :cond_92

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v1

    if-eq v1, v0, :cond_9d

    :cond_92
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    :cond_9d
    :goto_9d
    return-void
.end method

.method private checkIfNeedForceRescale()Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsFirstAddToScreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    iput-boolean v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsFirstAddToScreen:Z

    iget-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasScaledWidgetView:Z

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mForceScaleWidget:Z

    if-nez v0, :cond_48

    iget v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_48

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v2

    if-eqz v2, :cond_2c

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragObject()Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v0

    :cond_2c
    if-eqz v0, :cond_3c

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getItemInfo()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    :cond_3c
    const-string v0, "CustomLauncherAppWidgetHostView"

    const-string v1, "checkIfNeedForceRescale, auto scaled when first add, need rescale!!!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->reInflate()V

    const/4 p0, 0x1

    return p0

    :cond_48
    return v1
.end method

.method private checkIfOplusWeatherWidgetNeedScale(Landroid/view/ViewGroup;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "CustomLauncherAppWidgetHostView"

    if-eqz p1, :cond_4c

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_17

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v2, 0x2

    if-ge p1, v2, :cond_17

    goto :goto_4c

    :cond_17
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v2, -0x1

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    goto :goto_2a

    :cond_29
    move p1, v2

    :goto_2a
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    instance-of v3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v3, :cond_37

    check-cast p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iget p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    goto :goto_38

    :cond_37
    move p0, v2

    :goto_38
    if-ge p1, p0, :cond_3f

    if-ne p1, v2, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 p0, 0x1

    return p0

    :cond_3f
    :goto_3f
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_4b

    const-string/jumbo p0, "showingSpanY more than the originalSpanY or showingSpanY is -1, no need scale. "

    invoke-static {p0, p1, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4b
    return v0

    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_57

    const-string p0, "not real weather widget remote view, no need scale."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    return v0
.end method

.method private checkIfOtherWidgetNeedScale(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Z
    .registers 7

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    sget v3, Lcom/android/common/config/ScreenInfo;->screenWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    sget v3, Lcom/android/common/config/ScreenInfo;->screenHeight:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float v3, v0, v2

    div-float v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->adjustSpecificSceneForScaleRatio()F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v3

    if-eqz v3, :cond_53

    iget p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetNeedResizeOffset:I

    int-to-float v3, p0

    add-float/2addr v2, v3

    div-float/2addr v0, v2

    int-to-float p0, p0

    add-float/2addr p1, p0

    div-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    goto :goto_55

    :cond_53
    iget p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    :goto_55
    const/high16 p1, 0x3f800000  # 1.0f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_5d

    const/4 p0, 0x1

    goto :goto_5e

    :cond_5d
    const/4 p0, 0x0

    :goto_5e
    return p0
.end method

.method private dealLayoutParams(Landroid/view/View;F)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-lez v0, :cond_17

    int-to-float v3, v0

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    iget v3, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_26

    int-to-float v2, v3

    mul-float/2addr v2, p2

    float-to-int p2, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v2, v3

    :cond_26
    if-gtz v0, :cond_2a

    if-lez v2, :cond_2d

    :cond_2a
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2d
    return-void
.end method

.method private dealPaddingAndMargin(Landroid/view/View;F)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->saveMarginData(Landroid/view/View;F)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->savePaddingData(Landroid/view/View;F)V

    return-void
.end method

.method private dealTextSizeScale(Landroid/view/View;F)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iget-boolean v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsOplusWeatherWidget:Z

    if-eqz v1, :cond_20

    iget v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mOriginalWeatherTextSize:F

    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_20

    const v1, 0x3f0ccccd  # 0.55f

    cmpl-float v1, p2, v1

    if-nez v1, :cond_20

    int-to-float v1, v0

    iput v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mOriginalWeatherTextSize:F

    :cond_20
    const/4 p0, 0x0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->isSearchBoxWidgetView()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget v0, v0, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_25

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    if-eqz v0, :cond_25

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher/SwitchStateRenderer;->drawWidgetBackground(Landroid/graphics/Canvas;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;)V

    :cond_25
    return-void
.end method

.method private drawDeleteIcon(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->isSearchBoxWidgetView()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget v0, v0, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_26

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/launcher/SwitchStateRenderer;->drawDeleteIcon(Landroid/graphics/Canvas;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;Z)V

    :cond_26
    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->lambda$onTouchEvent$0(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method private getAppWidgetFirstImageView(Landroid/view/View;)Landroid/widget/ImageView;
    .registers 6

    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_26

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1c

    invoke-direct {p0, v2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getAppWidgetFirstImageView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0

    :cond_1c
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_23

    check-cast v2, Landroid/widget/ImageView;

    return-object v2

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_26
    return-object v1
.end method

.method private getLocation(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private getWidgetRect()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private hasPaddingInChildren(ILandroid/view/ViewGroup;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_5

    return v0

    :cond_5
    if-nez p2, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x1

    add-int/2addr p1, v1

    move v2, v0

    :goto_b
    :try_start_b
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_32

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2f

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    if-nez v4, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_2e

    :cond_26
    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->hasPaddingInChildren(ILandroid/view/ViewGroup;)Z

    move-result v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2c} :catch_32

    if-eqz v3, :cond_2f

    :cond_2e
    :goto_2e
    return v1

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :catch_32
    :cond_32
    return v0
.end method

.method private isDeleteIconVisible()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

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

.method private isNeedBackToggleBarLastState()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/states/ToggleBarState;

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getToggleBarManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private isTouchInDeleteIconRect(Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_15
    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->isDeleteIconVisible()Z

    move-result v0

    if-nez v0, :cond_23

    const-string p0, "CustomLauncherAppWidgetHostView"

    const-string p1, "delete icon not visible"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_23
    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mDeleteIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    iget-object v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget-object v3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mDeleteIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/launcher/SwitchStateRenderer;->getWidgetDeleteIconRect(Landroid/view/View;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;Landroid/graphics/Rect;)V

    :cond_3a
    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mDeleteIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_4e

    const/4 p0, 0x1

    return p0

    :cond_4e
    return v1
.end method

.method private synthetic lambda$onTouchEvent$0(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_1c

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->showAreaWidgetDeleteConfirmPanel(Lcom/android/launcher/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {p1, p0}, Lcom/android/statistics/LauncherStatistics;->statsRemoveBrowserWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    :cond_1c
    return-void
.end method

.method private rescaleOtherWidgetWhenOverlapping(Landroid/view/ViewGroup;Z)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getItemInfo()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasScaledWidgetView:Z

    if-eqz v3, :cond_7a

    if-eqz v0, :cond_7a

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7a

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v0, v4, :cond_7a

    instance-of v0, v2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7a

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7a

    invoke-direct {p0, v2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getAppWidgetFirstImageView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    if-le v3, v6, :cond_7a

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lez v3, :cond_7a

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "rescaleOtherWidgetWhenOverlapping, image bottom: "

    aput-object v6, v3, v1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, " title top: "

    aput-object v1, v3, v5

    const/4 v1, 0x3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x4

    const-string v1, ", mWidgetScaleRatio: "

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const v1, 0x3f666666  # 0.9f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v0

    const-string v0, "CustomLauncherAppWidgetHostView"

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->dealLayoutParams(Landroid/view/View;F)V

    if-nez p2, :cond_7a

    invoke-direct {p0, p1, v4}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->rescaleOtherWidgetWhenOverlapping(Landroid/view/ViewGroup;Z)V

    :cond_7a
    return-void
.end method

.method private resetChildViewSize(Landroid/view/View;ZF)V
    .registers 7

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    return-void

    :cond_5
    check-cast p1, Landroid/view/ViewGroup;

    instance-of v0, p1, Landroid/widget/AdapterView;

    if-nez v0, :cond_4c

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_4c

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_14

    goto :goto_4c

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_43

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->resetChildViewSize(Landroid/view/View;ZF)V

    goto :goto_40

    :cond_28
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_36

    invoke-direct {p0, v1, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->dealTextSizeScale(Landroid/view/View;F)V

    invoke-direct {p0, v1, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->dealLayoutParams(Landroid/view/View;F)V

    invoke-direct {p0, v1, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->dealPaddingAndMargin(Landroid/view/View;F)V

    goto :goto_40

    :cond_36
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_40

    invoke-direct {p0, v1, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->dealLayoutParams(Landroid/view/View;F)V

    invoke-direct {p0, v1, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->dealPaddingAndMargin(Landroid/view/View;F)V

    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_43
    if-eqz p2, :cond_4b

    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->dealLayoutParams(Landroid/view/View;F)V

    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->dealPaddingAndMargin(Landroid/view/View;F)V

    :cond_4b
    return-void

    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_59

    const-string p0, "CustomLauncherAppWidgetHostView"

    const-string p1, " resetChildViewSize : it can scroll."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    return-void
.end method

.method private saveMarginData(Landroid/view/View;F)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Landroid/view/ViewGroup;

    if-nez p0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_31

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int p2, v4

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_31
    return-void
.end method

.method private savePaddingData(Landroid/view/View;F)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int p2, v2

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private scaleAppWidgetSize(Landroid/view/ViewGroup;Z)Z
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasScaledWidgetView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mForceScaleWidget:Z

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "CustomLauncherAppWidgetHostView"

    if-eqz v0, :cond_67

    iget v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1b

    goto :goto_67

    :cond_1b
    invoke-super {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_49

    const-string v0, "scaleAppWidgetSize widget="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mWidgetScaleRatio="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", needDealWithPadding="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    const/4 v0, 0x1

    if-eqz p2, :cond_5d

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1, p2, v1, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->resetChildViewSize(Landroid/view/View;ZF)V

    goto :goto_62

    :cond_5d
    iget p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    invoke-direct {p0, p1, v1, p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->resetChildViewSize(Landroid/view/View;ZF)V

    :goto_62
    iput-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mHasScaledWidgetView:Z

    iput-boolean v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mForceScaleWidget:Z

    return v0

    :cond_67
    :goto_67
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_72

    const-string p0, "scaleAppWidgetSize failed, no child or no need scale!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    return v1
.end method

.method private scaleFirstChildIfNeeded()V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getWidgetRect()V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7b

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7b

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    if-gt v1, v2, :cond_32

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_61

    :cond_32
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p0, v2

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_7b

    :cond_61
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-gt v1, p0, :cond_7b

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result p0

    cmpg-float p0, p0, v3

    if-gez p0, :cond_7b

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method private scaleOplusWeatherWidgetSizeIfNeeded(Landroid/view/ViewGroup;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->checkIfOplusWeatherWidgetNeedScale(Landroid/view/ViewGroup;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mForceScaleWidget:Z

    const v0, 0x3f5c28f6  # 0.86f

    iput v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetScaleRatio:F

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->scaleAppWidgetSize(Landroid/view/ViewGroup;Z)Z

    return-void
.end method

.method private scaleOtherWidgetSizeIfNeeded(Landroid/view/ViewGroup;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->checkIfOtherWidgetNeedScale(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    :cond_7
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->scaleAppWidgetSize(Landroid/view/ViewGroup;Z)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->rescaleOtherWidgetWhenOverlapping(Landroid/view/ViewGroup;Z)V

    :cond_11
    return-void
.end method


# virtual methods
.method public addDeleteBgIndicatorView()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_d
    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    if-nez v1, :cond_1a

    new-instance v1, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    :cond_1a
    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getLocation(Landroid/graphics/Rect;)V

    new-instance v3, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-virtual {v0}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v5

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :cond_61
    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    const/4 v0, 0x1

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {v3, v2, v2, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->startBackgroundAnim(ZLandroid/graphics/Rect;)V

    return-void
.end method

.method public applySwitchState(ZIZ)V
    .registers 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPendingSwitchStateAnim:Z

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    iget-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    :cond_1e
    iget-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iput v3, p1, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    return-void

    :cond_26
    if-eqz p1, :cond_2a

    const/high16 v3, 0x3f800000  # 1.0f

    :cond_2a
    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_41

    iget-object v4, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v4, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_41
    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget v4, v1, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_4d

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    return-void

    :cond_4d
    if-eqz p3, :cond_7e

    sget-object p3, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->DELETE_ICON_FRACTION_PROP:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    aput v3, v2, v0

    invoke-static {p0, p3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {p3, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {p3, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_85

    if-eqz p1, :cond_85

    iput-boolean v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPendingSwitchStateAnim:Z

    goto :goto_85

    :cond_7e
    iput-object v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    iput v3, v1, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    :cond_85
    :goto_85
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getItemInfo()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_2a

    invoke-virtual {p0, v4}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/high16 v5, 0x3f800000  # 1.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2a

    move v2, v4

    :cond_2a
    if-eqz v0, :cond_30

    iget v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    if-gtz v0, :cond_32

    :cond_30
    if-eqz v1, :cond_56

    :cond_32
    if-eqz v2, :cond_56

    iget v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetCornerRadius:F

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetCornerRadius:F

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetCornerRadius:F

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_56
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->drawDeleteIcon(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mLongClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/LongClickEffectHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getCustomWidgetPadding()Landroid/graphics/Rect;
    .registers 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public isSearchBoxWidgetView()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsSearchBoxWidgetView:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onAttachedToWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "CustomLauncherAppWidgetHostView"

    const/4 v2, 0x1

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_2e

    :cond_1e
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->setTouchCompleteListener(Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;)V

    goto :goto_72

    :cond_2e
    :goto_2e
    const-string v0, "onInterceptTouchEvent in toggle bar state,return true"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->isNeedBackToggleBarLastState()Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string p0, "onInterceptTouchEvent need back togglebar last state return true"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3f
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->isTouchInDeleteIconRect(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_46

    return v2

    :cond_46
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->setTouchCompleteListener(Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v2

    :cond_5b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_72

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {v0, v3}, Lcom/android/statistics/LauncherStatistics;->statsOpenWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    :cond_72
    :goto_72
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result p1

    if-nez p1, :cond_97

    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {p1, v0, v3}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isInterceptItemClickFromHighTempreatureProtection(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_96

    goto :goto_97

    :cond_96
    const/4 v2, 0x0

    :cond_97
    :goto_97
    if-eqz v2, :cond_af

    const-string p1, "onInterceptTouchEvent,return true,hasPerformedLongPress:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_af
    return v2
.end method

.method public onLayout(ZIIII)V
    .registers 8

    const-string v0, "CustomLauncherAppWidgetHostView"

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget-object p1, p1, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->widgetBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result p3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result p4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    sub-int/2addr p3, p4

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget-object p1, p1, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->widgetBoundsWithoutPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result p5

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p5, v1

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    iget-object p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget-object p3, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mDeleteIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/launcher/SwitchStateRenderer;->getWidgetDeleteIconRect(Landroid/view/View;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;Landroid/graphics/Rect;)V

    :try_start_53
    invoke-super {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    instance-of p2, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz p2, :cond_ca

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {p2}, Lcom/android/common/util/WidgetUtils;->isOplusWeatherWidget(Landroid/content/ComponentName;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsOplusWeatherWidget:Z

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {p2}, Lcom/android/common/util/WidgetUtils;->isOplusSelfWidget(Landroid/content/ComponentName;)Z

    move-result p2

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-static {p3}, Lcom/android/common/util/WidgetUtils;->isOPMarketWidget(Landroid/content/ComponentName;)Z

    move-result p3

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p4

    if-eqz p4, :cond_ad

    sget-object p4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p4}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p4

    if-eqz p4, :cond_ca

    iget-object p4, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast p4, Lcom/android/launcher/Launcher;

    invoke-virtual {p4}, Lcom/android/launcher/Launcher;->isVisible()Z

    move-result p4

    if-nez p4, :cond_95

    const-string p1, "scaleWidgetSize failed, current launcher isInVisible!"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_95
    iget-boolean p4, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsOplusWeatherWidget:Z

    if-eqz p4, :cond_9d

    invoke-direct {p0, p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->scaleOplusWeatherWidgetSizeIfNeeded(Landroid/view/ViewGroup;)V

    goto :goto_ca

    :cond_9d
    if-nez p2, :cond_ca

    if-eqz p3, :cond_a9

    iget-object p2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_ca

    :cond_a9
    invoke-direct {p0, p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->scaleOtherWidgetSizeIfNeeded(Landroid/view/ViewGroup;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    goto :goto_ca

    :cond_ad
    iget-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsOplusWeatherWidget:Z

    if-eqz p1, :cond_ca

    invoke-direct {p0, p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->scaleOplusWeatherWidgetSizeIfNeeded(Landroid/view/ViewGroup;)V
    :try_end_b4
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_b4} :catch_b5

    goto :goto_ca

    :catch_b5
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " scaleWidgetSize, e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ca
    :goto_ca
    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->scaleFirstChildIfNeeded()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    const/4 p0, 0x1

    return p0
.end method

.method public onMeasure(II)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_e

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    if-nez v0, :cond_24

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    return-void

    :cond_24
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getItemInfo()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v1

    if-nez v1, :cond_2e

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    return-void

    :cond_2e
    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3f

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v5, v3, :cond_3f

    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    return-void

    :cond_3f
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v5

    if-eq v2, v5, :cond_fd

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v2, v3, :cond_4b

    goto/16 :goto_fd

    :cond_4b
    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    invoke-interface {p0, v2, v0, p1, v5}, Lcom/android/launcher3/card/IAreaWidget;->calculatePaddingRect(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mLastPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_70

    sget-object v2, Lcom/android/launcher3/widget/WidgetFilter;->Companion:Lcom/android/launcher3/widget/WidgetFilter$Companion;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/WidgetFilter$Companion;->getAlignWhiteList()Ljava/util/List;

    move-result-object v2

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    goto :goto_71

    :cond_70
    move v3, v4

    :goto_71
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getChildCount()I

    move-result v0

    const-string v2, "CustomLauncherAppWidgetHostView"

    if-lez v0, :cond_b3

    invoke-direct {p0, v4, p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->hasPaddingInChildren(ILandroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_aa

    const-string v0, "has Padding In Children."

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_8c

    const-string v0, "onMeasure: needAlignForWhiteList"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    :cond_8c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v5, 0x0

    invoke-static {v3, v5, v0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v3, Landroid/graphics/Rect;->right:I

    goto :goto_b3

    :cond_aa
    if-eqz v3, :cond_b3

    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    return-void

    :cond_b3
    :goto_b3
    const-string v0, "onMeasure providerName = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BOTTOM.WIDGET - "

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_dd

    iget-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsSearchBoxWidgetView:Z

    if-eqz v0, :cond_dd

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    iget-object v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->isBottomSearchWidget(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    goto :goto_ea

    :cond_dd
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mWidgetCornerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    :goto_ea
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    iget-object v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    iget-object v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mDeleteIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher/SwitchStateRenderer;->getCardDeleteIconRect(Landroid/view/View;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;Landroid/graphics/Rect;)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    return-void

    :cond_fd
    :goto_fd
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_58

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1d

    const/4 v3, 0x3

    if-eq v0, v3, :cond_13

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_64

    :cond_13
    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    iput-boolean v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mNeedBackToggleBarLastState:Z

    iput-boolean v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPressDeleteIcon:Z

    goto :goto_64

    :cond_1d
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPressDeleteIcon:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    return v2

    :cond_30
    new-instance v0, Lcom/android/launcher3/dragndrop/m;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/dragndrop/m;-><init>(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    :cond_38
    iget-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mNeedBackToggleBarLastState:Z

    if-eqz p1, :cond_4e

    const-string p1, "CustomLauncherAppWidgetHostView"

    const-string v0, "onTouchEvent to back togglebar last state"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    :cond_4e
    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    iput-boolean v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mNeedBackToggleBarLastState:Z

    iput-boolean v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPressDeleteIcon:Z

    goto :goto_64

    :cond_58
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->isTouchInDeleteIconRect(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPressDeleteIcon:Z

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->isNeedBackToggleBarLastState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mNeedBackToggleBarLastState:Z

    :goto_64
    return v1
.end method

.method public reInflate()V
    .registers 4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->bindAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public removeDeleteBgIndicatorView()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    if-eqz v0, :cond_19

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mRemoveBgIndicatorView:Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->startBackgroundAnim(ZLandroid/graphics/Rect;)V

    :cond_19
    return-void
.end method

.method public setAnimatedVisible()V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mPendingSwitchStateAnim:Z

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_16
    sget-object v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->DELETE_ICON_FRACTION_PROP:Landroid/util/FloatProperty;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_36

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mWidgetSwitchStateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_36
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public setIsFirstAddToScreen(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsFirstAddToScreen:Z

    return-void
.end method

.method public setIsSearchBoxWidgetView(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->mIsSearchBoxWidgetView:Z

    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_2c

    const-string/jumbo p1, "updateAppWidget,widgetId:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",widgetInfo:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CustomLauncherAppWidgetHostView"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->checkIfNeedForceRescale()Z

    move-result p1

    if-eqz p1, :cond_39

    return-void

    :cond_39
    invoke-direct {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->changePaddingIfNecessary()V

    :cond_3c
    return-void
.end method
