.class Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;
.super Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/expression/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VarVersionVisitor"
.end annotation


# instance fields
.field private mRootExpression:Lcom/oplus/fancyicon/data/expression/RootExpression;

.field private mVar:Lcom/oplus/fancyicon/data/Variables;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/data/expression/RootExpression;Lcom/oplus/fancyicon/data/Variables;)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;->mRootExpression:Lcom/oplus/fancyicon/data/expression/RootExpression;

    iput-object p2, p0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;->mVar:Lcom/oplus/fancyicon/data/Variables;

    return-void
.end method


# virtual methods
.method public visit(Lcom/oplus/fancyicon/data/expression/FunctionExpression;)V
    .registers 3

    invoke-virtual {p1}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->getFunName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rand"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;->mRootExpression:Lcom/oplus/fancyicon/data/expression/RootExpression;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/data/expression/RootExpression;->d(Lcom/oplus/fancyicon/data/expression/RootExpression;Z)V

    :cond_12
    return-void
.end method

.method public visit(Lcom/oplus/fancyicon/data/expression/NumberVariableExpression;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;->mVar:Lcom/oplus/fancyicon/data/Variables;

    invoke-virtual {p1, v0}, Lcom/oplus/fancyicon/data/expression/NumberVariableExpression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;->mRootExpression:Lcom/oplus/fancyicon/data/expression/RootExpression;

    new-instance v0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/data/expression/NumberVariableExpression;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/fancyicon/data/expression/NumberVariableExpression;->getVersion()I

    move-result p1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/data/expression/RootExpression;->addVarVersion(Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;)V

    return-void
.end method

.method public visit(Lcom/oplus/fancyicon/data/expression/StringVariableExpression;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;->mVar:Lcom/oplus/fancyicon/data/Variables;

    invoke-virtual {p1, v0}, Lcom/oplus/fancyicon/data/expression/StringVariableExpression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;->mRootExpression:Lcom/oplus/fancyicon/data/expression/RootExpression;

    new-instance v0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/data/expression/StringVariableExpression;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/fancyicon/data/expression/StringVariableExpression;->getVersion()I

    move-result p1

    const/4 v2, 0x2

    invoke-direct {v0, v1, p1, v2}, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/data/expression/RootExpression;->addVarVersion(Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;)V

    return-void
.end method
