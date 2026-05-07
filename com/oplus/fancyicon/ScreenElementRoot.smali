.class public abstract Lcom/oplus/fancyicon/ScreenElementRoot;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALPHA_BASE:I = 0xff

.field public static final DEFAULT_ICON_SIZE_DP:I = 0x32

.field public static final MAX_ICON_SIZE_DP:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ScreenElementRoot"

.field private static sEngineContext:Landroid/content/Context;


# instance fields
.field private mCacheDirectory:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mController:Lcom/oplus/fancyicon/BaseRendererController;

.field private mCurrentTickTime:J

.field private mDrawableScale:F

.field public mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

.field private mExternalCommandManager:Lcom/oplus/fancyicon/command/ExternalCommandManager;

.field private mFactory:Lcom/oplus/fancyicon/elements/ScreenElementFactory;

.field private mFramerateManager:Lcom/oplus/fancyicon/FramerateManager;

.field private mHandler:Landroid/os/Handler;

.field private mHour12:Ljava/lang/Double;

.field private mMinute:Ljava/lang/Double;

.field private mName:Ljava/lang/String;

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mNeedDisallowInterceptTouchEventVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mOtherTimeTickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/elements/ITicker;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageParser:Lcom/oplus/fancyicon/util/PackageParser;

.field private mRenderThreadStoped:Z

.field private mRendering:Z

.field private mResourceManager:Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

.field private mRootAlpha:I

.field private mRootColorFilter:Landroid/graphics/ColorFilter;

.field private mRootDisplay:Lcom/oplus/fancyicon/RootDisplay;

.field private mTouchBeginTime:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mTouchBeginX:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mTouchBeginY:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mTouchX:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mTouchY:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field public mVariableBinderManager:Lcom/oplus/fancyicon/data/binder/VariableBinderManager;

.field public mVariableUpdaterManager:Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;

.field private mVariables:Lcom/oplus/fancyicon/data/Variables;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/fancyicon/content/res/ResourceLoader;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mOtherTimeTickers:Ljava/util/ArrayList;

    const/16 v0, 0xff

    iput v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootAlpha:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootColorFilter:Landroid/graphics/ColorFilter;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mDrawableScale:F

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mCacheDirectory:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->init(Landroid/content/Context;Lcom/oplus/fancyicon/content/res/ResourceLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mOtherTimeTickers:Ljava/util/ArrayList;

    const/16 v0, 0xff

    iput v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootAlpha:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootColorFilter:Landroid/graphics/ColorFilter;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mDrawableScale:F

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mCacheDirectory:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->createResourceLoader(Ljava/lang/String;)Lcom/oplus/fancyicon/content/res/ResourceLoader;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->init(Landroid/content/Context;Lcom/oplus/fancyicon/content/res/ResourceLoader;)V

    return-void
.end method

.method private init(Landroid/content/Context;Lcom/oplus/fancyicon/content/res/ResourceLoader;)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->setCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    iput-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariables:Lcom/oplus/fancyicon/data/Variables;

    if-nez v0, :cond_10

    new-instance v0, Lcom/oplus/fancyicon/data/Variables;

    invoke-direct {v0}, Lcom/oplus/fancyicon/data/Variables;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariables:Lcom/oplus/fancyicon/data/Variables;

    :cond_10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->setLocal(Ljava/util/Locale;)Lcom/oplus/fancyicon/content/res/ResourceLoader;

    new-instance p1, Lcom/oplus/fancyicon/content/res/loader/LifecycleResourceManager;

    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x36ee80

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/fancyicon/content/res/loader/LifecycleResourceManager;-><init>(Lcom/oplus/fancyicon/content/res/ResourceLoader;JJ)V

    iput-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mResourceManager:Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->createScreenElementFactory()Lcom/oplus/fancyicon/elements/ScreenElementFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mFactory:Lcom/oplus/fancyicon/elements/ScreenElementFactory;

    new-instance p1, Lcom/oplus/fancyicon/FramerateManager;

    invoke-direct {p1}, Lcom/oplus/fancyicon/FramerateManager;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mFramerateManager:Lcom/oplus/fancyicon/FramerateManager;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->initRendererController()V

    new-instance p1, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;

    invoke-direct {p1, p0}, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariableUpdaterManager:Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object p2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariables:Lcom/oplus/fancyicon/data/Variables;

    const-string v0, "touch_x"

    invoke-direct {p1, v0, p2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mTouchX:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object p2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariables:Lcom/oplus/fancyicon/data/Variables;

    const-string v0, "touch_y"

    invoke-direct {p1, v0, p2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mTouchY:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object p2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariables:Lcom/oplus/fancyicon/data/Variables;

    const-string v0, "touch_begin_x"

    invoke-direct {p1, v0, p2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mTouchBeginX:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object p2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariables:Lcom/oplus/fancyicon/data/Variables;

    const-string v0, "touch_begin_y"

    invoke-direct {p1, v0, p2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mTouchBeginY:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object p2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariables:Lcom/oplus/fancyicon/data/Variables;

    const-string v0, "touch_begin_time"

    invoke-direct {p1, v0, p2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mTouchBeginTime:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object p2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariables:Lcom/oplus/fancyicon/data/Variables;

    const-string v0, "intercept_sys_touch"

    invoke-direct {p1, v0, p2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    return-void
.end method

.method private loadUserDefineVariableUpdater(Lorg/w3c/dom/Element;)V
    .registers 3

    const-string v0, "useVariableUpdater"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->addDefaultVariableUpdater()V

    goto :goto_15

    :cond_10
    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariableUpdaterManager:Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->addFromTag(Ljava/lang/String;)V

    :goto_15
    return-void
.end method


# virtual methods
.method public addDefaultVariableUpdater()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariableUpdaterManager:Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;

    new-instance v1, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;

    invoke-direct {v1, p0}, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->add(Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariableUpdaterManager:Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;

    new-instance v1, Lcom/oplus/fancyicon/data/updater/BatteryVariableUpdater;

    invoke-direct {v1, p0}, Lcom/oplus/fancyicon/data/updater/BatteryVariableUpdater;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->add(Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;)V

    return-void
.end method

.method public addFramerateController(Lcom/oplus/fancyicon/elements/FramerateController;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mFramerateManager:Lcom/oplus/fancyicon/FramerateManager;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/FramerateManager;->addFramerateController(Lcom/oplus/fancyicon/elements/FramerateController;)V

    return-void
.end method

.method public addIntentCommand(Lcom/oplus/fancyicon/command/IntentCommand;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mPackageParser:Lcom/oplus/fancyicon/util/PackageParser;

    if-nez v0, :cond_b

    new-instance v0, Lcom/oplus/fancyicon/util/PackageParser;

    invoke-direct {v0}, Lcom/oplus/fancyicon/util/PackageParser;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mPackageParser:Lcom/oplus/fancyicon/util/PackageParser;

    :cond_b
    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mPackageParser:Lcom/oplus/fancyicon/util/PackageParser;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/util/PackageParser;->addIntentCommand(Lcom/oplus/fancyicon/command/IntentCommand;)V

    return-void
.end method

.method public addOtherTimeTicker(Lcom/oplus/fancyicon/elements/ITicker;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mOtherTimeTickers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRenderable(Lcom/oplus/fancyicon/IRenderable;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/BaseRendererController;->addRenderable(Lcom/oplus/fancyicon/IRenderable;)V

    :cond_7
    return-void
.end method

.method public command(Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mExternalCommandManager:Lcom/oplus/fancyicon/command/ExternalCommandManager;

    if-eqz p0, :cond_14

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/command/ExternalCommandManager;->command(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_14

    :catch_8
    move-exception p0

    const-string p1, "command error : "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "ScreenElementRoot"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public createFramerateToken(Ljava/lang/String;)Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mFramerateManager:Lcom/oplus/fancyicon/FramerateManager;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/FramerateManager;->createFramerateToken(Ljava/lang/String;)Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;

    move-result-object p0

    return-object p0
.end method

.method public abstract createResourceLoader(Ljava/lang/String;)Lcom/oplus/fancyicon/content/res/ResourceLoader;
.end method

.method public abstract createScreenElementFactory()Lcom/oplus/fancyicon/elements/ScreenElementFactory;
.end method

.method public abstract createView()Lcom/oplus/fancyicon/UIEngineView;
.end method

.method public descale(F)F
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getScale()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public doRender(Landroid/graphics/Canvas;)V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRenderThreadStoped:Z

    const-string v1, " name = "

    const-string v2, "ScreenElementRoot"

    if-eqz v0, :cond_23

    const-string p1, "doRender mRenderThreadStoped "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRenderThreadStoped:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRendering:Z

    :try_start_26
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootDisplay:Lcom/oplus/fancyicon/RootDisplay;

    iget v0, v0, Lcom/oplus/fancyicon/RootDisplay;->mMatrixScale:F

    const/high16 v3, -0x40800000  # -1.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_33

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_33
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_3b

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    goto :goto_6b

    :cond_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doRender mElementGroup "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_59} :catch_63
    .catch Ljava/lang/OutOfMemoryError; {:try_start_26 .. :try_end_59} :catch_5a

    goto :goto_6b

    :catch_5a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6b

    :catch_63
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6b
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRendering:Z

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->renderDone()V

    return-void
.end method

.method public endOther()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ElementGroup;->end()V

    :cond_7
    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mExternalCommandManager:Lcom/oplus/fancyicon/command/ExternalCommandManager;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/oplus/fancyicon/command/ExternalCommandManager;->end()V

    :cond_e
    return-void
.end method

.method public findBinder(Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/VariableBinder;
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariableBinderManager:Lcom/oplus/fancyicon/data/binder/VariableBinderManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->findBinder(Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/VariableBinder;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public findElement(Ljava/lang/String;)Lcom/oplus/fancyicon/elements/ScreenElement;
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/oplus/fancyicon/elements/ScreenElement;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public getCacheDirectory()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mCacheDirectory:Ljava/lang/String;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentTickTime()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mCurrentTickTime:J

    return-wide v0
.end method

.method public getElements()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getHour12()Ljava/lang/Double;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mHour12:Ljava/lang/Double;

    return-object p0
.end method

.method public getMatrixScale()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootDisplay:Lcom/oplus/fancyicon/RootDisplay;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RootDisplay;->getMatrixScale()F

    move-result p0

    return p0
.end method

.method public getMinute()Ljava/lang/Double;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mMinute:Ljava/lang/Double;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getResourceManager()Lcom/oplus/fancyicon/content/res/loader/ResourceManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mResourceManager:Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    return-object p0
.end method

.method public getRootAlpha()I
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootAlpha:I

    return p0
.end method

.method public getRootColorFilter()Landroid/graphics/ColorFilter;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootColorFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public getScale()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootDisplay:Lcom/oplus/fancyicon/RootDisplay;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RootDisplay;->getScale()F

    move-result p0

    return p0
.end method

.method public getScreenElementFactory()Lcom/oplus/fancyicon/elements/ScreenElementFactory;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mFactory:Lcom/oplus/fancyicon/elements/ScreenElementFactory;

    return-object p0
.end method

.method public getScreenHeight()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootDisplay:Lcom/oplus/fancyicon/RootDisplay;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RootDisplay;->getScreenHeight()I

    move-result p0

    return p0
.end method

.method public getScreenWidth()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootDisplay:Lcom/oplus/fancyicon/RootDisplay;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RootDisplay;->getScreenWidth()I

    move-result p0

    return p0
.end method

.method public getSuggestedMinimumHeight()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootDisplay:Lcom/oplus/fancyicon/RootDisplay;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RootDisplay;->getHeight()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getSuggestedMinimumWidth()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootDisplay:Lcom/oplus/fancyicon/RootDisplay;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RootDisplay;->getWidth()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getTargetDensity()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootDisplay:Lcom/oplus/fancyicon/RootDisplay;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RootDisplay;->getTargetDensity()I

    move-result p0

    return p0
.end method

.method public getVariables()Lcom/oplus/fancyicon/data/Variables;
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariables:Lcom/oplus/fancyicon/data/Variables;

    if-nez v0, :cond_b

    new-instance v0, Lcom/oplus/fancyicon/data/Variables;

    invoke-direct {v0}, Lcom/oplus/fancyicon/data/Variables;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariables:Lcom/oplus/fancyicon/data/Variables;

    :cond_b
    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariables:Lcom/oplus/fancyicon/data/Variables;

    return-object p0
.end method

.method public hasAnimationRunning()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mOtherTimeTickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/fancyicon/elements/ITicker;

    invoke-interface {v1}, Lcom/oplus/fancyicon/elements/ITicker;->hasAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_20
    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ElementGroup;->hasAnimationRunning()Z

    move-result p0

    return p0
.end method

.method public initRendererController()V
    .registers 3

    new-instance v0, Lcom/oplus/fancyicon/RendererController;

    iget-object v1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mFramerateManager:Lcom/oplus/fancyicon/FramerateManager;

    invoke-direct {v0, v1, p0}, Lcom/oplus/fancyicon/RendererController;-><init>(Lcom/oplus/fancyicon/FramerateManager;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    return-void
.end method

.method public initRoot()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRenderThreadStoped:Z

    iget-object v1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mFramerateManager:Lcom/oplus/fancyicon/FramerateManager;

    iget-object v2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v1, v2}, Lcom/oplus/fancyicon/FramerateManager;->setFramerateChangeListener(Lcom/oplus/fancyicon/FramerateTokenList$FramerateChangeListener;)V

    const-string v1, "Normal"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->onRefreshBatteryInfo(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariableUpdaterManager:Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->init()V

    :cond_16
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariableBinderManager:Lcom/oplus/fancyicon/data/binder/VariableBinderManager;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->init()V

    :cond_1d
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mExternalCommandManager:Lcom/oplus/fancyicon/command/ExternalCommandManager;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/ExternalCommandManager;->init()V

    :cond_24
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ElementGroup;->init()V

    :cond_2b
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/BaseRendererController;->addSelfToThread()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->tick(J)V

    return-void
.end method

.method public isAllRenderablePaused()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->isAllRenderablePaused()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public isRendering()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRendering:Z

    return p0
.end method

.method public isThreadPaused()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->isPaused()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public isThreadStoped()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRenderThreadStoped:Z

    return p0
.end method

.method public issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/fancyicon/ScreenElementRoot;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    return-void
.end method

.method public loadElements(Lorg/w3c/dom/Element;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mFramerateManager:Lcom/oplus/fancyicon/FramerateManager;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/FramerateManager;->loadBatteryFrameRate(Lorg/w3c/dom/Element;)V

    new-instance v0, Lcom/oplus/fancyicon/RootDisplay;

    invoke-direct {v0, p1, p0}, Lcom/oplus/fancyicon/RootDisplay;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootDisplay:Lcom/oplus/fancyicon/RootDisplay;

    :try_start_c
    new-instance v0, Lcom/oplus/fancyicon/elements/ElementGroup;

    invoke-direct {v0, p1, p0}, Lcom/oplus/fancyicon/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    const-string v0, "VariableBinders"

    invoke-static {p1, v0}, Lcom/oplus/fancyicon/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    new-instance v1, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;

    invoke-direct {v1, v0, p0}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object v1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariableBinderManager:Lcom/oplus/fancyicon/data/binder/VariableBinderManager;

    const-string v0, "ExternalCommands"

    invoke-static {p1, v0}, Lcom/oplus/fancyicon/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_3a

    new-instance v1, Lcom/oplus/fancyicon/command/ExternalCommandManager;

    invoke-direct {v1, v0, p0}, Lcom/oplus/fancyicon/command/ExternalCommandManager;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object v1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mExternalCommandManager:Lcom/oplus/fancyicon/command/ExternalCommandManager;
    :try_end_2f
    .catch Lcom/oplus/fancyicon/ScreenElementLoadException; {:try_start_c .. :try_end_2f} :catch_30

    goto :goto_3a

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenElementRoot"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    :goto_3a
    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->loadUserDefineVariableUpdater(Lorg/w3c/dom/Element;)V

    iget-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mResourceManager:Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariables:Lcom/oplus/fancyicon/data/Variables;

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->loadLanguage(Lcom/oplus/fancyicon/data/Variables;)Z

    return-void
.end method

.method public loadElements()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mResourceManager:Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->getManifestRoot(Landroid/content/Context;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_15

    const-string p0, "ScreenElementRoot"

    const-string v0, "rootElement is null error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_15
    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->loadElements(Lorg/w3c/dom/Element;)V

    const/4 p0, 0x1

    return p0
.end method

.method public needDisallowInterceptTouchEvent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    return p0
.end method

.method public abstract onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
.end method

.method public onPause()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->pauseOther()V

    return-void
.end method

.method public onRefreshBatteryInfo(Ljava/lang/String;Z)V
    .registers 5

    iget-object p2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz p2, :cond_32

    iget-object p2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mFramerateManager:Lcom/oplus/fancyicon/FramerateManager;

    invoke-virtual {p2, p1}, Lcom/oplus/fancyicon/FramerateManager;->needChangeBatteryCategory(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    iget-object p2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    const-string v0, "BatteryFull"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/oplus/fancyicon/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    const-string v0, "Charging"

    invoke-virtual {p2, v0, v1}, Lcom/oplus/fancyicon/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    const-string v0, "BatteryLow"

    invoke-virtual {p2, v0, v1}, Lcom/oplus/fancyicon/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    const-string v0, "Normal"

    invoke-virtual {p2, v0, v1}, Lcom/oplus/fancyicon/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    :cond_32
    return-void
.end method

.method public declared-synchronized onRenderThreadStoped()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRenderThreadStoped:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_51

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    iget-object v1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/oplus/fancyicon/elements/ElementGroup;->onRenderThreadStoped()V

    :cond_11
    iget-object v1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariableBinderManager:Lcom/oplus/fancyicon/data/binder/VariableBinderManager;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->onRenderThreadStoped()V

    :cond_18
    iget-object v1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mExternalCommandManager:Lcom/oplus/fancyicon/command/ExternalCommandManager;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/oplus/fancyicon/command/ExternalCommandManager;->onRenderThreadStoped()V

    :cond_1f
    iget-object v1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariableUpdaterManager:Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->onRenderThreadStoped()V

    :cond_26
    iget-object v1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mResourceManager:Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    if-eqz v1, :cond_30

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->onRenderThreadStoped(Z)V

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mResourceManager:Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    :cond_30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRenderThreadStoped:Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_33} :catch_34
    .catchall {:try_start_8 .. :try_end_33} :catchall_51

    goto :goto_4f

    :catch_34
    move-exception v0

    :try_start_35
    const-string v1, "ScreenElementRoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRenderThreadStoped error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_35 .. :try_end_4f} :catchall_51

    :goto_4f
    monitor-exit p0

    return-void

    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onResume()V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->resumeOther()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->tick(J)V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-boolean v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRenderThreadStoped:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootDisplay:Lcom/oplus/fancyicon/RootDisplay;

    iget v3, v3, Lcom/oplus/fancyicon/RootDisplay;->mMatrixScale:F

    div-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->descale(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootDisplay:Lcom/oplus/fancyicon/RootDisplay;

    iget v4, v4, Lcom/oplus/fancyicon/RootDisplay;->mMatrixScale:F

    div-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/oplus/fancyicon/ScreenElementRoot;->descale(F)F

    move-result v3

    iget-object v4, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mTouchX:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    float-to-double v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mTouchY:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    float-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_3c

    if-eq v0, v1, :cond_39

    goto :goto_52

    :cond_39
    iput-boolean v2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_52

    :cond_3c
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mTouchBeginX:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {v0, v5, v6}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mTouchBeginY:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {v0, v3, v4}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mTouchBeginTime:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iput-boolean v2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    :goto_52
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    return p1

    :cond_5c
    if-eqz p1, :cond_82

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne v1, p1, :cond_82

    const-string p1, "onTouch is up mRenderThreadStoped = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRenderThreadStoped:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "mElementGroup = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenElementRoot"

    invoke-static {p1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_82
    return v2
.end method

.method public pauseOther()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ElementGroup;->pause()V

    :cond_7
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariableBinderManager:Lcom/oplus/fancyicon/data/binder/VariableBinderManager;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->pause()V

    :cond_e
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mExternalCommandManager:Lcom/oplus/fancyicon/command/ExternalCommandManager;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/ExternalCommandManager;->pause()V

    :cond_15
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariableUpdaterManager:Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->pause()V

    :cond_1c
    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mResourceManager:Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->pause()V

    :cond_23
    return-void
.end method

.method public removePreTicker(Lcom/oplus/fancyicon/elements/ITicker;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mOtherTimeTickers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public renderDone()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->renderDone()V

    :cond_7
    return-void
.end method

.method public requestRender()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->requestRender()V

    :cond_7
    return-void
.end method

.method public resumeOther()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariableBinderManager:Lcom/oplus/fancyicon/data/binder/VariableBinderManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->resume()V

    :cond_7
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mExternalCommandManager:Lcom/oplus/fancyicon/command/ExternalCommandManager;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/ExternalCommandManager;->resume()V

    :cond_e
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariableUpdaterManager:Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->resume()V

    :cond_15
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mResourceManager:Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->resume()V

    :cond_1c
    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ElementGroup;->resume()V

    :cond_23
    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/Double;)V
    .registers 3

    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public setCacheDirectory(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mCacheDirectory:Ljava/lang/String;

    goto :goto_17

    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mCacheDirectory:Ljava/lang/String;

    :goto_17
    const-string v0, "setCacheDirectory mCacheDirectory = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenElementRoot"

    invoke-static {v0, p1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mCacheDirectory:Ljava/lang/String;

    return-object p0
.end method

.method public setClockTime(Ljava/lang/Double;Ljava/lang/Double;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mHour12:Ljava/lang/Double;

    iput-object p2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mMinute:Ljava/lang/Double;

    return-void
.end method

.method public setMatrixScaleDrawable(F)V
    .registers 3

    iput p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mDrawableScale:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_b

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mDrawableScale:F

    :cond_b
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mName:Ljava/lang/String;

    return-void
.end method

.method public setRootAlpha(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootAlpha:I

    return-void
.end method

.method public setRootColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRootColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 2

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_9
    return-void
.end method

.method public tick(J)V
    .registers 7

    iput-wide p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mCurrentTickTime:J

    iget-boolean v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mRenderThreadStoped:Z

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariableBinderManager:Lcom/oplus/fancyicon/data/binder/VariableBinderManager;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->tick()V

    :cond_d
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mVariableUpdaterManager:Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1, p2}, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->tick(J)V

    :cond_14
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mOtherTimeTickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/fancyicon/elements/ITicker;

    invoke-interface {v1, p1, p2}, Lcom/oplus/fancyicon/elements/ITicker;->tick(J)V

    goto :goto_1a

    :cond_2a
    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mElementGroup:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_31

    invoke-virtual {v0, p1, p2}, Lcom/oplus/fancyicon/elements/ElementGroup;->callTick(J)V

    :cond_31
    iget-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_46

    move p1, p2

    goto :goto_47

    :cond_46
    const/4 p1, 0x0

    :goto_47
    iput-boolean p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    :cond_49
    iget-object p1, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mFramerateManager:Lcom/oplus/fancyicon/FramerateManager;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->hasAnimationRunning()Z

    move-result p0

    xor-int/2addr p0, p2

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/FramerateManager;->pause(Z)V

    :cond_53
    return-void
.end method
