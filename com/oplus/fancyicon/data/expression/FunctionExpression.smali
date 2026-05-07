.class public Lcom/oplus/fancyicon/data/expression/FunctionExpression;
.super Lcom/oplus/fancyicon/data/expression/Expression;
.source ""


# static fields
.field public static final sFunMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFun:Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;

.field private mFunName:Ljava/lang/String;

.field private mParaExps:[Lcom/oplus/fancyicon/data/expression/Expression;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;->load()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/expression/Expression;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->mFunName:Ljava/lang/String;

    return-void
.end method

.method private parseFunction(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    sget-object v0, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v2

    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid function:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/fancyicon/util/Utils;->asserts(ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->mFun:Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->mParaExps:[Lcom/oplus/fancyicon/data/expression/Expression;

    array-length p0, p0

    iget v0, v0, Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;->mParams:I

    if-lt p0, v0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    :goto_2e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parameters count not matching for function: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/fancyicon/util/Utils;->asserts(ZLjava/lang/String;)V

    return-void
.end method

.method public static registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V
    .registers 3

    sget-object v0, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;

    if-eqz p1, :cond_20

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "duplicated function name registation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Expression"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public static removeFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V
    .registers 2

    sget-object p1, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;)V
    .registers 5

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;->visit(Lcom/oplus/fancyicon/data/expression/FunctionExpression;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->mParaExps:[Lcom/oplus/fancyicon/data/expression/Expression;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_13

    iget-object v2, p0, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->mParaExps:[Lcom/oplus/fancyicon/data/expression/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->accept(Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return-void
.end method

.method public evaluate(Lcom/oplus/fancyicon/data/Variables;)D
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->mFun:Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->mParaExps:[Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;->evaluate([Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    return-wide p0
.end method

.method public evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->mFun:Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->mParaExps:[Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;->evaluateStr([Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->mFunName:Ljava/lang/String;

    return-object p0
.end method

.method public setParaExps([Lcom/oplus/fancyicon/data/expression/Expression;)Lcom/oplus/fancyicon/data/expression/FunctionExpression;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->mParaExps:[Lcom/oplus/fancyicon/data/expression/Expression;

    iget-object p1, p0, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->mFunName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->parseFunction(Ljava/lang/String;)V

    return-object p0
.end method
