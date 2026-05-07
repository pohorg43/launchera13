.class public Lcom/oplus/anim/EffectiveAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/EffectiveAnimationView$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_FAILURE_LISTENER:Lcom/oplus/anim/EffectiveAnimationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private animationName:Ljava/lang/String;

.field private animationResId:I
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field

.field private autoPlay:Z

.field private buildDrawingCacheDepth:I

.field private cacheComposition:Z

.field private composition:Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private compositionTask:Lcom/oplus/anim/EffectiveAnimationTask;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation
.end field

.field private final effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private final effectiveOnCompositionLoadedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oplus/anim/EffectiveOnCompositionLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private failureListener:Lcom/oplus/anim/EffectiveAnimationListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private fallbackResource:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private ignoreUnschedule:Z

.field private isInitialized:Z

.field private final loadedListener:Lcom/oplus/anim/EffectiveAnimationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation
.end field

.field private playAnimationWhenShown:Z

.field private renderMode:Lcom/oplus/anim/RenderMode;

.field private wasAnimatingWhenDetached:Z

.field private wasAnimatingWhenNotShown:Z

.field private final wrappedFailureListener:Lcom/oplus/anim/EffectiveAnimationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/oplus/anim/EffectiveAnimationView;

    const-string v0, "EffectiveAnimationView"

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/oplus/anim/EffectiveAnimationView$1;

    invoke-direct {p1, p0}, Lcom/oplus/anim/EffectiveAnimationView$1;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->DEFAULT_FAILURE_LISTENER:Lcom/oplus/anim/EffectiveAnimationListener;

    new-instance p1, Lcom/oplus/anim/EffectiveAnimationView$2;

    invoke-direct {p1, p0}, Lcom/oplus/anim/EffectiveAnimationView$2;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->loadedListener:Lcom/oplus/anim/EffectiveAnimationListener;

    new-instance p1, Lcom/oplus/anim/EffectiveAnimationView$3;

    invoke-direct {p1, p0}, Lcom/oplus/anim/EffectiveAnimationView$3;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->wrappedFailureListener:Lcom/oplus/anim/EffectiveAnimationListener;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->fallbackResource:I

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-direct {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->playAnimationWhenShown:Z

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenNotShown:Z

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->ignoreUnschedule:Z

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->autoPlay:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->cacheComposition:Z

    sget-object v0, Lcom/oplus/anim/RenderMode;->AUTOMATIC:Lcom/oplus/anim/RenderMode;

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->renderMode:Lcom/oplus/anim/RenderMode;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveOnCompositionLoadedListeners:Ljava/util/Set;

    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->buildDrawingCacheDepth:I

    sget p1, Lcom/oplus/anim/R$attr;->effectiveAnimationViewStyle:I

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/oplus/anim/EffectiveAnimationView$1;

    invoke-direct {p1, p0}, Lcom/oplus/anim/EffectiveAnimationView$1;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->DEFAULT_FAILURE_LISTENER:Lcom/oplus/anim/EffectiveAnimationListener;

    new-instance p1, Lcom/oplus/anim/EffectiveAnimationView$2;

    invoke-direct {p1, p0}, Lcom/oplus/anim/EffectiveAnimationView$2;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->loadedListener:Lcom/oplus/anim/EffectiveAnimationListener;

    new-instance p1, Lcom/oplus/anim/EffectiveAnimationView$3;

    invoke-direct {p1, p0}, Lcom/oplus/anim/EffectiveAnimationView$3;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->wrappedFailureListener:Lcom/oplus/anim/EffectiveAnimationListener;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->fallbackResource:I

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-direct {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->playAnimationWhenShown:Z

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenNotShown:Z

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->ignoreUnschedule:Z

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->autoPlay:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->cacheComposition:Z

    sget-object v0, Lcom/oplus/anim/RenderMode;->AUTOMATIC:Lcom/oplus/anim/RenderMode;

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->renderMode:Lcom/oplus/anim/RenderMode;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveOnCompositionLoadedListeners:Ljava/util/Set;

    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->buildDrawingCacheDepth:I

    sget p1, Lcom/oplus/anim/R$attr;->effectiveAnimationViewStyle:I

    invoke-direct {p0, p2, p1}, Lcom/oplus/anim/EffectiveAnimationView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/oplus/anim/EffectiveAnimationView$1;

    invoke-direct {p1, p0}, Lcom/oplus/anim/EffectiveAnimationView$1;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->DEFAULT_FAILURE_LISTENER:Lcom/oplus/anim/EffectiveAnimationListener;

    new-instance p1, Lcom/oplus/anim/EffectiveAnimationView$2;

    invoke-direct {p1, p0}, Lcom/oplus/anim/EffectiveAnimationView$2;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->loadedListener:Lcom/oplus/anim/EffectiveAnimationListener;

    new-instance p1, Lcom/oplus/anim/EffectiveAnimationView$3;

    invoke-direct {p1, p0}, Lcom/oplus/anim/EffectiveAnimationView$3;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->wrappedFailureListener:Lcom/oplus/anim/EffectiveAnimationListener;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->fallbackResource:I

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-direct {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->playAnimationWhenShown:Z

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenNotShown:Z

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->ignoreUnschedule:Z

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->autoPlay:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->cacheComposition:Z

    sget-object v0, Lcom/oplus/anim/RenderMode;->AUTOMATIC:Lcom/oplus/anim/RenderMode;

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->renderMode:Lcom/oplus/anim/RenderMode;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveOnCompositionLoadedListeners:Ljava/util/Set;

    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->buildDrawingCacheDepth:I

    invoke-direct {p0, p2, p3}, Lcom/oplus/anim/EffectiveAnimationView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/anim/EffectiveAnimationView;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelLoaderTask()V

    return-void
.end method

.method public static synthetic access$100(Lcom/oplus/anim/EffectiveAnimationView;)I
    .registers 1

    iget p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->fallbackResource:I

    return p0
.end method

.method public static synthetic access$200(Lcom/oplus/anim/EffectiveAnimationView;)Lcom/oplus/anim/EffectiveAnimationListener;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->failureListener:Lcom/oplus/anim/EffectiveAnimationListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/anim/EffectiveAnimationView;)Lcom/oplus/anim/EffectiveAnimationListener;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->DEFAULT_FAILURE_LISTENER:Lcom/oplus/anim/EffectiveAnimationListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/anim/EffectiveAnimationView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->cacheComposition:Z

    return p0
.end method

.method private cancelLoaderTask()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->compositionTask:Lcom/oplus/anim/EffectiveAnimationTask;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->loadedListener:Lcom/oplus/anim/EffectiveAnimationListener;

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationTask;->removeListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->compositionTask:Lcom/oplus/anim/EffectiveAnimationTask;

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wrappedFailureListener:Lcom/oplus/anim/EffectiveAnimationListener;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/EffectiveAnimationTask;->removeFailureListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;

    :cond_10
    return-void
.end method

.method private clearComposition()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->clearComposition()V

    return-void
.end method

.method private enableOrDisableHardwareLayer()V
    .registers 6

    const-string v0, "Render mode : "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->renderMode:Lcom/oplus/anim/RenderMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/Logger;->debug(Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/anim/EffectiveAnimationView$7;->$SwitchMap$com$oplus$anim$RenderMode:[I

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->renderMode:Lcom/oplus/anim/RenderMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_46

    if-eq v0, v2, :cond_44

    const/4 v4, 0x3

    if-eq v0, v4, :cond_47

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2e

    goto :goto_44

    :cond_2e
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->hasDashPattern()Z

    :cond_35
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getMaskAndMatteCount()I

    move-result v0

    if-le v0, v4, :cond_40

    goto :goto_41

    :cond_40
    move v1, v3

    :goto_41
    if-eqz v1, :cond_44

    goto :goto_46

    :cond_44
    :goto_44
    move v1, v3

    goto :goto_47

    :cond_46
    :goto_46
    move v1, v2

    :cond_47
    :goto_47
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayerType()I

    move-result v0

    if-eq v1, v0, :cond_51

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_51
    return-void
.end method

.method private fromAssets(Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationTask;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationView$5;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationView$5;-><init>(Lcom/oplus/anim/EffectiveAnimationView;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Lcom/oplus/anim/EffectiveAnimationTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v0

    :cond_12
    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p0

    goto :goto_28

    :cond_1f
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p0

    :goto_28
    return-object p0
.end method

.method private fromRawRes(I)Lcom/oplus/anim/EffectiveAnimationTask;
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationTask;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationView$4;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationView$4;-><init>(Lcom/oplus/anim/EffectiveAnimationView;I)V

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Lcom/oplus/anim/EffectiveAnimationTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v0

    :cond_12
    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p0

    goto :goto_28

    :cond_1f
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p0

    :goto_28
    return-object p0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_cacheComposition:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oplus/anim/EffectiveAnimationView;->cacheComposition:Z

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_rawRes:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    sget v3, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_fileName:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    sget v5, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_url:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v1, :cond_33

    if-nez v4, :cond_2b

    goto :goto_33

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "anim_rawRes and anim_fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    if-eqz v1, :cond_3f

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_56

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_56

    :cond_3f
    if-eqz v4, :cond_4b

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_56

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_56

    :cond_4b
    if-eqz v6, :cond_56

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_56

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    :cond_56
    :goto_56
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_fallbackRes:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setFallbackResource(I)V

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_autoPlay:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_6b

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->autoPlay:Z

    :cond_6b
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_loop:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 v1, -0x1

    if-eqz p2, :cond_79

    iget-object p2, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p2, v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setRepeatCount(I)V

    :cond_79
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_repeatMode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    :cond_88
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_repeatCount:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    :cond_97
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_speed:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz v3, :cond_a8

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setSpeed(F)V

    :cond_a8
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_imageAssetsFolder:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_progress:I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setProgress(F)V

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->enableMergePathsForKitKatAndAbove(Z)V

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_colorFilter:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_f6

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    new-instance v1, Lcom/oplus/anim/SimpleColorFilter;

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-direct {v1, p2}, Lcom/oplus/anim/SimpleColorFilter;-><init>(I)V

    new-instance p2, Lcom/oplus/anim/model/KeyPath;

    const-string v5, "**"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {p2, v5}, Lcom/oplus/anim/model/KeyPath;-><init>([Ljava/lang/String;)V

    new-instance v5, Lcom/oplus/anim/value/EffectiveValueCallback;

    invoke-direct {v5, v1}, Lcom/oplus/anim/value/EffectiveValueCallback;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, p2, v1, v5}, Lcom/oplus/anim/EffectiveAnimationView;->addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    :cond_f6
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_scale:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_107

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {v1, p2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setScale(F)V

    :cond_107
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_renderMode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_12d

    sget-object v1, Lcom/oplus/anim/RenderMode;->AUTOMATIC:Lcom/oplus/anim/RenderMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {}, Lcom/oplus/anim/RenderMode;->values()[Lcom/oplus/anim/RenderMode;

    move-result-object v4

    array-length v4, v4

    if-lt p2, v4, :cond_124

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :cond_124
    invoke-static {}, Lcom/oplus/anim/RenderMode;->values()[Lcom/oplus/anim/RenderMode;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setRenderMode(Lcom/oplus/anim/RenderMode;)V

    :cond_12d
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_ignoreDisabledSystemAnimations:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setIgnoreDisabledSystemAnimations(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/oplus/anim/utils/Utils;->getAnimationScale(Landroid/content/Context;)F

    move-result p2

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_148

    move v2, v0

    :cond_148
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setSystemAnimationsAreEnabled(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->isInitialized:Z

    return-void
.end method

.method private setCompositionTask(Lcom/oplus/anim/EffectiveAnimationTask;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->clearComposition()V

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelLoaderTask()V

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->loadedListener:Lcom/oplus/anim/EffectiveAnimationListener;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationTask;->addListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wrappedFailureListener:Lcom/oplus/anim/EffectiveAnimationListener;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationTask;->addFailureListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->compositionTask:Lcom/oplus/anim/EffectiveAnimationTask;

    return-void
.end method

.method private setEffectiveAnimationDrawable()V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->isAnimating()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->resumeAnimation()V

    :cond_14
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->addAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public addEffectiveOnCompositionLoadedListener(Lcom/oplus/anim/EffectiveOnCompositionLoadedListener;)Z
    .registers 3
    .param p1  # Lcom/oplus/anim/EffectiveOnCompositionLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz v0, :cond_7

    invoke-interface {p1, v0}, Lcom/oplus/anim/EffectiveOnCompositionLoadedListener;->onCompositionLoaded(Lcom/oplus/anim/EffectiveAnimationComposition;)V

    :cond_7
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/anim/model/KeyPath;",
            "TT;",
            "Lcom/oplus/anim/value/EffectiveValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    return-void
.end method

.method public addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/SimpleValueCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/anim/model/KeyPath;",
            "TT;",
            "Lcom/oplus/anim/value/SimpleValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationView$6;

    invoke-direct {v1, p0, p3}, Lcom/oplus/anim/EffectiveAnimationView$6;-><init>(Lcom/oplus/anim/EffectiveAnimationView;Lcom/oplus/anim/value/SimpleValueCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .registers 5

    const-string v0, "buildDrawingCache"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->buildDrawingCacheDepth:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->buildDrawingCacheDepth:I

    invoke-super {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    iget v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->buildDrawingCacheDepth:I

    if-ne v1, v2, :cond_2f

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-lez v1, :cond_2f

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-lez v1, :cond_2f

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayerType()I

    move-result v1

    if-ne v1, v2, :cond_2f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2f

    sget-object p1, Lcom/oplus/anim/RenderMode;->HARDWARE:Lcom/oplus/anim/RenderMode;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setRenderMode(Lcom/oplus/anim/RenderMode;)V

    :cond_2f
    iget p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->buildDrawingCacheDepth:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->buildDrawingCacheDepth:I

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public cancelAnimation()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenNotShown:Z

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->playAnimationWhenShown:Z

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->cancelAnimation()V

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method public clearImageAssets()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->clearImageAsset()V

    return-void
.end method

.method public disableExtraScaleModeInFitXY()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->disableExtraScaleModeInFitXY()V

    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->enableMergePathsForKitKatAndAbove(Z)V

    return-void
.end method

.method public getComposition()Lcom/oplus/anim/EffectiveAnimationComposition;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    return-object p0
.end method

.method public getDuration()J
    .registers 3

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDuration()F

    move-result p0

    float-to-long v0, p0

    goto :goto_c

    :cond_a
    const-wide/16 v0, 0x0

    :goto_c
    return-wide v0
.end method

.method public getFrame()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getFrame()I

    move-result p0

    return p0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxFrame()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getMaxFrame()F

    move-result p0

    return p0
.end method

.method public getMinFrame()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getMinFrame()F

    move-result p0

    return p0
.end method

.method public getPerformanceTracker()Lcom/oplus/anim/PerformanceTracker;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getPerformanceTracker()Lcom/oplus/anim/PerformanceTracker;

    move-result-object p0

    return-object p0
.end method

.method public getProgress()F
    .registers 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getProgress()F

    move-result p0

    return p0
.end method

.method public getRepeatCount()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getRepeatCount()I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public getScale()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getScale()F

    move-result p0

    return p0
.end method

.method public getSpeed()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getSpeed()F

    move-result p0

    return p0
.end method

.method public hasMasks()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->hasMasks()Z

    move-result p0

    return p0
.end method

.method public hasMatte()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->hasMatte()Z

    move-result p0

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    if-ne v0, v1, :cond_c

    invoke-super {p0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_f
    return-void
.end method

.method public isAnimating()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->isAnimating()Z

    move-result p0

    return p0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->isMergePathsEnabledForKitKatAndAbove()Z

    move-result p0

    return p0
.end method

.method public loop(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    if-eqz p1, :cond_6

    const/4 p1, -0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setRepeatCount(I)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->autoPlay:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    if-eqz v0, :cond_19

    :cond_11
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->autoPlay:Z

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    :cond_19
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    :cond_c
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    instance-of v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->animationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_20
    iget v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->animationResId:I

    iput v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationResId:I

    if-eqz v0, :cond_29

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    :cond_29
    iget v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->progress:F

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setProgress(F)V

    iget-boolean v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->isAnimating:Z

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    :cond_35
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget-object v1, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    iget v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->repeatMode:I

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    iget p1, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->repeatCount:I

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;

    invoke-direct {v1, v0}, Lcom/oplus/anim/EffectiveAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    iput-object v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->animationName:Ljava/lang/String;

    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationResId:I

    iput v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->animationResId:I

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getProgress()F

    move-result v0

    iput v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->progress:F

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    if-eqz v0, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v0, 0x1

    :goto_2f
    iput-boolean v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->isAnimating:Z

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getRepeatMode()I

    move-result v0

    iput v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->repeatMode:I

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getRepeatCount()I

    move-result p0

    iput p0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->repeatCount:I

    return-object v1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->isInitialized:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenNotShown:Z

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->resumeAnimation()V

    goto :goto_1a

    :cond_13
    iget-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->playAnimationWhenShown:Z

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenNotShown:Z

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->playAnimationWhenShown:Z

    goto :goto_2c

    :cond_20
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->pauseAnimation()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenNotShown:Z

    :cond_2c
    :goto_2c
    return-void
.end method

.method public pauseAnimation()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->autoPlay:Z

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenNotShown:Z

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->playAnimationWhenShown:Z

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->pauseAnimation()V

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method public playAnimation()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->playAnimation()V

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    goto :goto_12

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->playAnimationWhenShown:Z

    :goto_12
    return-void
.end method

.method public removeAllAnimatorListeners()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->removeAllAnimatorListeners()V

    return-void
.end method

.method public removeAllEffectiveOnCompositionLoadedListener()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public removeAllUpdateListeners()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->removeAllUpdateListeners()V

    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removeAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->removeAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public removeEffectiveOnCompositionLoadedListener(Lcom/oplus/anim/EffectiveOnCompositionLoadedListener;)Z
    .registers 2
    .param p1  # Lcom/oplus/anim/EffectiveOnCompositionLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public resolveKeyPath(Lcom/oplus/anim/model/KeyPath;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/model/KeyPath;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/KeyPath;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public resumeAnimation()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->resumeAnimation()V

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    goto :goto_15

    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->playAnimationWhenShown:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenNotShown:Z

    :goto_15
    return-void
.end method

.method public reverseAnimationSpeed()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->reverseAnimationSpeed()V

    return-void
.end method

.method public setAnimation(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationResId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->fromRawRes(I)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/EffectiveAnimationTask;)V

    return-void
.end method

.method public setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 3
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/EffectiveAnimationTask;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationResId:I

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->fromAssets(Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/EffectiveAnimationTask;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p1

    goto :goto_16

    :cond_d
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p1

    :goto_16
    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/EffectiveAnimationTask;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/EffectiveAnimationTask;)V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setApplyingOpacityToLayersEnabled(Z)V

    return-void
.end method

.method public setCacheComposition(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->cacheComposition:Z

    return-void
.end method

.method public setComposition(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .registers 5
    .param p1  # Lcom/oplus/anim/EffectiveAnimationComposition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/oplus/anim/L;->OPLUS_DBG:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/oplus/anim/EffectiveAnimationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Composition \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->ignoreUnschedule:Z

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setComposition(Lcom/oplus/anim/EffectiveAnimationComposition;)Z

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->ignoreUnschedule:Z

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    if-ne v1, v2, :cond_3b

    if-nez v0, :cond_3b

    return-void

    :cond_3b
    if-nez v0, :cond_40

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->setEffectiveAnimationDrawable()V

    :cond_40
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_50
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveOnCompositionLoadedListener;

    invoke-interface {v0, p1}, Lcom/oplus/anim/EffectiveOnCompositionLoadedListener;->onCompositionLoaded(Lcom/oplus/anim/EffectiveAnimationComposition;)V

    goto :goto_50

    :cond_60
    return-void
.end method

.method public setFailureListener(Lcom/oplus/anim/EffectiveAnimationListener;)V
    .registers 2
    .param p1  # Lcom/oplus/anim/EffectiveAnimationListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->failureListener:Lcom/oplus/anim/EffectiveAnimationListener;

    return-void
.end method

.method public setFallbackResource(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->fallbackResource:I

    return-void
.end method

.method public setFontAssetDelegate(Lcom/oplus/anim/FontAssetDelegate;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setFontAssetDelegate(Lcom/oplus/anim/FontAssetDelegate;)V

    return-void
.end method

.method public setFrame(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setFrame(I)V

    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setIgnoreDisabledSystemAnimations(Z)V

    return-void
.end method

.method public setImageAssetDelegate(Lcom/oplus/anim/ImageAssetDelegate;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setImageAssetDelegate(Lcom/oplus/anim/ImageAssetDelegate;)V

    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelLoaderTask()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelLoaderTask()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelLoaderTask()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaxFrame(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMaxFrame(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMaxFrame(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .registers 2
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMaxProgress(F)V

    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(II)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .registers 3
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxProgress(FF)V

    return-void
.end method

.method public setMinFrame(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinFrame(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinFrame(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinProgress(F)V

    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setOutlineMasksAndMattes(Z)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setPerformanceTrackingEnabled(Z)V

    return-void
.end method

.method public setProgress(F)V
    .registers 2
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setProgress(F)V

    return-void
.end method

.method public setRenderMode(Lcom/oplus/anim/RenderMode;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->renderMode:Lcom/oplus/anim/RenderMode;

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method public setRepeatCount(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setRepeatMode(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setSafeMode(Z)V

    return-void
.end method

.method public setScale(F)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setScale(F)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    if-ne p1, v0, :cond_10

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->setEffectiveAnimationDrawable()V

    :cond_10
    return-void
.end method

.method public setSpeed(F)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setSpeed(F)V

    return-void
.end method

.method public setTextDelegate(Lcom/oplus/anim/TextDelegate;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setTextDelegate(Lcom/oplus/anim/TextDelegate;)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->ignoreUnschedule:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    if-ne p1, v0, :cond_12

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->pauseAnimation()V

    goto :goto_26

    :cond_12
    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->ignoreUnschedule:Z

    if-nez v0, :cond_26

    instance-of v0, p1, Lcom/oplus/anim/EffectiveAnimationDrawable;

    if-eqz v0, :cond_26

    move-object v0, p1

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->pauseAnimation()V

    :cond_26
    :goto_26
    invoke-super {p0, p1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3
    .param p2  # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
