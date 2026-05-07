.class public Lcom/oplus/fancyicon/command/VariableAssignmentCommand;
.super Lcom/oplus/fancyicon/command/ActionCommand;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field public static final EXPRESSION:Ljava/lang/String; = "expression"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PERSIST:Ljava/lang/String; = "persist"

.field public static final STRING:Ljava/lang/String; = "string"

.field private static final TAG:Ljava/lang/String; = "VariableAssignmentCommand"

.field public static final TAG_NAME:Ljava/lang/String; = "VariableCommand"

.field public static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mName:Ljava/lang/String;

.field private mNumVariable:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mPersist:Z

.field private mStrVariable:Lcom/oplus/fancyicon/data/IndexedStringVariable;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/command/ActionCommand;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    const-string p1, "name"

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/command/VariableAssignmentCommand;->mName:Ljava/lang/String;

    const-string p1, "expression"

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "type"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oplus/fancyicon/command/VariableAssignmentCommand;->mPersist:Z

    new-instance p2, Lcom/oplus/fancyicon/data/Variable;

    iget-object v1, p0, Lcom/oplus/fancyicon/command/VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-direct {p2, v1}, Lcom/oplus/fancyicon/data/Variable;-><init>(Ljava/lang/String;)V

    const-string v1, "string"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    new-instance v0, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {p2}, Lcom/oplus/fancyicon/data/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/oplus/fancyicon/data/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/command/VariableAssignmentCommand;->mStrVariable:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    goto :goto_5d

    :cond_48
    new-instance v0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {p2}, Lcom/oplus/fancyicon/data/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/oplus/fancyicon/data/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/command/VariableAssignmentCommand;->mNumVariable:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    :goto_5d
    iget-object p2, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {p1, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/command/VariableAssignmentCommand;->mExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-nez p1, :cond_6e

    const-string p0, "VariableAssignmentCommand"

    const-string p1, "invalid expression in VariableAssignmentCommand"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/command/VariableAssignmentCommand;->mExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_53

    iget-object v1, p0, Lcom/oplus/fancyicon/command/VariableAssignmentCommand;->mNumVariable:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/fancyicon/command/VariableAssignmentCommand;->mNumVariable:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {v2, v0, v1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v2, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    iget-boolean v2, p0, Lcom/oplus/fancyicon/command/VariableAssignmentCommand;->mPersist:Z

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    iget-object p0, p0, Lcom/oplus/fancyicon/command/VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_2d
    return-void

    :cond_2e
    iget-object v1, p0, Lcom/oplus/fancyicon/command/VariableAssignmentCommand;->mStrVariable:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/fancyicon/command/VariableAssignmentCommand;->mStrVariable:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {v1, v0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->set(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    iget-boolean v1, p0, Lcom/oplus/fancyicon/command/VariableAssignmentCommand;->mPersist:Z

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    iget-object p0, p0, Lcom/oplus/fancyicon/command/VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    return-void
.end method
