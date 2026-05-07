.class public Lcom/oplus/fancyicon/elements/ElementGroup;
.super Lcom/oplus/fancyicon/elements/AnimatedScreenElement;
.source ""


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_ElementGroup"

.field private static final TAG:Ljava/lang/String; = "ElementGroup"

.field public static final TAG_NAME:Ljava/lang/String; = "ElementGroup"

.field public static final TAG_NAME1:Ljava/lang/String; = "Group"


# instance fields
.field private mClip:Z

.field public mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/elements/ScreenElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    const-string v0, "clip"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mClip:Z

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ElementGroup;->load(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    if-eqz p1, :cond_5a

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getScreenElementFactory()Lcom/oplus/fancyicon/elements/ScreenElementFactory;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    const/4 v4, 0x1

    if-ge v3, v1, :cond_32

    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-ne v6, v4, :cond_2f

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-virtual {v0, v5, p2}, Lcom/oplus/fancyicon/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/elements/ScreenElement;

    move-result-object v4

    if-eqz v4, :cond_2f

    invoke-virtual {v4, p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->setParent(Lcom/oplus/fancyicon/elements/ElementGroup;)V

    iget-object v5, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_32
    iget-object p1, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v4, :cond_59

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/fancyicon/elements/ScreenElement;

    instance-of p2, p1, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;

    if-eqz p2, :cond_59

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ic_launcher_clock"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_59

    check-cast p1, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->shouldDrawClockHandView()V

    :cond_59
    return-void

    :cond_5a
    const-string p0, "LockScreen_ElementGroup"

    const-string p1, "node is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/oplus/fancyicon/ScreenElementLoadException;

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addElement(Lcom/oplus/fancyicon/elements/ScreenElement;)V
    .registers 2

    if-eqz p1, :cond_a

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->setParent(Lcom/oplus/fancyicon/elements/ElementGroup;)V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method public callTick(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->callTick(J)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/elements/ScreenElement;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->callTick(J)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public doRender(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "ElementGroup"

    const-string p1, "doRender not visible"

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getHeight()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_35

    cmpl-float v4, v1, v3

    if-lez v4, :cond_35

    iget-boolean v4, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mClip:Z

    if-eqz v4, :cond_35

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_35
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/elements/ScreenElement;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    goto :goto_3b

    :cond_4b
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public end()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->end()V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/elements/ScreenElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ScreenElement;->end()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public findElement(Ljava/lang/String;)Lcom/oplus/fancyicon/elements/ScreenElement;
    .registers 5

    invoke-super {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->findElement(Ljava/lang/String;)Lcom/oplus/fancyicon/elements/ScreenElement;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_e
    if-ge v0, v1, :cond_22

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/fancyicon/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->findElement(Ljava/lang/String;)Lcom/oplus/fancyicon/elements/ScreenElement;

    move-result-object v2

    if-eqz v2, :cond_1f

    return-object v2

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_22
    const/4 p0, 0x0

    return-object p0
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

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    return-object p0
.end method

.method public hasAnimationRunning()Z
    .registers 3

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->hasAnimationRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/elements/ScreenElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ScreenElement;->hasAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->init()V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/elements/ScreenElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ScreenElement;->init()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public onRenderThreadStoped()V
    .registers 3

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->onRenderThreadStoped()V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/elements/ScreenElement;

    :try_start_15
    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ScreenElement;->onRenderThreadStoped()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_9

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockScreen_ElementGroup"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_24
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    invoke-super {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/fancyicon/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    goto :goto_11

    :cond_25
    if-eqz p1, :cond_34

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-ne v1, p0, :cond_34

    const-string p0, "ElementGroup"

    const-string p1, "onTouch is up but not visible "

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    const/4 v0, 0x0

    :cond_35
    return v0
.end method

.method public onVisibilityChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->onVisibilityChange(Z)V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/elements/ScreenElement;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->onVisibilityChange(Z)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public pause()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->pause()V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/elements/ScreenElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ScreenElement;->pause()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public reset(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->reset(J)V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/fancyicon/elements/ScreenElement;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->reset()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->resume()V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/elements/ScreenElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ScreenElement;->resume()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/elements/ScreenElement;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    goto :goto_9

    :cond_19
    return-void
.end method
