.class public Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/binder/VariableBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalVariable"
.end annotation


# static fields
.field public static final DOUBLE:I = 0x6

.field public static final FLOAT:I = 0x5

.field public static final INT:I = 0x3

.field public static final LONG:I = 0x4

.field public static final STRING:I = 0x2

.field public static final TAG_NAME:Ljava/lang/String; = "Variable"


# instance fields
.field private mName:Ljava/lang/String;

.field private mNumberVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mStringVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

.field private mTypeInt:I

.field private mTypeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->parseType()V

    invoke-direct {p0, p3}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->createVar(Lcom/oplus/fancyicon/data/Variables;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/data/Variables;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1f

    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mName:Ljava/lang/String;

    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->parseType()V

    invoke-direct {p0, p2}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->createVar(Lcom/oplus/fancyicon/data/Variables;)V

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->onLoad(Lorg/w3c/dom/Element;)V

    return-void

    :cond_1f
    const-string p0, "Variable"

    const-string p1, "Variable node is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "node is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createVar(Lcom/oplus/fancyicon/data/Variables;)V
    .registers 4

    iget v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeInt:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    new-instance v0, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mStringVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    goto :goto_18

    :cond_f
    new-instance v0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mNumberVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    :goto_18
    return-void
.end method


# virtual methods
.method public getDoubleValue()Ljava/lang/Double;
    .registers 3

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mNumberVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_9
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mStringVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTypeInt()I
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeInt:I

    return p0
.end method

.method public getTypeStr()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeStr:Ljava/lang/String;

    return-object p0
.end method

.method public isNumber()Z
    .registers 2

    iget p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeInt:I

    const/4 v0, 0x3

    if-lt p0, v0, :cond_a

    const/4 v0, 0x6

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public onLoad(Lorg/w3c/dom/Element;)V
    .registers 2

    return-void
.end method

.method public parseType()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeStr:Ljava/lang/String;

    const-string v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeInt:I

    goto :goto_53

    :cond_e
    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeStr:Ljava/lang/String;

    const-string v1, "double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_1c

    iput v1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeInt:I

    goto :goto_53

    :cond_1c
    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeStr:Ljava/lang/String;

    const-string v2, "float"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x5

    iput v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeInt:I

    goto :goto_53

    :cond_2a
    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeStr:Ljava/lang/String;

    const-string v2, "int"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeStr:Ljava/lang/String;

    const-string v2, "integer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_50

    :cond_3f
    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeStr:Ljava/lang/String;

    const-string v2, "long"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x4

    iput v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeInt:I

    goto :goto_53

    :cond_4d
    iput v1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeInt:I

    goto :goto_53

    :cond_50
    :goto_50
    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeInt:I

    :goto_53
    return-void
.end method

.method public setDoubleValue(D)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mNumberVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    :cond_7
    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mStringVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->set(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setTypeInt(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->mTypeInt:I

    return-void
.end method
