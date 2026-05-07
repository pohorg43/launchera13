.class public Lcom/oplus/fancyicon/elements/ButtonScreenElement;
.super Lcom/oplus/fancyicon/elements/AnimatedScreenElement;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonActionListener;,
        Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonAction;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Button"


# instance fields
.field private mDisplayRealHeight:I

.field private mDisplayRealWidth:I

.field private mListener:Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonActionListener;

.field private mListenerName:Ljava/lang/String;

.field private mNormalElements:Lcom/oplus/fancyicon/elements/ElementGroup;

.field private mPressed:Z

.field private mPressedElements:Lcom/oplus/fancyicon/elements/ElementGroup;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mTouching:Z

.field private mTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/command/CommandTrigger;",
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

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->load(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    const-string p2, "listener"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    return-void
.end method

.method private getCur()Lcom/oplus/fancyicon/elements/ElementGroup;
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPressed:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mTouching:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPressedElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mNormalElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    return-object p0
.end method

.method private onCancel()V
    .registers 2

    sget-object v0, Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonAction;->Cancel:Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v0}, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->performAction(Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonAction;)V

    return-void
.end method

.method private performAction(Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonAction;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/command/CommandTrigger;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->getAction()Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonAction;

    move-result-object v1

    if-ne v1, p1, :cond_6

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->perform()V

    goto :goto_6

    :cond_1c
    return-void
.end method


# virtual methods
.method public callTick(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->callTick(J)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->getCur()Lcom/oplus/fancyicon/elements/ElementGroup;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ElementGroup;->callTick(J)V

    :cond_12
    return-void
.end method

.method public doRender(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->getCur()Lcom/oplus/fancyicon/elements/ElementGroup;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->render(Landroid/graphics/Canvas;)V

    :cond_9
    return-void
.end method

.method public end()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->end()V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mNormalElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ElementGroup;->end()V

    :cond_a
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPressedElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ElementGroup;->end()V

    :cond_11
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/command/CommandTrigger;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->end()V

    goto :goto_17

    :cond_27
    return-void
.end method

.method public hasAnimationRunning()Z
    .registers 3

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->hasAnimationRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->getCur()Lcom/oplus/fancyicon/elements/ElementGroup;

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ElementGroup;->hasAnimationRunning()Z

    move-result p0

    if-eqz p0, :cond_1b

    return v1

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .registers 3

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->init()V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mNormalElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ElementGroup;->init()V

    :cond_a
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPressedElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ElementGroup;->init()V

    :cond_11
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/fancyicon/command/CommandTrigger;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/command/CommandTrigger;->init()V

    goto :goto_17

    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mListener:Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonActionListener;

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/oplus/fancyicon/elements/ScreenElement;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonActionListener;

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mListener:Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonActionListener;
    :try_end_3f
    .catch Ljava/lang/ClassCastException; {:try_start_27 .. :try_end_3f} :catch_40

    goto :goto_54

    :catch_40
    const-string v0, "button listener designated by the name is not actually a listener: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ButtonScreenElement"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    :goto_54
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    if-eqz p1, :cond_5d

    const-string v0, "Normal"

    invoke-static {p1, v0}, Lcom/oplus/fancyicon/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v1, Lcom/oplus/fancyicon/elements/ElementGroup;

    invoke-direct {v1, v0, p2}, Lcom/oplus/fancyicon/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object v1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mNormalElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    :cond_11
    const-string v0, "Pressed"

    invoke-static {p1, v0}, Lcom/oplus/fancyicon/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_20

    new-instance v1, Lcom/oplus/fancyicon/elements/ElementGroup;

    invoke-direct {v1, v0, p2}, Lcom/oplus/fancyicon/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object v1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPressedElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    :cond_20
    const-string v0, "Triggers"

    invoke-static {p1, v0}, Lcom/oplus/fancyicon/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_5c

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    :goto_31
    if-ge v0, v1, :cond_5c

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_59

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Trigger"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-static {v2, p2}, Lcom/oplus/fancyicon/command/CommandTrigger;->fromElement(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/command/CommandTrigger;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_5c
    return-void

    :cond_5d
    const-string p0, "ButtonScreenElement"

    const-string p1, "node is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/oplus/fancyicon/ScreenElementLoadException;

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onRenderThreadStoped()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mNormalElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ElementGroup;->onRenderThreadStoped()V

    :cond_7
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPressedElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ElementGroup;->onRenderThreadStoped()V

    :cond_e
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/command/CommandTrigger;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->onRenderThreadStoped()V

    goto :goto_14

    :cond_24
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 10

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getMatrixScale()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    div-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    div-float/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6f

    if-eq p1, v0, :cond_41

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2b

    goto/16 :goto_d1

    :cond_2b
    iget-object p1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mNormalElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->reset()V

    :cond_32
    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->onCancel()V

    iput-boolean v1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mTouching:Z

    iput-boolean v1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPressed:Z

    return v1

    :cond_3a
    invoke-virtual {p0, v2, v3}, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->touched(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mTouching:Z

    return p1

    :cond_41
    iget-boolean p1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPressed:Z

    if-eqz p1, :cond_d1

    invoke-virtual {p0, v2, v3}, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->touched(FF)Z

    move-result p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mListener:Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz p1, :cond_54

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonActionListener;->onButtonUp(Ljava/lang/String;)Z

    :cond_54
    sget-object p1, Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonAction;->Up:Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->performAction(Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonAction;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    goto :goto_63

    :cond_60
    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->onCancel()V

    :goto_63
    iget-object p1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mNormalElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->reset()V

    :cond_6a
    iput-boolean v1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPressed:Z

    iput-boolean v1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mTouching:Z

    return v0

    :cond_6f
    invoke-virtual {p0, v2, v3}, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->touched(FF)Z

    move-result p1

    if-nez p1, :cond_76

    goto :goto_d1

    :cond_76
    iput-boolean v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPressed:Z

    iput-boolean v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mTouching:Z

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mListener:Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz p1, :cond_83

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonActionListener;->onButtonDown(Ljava/lang/String;)Z

    :cond_83
    sget-object p1, Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonAction;->Down:Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->performAction(Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonAction;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    sub-long/2addr v4, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p1

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-gtz p1, :cond_c5

    iget p1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    sub-float p1, v2, p1

    iget v1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    sub-float v1, v3, v1

    mul-float/2addr p1, p1

    mul-float/2addr v1, v1

    add-float/2addr v1, p1

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p1

    mul-int/2addr p1, p1

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_c5

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mListener:Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz p1, :cond_c0

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonActionListener;->onButtonDoubleClick(Ljava/lang/String;)Z

    :cond_c0
    sget-object p1, Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonAction;->Double:Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->performAction(Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonAction;)V

    :cond_c5
    iput v2, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    iput v3, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPressedElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz p0, :cond_d0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->reset()V

    :cond_d0
    return v0

    :cond_d1
    :goto_d1
    return v1
.end method

.method public pause()V
    .registers 3

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->pause()V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mNormalElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ElementGroup;->pause()V

    :cond_a
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPressedElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ElementGroup;->pause()V

    :cond_11
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/fancyicon/command/CommandTrigger;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/command/CommandTrigger;->pause()V

    goto :goto_17

    :cond_27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPressed:Z

    return-void
.end method

.method public reset(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->reset(J)V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mNormalElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2}, Lcom/oplus/fancyicon/elements/ElementGroup;->reset(J)V

    :cond_a
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPressedElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ElementGroup;->reset(J)V

    :cond_11
    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->resume()V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mNormalElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ElementGroup;->resume()V

    :cond_a
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPressedElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ElementGroup;->resume()V

    :cond_11
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/command/CommandTrigger;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->resume()V

    goto :goto_17

    :cond_27
    return-void
.end method

.method public setListener(Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonActionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mListener:Lcom/oplus/fancyicon/elements/ButtonScreenElement$ButtonActionListener;

    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mNormalElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/oplus/fancyicon/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    :cond_7
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mPressedElements:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz p0, :cond_e

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    :cond_e
    return-void
.end method

.method public touched(FF)Z
    .registers 10

    iget v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mDisplayRealHeight:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mDisplayRealWidth:I

    if-nez v0, :cond_2a

    :cond_8
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mDisplayRealWidth:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mDisplayRealHeight:I

    :cond_2a
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mDisplayRealWidth:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v1, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mDisplayRealHeight:I

    int-to-float v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mParent:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getLeft()F

    move-result v1

    goto :goto_4b

    :cond_4a
    move v1, v0

    :goto_4b
    iget-object v2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mParent:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz v2, :cond_53

    invoke-virtual {v2}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getTop()F

    move-result v0

    :cond_53
    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getTop()F

    move-result v3

    const-string v4, "touched px = "

    const-string v5, " py = "

    const-string v6, " f1 = "

    invoke-static {v4, v1, v5, v0, v6}, Lcom/android/launcher/pageindicators/e;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " f2 = "

    const-string v6, " x = "

    invoke-static {v4, v2, v5, v3, v6}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const-string v5, " y = "

    const-string v6, " mDrw = "

    invoke-static {v4, p1, v5, p2, v6}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    iget v5, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mDisplayRealWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mDrh = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;->mDisplayRealHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " w = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getWidth()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " h = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getHeight()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ButtonScreenElement"

    invoke-static {v5, v4}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-float/2addr v1, v2

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_c9

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getWidth()F

    move-result v2

    add-float/2addr v2, v1

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_c9

    add-float/2addr v0, v3

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_c9

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getHeight()F

    move-result p0

    add-float/2addr p0, v0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_c9

    const/4 p0, 0x1

    goto :goto_ca

    :cond_c9
    const/4 p0, 0x0

    :goto_ca
    return p0
.end method
