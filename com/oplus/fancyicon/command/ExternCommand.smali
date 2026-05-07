.class public Lcom/oplus/fancyicon/command/ExternCommand;
.super Lcom/oplus/fancyicon/command/ActionCommand;
.source ""


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ExternCommand"

.field public static final UNLOCK:Ljava/lang/String; = "unlock"

.field public static final UPDATE_DATA_COMMAND:Ljava/lang/String; = "updateData"


# instance fields
.field private mCommand:Ljava/lang/String;

.field private mEnded:Z

.field private mNumParaExp:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mStrParaExp:Lcom/oplus/fancyicon/data/expression/Expression;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/command/ActionCommand;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/fancyicon/command/ExternCommand;->mEnded:Z

    const-string p1, "command"

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/command/ExternCommand;->mCommand:Ljava/lang/String;

    const-string p1, "numPara"

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {p1, v0}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/command/ExternCommand;->mNumParaExp:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string p1, "strPara"

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {p1, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/command/ExternCommand;->mStrParaExp:Lcom/oplus/fancyicon/data/expression/Expression;

    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 8

    iget-boolean v0, p0, Lcom/oplus/fancyicon/command/ExternCommand;->mEnded:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    iget-object v2, p0, Lcom/oplus/fancyicon/command/ExternCommand;->mCommand:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/fancyicon/command/ExternCommand;->mNumParaExp:Lcom/oplus/fancyicon/data/expression/Expression;

    const/4 v4, 0x0

    if-nez v3, :cond_15

    move-object v3, v4

    goto :goto_1d

    :cond_15
    invoke-virtual {v3, v0}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_1d
    iget-object p0, p0, Lcom/oplus/fancyicon/command/ExternCommand;->mStrParaExp:Lcom/oplus/fancyicon/data/expression/Expression;

    if-nez p0, :cond_22

    goto :goto_26

    :cond_22
    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object v4

    :goto_26
    invoke-virtual {v1, v2, v3, v4}, Lcom/oplus/fancyicon/ScreenElementRoot;->issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public end()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/command/ActionCommand;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/command/ExternCommand;->mEnded:Z

    return-void
.end method

.method public pause()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/command/ActionCommand;->pause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/command/ExternCommand;->mEnded:Z

    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/command/ActionCommand;->resume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/command/ExternCommand;->mEnded:Z

    return-void
.end method
