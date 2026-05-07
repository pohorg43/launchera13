.class public Lcom/oplus/fancyicon/data/expression/RootExpression;
.super Lcom/oplus/fancyicon/data/expression/Expression;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;,
        Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RootExression"


# instance fields
.field private mAlwaysEvaluate:Z

.field private mDoubleValue:D

.field private mExp:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mIsNumInit:Z

.field private mIsStrInit:Z

.field private mStringValue:Ljava/lang/String;

.field private mVarVersionVisitor:Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;

.field private mVersionSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mVersions:[Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/data/expression/Expression;)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/expression/Expression;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mExp:Lcom/oplus/fancyicon/data/expression/Expression;

    return-void
.end method

.method public static bridge synthetic d(Lcom/oplus/fancyicon/data/expression/RootExpression;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mAlwaysEvaluate:Z

    return-void
.end method


# virtual methods
.method public accept(Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mExp:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->accept(Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;)V

    return-void
.end method

.method public addVarVersion(Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public evaluate(Lcom/oplus/fancyicon/data/Variables;)D
    .registers 10

    iget-boolean v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mIsNumInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mExp:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mDoubleValue:D

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mVarVersionVisitor:Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;

    if-nez v0, :cond_2e

    new-instance v0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;

    invoke-direct {v0, p0, p1}, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;-><init>(Lcom/oplus/fancyicon/data/expression/RootExpression;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mVarVersionVisitor:Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;

    iget-object p1, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mExp:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p1, v0}, Lcom/oplus/fancyicon/data/expression/Expression;->accept(Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;)V

    iget-object p1, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_2e

    new-array p1, p1, [Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;

    iput-object p1, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mVersions:[Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_2e
    iput-boolean v1, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mIsNumInit:Z

    goto :goto_68

    :cond_31
    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mVersions:[Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;

    const/4 v2, 0x0

    if-eqz v0, :cond_5a

    array-length v3, v0

    move v4, v2

    :goto_38
    if-ge v2, v3, :cond_59

    aget-object v5, v0, v2

    if-eqz v5, :cond_56

    iget v6, v5, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mType:I

    if-ne v6, v1, :cond_49

    iget v6, v5, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v6}, Lcom/oplus/fancyicon/data/Variables;->getNumVer(I)I

    move-result v6

    goto :goto_4f

    :cond_49
    iget v6, v5, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v6}, Lcom/oplus/fancyicon/data/Variables;->getStrVer(I)I

    move-result v6

    :goto_4f
    iget v7, v5, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mVersion:I

    if-eq v7, v6, :cond_56

    iput v6, v5, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mVersion:I

    move v4, v1

    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_59
    move v2, v4

    :cond_5a
    if-nez v2, :cond_60

    iget-boolean v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mAlwaysEvaluate:Z

    if-eqz v0, :cond_68

    :cond_60
    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mExp:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mDoubleValue:D

    :cond_68
    :goto_68
    iget-wide p0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mDoubleValue:D

    return-wide p0
.end method

.method public evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;
    .registers 10

    iget-boolean v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mIsStrInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mExp:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mStringValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mVarVersionVisitor:Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;

    if-nez v0, :cond_2e

    new-instance v0, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;

    invoke-direct {v0, p0, p1}, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;-><init>(Lcom/oplus/fancyicon/data/expression/RootExpression;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mVarVersionVisitor:Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersionVisitor;

    iget-object p1, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mExp:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p1, v0}, Lcom/oplus/fancyicon/data/expression/Expression;->accept(Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;)V

    iget-object p1, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_2e

    new-array p1, p1, [Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;

    iput-object p1, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mVersions:[Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_2e
    iput-boolean v1, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mIsStrInit:Z

    goto :goto_68

    :cond_31
    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mVersions:[Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;

    const/4 v2, 0x0

    if-eqz v0, :cond_5a

    array-length v3, v0

    move v4, v2

    :goto_38
    if-ge v2, v3, :cond_59

    aget-object v5, v0, v2

    if-eqz v5, :cond_56

    iget v6, v5, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mType:I

    if-ne v6, v1, :cond_49

    iget v6, v5, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v6}, Lcom/oplus/fancyicon/data/Variables;->getNumVer(I)I

    move-result v6

    goto :goto_4f

    :cond_49
    iget v6, v5, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v6}, Lcom/oplus/fancyicon/data/Variables;->getStrVer(I)I

    move-result v6

    :goto_4f
    iget v7, v5, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mVersion:I

    if-eq v7, v6, :cond_56

    iput v6, v5, Lcom/oplus/fancyicon/data/expression/RootExpression$VarVersion;->mVersion:I

    move v4, v1

    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_59
    move v2, v4

    :cond_5a
    if-nez v2, :cond_60

    iget-boolean v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mAlwaysEvaluate:Z

    if-eqz v0, :cond_68

    :cond_60
    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mExp:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mStringValue:Ljava/lang/String;

    :cond_68
    :goto_68
    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mStringValue:Ljava/lang/String;

    return-object p0
.end method

.method public isNull(Lcom/oplus/fancyicon/data/Variables;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/RootExpression;->mExp:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->isNull(Lcom/oplus/fancyicon/data/Variables;)Z

    move-result p0

    return p0
.end method
