.class public Lcom/oplus/anim/EffectiveAnimationDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/EffectiveAnimationDrawable$RepeatMode;,
        Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;
    }
.end annotation


# static fields
.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2


# instance fields
.field private alpha:I

.field private final animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

.field private composition:Lcom/oplus/anim/EffectiveAnimationComposition;

.field private compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private enableMergePaths:Z

.field public fontAssetDelegate:Lcom/oplus/anim/FontAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fontAssetManager:Lcom/oplus/anim/manager/FontAssetManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ignoreSystemAnimationsDisabled:Z

.field private imageAssetDelegate:Lcom/oplus/anim/ImageAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetsFolder:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isApplyingOpacityToLayersEnabled:Z

.field private isDirty:Z

.field private isExtraScaleEnabled:Z

.field private final lazyCompositionTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private outlineMasksAndMattes:Z

.field private performanceTrackingEnabled:Z

.field private final progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private safeMode:Z

.field private scale:F

.field private systemAnimationsEnabled:Z

.field public textDelegate:Lcom/oplus/anim/TextDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-direct {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->scale:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->systemAnimationsEnabled:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->ignoreSystemAnimationsDisabled:Z

    iput-boolean v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->safeMode:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/oplus/anim/EffectiveAnimationDrawable$1;

    invoke-direct {v3, p0}, Lcom/oplus/anim/EffectiveAnimationDrawable$1;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;)V

    iput-object v3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v4, 0xff

    iput v4, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->alpha:I

    iput-boolean v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->isExtraScaleEnabled:Z

    iput-boolean v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->isDirty:Z

    invoke-virtual {v0, v3}, Lcom/oplus/anim/utils/BaseAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/anim/EffectiveAnimationDrawable;)Lcom/oplus/anim/model/layer/CompositionLayer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/anim/EffectiveAnimationDrawable;)Lcom/oplus/anim/utils/EffectiveValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    return-object p0
.end method

.method private animationsEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->systemAnimationsEnabled:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->ignoreSystemAnimationsDisabled:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private aspectRatio(Landroid/graphics/Rect;)F
    .registers 2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method private boundsMatchesCompositionAspectRatio()Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_26

    :cond_10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->aspectRatio(Landroid/graphics/Rect;)F

    move-result v2

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->aspectRatio(Landroid/graphics/Rect;)F

    move-result p0

    cmpl-float p0, v2, p0

    if-nez p0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :cond_26
    :goto_26
    return v1
.end method

.method private buildCompositionLayer()V
    .registers 5

    new-instance v0, Lcom/oplus/anim/model/layer/CompositionLayer;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-static {v1}, Lcom/oplus/anim/parser/LayerParser;->parse(Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/layer/Layer;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationComposition;->getLayers()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/oplus/anim/model/layer/CompositionLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;Ljava/util/List;Lcom/oplus/anim/EffectiveAnimationComposition;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    iget-boolean p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->outlineMasksAndMattes:Z

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/oplus/anim/model/layer/CompositionLayer;->setOutlineMasksAndMattes(Z)V

    :cond_1d
    return-void
.end method

.method private drawInternal(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->boundsMatchesCompositionAspectRatio()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->drawWithNewAspectRatio(Landroid/graphics/Canvas;)V

    goto :goto_d

    :cond_a
    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->drawWithOriginalAspectRatio(Landroid/graphics/Canvas;)V

    :goto_d
    return-void
.end method

.method private drawWithNewAspectRatio(Landroid/graphics/Canvas;)V
    .registers 11

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz v0, :cond_77

    if-nez v1, :cond_9

    goto :goto_77

    :cond_9
    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v5, v1

    iget-boolean v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->isExtraScaleEnabled:Z

    if-eqz v1, :cond_61

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v6, 0x3f800000  # 1.0f

    cmpg-float v7, v1, v6

    if-gez v7, :cond_3f

    div-float v7, v6, v1

    div-float/2addr v4, v7

    div-float/2addr v5, v7

    goto :goto_40

    :cond_3f
    move v7, v6

    :goto_40
    cmpl-float v6, v7, v6

    if-lez v6, :cond_61

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000  # 2.0f

    div-float/2addr v6, v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    mul-float v8, v6, v1

    mul-float/2addr v1, v3

    sub-float/2addr v6, v8

    sub-float/2addr v3, v1

    invoke-virtual {p1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v7, v7, v8, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_61
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->alpha:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/oplus/anim/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v2, :cond_77

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_77
    :goto_77
    return-void
.end method

.method private drawWithOriginalAspectRatio(Landroid/graphics/Canvas;)V
    .registers 11

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz v0, :cond_66

    if-nez v1, :cond_9

    goto :goto_66

    :cond_9
    iget v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->scale:F

    invoke-direct {p0, p1, v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getMaxScale(Landroid/graphics/Canvas;Lcom/oplus/anim/EffectiveAnimationComposition;)F

    move-result v3

    cmpl-float v4, v2, v3

    const/high16 v5, 0x3f800000  # 1.0f

    if-lez v4, :cond_19

    iget v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->scale:F

    div-float/2addr v2, v3

    goto :goto_1b

    :cond_19
    move v3, v2

    move v2, v5

    :goto_1b
    const/4 v4, -0x1

    cmpl-float v5, v2, v5

    if-lez v5, :cond_50

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    mul-float v6, v5, v3

    mul-float v7, v1, v3

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getScale()F

    move-result v8

    mul-float/2addr v8, v5

    sub-float/2addr v8, v6

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getScale()F

    move-result v5

    mul-float/2addr v5, v1

    sub-float/2addr v5, v7

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v2, v2, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_50
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->alpha:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/oplus/anim/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v4, :cond_66

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_66
    :goto_66
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_13

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v0
.end method

.method private getFontAssetManager()Lcom/oplus/anim/manager/FontAssetManager;
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->fontAssetManager:Lcom/oplus/anim/manager/FontAssetManager;

    if-nez v0, :cond_19

    new-instance v0, Lcom/oplus/anim/manager/FontAssetManager;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->fontAssetDelegate:Lcom/oplus/anim/FontAssetDelegate;

    invoke-direct {v0, v1, v2}, Lcom/oplus/anim/manager/FontAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/oplus/anim/FontAssetDelegate;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->fontAssetManager:Lcom/oplus/anim/manager/FontAssetManager;

    :cond_19
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->fontAssetManager:Lcom/oplus/anim/manager/FontAssetManager;

    return-object p0
.end method

.method private getImageAssetManager()Lcom/oplus/anim/manager/ImageAssetManager;
    .registers 6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/anim/manager/ImageAssetManager;->hasSameContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    iput-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;

    :cond_18
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;

    if-nez v0, :cond_31

    new-instance v0, Lcom/oplus/anim/manager/ImageAssetManager;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetsFolder:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetDelegate:Lcom/oplus/anim/ImageAssetDelegate;

    iget-object v4, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v4}, Lcom/oplus/anim/EffectiveAnimationComposition;->getImages()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/anim/manager/ImageAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/oplus/anim/ImageAssetDelegate;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;

    :cond_31
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;

    return-object p0
.end method

.method private getMaxScale(Landroid/graphics/Canvas;Lcom/oplus/anim/EffectiveAnimationComposition;)F
    .registers 4
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/utils/BaseAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/utils/BaseAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .registers 8
    .param p3  # Lcom/oplus/anim/value/EffectiveValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oplus/anim/EffectiveAnimationDrawable$16;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    sget-object v1, Lcom/oplus/anim/model/KeyPath;->COMPOSITION:Lcom/oplus/anim/model/KeyPath;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_18

    invoke-virtual {v0, p2, p3}, Lcom/oplus/anim/model/layer/CompositionLayer;->addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_5e

    :cond_18
    invoke-virtual {p1}, Lcom/oplus/anim/model/KeyPath;->getResolvedElement()Lcom/oplus/anim/model/KeyPathElement;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/oplus/anim/model/KeyPath;->getResolvedElement()Lcom/oplus/anim/model/KeyPathElement;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/oplus/anim/model/KeyPathElement;->addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_5e

    :cond_26
    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_2b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_59

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/model/KeyPath;

    invoke-virtual {v1}, Lcom/oplus/anim/model/KeyPath;->getResolvedElement()Lcom/oplus/anim/model/KeyPathElement;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/oplus/anim/model/KeyPathElement;->addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectiveAnimationDrawable::KeyPath = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/anim/utils/Logger;->debug(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_59
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v2, p1

    :goto_5e
    if-eqz v2, :cond_6e

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    sget-object p1, Lcom/oplus/anim/EffectiveAnimationProperty;->TIME_REMAP:Ljava/lang/Float;

    if-ne p2, p1, :cond_6e

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setProgress(F)V

    :cond_6e
    return-void
.end method

.method public addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/SimpleValueCallback;)V
    .registers 5
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

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationDrawable$17;

    invoke-direct {v0, p0, p3}, Lcom/oplus/anim/EffectiveAnimationDrawable$17;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/value/SimpleValueCallback;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    return-void
.end method

.method public cancelAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->cancel()V

    return-void
.end method

.method public clearComposition()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->cancel()V

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->clearComposition()V

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    return-void
.end method

.method public clearImageAsset()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getImageAssetManager()Lcom/oplus/anim/manager/ImageAssetManager;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/anim/manager/ImageAssetManager;->clearImageAssets()V

    :cond_9
    return-void
.end method

.method public disableExtraScaleModeInFitXY()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->isExtraScaleEnabled:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->isDirty:Z

    const-string v0, "Drawable#draw"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->safeMode:Z

    if-eqz v1, :cond_17

    :try_start_c
    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->drawInternal(Landroid/graphics/Canvas;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    goto :goto_1a

    :catchall_10
    move-exception p0

    const-string p1, "anim crashed in draw!"

    invoke-static {p1, p0}, Lcom/oplus/anim/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :cond_17
    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->drawInternal(Landroid/graphics/Canvas;)V

    :goto_1a
    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .registers 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->alpha:I

    invoke-virtual {v0, p1, p2, p0}, Lcom/oplus/anim/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->enableMergePaths:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->enableMergePaths:Z

    iget-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->buildCompositionLayer()V

    :cond_e
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->enableMergePaths:Z

    return p0
.end method

.method public endAnimation()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->endAnimation()V

    return-void
.end method

.method public getAlpha()I
    .registers 1

    iget p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->alpha:I

    return p0
.end method

.method public getComposition()Lcom/oplus/anim/EffectiveAnimationComposition;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    return-object p0
.end method

.method public getFrame()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getFrame()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getImageAssetManager()Lcom/oplus/anim/manager/ImageAssetManager;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/oplus/anim/manager/ImageAssetManager;->bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_b
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    const/4 v0, 0x0

    if-nez p0, :cond_12

    move-object p0, v0

    goto :goto_1c

    :cond_12
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getImages()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/EffectiveImageAsset;

    :goto_1c
    if-eqz p0, :cond_23

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_23
    return-object v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetsFolder:Ljava/lang/String;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    goto :goto_15

    :cond_6
    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getScale()F

    move-result p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    :goto_15
    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    goto :goto_15

    :cond_6
    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getScale()F

    move-result p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    :goto_15
    return p0
.end method

.method public getMaxFrame()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result p0

    return p0
.end method

.method public getMinFrame()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x3

    return p0
.end method

.method public getPerformanceTracker()Lcom/oplus/anim/PerformanceTracker;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getPerformanceTracker()Lcom/oplus/anim/PerformanceTracker;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProgress()F
    .registers 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getAnimatedValueAbsolute()F

    move-result p0

    return p0
.end method

.method public getRepeatCount()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public getScale()F
    .registers 1

    iget p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->scale:F

    return p0
.end method

.method public getSpeed()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getSpeed()F

    move-result p0

    return p0
.end method

.method public getTextDelegate()Lcom/oplus/anim/TextDelegate;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->textDelegate:Lcom/oplus/anim/TextDelegate;

    return-object p0
.end method

.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getFontAssetManager()Lcom/oplus/anim/manager/FontAssetManager;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/manager/FontAssetManager;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasMasks()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMasks()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public hasMatte()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMatte()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->isDirty:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->isDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    return-void
.end method

.method public isAnimating()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public isApplyingOpacityToLayersEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->isApplyingOpacityToLayersEnabled:Z

    return p0
.end method

.method public isLooping()Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->enableMergePaths:Z

    return p0
.end method

.method public isRunning()Z
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->isAnimating()Z

    move-result p0

    return p0
.end method

.method public loop(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    if-eqz p1, :cond_6

    const/4 p1, -0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public pauseAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->pauseAnimation()V

    return-void
.end method

.method public playAnimation()V
    .registers 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$2;

    invoke-direct {v1, p0}, Lcom/oplus/anim/EffectiveAnimationDrawable$2;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_20

    :cond_1b
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->playAnimation()V

    :cond_20
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_34

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getMinFrame()F

    move-result v0

    goto :goto_38

    :cond_34
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getMaxFrame()F

    move-result v0

    :goto_38
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setFrame(I)V

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->endAnimation()V

    :cond_41
    return-void
.end method

.method public removeAllAnimatorListeners()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/anim/utils/BaseAnimator;->removeAllListeners()V

    return-void
.end method

.method public removeAllUpdateListeners()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/BaseAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/utils/BaseAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/utils/BaseAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removeAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/utils/BaseAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public resolveKeyPath(Lcom/oplus/anim/model/KeyPath;)Ljava/util/List;
    .registers 6
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

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    if-nez v0, :cond_e

    const-string p0, "Cannot resolve KeyPath. Composition is not set yet."

    invoke-static {p0}, Lcom/oplus/anim/utils/Logger;->warning(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    new-instance v1, Lcom/oplus/anim/model/KeyPath;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/oplus/anim/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V

    return-object v0
.end method

.method public resumeAnimation()V
    .registers 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$3;

    invoke-direct {v1, p0}, Lcom/oplus/anim/EffectiveAnimationDrawable$3;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_20

    :cond_1b
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->resumeAnimation()V

    :cond_20
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_34

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getMinFrame()F

    move-result v0

    goto :goto_38

    :cond_34
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getMaxFrame()F

    move-result v0

    :goto_38
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setFrame(I)V

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->endAnimation()V

    :cond_41
    return-void
.end method

.method public reverseAnimationSpeed()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->reverseAnimationSpeed()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->alpha:I

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->isApplyingOpacityToLayersEnabled:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1  # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p0, "Use addColorFilter instead."

    invoke-static {p0}, Lcom/oplus/anim/utils/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public setComposition(Lcom/oplus/anim/EffectiveAnimationComposition;)Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    return v1

    :cond_6
    iput-boolean v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->isDirty:Z

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->clearComposition()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->buildCompositionLayer()V

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setComposition(Lcom/oplus/anim/EffectiveAnimationComposition;)V

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setProgress(F)V

    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->scale:F

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setScale(F)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;

    if-eqz v1, :cond_3f

    invoke-interface {v1, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;->run(Lcom/oplus/anim/EffectiveAnimationComposition;)V

    :cond_3f
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2e

    :cond_43
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->performanceTrackingEnabled:Z

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->setPerformanceTrackingEnabled(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_5e

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5e
    const/4 p0, 0x1

    return p0
.end method

.method public setFontAssetDelegate(Lcom/oplus/anim/FontAssetDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->fontAssetDelegate:Lcom/oplus/anim/FontAssetDelegate;

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->fontAssetManager:Lcom/oplus/anim/manager/FontAssetManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/oplus/anim/manager/FontAssetManager;->setDelegate(Lcom/oplus/anim/FontAssetDelegate;)V

    :cond_9
    return-void
.end method

.method public setFrame(I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$14;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$14;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setFrame(F)V

    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->ignoreSystemAnimationsDisabled:Z

    return-void
.end method

.method public setImageAssetDelegate(Lcom/oplus/anim/ImageAssetDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetDelegate:Lcom/oplus/anim/ImageAssetDelegate;

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/oplus/anim/manager/ImageAssetManager;->setDelegate(Lcom/oplus/anim/ImageAssetDelegate;)V

    :cond_9
    return-void
.end method

.method public setImagesAssetsFolder(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetsFolder:Ljava/lang/String;

    return-void
.end method

.method public setMaxFrame(I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$6;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$6;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    int-to-float p1, p1

    const v0, 0x3f7d70a4  # 0.99f

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setMaxFrame(F)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$9;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$9;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getMarker(Ljava/lang/String;)Lcom/oplus/anim/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget p1, v0, Lcom/oplus/anim/model/Marker;->startFrame:F

    iget v0, v0, Lcom/oplus/anim/model/Marker;->durationFrames:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMaxFrame(I)V

    return-void

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot find marker with name "

    const-string v1, "."

    invoke-static {v0, p1, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxProgress(F)V
    .registers 4
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$7;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$7;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMaxFrame(I)V

    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/anim/EffectiveAnimationDrawable$12;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    int-to-float p1, p1

    int-to-float p2, p2

    const v0, 0x3f7d70a4  # 0.99f

    add-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setMinAndMaxFrames(FF)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$10;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$10;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getMarker(Ljava/lang/String;)Lcom/oplus/anim/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_20

    iget p1, v0, Lcom/oplus/anim/model/Marker;->startFrame:F

    float-to-int p1, p1

    iget v0, v0, Lcom/oplus/anim/model/Marker;->durationFrames:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(II)V

    return-void

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot find marker with name "

    const-string v1, "."

    invoke-static {v0, p1, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oplus/anim/EffectiveAnimationDrawable$11;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getMarker(Ljava/lang/String;)Lcom/oplus/anim/model/Marker;

    move-result-object v0

    const-string v1, "."

    const-string v2, "Cannot find marker with name "

    if-eqz v0, :cond_3c

    iget p1, v0, Lcom/oplus/anim/model/Marker;->startFrame:F

    float-to-int p1, p1

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/EffectiveAnimationComposition;->getMarker(Ljava/lang/String;)Lcom/oplus/anim/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_32

    iget p2, v0, Lcom/oplus/anim/model/Marker;->startFrame:F

    if-eqz p3, :cond_2b

    const/high16 p3, 0x3f800000  # 1.0f

    goto :goto_2c

    :cond_2b
    const/4 p3, 0x0

    :goto_2c
    add-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(II)V

    return-void

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2, p2, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2, p1, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinAndMaxProgress(FF)V
    .registers 5
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

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/anim/EffectiveAnimationDrawable$13;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(II)V

    return-void
.end method

.method public setMinFrame(I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$4;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$4;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setMinFrame(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$8;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$8;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getMarker(Ljava/lang/String;)Lcom/oplus/anim/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget p1, v0, Lcom/oplus/anim/model/Marker;->startFrame:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinFrame(I)V

    return-void

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot find marker with name "

    const-string v1, "."

    invoke-static {v0, p1, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinProgress(F)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$5;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$5;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinFrame(I)V

    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->outlineMasksAndMattes:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->outlineMasksAndMattes:Z

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    if-eqz p0, :cond_e

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/CompositionLayer;->setOutlineMasksAndMattes(Z)V

    :cond_e
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->performanceTrackingEnabled:Z

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->setPerformanceTrackingEnabled(Z)V

    :cond_9
    return-void
.end method

.method public setProgress(F)V
    .registers 4
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$15;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$15;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    const-string v0, "Drawable#setProgress"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getFrameForProgress(F)F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setFrame(F)V

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public setRepeatCount(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setRepeatMode(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->safeMode:Z

    return-void
.end method

.method public setScale(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->scale:F

    return-void
.end method

.method public setSpeed(F)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setSpeed(F)V

    return-void
.end method

.method public setSystemAnimationsAreEnabled(Ljava/lang/Boolean;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->systemAnimationsEnabled:Z

    return-void
.end method

.method public setTextDelegate(Lcom/oplus/anim/TextDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->textDelegate:Lcom/oplus/anim/TextDelegate;

    return-void
.end method

.method public start()V
    .registers 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_13

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->playAnimation()V

    :cond_13
    return-void
.end method

.method public stop()V
    .registers 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->endAnimation()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .param p2  # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getImageAssetManager()Lcom/oplus/anim/manager/ImageAssetManager;

    move-result-object v0

    if-nez v0, :cond_d

    const-string p0, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents EffectiveAnimation from getting a Context."

    invoke-static {p0}, Lcom/oplus/anim/utils/Logger;->warning(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_d
    invoke-virtual {v0, p1, p2}, Lcom/oplus/anim/manager/ImageAssetManager;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    return-object p1
.end method

.method public useTextGlyphs()Z
    .registers 2

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->textDelegate:Lcom/oplus/anim/TextDelegate;

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

    if-lez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method
