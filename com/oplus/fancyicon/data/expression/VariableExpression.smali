.class public abstract Lcom/oplus/fancyicon/data/expression/VariableExpression;
.super Lcom/oplus/fancyicon/data/expression/Expression;
.source ""


# instance fields
.field private mFindTargetElementOnce:Z

.field private mMustBeVariableElement:Z

.field private mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

.field private mTargetElement:Lcom/oplus/fancyicon/elements/ScreenElement;

.field public mVar:Lcom/oplus/fancyicon/data/Variable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/expression/Expression;-><init>()V

    iput-object p2, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    new-instance p2, Lcom/oplus/fancyicon/data/Variable;

    invoke-direct {p2, p1}, Lcom/oplus/fancyicon/data/Variable;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mVar:Lcom/oplus/fancyicon/data/Variable;

    return-void
.end method

.method private findTargetElement()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mFindTargetElementOnce:Z

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mVar:Lcom/oplus/fancyicon/data/Variable;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/Variable;->getObjName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    iput-boolean v1, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mMustBeVariableElement:Z

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mVar:Lcom/oplus/fancyicon/data/Variable;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_16
    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mVar:Lcom/oplus/fancyicon/data/Variable;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/Variable;->getObjName()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    if-eqz v2, :cond_37

    invoke-virtual {v2, v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/oplus/fancyicon/elements/ScreenElement;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mTargetElement:Lcom/oplus/fancyicon/elements/ScreenElement;

    iget-boolean v2, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mMustBeVariableElement:Z

    if-eqz v2, :cond_37

    instance-of v0, v0, Lcom/oplus/fancyicon/elements/VariableElement;

    if-nez v0, :cond_37

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mTargetElement:Lcom/oplus/fancyicon/elements/ScreenElement;

    :cond_37
    iput-boolean v1, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mFindTargetElementOnce:Z

    :cond_39
    return-void
.end method


# virtual methods
.method public tickTargetElement()V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/expression/VariableExpression;->findTargetElement()V

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mTargetElement:Lcom/oplus/fancyicon/elements/ScreenElement;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->isRendering()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mTargetElement:Lcom/oplus/fancyicon/elements/ScreenElement;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getCurrentTickTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/fancyicon/elements/ScreenElement;->callTick(J)V

    :cond_1c
    return-void
.end method
