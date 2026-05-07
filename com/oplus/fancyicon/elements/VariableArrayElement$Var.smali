.class Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Var"
.end annotation


# instance fields
.field private mConst:Z

.field private mCurrentItemIsExpression:Z

.field private mIndex:I

.field private mIndexExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mName:Ljava/lang/String;

.field private mNumberVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mStringVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

.field public final synthetic this$0:Lcom/oplus/fancyicon/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/elements/VariableArrayElement;Lorg/w3c/dom/Element;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->this$0:Lcom/oplus/fancyicon/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mIndex:I

    if-eqz p2, :cond_51

    const-string v0, "name"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    const-string v0, "index"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mIndexExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string v0, "const"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mConst:Z

    invoke-static {p1}, Lcom/oplus/fancyicon/elements/VariableArrayElement;->b(Lcom/oplus/fancyicon/elements/VariableArrayElement;)Z

    move-result p2

    if-eqz p2, :cond_42

    new-instance p2, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mStringVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    goto :goto_51

    :cond_42
    new-instance p2, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mNumberVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    :cond_51
    :goto_51
    return-void
.end method

.method private update()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mIndexExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->this$0:Lcom/oplus/fancyicon/elements/VariableArrayElement;

    iget-object v0, v0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mIndexExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v1, v0}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v1

    double-to-int v1, v1

    if-ltz v1, :cond_5e

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->this$0:Lcom/oplus/fancyicon/elements/VariableArrayElement;

    invoke-static {v2}, Lcom/oplus/fancyicon/elements/VariableArrayElement;->a(Lcom/oplus/fancyicon/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_22

    goto :goto_5e

    :cond_22
    iget v2, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mIndex:I

    if-ne v2, v1, :cond_2a

    iget-boolean v2, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    if-eqz v2, :cond_73

    :cond_2a
    iget-object v2, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->this$0:Lcom/oplus/fancyicon/elements/VariableArrayElement;

    invoke-static {v2}, Lcom/oplus/fancyicon/elements/VariableArrayElement;->a(Lcom/oplus/fancyicon/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;

    iget v3, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mIndex:I

    if-eq v3, v1, :cond_42

    iput v1, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mIndex:I

    invoke-virtual {v2}, Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;->isExpression()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    :cond_42
    iget-object v1, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->this$0:Lcom/oplus/fancyicon/elements/VariableArrayElement;

    invoke-static {v1}, Lcom/oplus/fancyicon/elements/VariableArrayElement;->b(Lcom/oplus/fancyicon/elements/VariableArrayElement;)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mStringVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {v2, v0}, Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_73

    :cond_54
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mNumberVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {v2, v0}, Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;->evaluate(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto :goto_73

    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->this$0:Lcom/oplus/fancyicon/elements/VariableArrayElement;

    invoke-static {v0}, Lcom/oplus/fancyicon/elements/VariableArrayElement;->b(Lcom/oplus/fancyicon/elements/VariableArrayElement;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mStringVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {p0, v1}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_73

    :cond_6e
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mNumberVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {p0, v1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    :cond_73
    :goto_73
    return-void
.end method


# virtual methods
.method public init()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mIndex:I

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->update()V

    return-void
.end method

.method public tick()V
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->mConst:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->update()V

    :cond_7
    return-void
.end method
