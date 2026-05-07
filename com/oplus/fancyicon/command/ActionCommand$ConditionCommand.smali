.class Lcom/oplus/fancyicon/command/ActionCommand$ConditionCommand;
.super Lcom/oplus/fancyicon/command/ActionCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/command/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConditionCommand"
.end annotation


# instance fields
.field private mCommand:Lcom/oplus/fancyicon/command/ActionCommand;

.field private mCondition:Lcom/oplus/fancyicon/data/expression/Expression;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/command/ActionCommand;Lcom/oplus/fancyicon/data/expression/Expression;)V
    .registers 4

    invoke-virtual {p1}, Lcom/oplus/fancyicon/command/ActionCommand;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/fancyicon/command/ActionCommand;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/command/ActionCommand$ConditionCommand;->mCommand:Lcom/oplus/fancyicon/command/ActionCommand;

    iput-object p2, p0, Lcom/oplus/fancyicon/command/ActionCommand$ConditionCommand;->mCondition:Lcom/oplus/fancyicon/data/expression/Expression;

    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/command/ActionCommand$ConditionCommand;->mCondition:Lcom/oplus/fancyicon/data/expression/Expression;

    iget-object v1, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_17

    iget-object p0, p0, Lcom/oplus/fancyicon/command/ActionCommand$ConditionCommand;->mCommand:Lcom/oplus/fancyicon/command/ActionCommand;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/command/ActionCommand;->perform()V

    :cond_17
    return-void
.end method

.method public end()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/command/ActionCommand$ConditionCommand;->mCommand:Lcom/oplus/fancyicon/command/ActionCommand;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/command/ActionCommand;->end()V

    return-void
.end method

.method public init()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/command/ActionCommand$ConditionCommand;->mCommand:Lcom/oplus/fancyicon/command/ActionCommand;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/command/ActionCommand;->init()V

    return-void
.end method

.method public onRenderThreadStoped()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/command/ActionCommand$ConditionCommand;->mCommand:Lcom/oplus/fancyicon/command/ActionCommand;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/command/ActionCommand;->onRenderThreadStoped()V

    return-void
.end method

.method public pause()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/command/ActionCommand$ConditionCommand;->mCommand:Lcom/oplus/fancyicon/command/ActionCommand;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/command/ActionCommand;->pause()V

    return-void
.end method

.method public resume()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/command/ActionCommand$ConditionCommand;->mCommand:Lcom/oplus/fancyicon/command/ActionCommand;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/command/ActionCommand;->resume()V

    return-void
.end method
