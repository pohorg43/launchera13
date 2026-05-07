.class public Lcom/oplus/fancyicon/elements/VariableElement;
.super Lcom/oplus/fancyicon/elements/ScreenElement;
.source ""


# static fields
.field private static final OLD_VALUE:Ljava/lang/String; = "old_value"

.field private static final OPLUS_OS_5_WEATHER:Ljava/lang/String; = "ic_launcher_weather"

.field private static final OPLUS_OS_5_WEATHER_ISNULL_NAME:Ljava/lang/String; = "isnull"

.field private static final OPLUS_OS_5_WEATHER_ISNULL_NEW_EXP:Ljava/lang/String; = "ifelse(le(#weather_type,0),1,isnull(#weather_type),1,0)"

.field private static final OPLUS_OS_5_WEATHER_ISNULL_OLD_EXP:Ljava/lang/String; = "ifelse(le(#weather_type,0),1,ge(#weather_type,42),1,isnull(#weather_type),1,0)"

.field private static final TAG:Ljava/lang/String; = "VariableElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Var"


# instance fields
.field private mAnimation:Lcom/oplus/fancyicon/animation/VariableAnimation;

.field private mConst:Z

.field private mExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mIsStringType:Z

.field private mNumberVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mOldNumberVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mOldStringVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

.field private mOldValue:Ljava/lang/Double;

.field private mStringVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

.field private mThreshold:D

.field private mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    if-eqz p1, :cond_ab

    const-string v0, "expression"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/fancyicon/elements/VariableElement;->changeOldExpressionInNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    const/high16 v0, 0x3f800000  # 1.0f

    const-string v1, "threshold"

    invoke-static {p1, v1, v0}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mThreshold:D

    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mIsStringType:Z

    const-string v0, "const"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mConst:Z

    iget-boolean v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mIsStringType:Z

    const-string v1, "old_value"

    if-eqz v0, :cond_64

    new-instance v0, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mStringVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    new-instance v0, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mOldStringVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    goto :goto_7e

    :cond_64
    new-instance v0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mNumberVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance v0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mOldNumberVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    :goto_7e
    const-string v0, "VariableAnimation"

    invoke-static {p1, v0}, Lcom/oplus/fancyicon/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_a5

    :try_start_86
    new-instance v1, Lcom/oplus/fancyicon/animation/VariableAnimation;

    invoke-direct {v1, v0, p2}, Lcom/oplus/fancyicon/animation/VariableAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object v1, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mAnimation:Lcom/oplus/fancyicon/animation/VariableAnimation;
    :try_end_8d
    .catch Lcom/oplus/fancyicon/ScreenElementLoadException; {:try_start_86 .. :try_end_8d} :catch_8e

    goto :goto_a5

    :catch_8e
    move-exception v0

    const-string v1, "ScreenElementLoadException e : "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Var"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    :goto_a5
    invoke-static {p1, p2}, Lcom/oplus/fancyicon/command/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/command/CommandTrigger;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;

    :cond_ab
    return-void
.end method

.method private changeOldExpressionInNew(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ic_launcher_weather"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v0, "isnull"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const-string p0, "ifelse(le(#weather_type,0),1,ge(#weather_type,42),1,isnull(#weather_type),1,0)"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const-string p0, "VariableElement"

    const-string p1, "changeOldExpressionInNew change"

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ifelse(le(#weather_type,0),1,isnull(#weather_type),1,0)"

    return-object p0

    :cond_2a
    return-object p1
.end method

.method private update()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mIsStringType:Z

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v1, :cond_90

    invoke-virtual {v1, v0}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mStringVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mOldStringVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {v2, v1}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->set(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mStringVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {v1, v0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->set(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;

    if-eqz p0, :cond_90

    invoke-virtual {p0}, Lcom/oplus/fancyicon/command/CommandTrigger;->perform()V

    return-void

    :cond_30
    iget-object v1, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mAnimation:Lcom/oplus/fancyicon/animation/VariableAnimation;

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Lcom/oplus/fancyicon/animation/VariableAnimation;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_54

    :cond_3e
    iget-object v1, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v1, :cond_54

    invoke-virtual {v1, v0}, Lcom/oplus/fancyicon/data/expression/Expression;->isNull(Lcom/oplus/fancyicon/data/Variables;)Z

    move-result v1

    if-eqz v1, :cond_49

    goto :goto_54

    :cond_49
    iget-object v1, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v1, v0}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v2, v0

    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mNumberVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {v0, v2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    if-eqz v2, :cond_90

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v2, v0}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    if-nez v0, :cond_69

    iput-object v2, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    :cond_69
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mOldNumberVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;

    if-eqz v0, :cond_8e

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sub-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v3, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mThreshold:D

    cmpl-double v0, v0, v3

    if-ltz v0, :cond_8e

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->perform()V

    :cond_8e
    iput-object v2, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    :cond_90
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public end()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/fancyicon/command/CommandTrigger;->end()V

    :cond_7
    return-void
.end method

.method public hasAnimationRunning()Z
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mAnimation:Lcom/oplus/fancyicon/animation/VariableAnimation;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/oplus/fancyicon/animation/BaseAnimation;->isAnimationRunning()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->init()V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mAnimation:Lcom/oplus/fancyicon/animation/VariableAnimation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/BaseAnimation;->init()V

    :cond_a
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->init()V

    :cond_11
    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/VariableElement;->update()V

    return-void
.end method

.method public onRenderThreadStoped()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->onRenderThreadStoped()V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->onRenderThreadStoped()V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    return-void
.end method

.method public pause()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->pause()V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mAnimation:Lcom/oplus/fancyicon/animation/VariableAnimation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/BaseAnimation;->pause()V

    :cond_a
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/oplus/fancyicon/command/CommandTrigger;->pause()V

    :cond_11
    return-void
.end method

.method public reset(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->reset(J)V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mAnimation:Lcom/oplus/fancyicon/animation/VariableAnimation;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2}, Lcom/oplus/fancyicon/animation/VariableAnimation;->reset(J)V

    :cond_a
    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/VariableElement;->update()V

    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->resume()V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mAnimation:Lcom/oplus/fancyicon/animation/VariableAnimation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/BaseAnimation;->resume()V

    :cond_a
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/oplus/fancyicon/command/CommandTrigger;->resume()V

    :cond_11
    return-void
.end method

.method public tick(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->tick(J)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mAnimation:Lcom/oplus/fancyicon/animation/VariableAnimation;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1, p2}, Lcom/oplus/fancyicon/animation/BaseAnimation;->tick(J)V

    :cond_10
    iget-boolean p1, p0, Lcom/oplus/fancyicon/elements/VariableElement;->mConst:Z

    if-nez p1, :cond_17

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/VariableElement;->update()V

    :cond_17
    return-void
.end method
