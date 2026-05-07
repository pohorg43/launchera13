.class public Lcom/oplus/fancyicon/animation/AnimatedElement;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AnimatedElement"


# instance fields
.field private mAlignAbsolute:Z

.field private mAlphaExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mAlphas:Lcom/oplus/fancyicon/animation/AlphaAnimation;

.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/animation/BaseAnimation;",
            ">;"
        }
    .end annotation
.end field

.field public mBaseXExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field public mBaseYExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field public mCenterXExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field public mCenterYExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field public mHeightExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mPositions:Lcom/oplus/fancyicon/animation/PositionAnimation;

.field private mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

.field public mRotationExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mRotations:Lcom/oplus/fancyicon/animation/RotationAnimation;

.field private mSizes:Lcom/oplus/fancyicon/animation/SizeAnimation;

.field private mSources:Lcom/oplus/fancyicon/animation/SourcesAnimation;

.field private mSrcFormatter:Lcom/oplus/fancyicon/util/TextFormatter;

.field public mSrcIdExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field public mWidthExpression:Lcom/oplus/fancyicon/data/expression/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;
    .registers 5

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {p2, v0}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p2

    if-nez p2, :cond_1c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {p1, p0}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p2

    :cond_1c
    return-object p2
.end method

.method private loadAlphaAnimations(Lorg/w3c/dom/Element;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    const-string v0, "AlphaAnimation"

    invoke-static {p1, v0}, Lcom/oplus/fancyicon/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_16

    new-instance v0, Lcom/oplus/fancyicon/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-direct {v0, p1, v1}, Lcom/oplus/fancyicon/animation/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAlphas:Lcom/oplus/fancyicon/animation/AlphaAnimation;

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    return-void
.end method

.method private loadPositionAnimations(Lorg/w3c/dom/Element;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    const-string v0, "PositionAnimation"

    invoke-static {p1, v0}, Lcom/oplus/fancyicon/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_16

    new-instance v0, Lcom/oplus/fancyicon/animation/PositionAnimation;

    iget-object v1, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-direct {v0, p1, v1}, Lcom/oplus/fancyicon/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mPositions:Lcom/oplus/fancyicon/animation/PositionAnimation;

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    return-void
.end method

.method private loadRotationAnimations(Lorg/w3c/dom/Element;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    const-string v0, "RotationAnimation"

    invoke-static {p1, v0}, Lcom/oplus/fancyicon/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_16

    new-instance v0, Lcom/oplus/fancyicon/animation/RotationAnimation;

    iget-object v1, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-direct {v0, p1, v1}, Lcom/oplus/fancyicon/animation/RotationAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRotations:Lcom/oplus/fancyicon/animation/RotationAnimation;

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    return-void
.end method

.method private loadSizeAnimations(Lorg/w3c/dom/Element;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    const-string v0, "SizeAnimation"

    invoke-static {p1, v0}, Lcom/oplus/fancyicon/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_16

    new-instance v0, Lcom/oplus/fancyicon/animation/SizeAnimation;

    iget-object v1, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-direct {v0, p1, v1}, Lcom/oplus/fancyicon/animation/SizeAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mSizes:Lcom/oplus/fancyicon/animation/SizeAnimation;

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    return-void
.end method

.method private loadSourceAnimations(Lorg/w3c/dom/Element;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    const-string v0, "SourcesAnimation"

    invoke-static {p1, v0}, Lcom/oplus/fancyicon/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_16

    new-instance v0, Lcom/oplus/fancyicon/animation/SourcesAnimation;

    iget-object v1, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-direct {v0, p1, v1}, Lcom/oplus/fancyicon/animation/SourcesAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mSources:Lcom/oplus/fancyicon/animation/SourcesAnimation;

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    return-void
.end method


# virtual methods
.method public getAlpha()I
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAlphaExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    const/16 v1, 0xff

    if-eqz v0, :cond_12

    iget-object v2, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAlphas:Lcom/oplus/fancyicon/animation/AlphaAnimation;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lcom/oplus/fancyicon/animation/AlphaAnimation;->getAlpha()I

    move-result v1

    :cond_1b
    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/Utils;->mixAlpha(II)I

    move-result p0

    return p0
.end method

.method public getHeight()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mSizes:Lcom/oplus/fancyicon/animation/SizeAnimation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/SizeAnimation;->getHeight()D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_a
    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mHeightExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    goto :goto_1b

    :cond_19
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    :goto_1b
    double-to-float p0, v0

    return p0
.end method

.method public getMaxHeight()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mSizes:Lcom/oplus/fancyicon/animation/SizeAnimation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/SizeAnimation;->getMaxHeight()D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_a
    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mHeightExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    goto :goto_1b

    :cond_19
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    :goto_1b
    double-to-float p0, v0

    return p0
.end method

.method public getMaxWidth()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mSizes:Lcom/oplus/fancyicon/animation/SizeAnimation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/SizeAnimation;->getMaxWidth()D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_a
    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mWidthExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    goto :goto_1b

    :cond_19
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    :goto_1b
    double-to-float p0, v0

    return p0
.end method

.method public getOffsetX()F
    .registers 3

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mPositions:Lcom/oplus/fancyicon/animation/PositionAnimation;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/oplus/fancyicon/animation/PositionAnimation;->getX()D

    move-result-wide v0

    double-to-float p0, v0

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public getOffsetY()F
    .registers 3

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mPositions:Lcom/oplus/fancyicon/animation/PositionAnimation;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/oplus/fancyicon/animation/PositionAnimation;->getY()D

    move-result-wide v0

    double-to-float p0, v0

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public getPivotX()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mCenterXExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x0

    :goto_11
    double-to-float p0, v0

    return p0
.end method

.method public getPivotY()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mCenterYExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x0

    :goto_11
    double-to-float p0, v0

    return p0
.end method

.method public getRotationAngle()F
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRotationExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x0

    :goto_11
    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRotations:Lcom/oplus/fancyicon/animation/RotationAnimation;

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Lcom/oplus/fancyicon/animation/RotationAnimation;->getAngle()F

    move-result p0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    float-to-double v2, p0

    add-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public getSrc()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mSrcFormatter:Lcom/oplus/fancyicon/util/TextFormatter;

    iget-object v1, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/util/TextFormatter;->getText(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mSources:Lcom/oplus/fancyicon/animation/SourcesAnimation;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/oplus/fancyicon/animation/SourcesAnimation;->getSrc()Ljava/lang/String;

    move-result-object v0

    :cond_14
    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mSrcIdExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v1, :cond_2d

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2d
    return-object v0
.end method

.method public getWidth()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mSizes:Lcom/oplus/fancyicon/animation/SizeAnimation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/SizeAnimation;->getWidth()D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_a
    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mWidthExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    goto :goto_1b

    :cond_19
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    :goto_1b
    double-to-float p0, v0

    return p0
.end method

.method public getX()F
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mBaseXExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x0

    :goto_11
    iget-object v2, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mSources:Lcom/oplus/fancyicon/animation/SourcesAnimation;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/oplus/fancyicon/animation/PositionAnimation;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_1a
    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mPositions:Lcom/oplus/fancyicon/animation/PositionAnimation;

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Lcom/oplus/fancyicon/animation/PositionAnimation;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_23
    double-to-float p0, v0

    return p0
.end method

.method public getY()F
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mBaseYExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x0

    :goto_11
    iget-object v2, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mSources:Lcom/oplus/fancyicon/animation/SourcesAnimation;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/oplus/fancyicon/animation/PositionAnimation;->getY()D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_1a
    iget-object p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mPositions:Lcom/oplus/fancyicon/animation/PositionAnimation;

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Lcom/oplus/fancyicon/animation/PositionAnimation;->getY()D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_23
    double-to-float p0, v0

    return p0
.end method

.method public hasAnimationRunning()Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    iget-object v3, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/fancyicon/animation/BaseAnimation;

    invoke-virtual {v3}, Lcom/oplus/fancyicon/animation/BaseAnimation;->isAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return v1
.end method

.method public init()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/fancyicon/animation/BaseAnimation;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/animation/BaseAnimation;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public isAlignAbsolute()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAlignAbsolute:Z

    return p0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    if-eqz p1, :cond_8d

    const-string v0, "x"

    const-string v1, "left"

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mBaseXExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string v0, "y"

    const-string v1, "top"

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mBaseYExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string v0, "w"

    const-string v1, "width"

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mWidthExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string v0, "h"

    const-string v1, "height"

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mHeightExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string v0, "angle"

    const-string v1, "rotation"

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRotationExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string v0, "centerX"

    const-string v1, "pivotX"

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mCenterXExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string v0, "centerY"

    const-string v1, "pivotY"

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mCenterYExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string v0, "srcid"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mSrcIdExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string v0, "alpha"

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAlphaExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    iget-object v7, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    const-string v2, "src"

    const-string v3, "srcFormat"

    const-string v4, "srcParas"

    const-string v5, "srcExp"

    const-string v6, "srcFormatExp"

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/oplus/fancyicon/util/TextFormatter;->fromElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/util/TextFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mSrcFormatter:Lcom/oplus/fancyicon/util/TextFormatter;

    const-string v0, "align"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "absolute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAlignAbsolute:Z

    :cond_7d
    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->loadSourceAnimations(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->loadPositionAnimations(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->loadRotationAnimations(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->loadSizeAnimations(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->loadAlphaAnimations(Lorg/w3c/dom/Element;)V

    return-void

    :cond_8d
    new-instance p0, Lcom/oplus/fancyicon/ScreenElementLoadException;

    const-string p1, "node is null"

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pause()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/fancyicon/animation/BaseAnimation;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/animation/BaseAnimation;->pause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public reset(J)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/fancyicon/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lcom/oplus/fancyicon/animation/BaseAnimation;->reset(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public resume()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/fancyicon/animation/BaseAnimation;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/animation/BaseAnimation;->resume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public tick(J)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lcom/oplus/fancyicon/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/fancyicon/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lcom/oplus/fancyicon/animation/BaseAnimation;->tick(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method
