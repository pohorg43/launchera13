.class public Lcom/oplus/anim/model/layer/ShapeLayer;
.super Lcom/oplus/anim/model/layer/BaseLayer;
.source ""


# instance fields
.field private final compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

.field private final contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;Lcom/oplus/anim/model/layer/CompositionLayer;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/model/layer/BaseLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    iput-object p3, p0, Lcom/oplus/anim/model/layer/ShapeLayer;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    new-instance p3, Lcom/oplus/anim/model/content/ShapeGroup;

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getShapes()Ljava/util/List;

    move-result-object p2

    const-string v0, "__container"

    const/4 v1, 0x0

    invoke-direct {p3, v0, p2, v1}, Lcom/oplus/anim/model/content/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p2, Lcom/oplus/anim/animation/content/ContentGroup;

    invoke-direct {p2, p1, p0, p3}, Lcom/oplus/anim/animation/content/ContentGroup;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/ShapeGroup;)V

    iput-object p2, p0, Lcom/oplus/anim/model/layer/ShapeLayer;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/oplus/anim/animation/content/ContentGroup;->setContents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 4
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/oplus/anim/model/layer/ShapeLayer;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/anim/animation/content/ContentGroup;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getBlurEffect()Lcom/oplus/anim/model/content/BlurEffect;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getBlurEffect()Lcom/oplus/anim/model/content/BlurEffect;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    iget-object p0, p0, Lcom/oplus/anim/model/layer/ShapeLayer;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getBlurEffect()Lcom/oplus/anim/model/content/BlurEffect;

    move-result-object p0

    return-object p0
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/ShapeLayer;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p0, p3}, Lcom/oplus/anim/animation/content/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public getDropShadowEffect()Lcom/oplus/anim/parser/DropShadowEffect;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getDropShadowEffect()Lcom/oplus/anim/parser/DropShadowEffect;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    iget-object p0, p0, Lcom/oplus/anim/model/layer/ShapeLayer;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getDropShadowEffect()Lcom/oplus/anim/parser/DropShadowEffect;

    move-result-object p0

    return-object p0
.end method

.method public resolveChildKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/KeyPath;",
            ">;",
            "Lcom/oplus/anim/model/KeyPath;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/layer/ShapeLayer;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/anim/animation/content/ContentGroup;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V

    return-void
.end method
